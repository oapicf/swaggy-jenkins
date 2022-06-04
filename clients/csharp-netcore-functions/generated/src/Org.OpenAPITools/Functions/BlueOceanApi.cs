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
    public partial class BlueOceanApi
    { 
        [FunctionName("BlueOceanApi_DeletePipelineQueueItem")]
        public async Task<ActionResult<>> _DeletePipelineQueueItem([HttpTrigger(AuthorizationLevel.Anonymous, "Delete", Route = "blue/rest/organizations/{organization}/pipelines/{pipeline}/queue/{queue}")]HttpRequest req, ExecutionContext context, string organization, string pipeline, string queue)
        {
            var method = this.GetType().GetMethod("DeletePipelineQueueItem");
            if(method == null)
            {
                return new StatusCodeResult((int)HttpStatusCode.NotImplemented);
            }
            return (await ((Task<>)method.Invoke(this, new object[] { req, context, id })).ConfigureAwait(false));
        }

        [FunctionName("BlueOceanApi_GetAuthenticatedUser")]
        public async Task<ActionResult<User>> _GetAuthenticatedUser([HttpTrigger(AuthorizationLevel.Anonymous, "Get", Route = "blue/rest/organizations/{organization}/user/")]HttpRequest req, ExecutionContext context, string organization)
        {
            var method = this.GetType().GetMethod("GetAuthenticatedUser");
            if(method == null)
            {
                return new StatusCodeResult((int)HttpStatusCode.NotImplemented);
            }
            return (await ((Task<User>)method.Invoke(this, new object[] { req, context, id })).ConfigureAwait(false));
        }

        [FunctionName("BlueOceanApi_GetClasses")]
        public async Task<ActionResult<string>> _GetClasses([HttpTrigger(AuthorizationLevel.Anonymous, "Get", Route = "blue/rest/classes/{class}")]HttpRequest req, ExecutionContext context, string _class)
        {
            var method = this.GetType().GetMethod("GetClasses");
            if(method == null)
            {
                return new StatusCodeResult((int)HttpStatusCode.NotImplemented);
            }
            return (await ((Task<string>)method.Invoke(this, new object[] { req, context, id })).ConfigureAwait(false));
        }

        [FunctionName("BlueOceanApi_GetJsonWebKey")]
        public async Task<ActionResult<string>> _GetJsonWebKey([HttpTrigger(AuthorizationLevel.Anonymous, "Get", Route = "jwt-auth/jwks/{key}")]HttpRequest req, ExecutionContext context, int key)
        {
            var method = this.GetType().GetMethod("GetJsonWebKey");
            if(method == null)
            {
                return new StatusCodeResult((int)HttpStatusCode.NotImplemented);
            }
            return (await ((Task<string>)method.Invoke(this, new object[] { req, context, id })).ConfigureAwait(false));
        }

        [FunctionName("BlueOceanApi_GetJsonWebToken")]
        public async Task<ActionResult<string>> _GetJsonWebToken([HttpTrigger(AuthorizationLevel.Anonymous, "Get", Route = "jwt-auth/token")]HttpRequest req, ExecutionContext context)
        {
            var method = this.GetType().GetMethod("GetJsonWebToken");
            if(method == null)
            {
                return new StatusCodeResult((int)HttpStatusCode.NotImplemented);
            }
            return (await ((Task<string>)method.Invoke(this, new object[] { req, context, id })).ConfigureAwait(false));
        }

        [FunctionName("BlueOceanApi_GetOrganisation")]
        public async Task<ActionResult<Organisation>> _GetOrganisation([HttpTrigger(AuthorizationLevel.Anonymous, "Get", Route = "blue/rest/organizations/{organization}")]HttpRequest req, ExecutionContext context, string organization)
        {
            var method = this.GetType().GetMethod("GetOrganisation");
            if(method == null)
            {
                return new StatusCodeResult((int)HttpStatusCode.NotImplemented);
            }
            return (await ((Task<Organisation>)method.Invoke(this, new object[] { req, context, id })).ConfigureAwait(false));
        }

        [FunctionName("BlueOceanApi_GetOrganisations")]
        public async Task<ActionResult<List<Organisation>>> _GetOrganisations([HttpTrigger(AuthorizationLevel.Anonymous, "Get", Route = "blue/rest/organizations/")]HttpRequest req, ExecutionContext context)
        {
            var method = this.GetType().GetMethod("GetOrganisations");
            if(method == null)
            {
                return new StatusCodeResult((int)HttpStatusCode.NotImplemented);
            }
            return (await ((Task<List<Organisation>>)method.Invoke(this, new object[] { req, context, id })).ConfigureAwait(false));
        }

        [FunctionName("BlueOceanApi_GetPipeline")]
        public async Task<ActionResult<Pipeline>> _GetPipeline([HttpTrigger(AuthorizationLevel.Anonymous, "Get", Route = "blue/rest/organizations/{organization}/pipelines/{pipeline}")]HttpRequest req, ExecutionContext context, string organization, string pipeline)
        {
            var method = this.GetType().GetMethod("GetPipeline");
            if(method == null)
            {
                return new StatusCodeResult((int)HttpStatusCode.NotImplemented);
            }
            return (await ((Task<Pipeline>)method.Invoke(this, new object[] { req, context, id })).ConfigureAwait(false));
        }

        [FunctionName("BlueOceanApi_GetPipelineActivities")]
        public async Task<ActionResult<List<PipelineActivity>>> _GetPipelineActivities([HttpTrigger(AuthorizationLevel.Anonymous, "Get", Route = "blue/rest/organizations/{organization}/pipelines/{pipeline}/activities")]HttpRequest req, ExecutionContext context, string organization, string pipeline)
        {
            var method = this.GetType().GetMethod("GetPipelineActivities");
            if(method == null)
            {
                return new StatusCodeResult((int)HttpStatusCode.NotImplemented);
            }
            return (await ((Task<List<PipelineActivity>>)method.Invoke(this, new object[] { req, context, id })).ConfigureAwait(false));
        }

        [FunctionName("BlueOceanApi_GetPipelineBranch")]
        public async Task<ActionResult<BranchImpl>> _GetPipelineBranch([HttpTrigger(AuthorizationLevel.Anonymous, "Get", Route = "blue/rest/organizations/{organization}/pipelines/{pipeline}/branches/{branch}/")]HttpRequest req, ExecutionContext context, string organization, string pipeline, string branch)
        {
            var method = this.GetType().GetMethod("GetPipelineBranch");
            if(method == null)
            {
                return new StatusCodeResult((int)HttpStatusCode.NotImplemented);
            }
            return (await ((Task<BranchImpl>)method.Invoke(this, new object[] { req, context, id })).ConfigureAwait(false));
        }

        [FunctionName("BlueOceanApi_GetPipelineBranchRun")]
        public async Task<ActionResult<PipelineRun>> _GetPipelineBranchRun([HttpTrigger(AuthorizationLevel.Anonymous, "Get", Route = "blue/rest/organizations/{organization}/pipelines/{pipeline}/branches/{branch}/runs/{run}")]HttpRequest req, ExecutionContext context, string organization, string pipeline, string branch, string run)
        {
            var method = this.GetType().GetMethod("GetPipelineBranchRun");
            if(method == null)
            {
                return new StatusCodeResult((int)HttpStatusCode.NotImplemented);
            }
            return (await ((Task<PipelineRun>)method.Invoke(this, new object[] { req, context, id })).ConfigureAwait(false));
        }

        [FunctionName("BlueOceanApi_GetPipelineBranches")]
        public async Task<ActionResult<MultibranchPipeline>> _GetPipelineBranches([HttpTrigger(AuthorizationLevel.Anonymous, "Get", Route = "blue/rest/organizations/{organization}/pipelines/{pipeline}/branches")]HttpRequest req, ExecutionContext context, string organization, string pipeline)
        {
            var method = this.GetType().GetMethod("GetPipelineBranches");
            if(method == null)
            {
                return new StatusCodeResult((int)HttpStatusCode.NotImplemented);
            }
            return (await ((Task<MultibranchPipeline>)method.Invoke(this, new object[] { req, context, id })).ConfigureAwait(false));
        }

        [FunctionName("BlueOceanApi_GetPipelineFolder")]
        public async Task<ActionResult<PipelineFolderImpl>> _GetPipelineFolder([HttpTrigger(AuthorizationLevel.Anonymous, "Get", Route = "blue/rest/organizations/{organization}/pipelines/{folder}/")]HttpRequest req, ExecutionContext context, string organization, string folder)
        {
            var method = this.GetType().GetMethod("GetPipelineFolder");
            if(method == null)
            {
                return new StatusCodeResult((int)HttpStatusCode.NotImplemented);
            }
            return (await ((Task<PipelineFolderImpl>)method.Invoke(this, new object[] { req, context, id })).ConfigureAwait(false));
        }

        [FunctionName("BlueOceanApi_GetPipelineFolderPipeline")]
        public async Task<ActionResult<PipelineImpl>> _GetPipelineFolderPipeline([HttpTrigger(AuthorizationLevel.Anonymous, "Get", Route = "blue/rest/organizations/{organization}/pipelines/{folder}/pipelines/{pipeline}")]HttpRequest req, ExecutionContext context, string organization, string pipeline, string folder)
        {
            var method = this.GetType().GetMethod("GetPipelineFolderPipeline");
            if(method == null)
            {
                return new StatusCodeResult((int)HttpStatusCode.NotImplemented);
            }
            return (await ((Task<PipelineImpl>)method.Invoke(this, new object[] { req, context, id })).ConfigureAwait(false));
        }

        [FunctionName("BlueOceanApi_GetPipelineQueue")]
        public async Task<ActionResult<List<QueueItemImpl>>> _GetPipelineQueue([HttpTrigger(AuthorizationLevel.Anonymous, "Get", Route = "blue/rest/organizations/{organization}/pipelines/{pipeline}/queue")]HttpRequest req, ExecutionContext context, string organization, string pipeline)
        {
            var method = this.GetType().GetMethod("GetPipelineQueue");
            if(method == null)
            {
                return new StatusCodeResult((int)HttpStatusCode.NotImplemented);
            }
            return (await ((Task<List<QueueItemImpl>>)method.Invoke(this, new object[] { req, context, id })).ConfigureAwait(false));
        }

        [FunctionName("BlueOceanApi_GetPipelineRun")]
        public async Task<ActionResult<PipelineRun>> _GetPipelineRun([HttpTrigger(AuthorizationLevel.Anonymous, "Get", Route = "blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}")]HttpRequest req, ExecutionContext context, string organization, string pipeline, string run)
        {
            var method = this.GetType().GetMethod("GetPipelineRun");
            if(method == null)
            {
                return new StatusCodeResult((int)HttpStatusCode.NotImplemented);
            }
            return (await ((Task<PipelineRun>)method.Invoke(this, new object[] { req, context, id })).ConfigureAwait(false));
        }

        [FunctionName("BlueOceanApi_GetPipelineRunLog")]
        public async Task<ActionResult<string>> _GetPipelineRunLog([HttpTrigger(AuthorizationLevel.Anonymous, "Get", Route = "blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/log")]HttpRequest req, ExecutionContext context, string organization, string pipeline, string run)
        {
            var method = this.GetType().GetMethod("GetPipelineRunLog");
            if(method == null)
            {
                return new StatusCodeResult((int)HttpStatusCode.NotImplemented);
            }
            return (await ((Task<string>)method.Invoke(this, new object[] { req, context, id })).ConfigureAwait(false));
        }

        [FunctionName("BlueOceanApi_GetPipelineRunNode")]
        public async Task<ActionResult<PipelineRunNode>> _GetPipelineRunNode([HttpTrigger(AuthorizationLevel.Anonymous, "Get", Route = "blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes/{node}")]HttpRequest req, ExecutionContext context, string organization, string pipeline, string run, string node)
        {
            var method = this.GetType().GetMethod("GetPipelineRunNode");
            if(method == null)
            {
                return new StatusCodeResult((int)HttpStatusCode.NotImplemented);
            }
            return (await ((Task<PipelineRunNode>)method.Invoke(this, new object[] { req, context, id })).ConfigureAwait(false));
        }

        [FunctionName("BlueOceanApi_GetPipelineRunNodeStep")]
        public async Task<ActionResult<PipelineStepImpl>> _GetPipelineRunNodeStep([HttpTrigger(AuthorizationLevel.Anonymous, "Get", Route = "blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes/{node}/steps/{step}")]HttpRequest req, ExecutionContext context, string organization, string pipeline, string run, string node, string step)
        {
            var method = this.GetType().GetMethod("GetPipelineRunNodeStep");
            if(method == null)
            {
                return new StatusCodeResult((int)HttpStatusCode.NotImplemented);
            }
            return (await ((Task<PipelineStepImpl>)method.Invoke(this, new object[] { req, context, id })).ConfigureAwait(false));
        }

        [FunctionName("BlueOceanApi_GetPipelineRunNodeStepLog")]
        public async Task<ActionResult<string>> _GetPipelineRunNodeStepLog([HttpTrigger(AuthorizationLevel.Anonymous, "Get", Route = "blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes/{node}/steps/{step}/log")]HttpRequest req, ExecutionContext context, string organization, string pipeline, string run, string node, string step)
        {
            var method = this.GetType().GetMethod("GetPipelineRunNodeStepLog");
            if(method == null)
            {
                return new StatusCodeResult((int)HttpStatusCode.NotImplemented);
            }
            return (await ((Task<string>)method.Invoke(this, new object[] { req, context, id })).ConfigureAwait(false));
        }

        [FunctionName("BlueOceanApi_GetPipelineRunNodeSteps")]
        public async Task<ActionResult<List<PipelineStepImpl>>> _GetPipelineRunNodeSteps([HttpTrigger(AuthorizationLevel.Anonymous, "Get", Route = "blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes/{node}/steps")]HttpRequest req, ExecutionContext context, string organization, string pipeline, string run, string node)
        {
            var method = this.GetType().GetMethod("GetPipelineRunNodeSteps");
            if(method == null)
            {
                return new StatusCodeResult((int)HttpStatusCode.NotImplemented);
            }
            return (await ((Task<List<PipelineStepImpl>>)method.Invoke(this, new object[] { req, context, id })).ConfigureAwait(false));
        }

        [FunctionName("BlueOceanApi_GetPipelineRunNodes")]
        public async Task<ActionResult<List<PipelineRunNode>>> _GetPipelineRunNodes([HttpTrigger(AuthorizationLevel.Anonymous, "Get", Route = "blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes")]HttpRequest req, ExecutionContext context, string organization, string pipeline, string run)
        {
            var method = this.GetType().GetMethod("GetPipelineRunNodes");
            if(method == null)
            {
                return new StatusCodeResult((int)HttpStatusCode.NotImplemented);
            }
            return (await ((Task<List<PipelineRunNode>>)method.Invoke(this, new object[] { req, context, id })).ConfigureAwait(false));
        }

        [FunctionName("BlueOceanApi_GetPipelineRuns")]
        public async Task<ActionResult<List<PipelineRun>>> _GetPipelineRuns([HttpTrigger(AuthorizationLevel.Anonymous, "Get", Route = "blue/rest/organizations/{organization}/pipelines/{pipeline}/runs")]HttpRequest req, ExecutionContext context, string organization, string pipeline)
        {
            var method = this.GetType().GetMethod("GetPipelineRuns");
            if(method == null)
            {
                return new StatusCodeResult((int)HttpStatusCode.NotImplemented);
            }
            return (await ((Task<List<PipelineRun>>)method.Invoke(this, new object[] { req, context, id })).ConfigureAwait(false));
        }

        [FunctionName("BlueOceanApi_GetPipelines")]
        public async Task<ActionResult<List<Pipeline>>> _GetPipelines([HttpTrigger(AuthorizationLevel.Anonymous, "Get", Route = "blue/rest/organizations/{organization}/pipelines/")]HttpRequest req, ExecutionContext context, string organization)
        {
            var method = this.GetType().GetMethod("GetPipelines");
            if(method == null)
            {
                return new StatusCodeResult((int)HttpStatusCode.NotImplemented);
            }
            return (await ((Task<List<Pipeline>>)method.Invoke(this, new object[] { req, context, id })).ConfigureAwait(false));
        }

        [FunctionName("BlueOceanApi_GetSCM")]
        public async Task<ActionResult<GithubScm>> _GetSCM([HttpTrigger(AuthorizationLevel.Anonymous, "Get", Route = "blue/rest/organizations/{organization}/scm/{scm}")]HttpRequest req, ExecutionContext context, string organization, string scm)
        {
            var method = this.GetType().GetMethod("GetSCM");
            if(method == null)
            {
                return new StatusCodeResult((int)HttpStatusCode.NotImplemented);
            }
            return (await ((Task<GithubScm>)method.Invoke(this, new object[] { req, context, id })).ConfigureAwait(false));
        }

        [FunctionName("BlueOceanApi_GetSCMOrganisationRepositories")]
        public async Task<ActionResult<List<GithubOrganization>>> _GetSCMOrganisationRepositories([HttpTrigger(AuthorizationLevel.Anonymous, "Get", Route = "blue/rest/organizations/{organization}/scm/{scm}/organizations/{scmOrganisation}/repositories")]HttpRequest req, ExecutionContext context, string organization, string scm, string scmOrganisation)
        {
            var method = this.GetType().GetMethod("GetSCMOrganisationRepositories");
            if(method == null)
            {
                return new StatusCodeResult((int)HttpStatusCode.NotImplemented);
            }
            return (await ((Task<List<GithubOrganization>>)method.Invoke(this, new object[] { req, context, id })).ConfigureAwait(false));
        }

        [FunctionName("BlueOceanApi_GetSCMOrganisationRepository")]
        public async Task<ActionResult<List<GithubOrganization>>> _GetSCMOrganisationRepository([HttpTrigger(AuthorizationLevel.Anonymous, "Get", Route = "blue/rest/organizations/{organization}/scm/{scm}/organizations/{scmOrganisation}/repositories/{repository}")]HttpRequest req, ExecutionContext context, string organization, string scm, string scmOrganisation, string repository)
        {
            var method = this.GetType().GetMethod("GetSCMOrganisationRepository");
            if(method == null)
            {
                return new StatusCodeResult((int)HttpStatusCode.NotImplemented);
            }
            return (await ((Task<List<GithubOrganization>>)method.Invoke(this, new object[] { req, context, id })).ConfigureAwait(false));
        }

        [FunctionName("BlueOceanApi_GetSCMOrganisations")]
        public async Task<ActionResult<List<GithubOrganization>>> _GetSCMOrganisations([HttpTrigger(AuthorizationLevel.Anonymous, "Get", Route = "blue/rest/organizations/{organization}/scm/{scm}/organizations")]HttpRequest req, ExecutionContext context, string organization, string scm)
        {
            var method = this.GetType().GetMethod("GetSCMOrganisations");
            if(method == null)
            {
                return new StatusCodeResult((int)HttpStatusCode.NotImplemented);
            }
            return (await ((Task<List<GithubOrganization>>)method.Invoke(this, new object[] { req, context, id })).ConfigureAwait(false));
        }

        [FunctionName("BlueOceanApi_GetUser")]
        public async Task<ActionResult<User>> _GetUser([HttpTrigger(AuthorizationLevel.Anonymous, "Get", Route = "blue/rest/organizations/{organization}/users/{user}")]HttpRequest req, ExecutionContext context, string organization, string user)
        {
            var method = this.GetType().GetMethod("GetUser");
            if(method == null)
            {
                return new StatusCodeResult((int)HttpStatusCode.NotImplemented);
            }
            return (await ((Task<User>)method.Invoke(this, new object[] { req, context, id })).ConfigureAwait(false));
        }

        [FunctionName("BlueOceanApi_GetUserFavorites")]
        public async Task<ActionResult<List<FavoriteImpl>>> _GetUserFavorites([HttpTrigger(AuthorizationLevel.Anonymous, "Get", Route = "blue/rest/users/{user}/favorites")]HttpRequest req, ExecutionContext context, string user)
        {
            var method = this.GetType().GetMethod("GetUserFavorites");
            if(method == null)
            {
                return new StatusCodeResult((int)HttpStatusCode.NotImplemented);
            }
            return (await ((Task<List<FavoriteImpl>>)method.Invoke(this, new object[] { req, context, id })).ConfigureAwait(false));
        }

        [FunctionName("BlueOceanApi_GetUsers")]
        public async Task<ActionResult<User>> _GetUsers([HttpTrigger(AuthorizationLevel.Anonymous, "Get", Route = "blue/rest/organizations/{organization}/users/")]HttpRequest req, ExecutionContext context, string organization)
        {
            var method = this.GetType().GetMethod("GetUsers");
            if(method == null)
            {
                return new StatusCodeResult((int)HttpStatusCode.NotImplemented);
            }
            return (await ((Task<User>)method.Invoke(this, new object[] { req, context, id })).ConfigureAwait(false));
        }

        [FunctionName("BlueOceanApi_PostPipelineRun")]
        public async Task<ActionResult<QueueItemImpl>> _PostPipelineRun([HttpTrigger(AuthorizationLevel.Anonymous, "Post", Route = "blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/replay")]HttpRequest req, ExecutionContext context, string organization, string pipeline, string run)
        {
            var method = this.GetType().GetMethod("PostPipelineRun");
            if(method == null)
            {
                return new StatusCodeResult((int)HttpStatusCode.NotImplemented);
            }
            return (await ((Task<QueueItemImpl>)method.Invoke(this, new object[] { req, context, id })).ConfigureAwait(false));
        }

        [FunctionName("BlueOceanApi_PostPipelineRuns")]
        public async Task<ActionResult<QueueItemImpl>> _PostPipelineRuns([HttpTrigger(AuthorizationLevel.Anonymous, "Post", Route = "blue/rest/organizations/{organization}/pipelines/{pipeline}/runs")]HttpRequest req, ExecutionContext context, string organization, string pipeline)
        {
            var method = this.GetType().GetMethod("PostPipelineRuns");
            if(method == null)
            {
                return new StatusCodeResult((int)HttpStatusCode.NotImplemented);
            }
            return (await ((Task<QueueItemImpl>)method.Invoke(this, new object[] { req, context, id })).ConfigureAwait(false));
        }

        [FunctionName("BlueOceanApi_PutPipelineFavorite")]
        public async Task<ActionResult<FavoriteImpl>> _PutPipelineFavorite([HttpTrigger(AuthorizationLevel.Anonymous, "Put", Route = "blue/rest/organizations/{organization}/pipelines/{pipeline}/favorite")]HttpRequest req, ExecutionContext context, string organization, string pipeline)
        {
            var method = this.GetType().GetMethod("PutPipelineFavorite");
            if(method == null)
            {
                return new StatusCodeResult((int)HttpStatusCode.NotImplemented);
            }
            return (await ((Task<FavoriteImpl>)method.Invoke(this, new object[] { req, context, id })).ConfigureAwait(false));
        }

        [FunctionName("BlueOceanApi_PutPipelineRun")]
        public async Task<ActionResult<PipelineRun>> _PutPipelineRun([HttpTrigger(AuthorizationLevel.Anonymous, "Put", Route = "blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/stop")]HttpRequest req, ExecutionContext context, string organization, string pipeline, string run)
        {
            var method = this.GetType().GetMethod("PutPipelineRun");
            if(method == null)
            {
                return new StatusCodeResult((int)HttpStatusCode.NotImplemented);
            }
            return (await ((Task<PipelineRun>)method.Invoke(this, new object[] { req, context, id })).ConfigureAwait(false));
        }

        [FunctionName("BlueOceanApi_Search")]
        public async Task<ActionResult<string>> _Search([HttpTrigger(AuthorizationLevel.Anonymous, "Get", Route = "blue/rest/search/")]HttpRequest req, ExecutionContext context)
        {
            var method = this.GetType().GetMethod("Search");
            if(method == null)
            {
                return new StatusCodeResult((int)HttpStatusCode.NotImplemented);
            }
            return (await ((Task<string>)method.Invoke(this, new object[] { req, context, id })).ConfigureAwait(false));
        }

        [FunctionName("BlueOceanApi_SearchClasses")]
        public async Task<ActionResult<string>> _SearchClasses([HttpTrigger(AuthorizationLevel.Anonymous, "Get", Route = "blue/rest/classes/")]HttpRequest req, ExecutionContext context)
        {
            var method = this.GetType().GetMethod("SearchClasses");
            if(method == null)
            {
                return new StatusCodeResult((int)HttpStatusCode.NotImplemented);
            }
            return (await ((Task<string>)method.Invoke(this, new object[] { req, context, id })).ConfigureAwait(false));
        }
    }
}
