
using System.ComponentModel.DataAnnotations;

namespace SW.Common.Implementations
{
    public class MAppSetting 
    {


        public void Validate()
        {
            Validator.ValidateObject(this, new ValidationContext(this), validateAllProperties: true);
        }
    }



}
