using System;
using Nancy;
using Nancy.ModelBinding;
using System.Collections.Generic;
using Sharpility.Base;
using IO.Swagger..Models;
using IO.Swagger..Utils;
using NodaTime;

namespace IO.Swagger..Modules
{ 

    /// <summary>
    /// Module processing requests of BlueOcean domain.
    /// </summary>
    public sealed class BlueOceanModule : NancyModule
    {
        /// <summary>
        /// Sets up HTTP methods mappings.
        /// </summary>
        /// <param name="service">Service handling requests</param>
        public BlueOceanModule(BlueOceanService service) : base("/")
        { 
            Delete["/blue/rest/organizations/{organization}/pipelines/{pipeline}/queue/{queue}"] = parameters =>
            {
                var organization = Parameters.ValueOf<string>(parameters, Context.Request, "organization", ParameterType.Path);
                var pipeline = Parameters.ValueOf<string>(parameters, Context.Request, "pipeline", ParameterType.Path);
                var queue = Parameters.ValueOf<string>(parameters, Context.Request, "queue", ParameterType.Path);
                Preconditions.IsNotNull(organization, "Required parameter: 'organization' is missing at 'DeletePipelineQueueItem'");
                
                Preconditions.IsNotNull(pipeline, "Required parameter: 'pipeline' is missing at 'DeletePipelineQueueItem'");
                
                Preconditions.IsNotNull(queue, "Required parameter: 'queue' is missing at 'DeletePipelineQueueItem'");
                
                service.DeletePipelineQueueItem(Context, organization, pipeline, queue);
                return new Response { ContentType = "application/json"};
            };

            Get["/blue/rest/organizations/{organization}/user/"] = parameters =>
            {
                var organization = Parameters.ValueOf<string>(parameters, Context.Request, "organization", ParameterType.Path);
                Preconditions.IsNotNull(organization, "Required parameter: 'organization' is missing at 'GetAuthenticatedUser'");
                
                return service.GetAuthenticatedUser(Context, organization);
            };

            Get["/blue/rest/classes/{class}"] = parameters =>
            {
                var class = Parameters.ValueOf<string>(parameters, Context.Request, "class", ParameterType.Path);
                Preconditions.IsNotNull(class, "Required parameter: 'class' is missing at 'GetClasses'");
                
                return service.GetClasses(Context, class);
            };

            Get["/blue/rest/organizations/{organization}"] = parameters =>
            {
                var organization = Parameters.ValueOf<string>(parameters, Context.Request, "organization", ParameterType.Path);
                Preconditions.IsNotNull(organization, "Required parameter: 'organization' is missing at 'GetOrganisation'");
                
                return service.GetOrganisation(Context, organization);
            };

            Get["/blue/rest/organizations/"] = parameters =>
            {
                
                return service.GetOrganisations(Context);
            };

            Get["/blue/rest/organizations/{organization}/pipelines/{pipeline}"] = parameters =>
            {
                var organization = Parameters.ValueOf<string>(parameters, Context.Request, "organization", ParameterType.Path);
                var pipeline = Parameters.ValueOf<string>(parameters, Context.Request, "pipeline", ParameterType.Path);
                Preconditions.IsNotNull(organization, "Required parameter: 'organization' is missing at 'GetPipeline'");
                
                Preconditions.IsNotNull(pipeline, "Required parameter: 'pipeline' is missing at 'GetPipeline'");
                
                return service.GetPipeline(Context, organization, pipeline);
            };

            Get["/blue/rest/organizations/{organization}/pipelines/{pipeline}/activities"] = parameters =>
            {
                var organization = Parameters.ValueOf<string>(parameters, Context.Request, "organization", ParameterType.Path);
                var pipeline = Parameters.ValueOf<string>(parameters, Context.Request, "pipeline", ParameterType.Path);
                Preconditions.IsNotNull(organization, "Required parameter: 'organization' is missing at 'GetPipelineActivities'");
                
                Preconditions.IsNotNull(pipeline, "Required parameter: 'pipeline' is missing at 'GetPipelineActivities'");
                
                return service.GetPipelineActivities(Context, organization, pipeline);
            };

            Get["/blue/rest/organizations/{organization}/pipelines/{pipeline}/branches/{branch}/"] = parameters =>
            {
                var organization = Parameters.ValueOf<string>(parameters, Context.Request, "organization", ParameterType.Path);
                var pipeline = Parameters.ValueOf<string>(parameters, Context.Request, "pipeline", ParameterType.Path);
                var branch = Parameters.ValueOf<string>(parameters, Context.Request, "branch", ParameterType.Path);
                Preconditions.IsNotNull(organization, "Required parameter: 'organization' is missing at 'GetPipelineBranch'");
                
                Preconditions.IsNotNull(pipeline, "Required parameter: 'pipeline' is missing at 'GetPipelineBranch'");
                
                Preconditions.IsNotNull(branch, "Required parameter: 'branch' is missing at 'GetPipelineBranch'");
                
                return service.GetPipelineBranch(Context, organization, pipeline, branch);
            };

            Get["/blue/rest/organizations/{organization}/pipelines/{pipeline}/branches/{branch}/runs/{run}"] = parameters =>
            {
                var organization = Parameters.ValueOf<string>(parameters, Context.Request, "organization", ParameterType.Path);
                var pipeline = Parameters.ValueOf<string>(parameters, Context.Request, "pipeline", ParameterType.Path);
                var branch = Parameters.ValueOf<string>(parameters, Context.Request, "branch", ParameterType.Path);
                var run = Parameters.ValueOf<string>(parameters, Context.Request, "run", ParameterType.Path);
                Preconditions.IsNotNull(organization, "Required parameter: 'organization' is missing at 'GetPipelineBranchRun'");
                
                Preconditions.IsNotNull(pipeline, "Required parameter: 'pipeline' is missing at 'GetPipelineBranchRun'");
                
                Preconditions.IsNotNull(branch, "Required parameter: 'branch' is missing at 'GetPipelineBranchRun'");
                
                Preconditions.IsNotNull(run, "Required parameter: 'run' is missing at 'GetPipelineBranchRun'");
                
                return service.GetPipelineBranchRun(Context, organization, pipeline, branch, run);
            };

            Get["/blue/rest/organizations/{organization}/pipelines/{pipeline}/branches"] = parameters =>
            {
                var organization = Parameters.ValueOf<string>(parameters, Context.Request, "organization", ParameterType.Path);
                var pipeline = Parameters.ValueOf<string>(parameters, Context.Request, "pipeline", ParameterType.Path);
                Preconditions.IsNotNull(organization, "Required parameter: 'organization' is missing at 'GetPipelineBranches'");
                
                Preconditions.IsNotNull(pipeline, "Required parameter: 'pipeline' is missing at 'GetPipelineBranches'");
                
                return service.GetPipelineBranches(Context, organization, pipeline);
            };

            Get["/blue/rest/organizations/{organization}/pipelines/{folder}/"] = parameters =>
            {
                var organization = Parameters.ValueOf<string>(parameters, Context.Request, "organization", ParameterType.Path);
                var folder = Parameters.ValueOf<string>(parameters, Context.Request, "folder", ParameterType.Path);
                Preconditions.IsNotNull(organization, "Required parameter: 'organization' is missing at 'GetPipelineFolder'");
                
                Preconditions.IsNotNull(folder, "Required parameter: 'folder' is missing at 'GetPipelineFolder'");
                
                return service.GetPipelineFolder(Context, organization, folder);
            };

            Get["/blue/rest/organizations/{organization}/pipelines/{folder}/pipelines/{pipeline}"] = parameters =>
            {
                var organization = Parameters.ValueOf<string>(parameters, Context.Request, "organization", ParameterType.Path);
                var pipeline = Parameters.ValueOf<string>(parameters, Context.Request, "pipeline", ParameterType.Path);
                var folder = Parameters.ValueOf<string>(parameters, Context.Request, "folder", ParameterType.Path);
                Preconditions.IsNotNull(organization, "Required parameter: 'organization' is missing at 'GetPipelineFolderPipeline'");
                
                Preconditions.IsNotNull(pipeline, "Required parameter: 'pipeline' is missing at 'GetPipelineFolderPipeline'");
                
                Preconditions.IsNotNull(folder, "Required parameter: 'folder' is missing at 'GetPipelineFolderPipeline'");
                
                return service.GetPipelineFolderPipeline(Context, organization, pipeline, folder);
            };

            Get["/blue/rest/organizations/{organization}/pipelines/{pipeline}/queue"] = parameters =>
            {
                var organization = Parameters.ValueOf<string>(parameters, Context.Request, "organization", ParameterType.Path);
                var pipeline = Parameters.ValueOf<string>(parameters, Context.Request, "pipeline", ParameterType.Path);
                Preconditions.IsNotNull(organization, "Required parameter: 'organization' is missing at 'GetPipelineQueue'");
                
                Preconditions.IsNotNull(pipeline, "Required parameter: 'pipeline' is missing at 'GetPipelineQueue'");
                
                return service.GetPipelineQueue(Context, organization, pipeline);
            };

            Get["/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}"] = parameters =>
            {
                var organization = Parameters.ValueOf<string>(parameters, Context.Request, "organization", ParameterType.Path);
                var pipeline = Parameters.ValueOf<string>(parameters, Context.Request, "pipeline", ParameterType.Path);
                var run = Parameters.ValueOf<string>(parameters, Context.Request, "run", ParameterType.Path);
                Preconditions.IsNotNull(organization, "Required parameter: 'organization' is missing at 'GetPipelineRun'");
                
                Preconditions.IsNotNull(pipeline, "Required parameter: 'pipeline' is missing at 'GetPipelineRun'");
                
                Preconditions.IsNotNull(run, "Required parameter: 'run' is missing at 'GetPipelineRun'");
                
                return service.GetPipelineRun(Context, organization, pipeline, run);
            };

            Get["/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/log"] = parameters =>
            {
                var organization = Parameters.ValueOf<string>(parameters, Context.Request, "organization", ParameterType.Path);
                var pipeline = Parameters.ValueOf<string>(parameters, Context.Request, "pipeline", ParameterType.Path);
                var run = Parameters.ValueOf<string>(parameters, Context.Request, "run", ParameterType.Path);
                var start = Parameters.ValueOf<int?>(parameters, Context.Request, "start", ParameterType.Query);
                var download = Parameters.ValueOf<bool?>(parameters, Context.Request, "download", ParameterType.Query);
                Preconditions.IsNotNull(organization, "Required parameter: 'organization' is missing at 'GetPipelineRunLog'");
                
                Preconditions.IsNotNull(pipeline, "Required parameter: 'pipeline' is missing at 'GetPipelineRunLog'");
                
                Preconditions.IsNotNull(run, "Required parameter: 'run' is missing at 'GetPipelineRunLog'");
                
                return service.GetPipelineRunLog(Context, organization, pipeline, run, start, download);
            };

            Get["/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes/{node}"] = parameters =>
            {
                var organization = Parameters.ValueOf<string>(parameters, Context.Request, "organization", ParameterType.Path);
                var pipeline = Parameters.ValueOf<string>(parameters, Context.Request, "pipeline", ParameterType.Path);
                var run = Parameters.ValueOf<string>(parameters, Context.Request, "run", ParameterType.Path);
                var node = Parameters.ValueOf<string>(parameters, Context.Request, "node", ParameterType.Path);
                Preconditions.IsNotNull(organization, "Required parameter: 'organization' is missing at 'GetPipelineRunNode'");
                
                Preconditions.IsNotNull(pipeline, "Required parameter: 'pipeline' is missing at 'GetPipelineRunNode'");
                
                Preconditions.IsNotNull(run, "Required parameter: 'run' is missing at 'GetPipelineRunNode'");
                
                Preconditions.IsNotNull(node, "Required parameter: 'node' is missing at 'GetPipelineRunNode'");
                
                return service.GetPipelineRunNode(Context, organization, pipeline, run, node);
            };

            Get["/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes/{node}/steps/{step}"] = parameters =>
            {
                var organization = Parameters.ValueOf<string>(parameters, Context.Request, "organization", ParameterType.Path);
                var pipeline = Parameters.ValueOf<string>(parameters, Context.Request, "pipeline", ParameterType.Path);
                var run = Parameters.ValueOf<string>(parameters, Context.Request, "run", ParameterType.Path);
                var node = Parameters.ValueOf<string>(parameters, Context.Request, "node", ParameterType.Path);
                var step = Parameters.ValueOf<string>(parameters, Context.Request, "step", ParameterType.Path);
                Preconditions.IsNotNull(organization, "Required parameter: 'organization' is missing at 'GetPipelineRunNodeStep'");
                
                Preconditions.IsNotNull(pipeline, "Required parameter: 'pipeline' is missing at 'GetPipelineRunNodeStep'");
                
                Preconditions.IsNotNull(run, "Required parameter: 'run' is missing at 'GetPipelineRunNodeStep'");
                
                Preconditions.IsNotNull(node, "Required parameter: 'node' is missing at 'GetPipelineRunNodeStep'");
                
                Preconditions.IsNotNull(step, "Required parameter: 'step' is missing at 'GetPipelineRunNodeStep'");
                
                return service.GetPipelineRunNodeStep(Context, organization, pipeline, run, node, step);
            };

            Get["/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes/{node}/steps/{step}/log"] = parameters =>
            {
                var organization = Parameters.ValueOf<string>(parameters, Context.Request, "organization", ParameterType.Path);
                var pipeline = Parameters.ValueOf<string>(parameters, Context.Request, "pipeline", ParameterType.Path);
                var run = Parameters.ValueOf<string>(parameters, Context.Request, "run", ParameterType.Path);
                var node = Parameters.ValueOf<string>(parameters, Context.Request, "node", ParameterType.Path);
                var step = Parameters.ValueOf<string>(parameters, Context.Request, "step", ParameterType.Path);
                Preconditions.IsNotNull(organization, "Required parameter: 'organization' is missing at 'GetPipelineRunNodeStepLog'");
                
                Preconditions.IsNotNull(pipeline, "Required parameter: 'pipeline' is missing at 'GetPipelineRunNodeStepLog'");
                
                Preconditions.IsNotNull(run, "Required parameter: 'run' is missing at 'GetPipelineRunNodeStepLog'");
                
                Preconditions.IsNotNull(node, "Required parameter: 'node' is missing at 'GetPipelineRunNodeStepLog'");
                
                Preconditions.IsNotNull(step, "Required parameter: 'step' is missing at 'GetPipelineRunNodeStepLog'");
                
                return service.GetPipelineRunNodeStepLog(Context, organization, pipeline, run, node, step);
            };

            Get["/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes/{node}/steps"] = parameters =>
            {
                var organization = Parameters.ValueOf<string>(parameters, Context.Request, "organization", ParameterType.Path);
                var pipeline = Parameters.ValueOf<string>(parameters, Context.Request, "pipeline", ParameterType.Path);
                var run = Parameters.ValueOf<string>(parameters, Context.Request, "run", ParameterType.Path);
                var node = Parameters.ValueOf<string>(parameters, Context.Request, "node", ParameterType.Path);
                Preconditions.IsNotNull(organization, "Required parameter: 'organization' is missing at 'GetPipelineRunNodeSteps'");
                
                Preconditions.IsNotNull(pipeline, "Required parameter: 'pipeline' is missing at 'GetPipelineRunNodeSteps'");
                
                Preconditions.IsNotNull(run, "Required parameter: 'run' is missing at 'GetPipelineRunNodeSteps'");
                
                Preconditions.IsNotNull(node, "Required parameter: 'node' is missing at 'GetPipelineRunNodeSteps'");
                
                return service.GetPipelineRunNodeSteps(Context, organization, pipeline, run, node);
            };

            Get["/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes"] = parameters =>
            {
                var organization = Parameters.ValueOf<string>(parameters, Context.Request, "organization", ParameterType.Path);
                var pipeline = Parameters.ValueOf<string>(parameters, Context.Request, "pipeline", ParameterType.Path);
                var run = Parameters.ValueOf<string>(parameters, Context.Request, "run", ParameterType.Path);
                Preconditions.IsNotNull(organization, "Required parameter: 'organization' is missing at 'GetPipelineRunNodes'");
                
                Preconditions.IsNotNull(pipeline, "Required parameter: 'pipeline' is missing at 'GetPipelineRunNodes'");
                
                Preconditions.IsNotNull(run, "Required parameter: 'run' is missing at 'GetPipelineRunNodes'");
                
                return service.GetPipelineRunNodes(Context, organization, pipeline, run);
            };

            Get["/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs"] = parameters =>
            {
                var organization = Parameters.ValueOf<string>(parameters, Context.Request, "organization", ParameterType.Path);
                var pipeline = Parameters.ValueOf<string>(parameters, Context.Request, "pipeline", ParameterType.Path);
                Preconditions.IsNotNull(organization, "Required parameter: 'organization' is missing at 'GetPipelineRuns'");
                
                Preconditions.IsNotNull(pipeline, "Required parameter: 'pipeline' is missing at 'GetPipelineRuns'");
                
                return service.GetPipelineRuns(Context, organization, pipeline);
            };

            Get["/blue/rest/organizations/{organization}/pipelines/"] = parameters =>
            {
                var organization = Parameters.ValueOf<string>(parameters, Context.Request, "organization", ParameterType.Path);
                Preconditions.IsNotNull(organization, "Required parameter: 'organization' is missing at 'GetPipelines'");
                
                return service.GetPipelines(Context, organization);
            };

            Get["/blue/rest/organizations/{organization}/scm/{scm}"] = parameters =>
            {
                var organization = Parameters.ValueOf<string>(parameters, Context.Request, "organization", ParameterType.Path);
                var scm = Parameters.ValueOf<string>(parameters, Context.Request, "scm", ParameterType.Path);
                Preconditions.IsNotNull(organization, "Required parameter: 'organization' is missing at 'GetSCM'");
                
                Preconditions.IsNotNull(scm, "Required parameter: 'scm' is missing at 'GetSCM'");
                
                return service.GetSCM(Context, organization, scm);
            };

            Get["/blue/rest/organizations/{organization}/scm/{scm}/organizations/{scmOrganisation}/repositories"] = parameters =>
            {
                var organization = Parameters.ValueOf<string>(parameters, Context.Request, "organization", ParameterType.Path);
                var scm = Parameters.ValueOf<string>(parameters, Context.Request, "scm", ParameterType.Path);
                var scmOrganisation = Parameters.ValueOf<string>(parameters, Context.Request, "scmOrganisation", ParameterType.Path);
                var credentialId = Parameters.ValueOf<string>(parameters, Context.Request, "credentialId", ParameterType.Query);
                var pageSize = Parameters.ValueOf<int?>(parameters, Context.Request, "pageSize", ParameterType.Query);
                var pageNumber = Parameters.ValueOf<int?>(parameters, Context.Request, "pageNumber", ParameterType.Query);
                Preconditions.IsNotNull(organization, "Required parameter: 'organization' is missing at 'GetSCMOrganisationRepositories'");
                
                Preconditions.IsNotNull(scm, "Required parameter: 'scm' is missing at 'GetSCMOrganisationRepositories'");
                
                Preconditions.IsNotNull(scmOrganisation, "Required parameter: 'scmOrganisation' is missing at 'GetSCMOrganisationRepositories'");
                
                return service.GetSCMOrganisationRepositories(Context, organization, scm, scmOrganisation, credentialId, pageSize, pageNumber);
            };

            Get["/blue/rest/organizations/{organization}/scm/{scm}/organizations/{scmOrganisation}/repositories/{repository}"] = parameters =>
            {
                var organization = Parameters.ValueOf<string>(parameters, Context.Request, "organization", ParameterType.Path);
                var scm = Parameters.ValueOf<string>(parameters, Context.Request, "scm", ParameterType.Path);
                var scmOrganisation = Parameters.ValueOf<string>(parameters, Context.Request, "scmOrganisation", ParameterType.Path);
                var repository = Parameters.ValueOf<string>(parameters, Context.Request, "repository", ParameterType.Path);
                var credentialId = Parameters.ValueOf<string>(parameters, Context.Request, "credentialId", ParameterType.Query);
                Preconditions.IsNotNull(organization, "Required parameter: 'organization' is missing at 'GetSCMOrganisationRepository'");
                
                Preconditions.IsNotNull(scm, "Required parameter: 'scm' is missing at 'GetSCMOrganisationRepository'");
                
                Preconditions.IsNotNull(scmOrganisation, "Required parameter: 'scmOrganisation' is missing at 'GetSCMOrganisationRepository'");
                
                Preconditions.IsNotNull(repository, "Required parameter: 'repository' is missing at 'GetSCMOrganisationRepository'");
                
                return service.GetSCMOrganisationRepository(Context, organization, scm, scmOrganisation, repository, credentialId);
            };

            Get["/blue/rest/organizations/{organization}/scm/{scm}/organizations"] = parameters =>
            {
                var organization = Parameters.ValueOf<string>(parameters, Context.Request, "organization", ParameterType.Path);
                var scm = Parameters.ValueOf<string>(parameters, Context.Request, "scm", ParameterType.Path);
                var credentialId = Parameters.ValueOf<string>(parameters, Context.Request, "credentialId", ParameterType.Query);
                Preconditions.IsNotNull(organization, "Required parameter: 'organization' is missing at 'GetSCMOrganisations'");
                
                Preconditions.IsNotNull(scm, "Required parameter: 'scm' is missing at 'GetSCMOrganisations'");
                
                return service.GetSCMOrganisations(Context, organization, scm, credentialId);
            };

            Get["/blue/rest/organizations/{organization}/users/{user}"] = parameters =>
            {
                var organization = Parameters.ValueOf<string>(parameters, Context.Request, "organization", ParameterType.Path);
                var user = Parameters.ValueOf<string>(parameters, Context.Request, "user", ParameterType.Path);
                Preconditions.IsNotNull(organization, "Required parameter: 'organization' is missing at 'GetUser'");
                
                Preconditions.IsNotNull(user, "Required parameter: 'user' is missing at 'GetUser'");
                
                return service.GetUser(Context, organization, user);
            };

            Get["/blue/rest/users/{user}/favorites"] = parameters =>
            {
                var user = Parameters.ValueOf<string>(parameters, Context.Request, "user", ParameterType.Path);
                Preconditions.IsNotNull(user, "Required parameter: 'user' is missing at 'GetUserFavorites'");
                
                return service.GetUserFavorites(Context, user);
            };

            Get["/blue/rest/organizations/{organization}/users/"] = parameters =>
            {
                var organization = Parameters.ValueOf<string>(parameters, Context.Request, "organization", ParameterType.Path);
                Preconditions.IsNotNull(organization, "Required parameter: 'organization' is missing at 'GetUsers'");
                
                return service.GetUsers(Context, organization);
            };

            Post["/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/replay"] = parameters =>
            {
                var organization = Parameters.ValueOf<string>(parameters, Context.Request, "organization", ParameterType.Path);
                var pipeline = Parameters.ValueOf<string>(parameters, Context.Request, "pipeline", ParameterType.Path);
                var run = Parameters.ValueOf<string>(parameters, Context.Request, "run", ParameterType.Path);
                Preconditions.IsNotNull(organization, "Required parameter: 'organization' is missing at 'PostPipelineRun'");
                
                Preconditions.IsNotNull(pipeline, "Required parameter: 'pipeline' is missing at 'PostPipelineRun'");
                
                Preconditions.IsNotNull(run, "Required parameter: 'run' is missing at 'PostPipelineRun'");
                
                return service.PostPipelineRun(Context, organization, pipeline, run);
            };

            Post["/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs"] = parameters =>
            {
                var organization = Parameters.ValueOf<string>(parameters, Context.Request, "organization", ParameterType.Path);
                var pipeline = Parameters.ValueOf<string>(parameters, Context.Request, "pipeline", ParameterType.Path);
                Preconditions.IsNotNull(organization, "Required parameter: 'organization' is missing at 'PostPipelineRuns'");
                
                Preconditions.IsNotNull(pipeline, "Required parameter: 'pipeline' is missing at 'PostPipelineRuns'");
                
                return service.PostPipelineRuns(Context, organization, pipeline);
            };

            Put["/blue/rest/organizations/{organization}/pipelines/{pipeline}/favorite"] = parameters =>
            {
                var organization = Parameters.ValueOf<string>(parameters, Context.Request, "organization", ParameterType.Path);
                var pipeline = Parameters.ValueOf<string>(parameters, Context.Request, "pipeline", ParameterType.Path);
                var body = this.Bind<Body>();
                Preconditions.IsNotNull(organization, "Required parameter: 'organization' is missing at 'PutPipelineFavorite'");
                
                Preconditions.IsNotNull(pipeline, "Required parameter: 'pipeline' is missing at 'PutPipelineFavorite'");
                
                Preconditions.IsNotNull(body, "Required parameter: 'body' is missing at 'PutPipelineFavorite'");
                
                return service.PutPipelineFavorite(Context, organization, pipeline, body);
            };

            Put["/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/stop"] = parameters =>
            {
                var organization = Parameters.ValueOf<string>(parameters, Context.Request, "organization", ParameterType.Path);
                var pipeline = Parameters.ValueOf<string>(parameters, Context.Request, "pipeline", ParameterType.Path);
                var run = Parameters.ValueOf<string>(parameters, Context.Request, "run", ParameterType.Path);
                var blocking = Parameters.ValueOf<string>(parameters, Context.Request, "blocking", ParameterType.Query);
                var timeOutInSecs = Parameters.ValueOf<int?>(parameters, Context.Request, "timeOutInSecs", ParameterType.Query);
                Preconditions.IsNotNull(organization, "Required parameter: 'organization' is missing at 'PutPipelineRun'");
                
                Preconditions.IsNotNull(pipeline, "Required parameter: 'pipeline' is missing at 'PutPipelineRun'");
                
                Preconditions.IsNotNull(run, "Required parameter: 'run' is missing at 'PutPipelineRun'");
                
                return service.PutPipelineRun(Context, organization, pipeline, run, blocking, timeOutInSecs);
            };

            Get["/blue/rest/search/"] = parameters =>
            {
                var q = Parameters.ValueOf<string>(parameters, Context.Request, "q", ParameterType.Query);
                Preconditions.IsNotNull(q, "Required parameter: 'q' is missing at 'Search'");
                
                return service.Search(Context, q);
            };

            Get["/blue/rest/classes/"] = parameters =>
            {
                var q = Parameters.ValueOf<string>(parameters, Context.Request, "q", ParameterType.Query);
                Preconditions.IsNotNull(q, "Required parameter: 'q' is missing at 'SearchClasses'");
                
                return service.SearchClasses(Context, q);
            };
        }
    }

