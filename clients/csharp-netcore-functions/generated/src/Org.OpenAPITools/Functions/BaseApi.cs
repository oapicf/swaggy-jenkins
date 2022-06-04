using System.IO;
using System.Net;
using System.Threading.Tasks;
using System.ComponentModel.DataAnnotations;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Azure.WebJobs;
using Microsoft.Azure.WebJobs.Extensions.Http;
using Microsoft.Azure.WebJobs.Extensions.OpenApi.Core.Attributes;
using Microsoft.Azure.WebJobs.Extensions.OpenApi.Core.Enums;
using Microsoft.Extensions.Logging;
using Microsoft.OpenApi.Models;
using Newtonsoft.Json;
using Org.OpenAPITools.Models;

namespace Org.OpenAPITools.Functions
{ 
    public partial class BaseApi
    { 
        [FunctionName("BaseApi_GetCrumb")]
        public async Task<ActionResult<DefaultCrumbIssuer>> _GetCrumb([HttpTrigger(AuthorizationLevel.Anonymous, "Get", Route = "crumbIssuer/api/json")]HttpRequest req, ExecutionContext context)
        {
            var method = this.GetType().GetMethod("GetCrumb");
            if(method == null)
            {
                return new StatusCodeResult((int)HttpStatusCode.NotImplemented);
            }
            return (await ((Task<DefaultCrumbIssuer>)method.Invoke(this, new object[] { req, context, id })).ConfigureAwait(false));
        }
    }
}
