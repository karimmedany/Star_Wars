using Microsoft.OpenApi.Models;
using Swashbuckle.AspNetCore.SwaggerGen;
using System.Collections.Generic;

namespace SW.Webapi.Filters
{
    public class CustomImageSwaggerFilter : IOperationFilter
    {
        public void Apply(OpenApiOperation operation, OperationFilterContext context)
        {

            //var isFileUploadOperation =
            //    context.MethodInfo.CustomAttributes.Any(a => a.AttributeType == typeof(NonBodyParameter));
            //if (!isFileUploadOperation) return;

            if (context.MethodInfo.Name.ToLower().Contains("upload") == false)
                return;


            var uploadFileMediaType = new OpenApiMediaType()
            {
                Schema = new OpenApiSchema()
                {
                    Type = "object",
                    Properties =
                    {
                        ["uploadedFile"] = new OpenApiSchema()
                        {
                            Description = "Upload File",
                            Type = "file",
                            Format = "binary"
                        }
                    },
                    Required = new HashSet<string>()
                    {
                        //"uploadedFile"
                    }
                }
            };
            operation.RequestBody = new OpenApiRequestBody
            {
                Content =
                {
                    ["multipart/form-data"] = uploadFileMediaType
                }
            };

        }
    }

    //         public void Apply(OpenApiOperation operation, OperationFilterContext context)
    //         {
    //             if (operation.OperationId.ToLower().Contains("upload")))
    //{
    //                 operation.Parameters.Clear();
    //                 operation.Parameters.Add(new NonBodyParameter
    //                 {
    //                     Name = "uploadedFile",
    //                     In = "formData",
    //                     Description = "Upload File",
    //                     Required = true,
    //                     Type = "file"
    //                 });
    //                 operation.Parameters.Add(new NonBodyParameter
    //                 {
    //                     Name = "userId",
    //                     In = "query",
    //                     Description = "",
    //                     Required = true,
    //                     Type = "long"
    //                 });
    //                 operation.Consumes.Add("multipart/form-data");
    //             }
    //         }


}


