require "json"

module OpenAPIClient
  module Api
  class Blue
    def initialize(@conn : Connection); end

    #  Get classes details
    def rest_classes(*, q : String? = nil) : Response(String)
      @conn.request(String,
        method: :GET,
        path: "/blue/rest/classes/",
        query: { "q" => q },
        accept: %w[application/json],
        auth: %w[jenkins_auth])
    end

    #  Get a list of class names supported by a given class
    def rest_classes_get(_class : String) : Response(String)
      @conn.request(String,
        method: :GET,
        path: "/blue/rest/classes/{class}".sub("{class}", OpenAPIClient.enc(_class)),
        accept: %w[application/json],
        auth: %w[jenkins_auth])
    end

    #  Retrieve all organizations details
    def rest_organizations() : Response(Array(OpenAPIClient::Organisation))
      @conn.request(Array(OpenAPIClient::Organisation),
        method: :GET,
        path: "/blue/rest/organizations/",
        accept: %w[application/json],
        auth: %w[jenkins_auth])
    end

    #  Retrieve organization details
    def rest_organizations_get(organization : String) : Response(OpenAPIClient::Organisation)
      @conn.request(OpenAPIClient::Organisation,
        method: :GET,
        path: "/blue/rest/organizations/{organization}".sub("{organization}", OpenAPIClient.enc(organization)),
        accept: %w[application/json],
        auth: %w[jenkins_auth])
    end

    #  Retrieve all pipelines details for an organization
    def rest_organizations_pipelines(organization : String) : Response(Array(OpenAPIClient::Pipeline))
      @conn.request(Array(OpenAPIClient::Pipeline),
        method: :GET,
        path: "/blue/rest/organizations/{organization}/pipelines/".sub("{organization}", OpenAPIClient.enc(organization)),
        accept: %w[application/json],
        auth: %w[jenkins_auth])
    end

    #  Retrieve all activities details for an organization pipeline
    def rest_organizations_pipelines_activities(organization : String, pipeline : String) : Response(Array(OpenAPIClient::PipelineActivity))
      @conn.request(Array(OpenAPIClient::PipelineActivity),
        method: :GET,
        path: "/blue/rest/organizations/{organization}/pipelines/{pipeline}/activities".sub("{organization}", OpenAPIClient.enc(organization)).sub("{pipeline}", OpenAPIClient.enc(pipeline)),
        accept: %w[application/json],
        auth: %w[jenkins_auth])
    end

    #  Retrieve all branches details for an organization pipeline
    def rest_organizations_pipelines_branches(organization : String, pipeline : String) : Response(OpenAPIClient::MultibranchPipeline)
      @conn.request(OpenAPIClient::MultibranchPipeline,
        method: :GET,
        path: "/blue/rest/organizations/{organization}/pipelines/{pipeline}/branches".sub("{organization}", OpenAPIClient.enc(organization)).sub("{pipeline}", OpenAPIClient.enc(pipeline)),
        accept: %w[application/json],
        auth: %w[jenkins_auth])
    end

    #  Retrieve branch details for an organization pipeline
    def rest_organizations_pipelines_branches_get(organization : String, pipeline : String, branch : String) : Response(OpenAPIClient::BranchImpl)
      @conn.request(OpenAPIClient::BranchImpl,
        method: :GET,
        path: "/blue/rest/organizations/{organization}/pipelines/{pipeline}/branches/{branch}/".sub("{organization}", OpenAPIClient.enc(organization)).sub("{pipeline}", OpenAPIClient.enc(pipeline)).sub("{branch}", OpenAPIClient.enc(branch)),
        accept: %w[application/json],
        auth: %w[jenkins_auth])
    end

    #  Retrieve branch run details for an organization pipeline
    def rest_organizations_pipelines_branches_runs(organization : String, pipeline : String, branch : String, run : String) : Response(OpenAPIClient::PipelineRun)
      @conn.request(OpenAPIClient::PipelineRun,
        method: :GET,
        path: "/blue/rest/organizations/{organization}/pipelines/{pipeline}/branches/{branch}/runs/{run}".sub("{organization}", OpenAPIClient.enc(organization)).sub("{pipeline}", OpenAPIClient.enc(pipeline)).sub("{branch}", OpenAPIClient.enc(branch)).sub("{run}", OpenAPIClient.enc(run)),
        accept: %w[application/json],
        auth: %w[jenkins_auth])
    end

    #  Favorite/unfavorite a pipeline
    def rest_organizations_pipelines_favorite(organization : String, pipeline : String, body : Bool) : Response(OpenAPIClient::FavoriteImpl)
      @conn.request(OpenAPIClient::FavoriteImpl,
        method: :PUT,
        path: "/blue/rest/organizations/{organization}/pipelines/{pipeline}/favorite".sub("{organization}", OpenAPIClient.enc(organization)).sub("{pipeline}", OpenAPIClient.enc(pipeline)),
        body: body,
        accept: %w[application/json],
        content_type: %w[application/json],
        auth: %w[jenkins_auth])
    end

    #  Retrieve pipeline details for an organization
    def rest_organizations_pipelines_get(organization : String, pipeline : String) : Response(OpenAPIClient::Pipeline)
      @conn.request(OpenAPIClient::Pipeline,
        method: :GET,
        path: "/blue/rest/organizations/{organization}/pipelines/{pipeline}".sub("{organization}", OpenAPIClient.enc(organization)).sub("{pipeline}", OpenAPIClient.enc(pipeline)),
        accept: %w[application/json],
        auth: %w[jenkins_auth])
    end

    #  Retrieve pipeline folder for an organization
    def rest_organizations_pipelines_get_1(organization : String, folder : String) : Response(OpenAPIClient::PipelineFolderImpl)
      @conn.request(OpenAPIClient::PipelineFolderImpl,
        method: :GET,
        path: "/blue/rest/organizations/{organization}/pipelines/{folder}/".sub("{organization}", OpenAPIClient.enc(organization)).sub("{folder}", OpenAPIClient.enc(folder)),
        accept: %w[application/json],
        auth: %w[jenkins_auth])
    end

    #  Retrieve pipeline details for an organization folder
    def rest_organizations_pipelines_pipelines(organization : String, pipeline : String, folder : String) : Response(OpenAPIClient::PipelineImpl)
      @conn.request(OpenAPIClient::PipelineImpl,
        method: :GET,
        path: "/blue/rest/organizations/{organization}/pipelines/{folder}/pipelines/{pipeline}".sub("{organization}", OpenAPIClient.enc(organization)).sub("{pipeline}", OpenAPIClient.enc(pipeline)).sub("{folder}", OpenAPIClient.enc(folder)),
        accept: %w[application/json],
        auth: %w[jenkins_auth])
    end

    #  Retrieve queue details for an organization pipeline
    def rest_organizations_pipelines_queue(organization : String, pipeline : String) : Response(Array(OpenAPIClient::QueueItemImpl))
      @conn.request(Array(OpenAPIClient::QueueItemImpl),
        method: :GET,
        path: "/blue/rest/organizations/{organization}/pipelines/{pipeline}/queue".sub("{organization}", OpenAPIClient.enc(organization)).sub("{pipeline}", OpenAPIClient.enc(pipeline)),
        accept: %w[application/json],
        auth: %w[jenkins_auth])
    end

    #  Delete queue item from an organization pipeline queue
    def rest_organizations_pipelines_queue_delete(organization : String, pipeline : String, queue : String) : Response(Nil)
      @conn.request(Nil,
        method: :DELETE,
        path: "/blue/rest/organizations/{organization}/pipelines/{pipeline}/queue/{queue}".sub("{organization}", OpenAPIClient.enc(organization)).sub("{pipeline}", OpenAPIClient.enc(pipeline)).sub("{queue}", OpenAPIClient.enc(queue)),
        accept: %w[],
        auth: %w[jenkins_auth])
    end

    #  Retrieve all runs details for an organization pipeline
    def rest_organizations_pipelines_runs(organization : String, pipeline : String) : Response(Array(OpenAPIClient::PipelineRun))
      @conn.request(Array(OpenAPIClient::PipelineRun),
        method: :GET,
        path: "/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs".sub("{organization}", OpenAPIClient.enc(organization)).sub("{pipeline}", OpenAPIClient.enc(pipeline)),
        accept: %w[application/json],
        auth: %w[jenkins_auth])
    end

    #  Retrieve run details for an organization pipeline
    def rest_organizations_pipelines_runs_get(organization : String, pipeline : String, run : String) : Response(OpenAPIClient::PipelineRun)
      @conn.request(OpenAPIClient::PipelineRun,
        method: :GET,
        path: "/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}".sub("{organization}", OpenAPIClient.enc(organization)).sub("{pipeline}", OpenAPIClient.enc(pipeline)).sub("{run}", OpenAPIClient.enc(run)),
        accept: %w[application/json],
        auth: %w[jenkins_auth])
    end

    #  Get log for a pipeline run
    def rest_organizations_pipelines_runs_log(organization : String, pipeline : String, run : String, *, start : Int32? = nil, download : Bool? = nil) : Response(String)
      @conn.request(String,
        method: :GET,
        path: "/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/log".sub("{organization}", OpenAPIClient.enc(organization)).sub("{pipeline}", OpenAPIClient.enc(pipeline)).sub("{run}", OpenAPIClient.enc(run)),
        query: { "start" => start, "download" => download },
        accept: %w[application/json],
        auth: %w[jenkins_auth])
    end

    #  Retrieve run nodes details for an organization pipeline
    def rest_organizations_pipelines_runs_nodes(organization : String, pipeline : String, run : String) : Response(Array(OpenAPIClient::PipelineRunNode))
      @conn.request(Array(OpenAPIClient::PipelineRunNode),
        method: :GET,
        path: "/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes".sub("{organization}", OpenAPIClient.enc(organization)).sub("{pipeline}", OpenAPIClient.enc(pipeline)).sub("{run}", OpenAPIClient.enc(run)),
        accept: %w[application/json],
        auth: %w[jenkins_auth])
    end

    #  Retrieve run node details for an organization pipeline
    def rest_organizations_pipelines_runs_nodes_get(organization : String, pipeline : String, run : String, node : String) : Response(OpenAPIClient::PipelineRunNode)
      @conn.request(OpenAPIClient::PipelineRunNode,
        method: :GET,
        path: "/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes/{node}".sub("{organization}", OpenAPIClient.enc(organization)).sub("{pipeline}", OpenAPIClient.enc(pipeline)).sub("{run}", OpenAPIClient.enc(run)).sub("{node}", OpenAPIClient.enc(node)),
        accept: %w[application/json],
        auth: %w[jenkins_auth])
    end

    #  Retrieve run node steps details for an organization pipeline
    def rest_organizations_pipelines_runs_nodes_steps(organization : String, pipeline : String, run : String, node : String) : Response(Array(OpenAPIClient::PipelineStepImpl))
      @conn.request(Array(OpenAPIClient::PipelineStepImpl),
        method: :GET,
        path: "/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes/{node}/steps".sub("{organization}", OpenAPIClient.enc(organization)).sub("{pipeline}", OpenAPIClient.enc(pipeline)).sub("{run}", OpenAPIClient.enc(run)).sub("{node}", OpenAPIClient.enc(node)),
        accept: %w[application/json],
        auth: %w[jenkins_auth])
    end

    #  Retrieve run node details for an organization pipeline
    def rest_organizations_pipelines_runs_nodes_steps_get(organization : String, pipeline : String, run : String, node : String, step : String) : Response(OpenAPIClient::PipelineStepImpl)
      @conn.request(OpenAPIClient::PipelineStepImpl,
        method: :GET,
        path: "/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes/{node}/steps/{step}".sub("{organization}", OpenAPIClient.enc(organization)).sub("{pipeline}", OpenAPIClient.enc(pipeline)).sub("{run}", OpenAPIClient.enc(run)).sub("{node}", OpenAPIClient.enc(node)).sub("{step}", OpenAPIClient.enc(step)),
        accept: %w[application/json],
        auth: %w[jenkins_auth])
    end

    #  Get log for a pipeline run node step
    def rest_organizations_pipelines_runs_nodes_steps_log(organization : String, pipeline : String, run : String, node : String, step : String) : Response(String)
      @conn.request(String,
        method: :GET,
        path: "/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes/{node}/steps/{step}/log".sub("{organization}", OpenAPIClient.enc(organization)).sub("{pipeline}", OpenAPIClient.enc(pipeline)).sub("{run}", OpenAPIClient.enc(run)).sub("{node}", OpenAPIClient.enc(node)).sub("{step}", OpenAPIClient.enc(step)),
        accept: %w[application/json],
        auth: %w[jenkins_auth])
    end

    #  Start a build for an organization pipeline
    def rest_organizations_pipelines_runs_post(organization : String, pipeline : String) : Response(OpenAPIClient::QueueItemImpl)
      @conn.request(OpenAPIClient::QueueItemImpl,
        method: :POST,
        path: "/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs".sub("{organization}", OpenAPIClient.enc(organization)).sub("{pipeline}", OpenAPIClient.enc(pipeline)),
        accept: %w[application/json],
        auth: %w[jenkins_auth])
    end

    #  Replay an organization pipeline run
    def rest_organizations_pipelines_runs_replay(organization : String, pipeline : String, run : String) : Response(OpenAPIClient::QueueItemImpl)
      @conn.request(OpenAPIClient::QueueItemImpl,
        method: :POST,
        path: "/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/replay".sub("{organization}", OpenAPIClient.enc(organization)).sub("{pipeline}", OpenAPIClient.enc(pipeline)).sub("{run}", OpenAPIClient.enc(run)),
        accept: %w[application/json],
        auth: %w[jenkins_auth])
    end

    #  Stop a build of an organization pipeline
    def rest_organizations_pipelines_runs_stop(organization : String, pipeline : String, run : String, *, blocking : String? = nil, time_out_in_secs : Int32? = nil) : Response(OpenAPIClient::PipelineRun)
      @conn.request(OpenAPIClient::PipelineRun,
        method: :PUT,
        path: "/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/stop".sub("{organization}", OpenAPIClient.enc(organization)).sub("{pipeline}", OpenAPIClient.enc(pipeline)).sub("{run}", OpenAPIClient.enc(run)),
        query: { "blocking" => blocking, "timeOutInSecs" => time_out_in_secs },
        accept: %w[application/json],
        auth: %w[jenkins_auth])
    end

    #  Retrieve SCM details for an organization
    def rest_organizations_scm(organization : String, scm : String) : Response(OpenAPIClient::GithubScm)
      @conn.request(OpenAPIClient::GithubScm,
        method: :GET,
        path: "/blue/rest/organizations/{organization}/scm/{scm}".sub("{organization}", OpenAPIClient.enc(organization)).sub("{scm}", OpenAPIClient.enc(scm)),
        accept: %w[application/json],
        auth: %w[jenkins_auth])
    end

    #  Retrieve SCM organizations details for an organization
    def rest_organizations_scm_organizations(organization : String, scm : String, *, credential_id : String? = nil) : Response(Array(OpenAPIClient::GithubOrganization))
      @conn.request(Array(OpenAPIClient::GithubOrganization),
        method: :GET,
        path: "/blue/rest/organizations/{organization}/scm/{scm}/organizations".sub("{organization}", OpenAPIClient.enc(organization)).sub("{scm}", OpenAPIClient.enc(scm)),
        query: { "credentialId" => credential_id },
        accept: %w[application/json],
        auth: %w[jenkins_auth])
    end

    #  Retrieve SCM organization repositories details for an organization
    def rest_organizations_scm_organizations_repositories(organization : String, scm : String, scm_organisation : String, *, credential_id : String? = nil, page_size : Int32? = nil, page_number : Int32? = nil) : Response(Array(OpenAPIClient::GithubOrganization))
      @conn.request(Array(OpenAPIClient::GithubOrganization),
        method: :GET,
        path: "/blue/rest/organizations/{organization}/scm/{scm}/organizations/{scmOrganisation}/repositories".sub("{organization}", OpenAPIClient.enc(organization)).sub("{scm}", OpenAPIClient.enc(scm)).sub("{scmOrganisation}", OpenAPIClient.enc(scm_organisation)),
        query: { "credentialId" => credential_id, "pageSize" => page_size, "pageNumber" => page_number },
        accept: %w[application/json],
        auth: %w[jenkins_auth])
    end

    #  Retrieve SCM organization repository details for an organization
    def rest_organizations_scm_organizations_repositories_get(organization : String, scm : String, scm_organisation : String, repository : String, *, credential_id : String? = nil) : Response(Array(OpenAPIClient::GithubOrganization))
      @conn.request(Array(OpenAPIClient::GithubOrganization),
        method: :GET,
        path: "/blue/rest/organizations/{organization}/scm/{scm}/organizations/{scmOrganisation}/repositories/{repository}".sub("{organization}", OpenAPIClient.enc(organization)).sub("{scm}", OpenAPIClient.enc(scm)).sub("{scmOrganisation}", OpenAPIClient.enc(scm_organisation)).sub("{repository}", OpenAPIClient.enc(repository)),
        query: { "credentialId" => credential_id },
        accept: %w[application/json],
        auth: %w[jenkins_auth])
    end

    #  Retrieve authenticated user details for an organization
    def rest_organizations_user(organization : String) : Response(OpenAPIClient::User)
      @conn.request(OpenAPIClient::User,
        method: :GET,
        path: "/blue/rest/organizations/{organization}/user/".sub("{organization}", OpenAPIClient.enc(organization)),
        accept: %w[application/json],
        auth: %w[jenkins_auth])
    end

    #  Retrieve users details for an organization
    def rest_organizations_users(organization : String) : Response(OpenAPIClient::User)
      @conn.request(OpenAPIClient::User,
        method: :GET,
        path: "/blue/rest/organizations/{organization}/users/".sub("{organization}", OpenAPIClient.enc(organization)),
        accept: %w[application/json],
        auth: %w[jenkins_auth])
    end

    #  Retrieve user details for an organization
    def rest_organizations_users_get(organization : String, user : String) : Response(OpenAPIClient::User)
      @conn.request(OpenAPIClient::User,
        method: :GET,
        path: "/blue/rest/organizations/{organization}/users/{user}".sub("{organization}", OpenAPIClient.enc(organization)).sub("{user}", OpenAPIClient.enc(user)),
        accept: %w[application/json],
        auth: %w[jenkins_auth])
    end

    #  Search for any resource details
    def rest_search(*, q : String? = nil) : Response(String)
      @conn.request(String,
        method: :GET,
        path: "/blue/rest/search/",
        query: { "q" => q },
        accept: %w[application/json],
        auth: %w[jenkins_auth])
    end

    #  Retrieve user favorites details for an organization
    def rest_users_favorites(user : String) : Response(Array(OpenAPIClient::FavoriteImpl))
      @conn.request(Array(OpenAPIClient::FavoriteImpl),
        method: :GET,
        path: "/blue/rest/users/{user}/favorites".sub("{user}", OpenAPIClient.enc(user)),
        accept: %w[application/json],
        auth: %w[jenkins_auth])
    end
  end
  end

end
