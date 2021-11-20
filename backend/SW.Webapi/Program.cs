
using Microsoft.AspNetCore;
using Microsoft.AspNetCore.Hosting;
using Microsoft.Extensions.DependencyInjection;

namespace SW.Webapi
{
    public class Program
    {
        public static void Main(string[] args)
        {

            var host = CreateWebHostBuilder(args).Build();

            using (var scope = host.Services.CreateScope())
            {
                // any custom initiation here like logs for example
            }



            host.Run();
        }

        public static IWebHostBuilder CreateWebHostBuilder(string[] args) =>
             WebHost.CreateDefaultBuilder(args)
             .UseSetting(WebHostDefaults.DetailedErrorsKey, "true")
            .UseKestrel()
                .UseIISIntegration()
                 .UseStartup<Startup>();

    }
}
