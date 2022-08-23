using SW.Application.Common.Interfaces;
using SW.Persistence;

using FluentValidation.AspNetCore;
using MediatR;
using Microsoft.AspNetCore.Builder;
using Microsoft.AspNetCore.Hosting;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.Configuration;
using Microsoft.Extensions.DependencyInjection;
using Microsoft.Extensions.DependencyInjection.Extensions;
using Microsoft.Extensions.Logging;
using Microsoft.OpenApi.Models;
using System;
using System.Collections.Generic;
using System.Globalization;
using Newtonsoft.Json.Converters;
using Pomelo.EntityFrameworkCore.MySql.Infrastructure;

namespace SW.Webapi
{
    public class Startup
    {

        public Startup(IConfiguration configuration)
        {
            Configuration = configuration;


        }

        public IConfiguration Configuration { get; }
        readonly string MyAllowSpecificOrigins = "_myAllowSpecificOrigins";


        // This method gets called by the runtime. Use this method to add services to the container.

        public void ConfigureServices(IServiceCollection services)
        {

            services.AddLogging();


            /// ******************************commented because of the.net core version not 3 * ************************////
            services.AddControllers()
                .AddFluentValidation(fv => fv.RegisterValidatorsFromAssemblyContaining<Startup>())
                .AddJsonOptions(i=>i.JsonSerializerOptions.IgnoreNullValues = true);

            services.AddMvc(option => option.EnableEndpointRouting = false);
            ///  ***************************************end * ************************************************************////

            services.AddCors(options =>
            {
                options.AddPolicy(MyAllowSpecificOrigins,
                builder =>
                {
                    builder.WithOrigins("*",
                                  "*")
                                  .AllowAnyHeader()
                                  .AllowAnyMethod();
                });

            });







            services.TryAddSingleton<IHttpContextAccessor, HttpContextAccessor>();
            ////Add MediatR
            var assembly = AppDomain.CurrentDomain.Load("SW.Application");
            services.AddMediatR(assembly);

            string connectionString = Configuration.GetConnectionString("DBConnection");

            //Add DbContext using SQL Server Provider
            services.AddDbContext<IDBContext, DBContext>(options =>

                    options.UseMySql(
                        connectionString,
                        new MySqlServerVersion(new Version(8, 0, 11)),

            mySqlOptions =>
            {
                mySqlOptions.EnableRetryOnFailure(maxRetryCount: 3,
                                                   maxRetryDelay: TimeSpan.FromSeconds(10),
                                                   errorNumbersToAdd: null);
                mySqlOptions.DefaultDataTypeMappings(
                    mappings => mappings.WithClrDateTime(MySqlDateTimeType.DateTime6)); // <--- added this

            })
                    .EnableSensitiveDataLogging()
                    .EnableDetailedErrors()

                );






            services.AddMvc()
                .AddNewtonsoftJson(options =>
                options.SerializerSettings.Converters.Add(new StringEnumConverter()));
                services.AddSwaggerGenNewtonsoftSupport();



            ////Register the Swagger generator, defining 1 or more Swagger documents
            services.AddSwaggerGen(options =>
            {
                options.DescribeAllParametersInCamelCase();
                options.SwaggerDoc("v1", new OpenApiInfo
                {
                    Title = "SW - web API",
                    Version = "v1",
                    Description = "The Catalog HTTP API"
                });
            });



            services.ConfigureSwaggerGen(options =>
            {

                options.DescribeAllParametersInCamelCase();
                options.UseInlineDefinitionsForEnums();
                options.OperationFilter<CustomImageSwaggerFilter>(); //Register File Upload Operation Filter
            });

            //Customise default API behavour
            services.Configure<ApiBehaviorOptions>(options =>
            {
                options.SuppressModelStateInvalidFilter = true;
            });
     
        }



        public void Configure(IApplicationBuilder app, IWebHostEnvironment env, ILoggerFactory loggerFactory)
        {
            var supportedCultures = new List<CultureInfo> { };
            var gb = new CultureInfo("en-GB");
            gb.DateTimeFormat.ShortDatePattern = "dd.MM.yyyy";
            gb.DateTimeFormat.DateSeparator = ".";
            supportedCultures.Add(gb);

            app.UseRequestLocalization(new RequestLocalizationOptions
            {
                // Formatting numbers, dates, etc.
                SupportedCultures = supportedCultures,
                // UI strings that we have localized.
                SupportedUICultures = supportedCultures,
            });





            app.UseRouting();

            // global cors policy
            app.UseCors(x => x
                .AllowAnyOrigin()
                .AllowAnyMethod()
                .AllowAnyHeader());

            app.UseAuthentication();
            app.UseAuthorization();

            app.UseEndpoints(endpoints =>
            {
                endpoints.MapControllers();
            });

            
            // Enable middleware to serve generated Swagger as a JSON endpoint.
            app.UseSwagger();

            // Enable middleware to serve swagger-ui (HTML, JS, CSS, etc.),
            // specifying the Swagger JSON endpoint.
            app.UseSwaggerUI(c =>
            {
                c.SwaggerEndpoint("/swagger/v1/swagger.json", "SW API V1");

            });

 
        }
    }



}