    /// <summary>
    /// Service handling BlueOcean requests.
    /// </summary>
    public interface BlueOceanService
    {
        /// <summary>
        /// Delete queue item from an organization pipeline queue
        /// </summary>
        /// <param name="context">Context of request</param>
        /// <param name="organization">Name of the organization</param>
        /// <param name="pipeline">Name of the pipeline</param>
        /// <param name="queue">Name of the queue item</param>
        /// <returns></returns>
        void DeletePipelineQueueItem(NancyContext context, string organization, string pipeline, string queue);

        /// <summary>
        /// Retrieve authenticated user details for an organization
        /// </summary>
        /// <param name="context">Context of request</param>
        /// <param name="organization">Name of the organization</param>
        /// <returns>User</returns>
        User GetAuthenticatedUser(NancyContext context, string organization);

        /// <summary>
        /// Get a list of class names supported by a given class
        /// </summary>
        /// <param name="context">Context of request</param>
        /// <param name="class">Name of the class</param>
        /// <returns>string</returns>
        string GetClasses(NancyContext context, string class);

        /// <summary>
        /// Retrieve organization details
        /// </summary>
        /// <param name="context">Context of request</param>
        /// <param name="organization">Name of the organization</param>
        /// <returns>Organisation</returns>
        Organisation GetOrganisation(NancyContext context, string organization);

