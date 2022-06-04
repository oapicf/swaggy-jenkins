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
    public partial class RemoteAccessApi
    { 
        [FunctionName("RemoteAccessApi_GetComputer")]
        public async Task<ActionResult<ComputerSet>> _GetComputer([HttpTrigger(AuthorizationLevel.Anonymous, "Get", Route = "computer/api/json")]HttpRequest req, ExecutionContext context)
        {
            var method = this.GetType().GetMethod("GetComputer");
            if(method == null)
            {
                return new StatusCodeResult((int)HttpStatusCode.NotImplemented);
            }
            return (await ((Task<ComputerSet>)method.Invoke(this, new object[] { req, context, id })).ConfigureAwait(false));
        }

        [FunctionName("RemoteAccessApi_GetJenkins")]
        public async Task<ActionResult<Hudson>> _GetJenkins([HttpTrigger(AuthorizationLevel.Anonymous, "Get", Route = "api/json")]HttpRequest req, ExecutionContext context)
        {
            var method = this.GetType().GetMethod("GetJenkins");
            if(method == null)
            {
                return new StatusCodeResult((int)HttpStatusCode.NotImplemented);
            }
            return (await ((Task<Hudson>)method.Invoke(this, new object[] { req, context, id })).ConfigureAwait(false));
        }

        [FunctionName("RemoteAccessApi_GetJob")]
        public async Task<ActionResult<FreeStyleProject>> _GetJob([HttpTrigger(AuthorizationLevel.Anonymous, "Get", Route = "job/{name}/api/json")]HttpRequest req, ExecutionContext context, string name)
        {
            var method = this.GetType().GetMethod("GetJob");
            if(method == null)
            {
                return new StatusCodeResult((int)HttpStatusCode.NotImplemented);
            }
            return (await ((Task<FreeStyleProject>)method.Invoke(this, new object[] { req, context, id })).ConfigureAwait(false));
        }

        [FunctionName("RemoteAccessApi_GetJobConfig")]
        public async Task<ActionResult<string>> _GetJobConfig([HttpTrigger(AuthorizationLevel.Anonymous, "Get", Route = "job/{name}/config.xml")]HttpRequest req, ExecutionContext context, string name)
        {
            var method = this.GetType().GetMethod("GetJobConfig");
            if(method == null)
            {
                return new StatusCodeResult((int)HttpStatusCode.NotImplemented);
            }
            return (await ((Task<string>)method.Invoke(this, new object[] { req, context, id })).ConfigureAwait(false));
        }

        [FunctionName("RemoteAccessApi_GetJobLastBuild")]
        public async Task<ActionResult<FreeStyleBuild>> _GetJobLastBuild([HttpTrigger(AuthorizationLevel.Anonymous, "Get", Route = "job/{name}/lastBuild/api/json")]HttpRequest req, ExecutionContext context, string name)
        {
            var method = this.GetType().GetMethod("GetJobLastBuild");
            if(method == null)
            {
                return new StatusCodeResult((int)HttpStatusCode.NotImplemented);
            }
            return (await ((Task<FreeStyleBuild>)method.Invoke(this, new object[] { req, context, id })).ConfigureAwait(false));
        }

        [FunctionName("RemoteAccessApi_GetJobProgressiveText")]
        public async Task<ActionResult<>> _GetJobProgressiveText([HttpTrigger(AuthorizationLevel.Anonymous, "Get", Route = "job/{name}/{number}/logText/progressiveText")]HttpRequest req, ExecutionContext context, string name, string number)
        {
            var method = this.GetType().GetMethod("GetJobProgressiveText");
            if(method == null)
            {
                return new StatusCodeResult((int)HttpStatusCode.NotImplemented);
            }
            return (await ((Task<>)method.Invoke(this, new object[] { req, context, id })).ConfigureAwait(false));
        }

        [FunctionName("RemoteAccessApi_GetQueue")]
        public async Task<ActionResult<Queue>> _GetQueue([HttpTrigger(AuthorizationLevel.Anonymous, "Get", Route = "queue/api/json")]HttpRequest req, ExecutionContext context)
        {
            var method = this.GetType().GetMethod("GetQueue");
            if(method == null)
            {
                return new StatusCodeResult((int)HttpStatusCode.NotImplemented);
            }
            return (await ((Task<Queue>)method.Invoke(this, new object[] { req, context, id })).ConfigureAwait(false));
        }

        [FunctionName("RemoteAccessApi_GetQueueItem")]
        public async Task<ActionResult<Queue>> _GetQueueItem([HttpTrigger(AuthorizationLevel.Anonymous, "Get", Route = "queue/item/{number}/api/json")]HttpRequest req, ExecutionContext context, string number)
        {
            var method = this.GetType().GetMethod("GetQueueItem");
            if(method == null)
            {
                return new StatusCodeResult((int)HttpStatusCode.NotImplemented);
            }
            return (await ((Task<Queue>)method.Invoke(this, new object[] { req, context, id })).ConfigureAwait(false));
        }

        [FunctionName("RemoteAccessApi_GetView")]
        public async Task<ActionResult<ListView>> _GetView([HttpTrigger(AuthorizationLevel.Anonymous, "Get", Route = "view/{name}/api/json")]HttpRequest req, ExecutionContext context, string name)
        {
            var method = this.GetType().GetMethod("GetView");
            if(method == null)
            {
                return new StatusCodeResult((int)HttpStatusCode.NotImplemented);
            }
            return (await ((Task<ListView>)method.Invoke(this, new object[] { req, context, id })).ConfigureAwait(false));
        }

        [FunctionName("RemoteAccessApi_GetViewConfig")]
        public async Task<ActionResult<string>> _GetViewConfig([HttpTrigger(AuthorizationLevel.Anonymous, "Get", Route = "view/{name}/config.xml")]HttpRequest req, ExecutionContext context, string name)
        {
            var method = this.GetType().GetMethod("GetViewConfig");
            if(method == null)
            {
                return new StatusCodeResult((int)HttpStatusCode.NotImplemented);
            }
            return (await ((Task<string>)method.Invoke(this, new object[] { req, context, id })).ConfigureAwait(false));
        }

        [FunctionName("RemoteAccessApi_HeadJenkins")]
        public async Task<ActionResult<>> _HeadJenkins([HttpTrigger(AuthorizationLevel.Anonymous, "Head", Route = "api/json")]HttpRequest req, ExecutionContext context)
        {
            var method = this.GetType().GetMethod("HeadJenkins");
            if(method == null)
            {
                return new StatusCodeResult((int)HttpStatusCode.NotImplemented);
            }
            return (await ((Task<>)method.Invoke(this, new object[] { req, context, id })).ConfigureAwait(false));
        }

        [FunctionName("RemoteAccessApi_PostCreateItem")]
        public async Task<ActionResult<>> _PostCreateItem([HttpTrigger(AuthorizationLevel.Anonymous, "Post", Route = "createItem")]HttpRequest req, ExecutionContext context)
        {
            var method = this.GetType().GetMethod("PostCreateItem");
            if(method == null)
            {
                return new StatusCodeResult((int)HttpStatusCode.NotImplemented);
            }
            return (await ((Task<>)method.Invoke(this, new object[] { req, context, id })).ConfigureAwait(false));
        }

        [FunctionName("RemoteAccessApi_PostCreateView")]
        public async Task<ActionResult<>> _PostCreateView([HttpTrigger(AuthorizationLevel.Anonymous, "Post", Route = "createView")]HttpRequest req, ExecutionContext context)
        {
            var method = this.GetType().GetMethod("PostCreateView");
            if(method == null)
            {
                return new StatusCodeResult((int)HttpStatusCode.NotImplemented);
            }
            return (await ((Task<>)method.Invoke(this, new object[] { req, context, id })).ConfigureAwait(false));
        }

        [FunctionName("RemoteAccessApi_PostJobBuild")]
        public async Task<ActionResult<>> _PostJobBuild([HttpTrigger(AuthorizationLevel.Anonymous, "Post", Route = "job/{name}/build")]HttpRequest req, ExecutionContext context, string name)
        {
            var method = this.GetType().GetMethod("PostJobBuild");
            if(method == null)
            {
                return new StatusCodeResult((int)HttpStatusCode.NotImplemented);
            }
            return (await ((Task<>)method.Invoke(this, new object[] { req, context, id })).ConfigureAwait(false));
        }

        [FunctionName("RemoteAccessApi_PostJobConfig")]
        public async Task<ActionResult<>> _PostJobConfig([HttpTrigger(AuthorizationLevel.Anonymous, "Post", Route = "job/{name}/config.xml")]HttpRequest req, ExecutionContext context, string name)
        {
            var method = this.GetType().GetMethod("PostJobConfig");
            if(method == null)
            {
                return new StatusCodeResult((int)HttpStatusCode.NotImplemented);
            }
            return (await ((Task<>)method.Invoke(this, new object[] { req, context, id })).ConfigureAwait(false));
        }

        [FunctionName("RemoteAccessApi_PostJobDelete")]
        public async Task<ActionResult<>> _PostJobDelete([HttpTrigger(AuthorizationLevel.Anonymous, "Post", Route = "job/{name}/doDelete")]HttpRequest req, ExecutionContext context, string name)
        {
            var method = this.GetType().GetMethod("PostJobDelete");
            if(method == null)
            {
                return new StatusCodeResult((int)HttpStatusCode.NotImplemented);
            }
            return (await ((Task<>)method.Invoke(this, new object[] { req, context, id })).ConfigureAwait(false));
        }

        [FunctionName("RemoteAccessApi_PostJobDisable")]
        public async Task<ActionResult<>> _PostJobDisable([HttpTrigger(AuthorizationLevel.Anonymous, "Post", Route = "job/{name}/disable")]HttpRequest req, ExecutionContext context, string name)
        {
            var method = this.GetType().GetMethod("PostJobDisable");
            if(method == null)
            {
                return new StatusCodeResult((int)HttpStatusCode.NotImplemented);
            }
            return (await ((Task<>)method.Invoke(this, new object[] { req, context, id })).ConfigureAwait(false));
        }

        [FunctionName("RemoteAccessApi_PostJobEnable")]
        public async Task<ActionResult<>> _PostJobEnable([HttpTrigger(AuthorizationLevel.Anonymous, "Post", Route = "job/{name}/enable")]HttpRequest req, ExecutionContext context, string name)
        {
            var method = this.GetType().GetMethod("PostJobEnable");
            if(method == null)
            {
                return new StatusCodeResult((int)HttpStatusCode.NotImplemented);
            }
            return (await ((Task<>)method.Invoke(this, new object[] { req, context, id })).ConfigureAwait(false));
        }

        [FunctionName("RemoteAccessApi_PostJobLastBuildStop")]
        public async Task<ActionResult<>> _PostJobLastBuildStop([HttpTrigger(AuthorizationLevel.Anonymous, "Post", Route = "job/{name}/lastBuild/stop")]HttpRequest req, ExecutionContext context, string name)
        {
            var method = this.GetType().GetMethod("PostJobLastBuildStop");
            if(method == null)
            {
                return new StatusCodeResult((int)HttpStatusCode.NotImplemented);
            }
            return (await ((Task<>)method.Invoke(this, new object[] { req, context, id })).ConfigureAwait(false));
        }

        [FunctionName("RemoteAccessApi_PostViewConfig")]
        public async Task<ActionResult<>> _PostViewConfig([HttpTrigger(AuthorizationLevel.Anonymous, "Post", Route = "view/{name}/config.xml")]HttpRequest req, ExecutionContext context, string name)
        {
            var method = this.GetType().GetMethod("PostViewConfig");
            if(method == null)
            {
                return new StatusCodeResult((int)HttpStatusCode.NotImplemented);
            }
            return (await ((Task<>)method.Invoke(this, new object[] { req, context, id })).ConfigureAwait(false));
        }
    }
}
