
using BC.CommonModule.Common.Abstracts;
using Microsoft.AspNetCore.Builder;
using Microsoft.AspNetCore.Hosting;
using System;
using System.Collections.Generic;

namespace SW.Webapisl
{
    public class SettingValidationStartupFilter : IStartupFilter
    {
        readonly IEnumerable<CustomAppSetting> _validatableObjects;
        public SettingValidationStartupFilter(IEnumerable<CustomAppSetting> validatableObjects)
        {
            _validatableObjects = validatableObjects;
        }

        public Action<IApplicationBuilder> Configure(Action<IApplicationBuilder> next)
        {
            foreach (var validatableObject in _validatableObjects)
            {
                validatableObject.Validate();
            }

            //don't alter the configuration
            return next;
        }


    }
}