        /// <summary>
        /// Retrieve all organizations details
        /// </summary>
        /// <param name="context">Context of request</param>
        /// <returns>Organisations</returns>
        Organisations GetOrganisations(NancyContext context);

        /// <summary>
        /// Retrieve pipeline details for an organization
        /// </summary>
        /// <param name="context">Context of request</param>
        /// <param name="organization">Name of the organization</param>
        /// <param name="pipeline">Name of the pipeline</param>
        /// <returns>Pipeline</returns>
        Pipeline GetPipeline(NancyContext context, string organization, string pipeline);

        /// <summary>
        /// Retrieve all activities details for an organization pipeline
        /// </summary>
        /// <param name="context">Context of request</param>
        /// <param name="organization">Name of the organization</param>
        /// <param name="pipeline">Name of the pipeline</param>
        /// <returns>PipelineActivities</returns>
        PipelineActivities GetPipelineActivities(NancyContext context, string organization, string pipeline);

        /// <summary>
        /// Retrieve branch details for an organization pipeline
        /// </summary>
        /// <param name="context">Context of request</param>
        /// <param name="organization">Name of the organization</param>
        /// <param name="pipeline">Name of the pipeline</param>
        /// <param name="branch">Name of the branch</param>
        /// <returns>BranchImpl</returns>
        BranchImpl GetPipelineBranch(NancyContext context, string organization, string pipeline, string branch);

