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
            Get["/blue/rest/organizations/{organisation}/user/"] = parameters =>
            {
                var organisation = Parameters.ValueOf<string>(parameters, Context.Request, "organisation", ParameterType.Path);
                Preconditions.IsNotNull(organisation, "Required parameter: 'organisation' is missing at 'GetAuthenticatedUser'");
                
                return service.GetAuthenticatedUser(Context, organisation);
            };

            Get["/blue/rest/classes/{class}"] = parameters =>
            {
                var class = Parameters.ValueOf<string>(parameters, Context.Request, "class", ParameterType.Path);
                Preconditions.IsNotNull(class, "Required parameter: 'class' is missing at 'GetClasses'");
                
                return service.GetClasses(Context, class);
            };

            Get["/blue/rest/organizations/{organisation}"] = parameters =>
            {
                var organisation = Parameters.ValueOf<string>(parameters, Context.Request, "organisation", ParameterType.Path);
                Preconditions.IsNotNull(organisation, "Required parameter: 'organisation' is missing at 'GetOrganisation'");
                
                return service.GetOrganisation(Context, organisation);
            };

            Get["/blue/rest/organizations/"] = parameters =>
            {
                
                return service.GetOrganisations(Context);
            };

            Get["/blue/rest/organizations/{organisation}/pipelines/{pipeline}/branches/{branch}/"] = parameters =>
            {
                var organisation = Parameters.ValueOf<string>(parameters, Context.Request, "organisation", ParameterType.Path);
                var pipeline = Parameters.ValueOf<string>(parameters, Context.Request, "pipeline", ParameterType.Path);
                var branch = Parameters.ValueOf<string>(parameters, Context.Request, "branch", ParameterType.Path);
                Preconditions.IsNotNull(organisation, "Required parameter: 'organisation' is missing at 'GetPipelineBranchByOrg'");
                
                Preconditions.IsNotNull(pipeline, "Required parameter: 'pipeline' is missing at 'GetPipelineBranchByOrg'");
                
                Preconditions.IsNotNull(branch, "Required parameter: 'branch' is missing at 'GetPipelineBranchByOrg'");
                
                return service.GetPipelineBranchByOrg(Context, organisation, pipeline, branch);
            };

            Get["/blue/rest/organizations/{organisation}/pipelines/{pipeline}/branches"] = parameters =>
            {
                var organisation = Parameters.ValueOf<string>(parameters, Context.Request, "organisation", ParameterType.Path);
                var pipeline = Parameters.ValueOf<string>(parameters, Context.Request, "pipeline", ParameterType.Path);
                Preconditions.IsNotNull(organisation, "Required parameter: 'organisation' is missing at 'GetPipelineBranchesByOrg'");
                
                Preconditions.IsNotNull(pipeline, "Required parameter: 'pipeline' is missing at 'GetPipelineBranchesByOrg'");
                
                return service.GetPipelineBranchesByOrg(Context, organisation, pipeline);
            };

            Get["/blue/rest/organizations/{organisation}/pipelines/{pipeline}"] = parameters =>
            {
                var organisation = Parameters.ValueOf<string>(parameters, Context.Request, "organisation", ParameterType.Path);
                var pipeline = Parameters.ValueOf<string>(parameters, Context.Request, "pipeline", ParameterType.Path);
                Preconditions.IsNotNull(organisation, "Required parameter: 'organisation' is missing at 'GetPipelineByOrg'");
                
                Preconditions.IsNotNull(pipeline, "Required parameter: 'pipeline' is missing at 'GetPipelineByOrg'");
                
                return service.GetPipelineByOrg(Context, organisation, pipeline);
            };

            Get["/blue/rest/organizations/{organisation}/pipelines/{folder}/"] = parameters =>
            {
                var organisation = Parameters.ValueOf<string>(parameters, Context.Request, "organisation", ParameterType.Path);
                var folder = Parameters.ValueOf<string>(parameters, Context.Request, "folder", ParameterType.Path);
                Preconditions.IsNotNull(organisation, "Required parameter: 'organisation' is missing at 'GetPipelineFolderByOrg'");
                
                Preconditions.IsNotNull(folder, "Required parameter: 'folder' is missing at 'GetPipelineFolderByOrg'");
                
                return service.GetPipelineFolderByOrg(Context, organisation, folder);
            };

            Get["/blue/rest/organizations/{organisation}/pipelines/{folder}/pipelines/{pipeline}"] = parameters =>
            {
                var organisation = Parameters.ValueOf<string>(parameters, Context.Request, "organisation", ParameterType.Path);
                var pipeline = Parameters.ValueOf<string>(parameters, Context.Request, "pipeline", ParameterType.Path);
                var folder = Parameters.ValueOf<string>(parameters, Context.Request, "folder", ParameterType.Path);
                Preconditions.IsNotNull(organisation, "Required parameter: 'organisation' is missing at 'GetPipelineFolderByOrg_0'");
                
                Preconditions.IsNotNull(pipeline, "Required parameter: 'pipeline' is missing at 'GetPipelineFolderByOrg_0'");
                
                Preconditions.IsNotNull(folder, "Required parameter: 'folder' is missing at 'GetPipelineFolderByOrg_0'");
                
                return service.GetPipelineFolderByOrg_0(Context, organisation, pipeline, folder);
            };

            Get["/blue/rest/organizations/{organisation}/pipelines/"] = parameters =>
            {
                var organisation = Parameters.ValueOf<string>(parameters, Context.Request, "organisation", ParameterType.Path);
                Preconditions.IsNotNull(organisation, "Required parameter: 'organisation' is missing at 'GetPipelinesByOrg'");
                
                return service.GetPipelinesByOrg(Context, organisation);
            };

            Get["/blue/rest/organizations/{organisation}/users/{user}"] = parameters =>
            {
                var organisation = Parameters.ValueOf<string>(parameters, Context.Request, "organisation", ParameterType.Path);
                var user = Parameters.ValueOf<string>(parameters, Context.Request, "user", ParameterType.Path);
                Preconditions.IsNotNull(organisation, "Required parameter: 'organisation' is missing at 'GetUser'");
                
                Preconditions.IsNotNull(user, "Required parameter: 'user' is missing at 'GetUser'");
                
                return service.GetUser(Context, organisation, user);
            };

            Get["/blue/rest/organizations/{organisation}/users/"] = parameters =>
            {
                var organisation = Parameters.ValueOf<string>(parameters, Context.Request, "organisation", ParameterType.Path);
                Preconditions.IsNotNull(organisation, "Required parameter: 'organisation' is missing at 'GetUsers'");
                
                return service.GetUsers(Context, organisation);
            };

            Get["/blue/rest/classes/"] = parameters =>
            {
                var q = Parameters.ValueOf<string>(parameters, Context.Request, "q", ParameterType.Query);
                Preconditions.IsNotNull(q, "Required parameter: 'q' is missing at 'Search'");
                
                return service.Search(Context, q);
            };

            Get["/blue/rest/search/"] = parameters =>
            {
                var q = Parameters.ValueOf<string>(parameters, Context.Request, "q", ParameterType.Query);
                Preconditions.IsNotNull(q, "Required parameter: 'q' is missing at 'Search_0'");
                
                return service.Search_0(Context, q);
            };
        }
    }

    /// <summary>
    /// Service handling BlueOcean requests.
    /// </summary>
    public interface BlueOceanService
    {
        /// <summary>
        /// Retrieve authenticated user details for an organisation
        /// </summary>
        /// <param name="context">Context of request</param>
        /// <param name="organisation">Name of the organisation</param>
        /// <returns>SwaggyjenkinsUser</returns>
        SwaggyjenkinsUser GetAuthenticatedUser(NancyContext context, string organisation);

        /// <summary>
        /// Get a list of class names supported by a given class
        /// </summary>
        /// <param name="context">Context of request</param>
        /// <param name="class">Name of the class</param>
        /// <returns>string</returns>
        string GetClasses(NancyContext context, string class);

        /// <summary>
        /// Retrieve organisation details
        /// </summary>
        /// <param name="context">Context of request</param>
        /// <param name="organisation">Name of the organisation</param>
        /// <returns>SwaggyjenkinsOrganisation</returns>
        SwaggyjenkinsOrganisation GetOrganisation(NancyContext context, string organisation);

        /// <summary>
        /// Retrieve all organisations details
        /// </summary>
        /// <param name="context">Context of request</param>
        /// <returns>GetOrganisations</returns>
        GetOrganisations GetOrganisations(NancyContext context);

        /// <summary>
        /// Retrieve branch details for an organisation pipeline
        /// </summary>
        /// <param name="context">Context of request</param>
        /// <param name="organisation">Name of the organisation</param>
        /// <param name="pipeline">Name of the pipeline</param>
        /// <param name="branch">Name of the branch</param>
        /// <returns>IojenkinsblueoceanrestimplpipelineBranchImpl</returns>
        IojenkinsblueoceanrestimplpipelineBranchImpl GetPipelineBranchByOrg(NancyContext context, string organisation, string pipeline, string branch);

        /// <summary>
        /// Retrieve all branches details for an organisation pipeline
        /// </summary>
        /// <param name="context">Context of request</param>
        /// <param name="organisation">Name of the organisation</param>
        /// <param name="pipeline">Name of the pipeline</param>
        /// <returns>GetMultibranchPipeline</returns>
        GetMultibranchPipeline GetPipelineBranchesByOrg(NancyContext context, string organisation, string pipeline);

        /// <summary>
        /// Retrieve pipeline details for an organisation
        /// </summary>
        /// <param name="context">Context of request</param>
        /// <param name="organisation">Name of the organisation</param>
        /// <param name="pipeline">Name of the pipeline</param>
        /// <returns>SwaggyjenkinsPipeline</returns>
        SwaggyjenkinsPipeline GetPipelineByOrg(NancyContext context, string organisation, string pipeline);

        /// <summary>
        /// Retrieve pipeline folder for an organisation
        /// </summary>
        /// <param name="context">Context of request</param>
        /// <param name="organisation">Name of the organisation</param>
        /// <param name="folder">Name of the folder</param>
        /// <returns>IojenkinsblueoceanserviceembeddedrestPipelineFolderImpl</returns>
        IojenkinsblueoceanserviceembeddedrestPipelineFolderImpl GetPipelineFolderByOrg(NancyContext context, string organisation, string folder);

        /// <summary>
        /// Retrieve pipeline details for an organisation folder
        /// </summary>
        /// <param name="context">Context of request</param>
        /// <param name="organisation">Name of the organisation</param>
        /// <param name="pipeline">Name of the pipeline</param>
        /// <param name="folder">Name of the folder</param>
        /// <returns>IojenkinsblueoceanserviceembeddedrestPipelineImpl</returns>
        IojenkinsblueoceanserviceembeddedrestPipelineImpl GetPipelineFolderByOrg_0(NancyContext context, string organisation, string pipeline, string folder);

        /// <summary>
        /// Retrieve all pipelines details for an organisation
        /// </summary>
        /// <param name="context">Context of request</param>
        /// <param name="organisation">Name of the organisation</param>
        /// <returns>GetPipelines</returns>
        GetPipelines GetPipelinesByOrg(NancyContext context, string organisation);

        /// <summary>
        /// Retrieve user details for an organisation
        /// </summary>
        /// <param name="context">Context of request</param>
        /// <param name="organisation">Name of the organisation</param>
        /// <param name="user">Name of the user</param>
        /// <returns>SwaggyjenkinsUser</returns>
        SwaggyjenkinsUser GetUser(NancyContext context, string organisation, string user);

        /// <summary>
        /// Retrieve users details for an organisation
        /// </summary>
        /// <param name="context">Context of request</param>
        /// <param name="organisation">Name of the organisation</param>
        /// <returns>SwaggyjenkinsUser</returns>
        SwaggyjenkinsUser GetUsers(NancyContext context, string organisation);

        /// <summary>
        /// Get classes details
        /// </summary>
        /// <param name="context">Context of request</param>
        /// <param name="q">Query string containing an array of class names</param>
        /// <returns>string</returns>
        string Search(NancyContext context, string q);

        /// <summary>
        /// Search for any resource details
        /// </summary>
        /// <param name="context">Context of request</param>
        /// <param name="q">Query string</param>
        /// <returns>string</returns>
        string Search_0(NancyContext context, string q);
    }

    /// <summary>
    /// Abstraction of BlueOceanService.
    /// </summary>
    public abstract class AbstractBlueOceanService: BlueOceanService
    {
        public virtual SwaggyjenkinsUser GetAuthenticatedUser(NancyContext context, string organisation)
        {
            return GetAuthenticatedUser(organisation);
        }

        public virtual string GetClasses(NancyContext context, string class)
        {
            return GetClasses(class);
        }

        public virtual SwaggyjenkinsOrganisation GetOrganisation(NancyContext context, string organisation)
        {
            return GetOrganisation(organisation);
        }

        public virtual GetOrganisations GetOrganisations(NancyContext context)
        {
            return GetOrganisations();
        }

        public virtual IojenkinsblueoceanrestimplpipelineBranchImpl GetPipelineBranchByOrg(NancyContext context, string organisation, string pipeline, string branch)
        {
            return GetPipelineBranchByOrg(organisation, pipeline, branch);
        }

        public virtual GetMultibranchPipeline GetPipelineBranchesByOrg(NancyContext context, string organisation, string pipeline)
        {
            return GetPipelineBranchesByOrg(organisation, pipeline);
        }

        public virtual SwaggyjenkinsPipeline GetPipelineByOrg(NancyContext context, string organisation, string pipeline)
        {
            return GetPipelineByOrg(organisation, pipeline);
        }

        public virtual IojenkinsblueoceanserviceembeddedrestPipelineFolderImpl GetPipelineFolderByOrg(NancyContext context, string organisation, string folder)
        {
            return GetPipelineFolderByOrg(organisation, folder);
        }

        public virtual IojenkinsblueoceanserviceembeddedrestPipelineImpl GetPipelineFolderByOrg_0(NancyContext context, string organisation, string pipeline, string folder)
        {
            return GetPipelineFolderByOrg_0(organisation, pipeline, folder);
        }

        public virtual GetPipelines GetPipelinesByOrg(NancyContext context, string organisation)
        {
            return GetPipelinesByOrg(organisation);
        }

        public virtual SwaggyjenkinsUser GetUser(NancyContext context, string organisation, string user)
        {
            return GetUser(organisation, user);
        }

        public virtual SwaggyjenkinsUser GetUsers(NancyContext context, string organisation)
        {
            return GetUsers(organisation);
        }

        public virtual string Search(NancyContext context, string q)
        {
            return Search(q);
        }

        public virtual string Search_0(NancyContext context, string q)
        {
            return Search_0(q);
        }

        protected abstract SwaggyjenkinsUser GetAuthenticatedUser(string organisation);

        protected abstract string GetClasses(string class);

        protected abstract SwaggyjenkinsOrganisation GetOrganisation(string organisation);

        protected abstract GetOrganisations GetOrganisations();

        protected abstract IojenkinsblueoceanrestimplpipelineBranchImpl GetPipelineBranchByOrg(string organisation, string pipeline, string branch);

        protected abstract GetMultibranchPipeline GetPipelineBranchesByOrg(string organisation, string pipeline);

        protected abstract SwaggyjenkinsPipeline GetPipelineByOrg(string organisation, string pipeline);

        protected abstract IojenkinsblueoceanserviceembeddedrestPipelineFolderImpl GetPipelineFolderByOrg(string organisation, string folder);

        protected abstract IojenkinsblueoceanserviceembeddedrestPipelineImpl GetPipelineFolderByOrg_0(string organisation, string pipeline, string folder);

        protected abstract GetPipelines GetPipelinesByOrg(string organisation);

        protected abstract SwaggyjenkinsUser GetUser(string organisation, string user);

        protected abstract SwaggyjenkinsUser GetUsers(string organisation);

        protected abstract string Search(string q);

        protected abstract string Search_0(string q);
    }

}
