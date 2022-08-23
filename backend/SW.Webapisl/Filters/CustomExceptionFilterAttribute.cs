
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.Filters;
using Microsoft.Extensions.Configuration;
using Microsoft.Extensions.Logging;
using System;
using System.ComponentModel.DataAnnotations;
using System.Net;

namespace SW.Webapisl
{
    [AttributeUsage(AttributeTargets.Class | AttributeTargets.Method)]
    public class CustomExceptionFilterAttribute : ExceptionFilterAttribute
    {
        IConfiguration _config;
        private readonly ILogger _logger;
        public CustomExceptionFilterAttribute(IConfiguration config, ILogger<CustomExceptionFilterAttribute> logger)
        {
            _config = config;
            _logger = logger;
        }
        public override void OnException(ExceptionContext context)
        {
            var code = HttpStatusCode.InternalServerError;
            string customMessage = "face an error StatusCode is ";
            if (context.Exception is ValidationException)
            {

                code = HttpStatusCode.BadRequest;
                context.Result = new JsonResult(
                    ((ValidationException)context.Exception).Message);


                _logger.LogError(new EventId(0, context.Exception.ToString()), context.Exception, customMessage+code);
                return;
            }

           // add you custom exceptions


            context.HttpContext.Response.ContentType = "application/json";
            context.HttpContext.Response.StatusCode = (int)code;

            context.Result = new JsonResult(new
            {
                error = new[] { context.Exception.Message },
                stackTrace = "IN Timestamp " + DateTime.Now.ToString()
            });




        }
    }
}