        /// <summary>
        /// Retrieve branch run details for an organization pipeline
        /// </summary>
        /// <param name="context">Context of request</param>
        /// <param name="organization">Name of the organization</param>
        /// <param name="pipeline">Name of the pipeline</param>
        /// <param name="branch">Name of the branch</param>
        /// <param name="run">Name of the run</param>
        /// <returns>PipelineRun</returns>
        PipelineRun GetPipelineBranchRun(NancyContext context, string organization, string pipeline, string branch, string run);

        /// <summary>
        /// Retrieve all branches details for an organization pipeline
        /// </summary>
        /// <param name="context">Context of request</param>
        /// <param name="organization">Name of the organization</param>
        /// <param name="pipeline">Name of the pipeline</param>
        /// <returns>MultibranchPipeline</returns>
        MultibranchPipeline GetPipelineBranches(NancyContext context, string organization, string pipeline);

        /// <summary>
        /// Retrieve pipeline folder for an organization
        /// </summary>
        /// <param name="context">Context of request</param>
        /// <param name="organization">Name of the organization</param>
        /// <param name="folder">Name of the folder</param>
        /// <returns>PipelineFolderImpl</returns>
        PipelineFolderImpl GetPipelineFolder(NancyContext context, string organization, string folder);

        /// <summary>
        /// Retrieve pipeline details for an organization folder
        /// </summary>
        /// <param name="context">Context of request</param>
        /// <param name="organization">Name of the organization</param>
        /// <param name="pipeline">Name of the pipeline</param>
        /// <param name="folder">Name of the folder</param>
        /// <returns>PipelineImpl</returns>
        PipelineImpl GetPipelineFolderPipeline(NancyContext context, string organization, string pipeline, string folder);

