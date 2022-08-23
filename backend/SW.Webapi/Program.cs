
using BC.CommonModule.Common.Abstracts;
using Microsoft.AspNetCore;
using Microsoft.AspNetCore.Hosting;
using Microsoft.Extensions.DependencyInjection;
using Microsoft.Extensions.Logging;
using System;

namespace SW.Webapi
{
    public class Program
    {
        public static void Main(string[] args)
        {

            var host = CreateWebHostBuilder(args).Build();

            using (var scope = host.Services.CreateScope())
            {
                try
                {

                    var customAppSetting = scope.ServiceProvider.GetService<CustomAppSetting>();
                    var customAPIClient = scope.ServiceProvider.GetService<ICustomAPIClient>();
                    var loggerFactory = scope.ServiceProvider.GetService<ILoggerFactory>();


                    var env = scope.ServiceProvider.GetService<IHostingEnvironment>();

                    loggerFactory.AddProvider(new LoggerDatabaseProvider(new BCLoggerConfiguration(), customAppSetting, customAPIClient));

                    //if (env.IsDevelopment())
                    //{

                    // for dev environment

                    //}

                }
                catch (Exception ex)
                {
                    var logger = scope.ServiceProvider.GetRequiredService<ILogger<Program>>();
                    logger.LogError(ex, "An error occurred while migrating or initializing the database.");
                }

                host.Run();
            }
        }

        public static IWebHostBuilder CreateWebHostBuilder(string[] args) =>
             WebHost.CreateDefaultBuilder(args)
             .UseSetting(WebHostDefaults.DetailedErrorsKey, "true")
            .UseKestrel()
                .UseIISIntegration()
                 .UseStartup<Startup>();

    }
}