        /// <summary>
        /// Retrieve queue details for an organization pipeline
        /// </summary>
        /// <param name="context">Context of request</param>
        /// <param name="organization">Name of the organization</param>
        /// <param name="pipeline">Name of the pipeline</param>
        /// <returns>PipelineQueue</returns>
        PipelineQueue GetPipelineQueue(NancyContext context, string organization, string pipeline);

        /// <summary>
        /// Retrieve run details for an organization pipeline
        /// </summary>
        /// <param name="context">Context of request</param>
        /// <param name="organization">Name of the organization</param>
        /// <param name="pipeline">Name of the pipeline</param>
        /// <param name="run">Name of the run</param>
        /// <returns>PipelineRun</returns>
        PipelineRun GetPipelineRun(NancyContext context, string organization, string pipeline, string run);

        /// <summary>
        /// Get log for a pipeline run
        /// </summary>
        /// <param name="context">Context of request</param>
        /// <param name="organization">Name of the organization</param>
        /// <param name="pipeline">Name of the pipeline</param>
        /// <param name="run">Name of the run</param>
        /// <param name="start">Start position of the log (optional)</param>
        /// <param name="download">Set to true in order to download the file, otherwise it&#39;s passed as a response body (optional)</param>
        /// <returns>string</returns>
        string GetPipelineRunLog(NancyContext context, string organization, string pipeline, string run, int? start, bool? download);

        /// <summary>
        /// Retrieve run node details for an organization pipeline
        /// </summary>
        /// <param name="context">Context of request</param>
        /// <param name="organization">Name of the organization</param>
        /// <param name="pipeline">Name of the pipeline</param>
        /// <param name="run">Name of the run</param>
        /// <param name="node">Name of the node</param>
        /// <returns>PipelineRunNode</returns>
        PipelineRunNode GetPipelineRunNode(NancyContext context, string organization, string pipeline, string run, string node);

        /// <summary>
        /// Retrieve run node details for an organization pipeline
        /// </summary>
        /// <param name="context">Context of request</param>
        /// <param name="organization">Name of the organization</param>
        /// <param name="pipeline">Name of the pipeline</param>
        /// <param name="run">Name of the run</param>
        /// <param name="node">Name of the node</param>
        /// <param name="step">Name of the step</param>
        /// <returns>PipelineStepImpl</returns>
        PipelineStepImpl GetPipelineRunNodeStep(NancyContext context, string organization, string pipeline, string run, string node, string step);

        /// <summary>
        /// Get log for a pipeline run node step
        /// </summary>
        /// <param name="context">Context of request</param>
        /// <param name="organization">Name of the organization</param>
        /// <param name="pipeline">Name of the pipeline</param>
        /// <param name="run">Name of the run</param>
        /// <param name="node">Name of the node</param>
        /// <param name="step">Name of the step</param>
        /// <returns>string</returns>
        string GetPipelineRunNodeStepLog(NancyContext context, string organization, string pipeline, string run, string node, string step);

        /// <summary>
        /// Retrieve run node steps details for an organization pipeline
        /// </summary>
        /// <param name="context">Context of request</param>
        /// <param name="organization">Name of the organization</param>
        /// <param name="pipeline">Name of the pipeline</param>
        /// <param name="run">Name of the run</param>
        /// <param name="node">Name of the node</param>
        /// <returns>PipelineRunNodeSteps</returns>
        PipelineRunNodeSteps GetPipelineRunNodeSteps(NancyContext context, string organization, string pipeline, string run, string node);

        /// <summary>
        /// Retrieve run nodes details for an organization pipeline
        /// </summary>
        /// <param name="context">Context of request</param>
        /// <param name="organization">Name of the organization</param>
        /// <param name="pipeline">Name of the pipeline</param>
        /// <param name="run">Name of the run</param>
        /// <returns>PipelineRunNodes</returns>
        PipelineRunNodes GetPipelineRunNodes(NancyContext context, string organization, string pipeline, string run);

        /// <summary>
        /// Retrieve all runs details for an organization pipeline
        /// </summary>
        /// <param name="context">Context of request</param>
        /// <param name="organization">Name of the organization</param>
        /// <param name="pipeline">Name of the pipeline</param>
        /// <returns>PipelineRuns</returns>
        PipelineRuns GetPipelineRuns(NancyContext context, string organization, string pipeline);

        /// <summary>
        /// Retrieve all pipelines details for an organization
        /// </summary>
        /// <param name="context">Context of request</param>
        /// <param name="organization">Name of the organization</param>
        /// <returns>Pipelines</returns>
        Pipelines GetPipelines(NancyContext context, string organization);

        /// <summary>
        /// Retrieve SCM details for an organization
        /// </summary>
        /// <param name="context">Context of request</param>
        /// <param name="organization">Name of the organization</param>
        /// <param name="scm">Name of SCM</param>
        /// <returns>GithubScm</returns>
        GithubScm GetSCM(NancyContext context, string organization, string scm);

        /// <summary>
        /// Retrieve SCM organization repositories details for an organization
        /// </summary>
        /// <param name="context">Context of request</param>
        /// <param name="organization">Name of the organization</param>
        /// <param name="scm">Name of SCM</param>
        /// <param name="scmOrganisation">Name of the SCM organization</param>
        /// <param name="credentialId">Credential ID (optional)</param>
        /// <param name="pageSize">Number of items in a page (optional)</param>
        /// <param name="pageNumber">Page number (optional)</param>
        /// <returns>ScmOrganisations</returns>
        ScmOrganisations GetSCMOrganisationRepositories(NancyContext context, string organization, string scm, string scmOrganisation, string credentialId, int? pageSize, int? pageNumber);

        /// <summary>
        /// Retrieve SCM organization repository details for an organization
        /// </summary>
        /// <param name="context">Context of request</param>
        /// <param name="organization">Name of the organization</param>
        /// <param name="scm">Name of SCM</param>
        /// <param name="scmOrganisation">Name of the SCM organization</param>
        /// <param name="repository">Name of the SCM repository</param>
        /// <param name="credentialId">Credential ID (optional)</param>
        /// <returns>ScmOrganisations</returns>
        ScmOrganisations GetSCMOrganisationRepository(NancyContext context, string organization, string scm, string scmOrganisation, string repository, string credentialId);

        /// <summary>
        /// Retrieve SCM organizations details for an organization
        /// </summary>
        /// <param name="context">Context of request</param>
        /// <param name="organization">Name of the organization</param>
        /// <param name="scm">Name of SCM</param>
        /// <param name="credentialId">Credential ID (optional)</param>
        /// <returns>ScmOrganisations</returns>
        ScmOrganisations GetSCMOrganisations(NancyContext context, string organization, string scm, string credentialId);

        /// <summary>
        /// Retrieve user details for an organization
        /// </summary>
        /// <param name="context">Context of request</param>
        /// <param name="organization">Name of the organization</param>
        /// <param name="user">Name of the user</param>
        /// <returns>User</returns>
        User GetUser(NancyContext context, string organization, string user);

        /// <summary>
        /// Retrieve user favorites details for an organization
        /// </summary>
        /// <param name="context">Context of request</param>
        /// <param name="user">Name of the user</param>
        /// <returns>UserFavorites</returns>
        UserFavorites GetUserFavorites(NancyContext context, string user);

        /// <summary>
        /// Retrieve users details for an organization
        /// </summary>
        /// <param name="context">Context of request</param>
        /// <param name="organization">Name of the organization</param>
        /// <returns>User</returns>
        User GetUsers(NancyContext context, string organization);

        /// <summary>
        /// Replay an organization pipeline run
        /// </summary>
        /// <param name="context">Context of request</param>
        /// <param name="organization">Name of the organization</param>
        /// <param name="pipeline">Name of the pipeline</param>
        /// <param name="run">Name of the run</param>
        /// <returns>QueueItemImpl</returns>
        QueueItemImpl PostPipelineRun(NancyContext context, string organization, string pipeline, string run);

        /// <summary>
        /// Start a build for an organization pipeline
        /// </summary>
        /// <param name="context">Context of request</param>
        /// <param name="organization">Name of the organization</param>
        /// <param name="pipeline">Name of the pipeline</param>
        /// <returns>QueueItemImpl</returns>
        QueueItemImpl PostPipelineRuns(NancyContext context, string organization, string pipeline);

        /// <summary>
        /// Favorite/unfavorite a pipeline
        /// </summary>
        /// <param name="context">Context of request</param>
        /// <param name="organization">Name of the organization</param>
        /// <param name="pipeline">Name of the pipeline</param>
        /// <param name="body">Set JSON string body to {\&quot;favorite\&quot;: true} to favorite, set value to false to unfavorite</param>
        /// <returns>FavoriteImpl</returns>
        FavoriteImpl PutPipelineFavorite(NancyContext context, string organization, string pipeline, Body body);

        /// <summary>
        /// Stop a build of an organization pipeline
        /// </summary>
        /// <param name="context">Context of request</param>
        /// <param name="organization">Name of the organization</param>
        /// <param name="pipeline">Name of the pipeline</param>
        /// <param name="run">Name of the run</param>
        /// <param name="blocking">Set to true to make blocking stop, default: false (optional)</param>
        /// <param name="timeOutInSecs">Timeout in seconds, default: 10 seconds (optional)</param>
        /// <returns>PipelineRun</returns>
        PipelineRun PutPipelineRun(NancyContext context, string organization, string pipeline, string run, string blocking, int? timeOutInSecs);

        /// <summary>
        /// Search for any resource details
        /// </summary>
        /// <param name="context">Context of request</param>
        /// <param name="q">Query string</param>
        /// <returns>string</returns>
        string Search(NancyContext context, string q);

        /// <summary>
        /// Get classes details
        /// </summary>
        /// <param name="context">Context of request</param>
        /// <param name="q">Query string containing an array of class names</param>
        /// <returns>string</returns>
        string SearchClasses(NancyContext context, string q);
    }

    /// <summary>
    /// Abstraction of BlueOceanService.
    /// </summary>
    public abstract class AbstractBlueOceanService: BlueOceanService
    {
        public virtual void DeletePipelineQueueItem(NancyContext context, string organization, string pipeline, string queue)
        {
            DeletePipelineQueueItem(organization, pipeline, queue);
        }

        public virtual User GetAuthenticatedUser(NancyContext context, string organization)
        {
            return GetAuthenticatedUser(organization);
        }

        public virtual string GetClasses(NancyContext context, string class)
        {
            return GetClasses(class);
        }

        public virtual Organisation GetOrganisation(NancyContext context, string organization)
        {
            return GetOrganisation(organization);
        }

        public virtual Organisations GetOrganisations(NancyContext context)
        {
            return GetOrganisations();
        }

        public virtual Pipeline GetPipeline(NancyContext context, string organization, string pipeline)
        {
            return GetPipeline(organization, pipeline);
        }

        public virtual PipelineActivities GetPipelineActivities(NancyContext context, string organization, string pipeline)
        {
            return GetPipelineActivities(organization, pipeline);
        }

        public virtual BranchImpl GetPipelineBranch(NancyContext context, string organization, string pipeline, string branch)
        {
            return GetPipelineBranch(organization, pipeline, branch);
        }

        public virtual PipelineRun GetPipelineBranchRun(NancyContext context, string organization, string pipeline, string branch, string run)
        {
            return GetPipelineBranchRun(organization, pipeline, branch, run);
        }

        public virtual MultibranchPipeline GetPipelineBranches(NancyContext context, string organization, string pipeline)
        {
            return GetPipelineBranches(organization, pipeline);
        }

        public virtual PipelineFolderImpl GetPipelineFolder(NancyContext context, string organization, string folder)
        {
            return GetPipelineFolder(organization, folder);
        }

        public virtual PipelineImpl GetPipelineFolderPipeline(NancyContext context, string organization, string pipeline, string folder)
        {
            return GetPipelineFolderPipeline(organization, pipeline, folder);
        }

        public virtual PipelineQueue GetPipelineQueue(NancyContext context, string organization, string pipeline)
        {
            return GetPipelineQueue(organization, pipeline);
        }

        public virtual PipelineRun GetPipelineRun(NancyContext context, string organization, string pipeline, string run)
        {
            return GetPipelineRun(organization, pipeline, run);
        }

        public virtual string GetPipelineRunLog(NancyContext context, string organization, string pipeline, string run, int? start, bool? download)
        {
            return GetPipelineRunLog(organization, pipeline, run, start, download);
        }

        public virtual PipelineRunNode GetPipelineRunNode(NancyContext context, string organization, string pipeline, string run, string node)
        {
            return GetPipelineRunNode(organization, pipeline, run, node);
        }

        public virtual PipelineStepImpl GetPipelineRunNodeStep(NancyContext context, string organization, string pipeline, string run, string node, string step)
        {
            return GetPipelineRunNodeStep(organization, pipeline, run, node, step);
        }

        public virtual string GetPipelineRunNodeStepLog(NancyContext context, string organization, string pipeline, string run, string node, string step)
        {
            return GetPipelineRunNodeStepLog(organization, pipeline, run, node, step);
        }

        public virtual PipelineRunNodeSteps GetPipelineRunNodeSteps(NancyContext context, string organization, string pipeline, string run, string node)
        {
            return GetPipelineRunNodeSteps(organization, pipeline, run, node);
        }

        public virtual PipelineRunNodes GetPipelineRunNodes(NancyContext context, string organization, string pipeline, string run)
        {
            return GetPipelineRunNodes(organization, pipeline, run);
        }

        public virtual PipelineRuns GetPipelineRuns(NancyContext context, string organization, string pipeline)
        {
            return GetPipelineRuns(organization, pipeline);
        }

        public virtual Pipelines GetPipelines(NancyContext context, string organization)
        {
            return GetPipelines(organization);
        }

        public virtual GithubScm GetSCM(NancyContext context, string organization, string scm)
        {
            return GetSCM(organization, scm);
        }

        public virtual ScmOrganisations GetSCMOrganisationRepositories(NancyContext context, string organization, string scm, string scmOrganisation, string credentialId, int? pageSize, int? pageNumber)
        {
            return GetSCMOrganisationRepositories(organization, scm, scmOrganisation, credentialId, pageSize, pageNumber);
        }

        public virtual ScmOrganisations GetSCMOrganisationRepository(NancyContext context, string organization, string scm, string scmOrganisation, string repository, string credentialId)
        {
            return GetSCMOrganisationRepository(organization, scm, scmOrganisation, repository, credentialId);
        }

        public virtual ScmOrganisations GetSCMOrganisations(NancyContext context, string organization, string scm, string credentialId)
        {
            return GetSCMOrganisations(organization, scm, credentialId);
        }

        public virtual User GetUser(NancyContext context, string organization, string user)
        {
            return GetUser(organization, user);
        }

        public virtual UserFavorites GetUserFavorites(NancyContext context, string user)
        {
            return GetUserFavorites(user);
        }

        public virtual User GetUsers(NancyContext context, string organization)
        {
            return GetUsers(organization);
        }

        public virtual QueueItemImpl PostPipelineRun(NancyContext context, string organization, string pipeline, string run)
        {
            return PostPipelineRun(organization, pipeline, run);
        }

        public virtual QueueItemImpl PostPipelineRuns(NancyContext context, string organization, string pipeline)
        {
            return PostPipelineRuns(organization, pipeline);
        }

        public virtual FavoriteImpl PutPipelineFavorite(NancyContext context, string organization, string pipeline, Body body)
        {
            return PutPipelineFavorite(organization, pipeline, body);
        }

        public virtual PipelineRun PutPipelineRun(NancyContext context, string organization, string pipeline, string run, string blocking, int? timeOutInSecs)
        {
            return PutPipelineRun(organization, pipeline, run, blocking, timeOutInSecs);
        }

        public virtual string Search(NancyContext context, string q)
        {
            return Search(q);
        }

        public virtual string SearchClasses(NancyContext context, string q)
        {
            return SearchClasses(q);
        }

        protected abstract void DeletePipelineQueueItem(string organization, string pipeline, string queue);

        protected abstract User GetAuthenticatedUser(string organization);

        protected abstract string GetClasses(string class);

        protected abstract Organisation GetOrganisation(string organization);

        protected abstract Organisations GetOrganisations();

        protected abstract Pipeline GetPipeline(string organization, string pipeline);

        protected abstract PipelineActivities GetPipelineActivities(string organization, string pipeline);

        protected abstract BranchImpl GetPipelineBranch(string organization, string pipeline, string branch);

        protected abstract PipelineRun GetPipelineBranchRun(string organization, string pipeline, string branch, string run);

        protected abstract MultibranchPipeline GetPipelineBranches(string organization, string pipeline);

        protected abstract PipelineFolderImpl GetPipelineFolder(string organization, string folder);

        protected abstract PipelineImpl GetPipelineFolderPipeline(string organization, string pipeline, string folder);

        protected abstract PipelineQueue GetPipelineQueue(string organization, string pipeline);

        protected abstract PipelineRun GetPipelineRun(string organization, string pipeline, string run);

        protected abstract string GetPipelineRunLog(string organization, string pipeline, string run, int? start, bool? download);

        protected abstract PipelineRunNode GetPipelineRunNode(string organization, string pipeline, string run, string node);

        protected abstract PipelineStepImpl GetPipelineRunNodeStep(string organization, string pipeline, string run, string node, string step);

        protected abstract string GetPipelineRunNodeStepLog(string organization, string pipeline, string run, string node, string step);

        protected abstract PipelineRunNodeSteps GetPipelineRunNodeSteps(string organization, string pipeline, string run, string node);

        protected abstract PipelineRunNodes GetPipelineRunNodes(string organization, string pipeline, string run);

        protected abstract PipelineRuns GetPipelineRuns(string organization, string pipeline);

        protected abstract Pipelines GetPipelines(string organization);

        protected abstract GithubScm GetSCM(string organization, string scm);

        protected abstract ScmOrganisations GetSCMOrganisationRepositories(string organization, string scm, string scmOrganisation, string credentialId, int? pageSize, int? pageNumber);

        protected abstract ScmOrganisations GetSCMOrganisationRepository(string organization, string scm, string scmOrganisation, string repository, string credentialId);

        protected abstract ScmOrganisations GetSCMOrganisations(string organization, string scm, string credentialId);

        protected abstract User GetUser(string organization, string user);

        protected abstract UserFavorites GetUserFavorites(string user);

        protected abstract User GetUsers(string organization);

        protected abstract QueueItemImpl PostPipelineRun(string organization, string pipeline, string run);

        protected abstract QueueItemImpl PostPipelineRuns(string organization, string pipeline);

        protected abstract FavoriteImpl PutPipelineFavorite(string organization, string pipeline, Body body);

        protected abstract PipelineRun PutPipelineRun(string organization, string pipeline, string run, string blocking, int? timeOutInSecs);

        protected abstract string Search(string q);

        protected abstract string SearchClasses(string q);
    }

}
