# frozen_string_literal: true

module OpenapiClient
  module Api
    class Blue
      def initialize(connection)
        @connection = connection
      end

      def rest_classes(q:)
        raise ArgumentError, 'q is required' if q.nil?

        @connection.call(
          :GET,
          '/blue/rest/classes/',
          type: nil,
          auth: ['jenkins_auth'],
          query: { 'q' => q }
        )
      end

      def rest_classes_get(class_:)
        raise ArgumentError, 'class_ is required' if class_.nil?

        @connection.call(
          :GET,
          '/blue/rest/classes/{class}'
            .gsub('{class}', ERB::Util.url_encode(class_.to_s)),
          type: nil,
          auth: ['jenkins_auth']
        )
      end

      def rest_organizations
        @connection.call(
          :GET,
          '/blue/rest/organizations/',
          type: [OpenapiClient::Models::Organisation],
          auth: ['jenkins_auth']
        )
      end

      def rest_organizations_get(organization:)
        raise ArgumentError, 'organization is required' if organization.nil?

        @connection.call(
          :GET,
          '/blue/rest/organizations/{organization}'
            .gsub('{organization}', ERB::Util.url_encode(organization.to_s)),
          type: OpenapiClient::Models::Organisation,
          auth: ['jenkins_auth']
        )
      end

      def rest_organizations_pipelines(organization:)
        raise ArgumentError, 'organization is required' if organization.nil?

        @connection.call(
          :GET,
          '/blue/rest/organizations/{organization}/pipelines/'
            .gsub('{organization}', ERB::Util.url_encode(organization.to_s)),
          type: [OpenapiClient::Models::Pipeline],
          auth: ['jenkins_auth']
        )
      end

      def rest_organizations_pipelines_activities(organization:, pipeline:)
        raise ArgumentError, 'organization is required' if organization.nil?
        raise ArgumentError, 'pipeline is required' if pipeline.nil?

        @connection.call(
          :GET,
          '/blue/rest/organizations/{organization}/pipelines/{pipeline}/activities'
            .gsub('{organization}', ERB::Util.url_encode(organization.to_s))
            .gsub('{pipeline}', ERB::Util.url_encode(pipeline.to_s)),
          type: [OpenapiClient::Models::PipelineActivity],
          auth: ['jenkins_auth']
        )
      end

      def rest_organizations_pipelines_branches(organization:, pipeline:)
        raise ArgumentError, 'organization is required' if organization.nil?
        raise ArgumentError, 'pipeline is required' if pipeline.nil?

        @connection.call(
          :GET,
          '/blue/rest/organizations/{organization}/pipelines/{pipeline}/branches'
            .gsub('{organization}', ERB::Util.url_encode(organization.to_s))
            .gsub('{pipeline}', ERB::Util.url_encode(pipeline.to_s)),
          type: OpenapiClient::Models::MultibranchPipeline,
          auth: ['jenkins_auth']
        )
      end

      def rest_organizations_pipelines_branches_get(organization:, pipeline:, branch:)
        raise ArgumentError, 'organization is required' if organization.nil?
        raise ArgumentError, 'pipeline is required' if pipeline.nil?
        raise ArgumentError, 'branch is required' if branch.nil?

        @connection.call(
          :GET,
          '/blue/rest/organizations/{organization}/pipelines/{pipeline}/branches/{branch}/'
            .gsub('{organization}', ERB::Util.url_encode(organization.to_s))
            .gsub('{pipeline}', ERB::Util.url_encode(pipeline.to_s))
            .gsub('{branch}', ERB::Util.url_encode(branch.to_s)),
          type: OpenapiClient::Models::BranchImpl,
          auth: ['jenkins_auth']
        )
      end

      def rest_organizations_pipelines_branches_runs(organization:, pipeline:, branch:, run:)
        raise ArgumentError, 'organization is required' if organization.nil?
        raise ArgumentError, 'pipeline is required' if pipeline.nil?
        raise ArgumentError, 'branch is required' if branch.nil?
        raise ArgumentError, 'run is required' if run.nil?

        @connection.call(
          :GET,
          '/blue/rest/organizations/{organization}/pipelines/{pipeline}/branches/{branch}/runs/{run}'
            .gsub('{organization}', ERB::Util.url_encode(organization.to_s))
            .gsub('{pipeline}', ERB::Util.url_encode(pipeline.to_s))
            .gsub('{branch}', ERB::Util.url_encode(branch.to_s))
            .gsub('{run}', ERB::Util.url_encode(run.to_s)),
          type: OpenapiClient::Models::PipelineRun,
          auth: ['jenkins_auth']
        )
      end

      def rest_organizations_pipelines_favorite(organization:, pipeline:, body:)
        raise ArgumentError, 'organization is required' if organization.nil?
        raise ArgumentError, 'pipeline is required' if pipeline.nil?
        raise ArgumentError, 'body is required' if body.nil?

        @connection.call(
          :PUT,
          '/blue/rest/organizations/{organization}/pipelines/{pipeline}/favorite'
            .gsub('{organization}', ERB::Util.url_encode(organization.to_s))
            .gsub('{pipeline}', ERB::Util.url_encode(pipeline.to_s)),
          type: OpenapiClient::Models::FavoriteImpl,
          auth: ['jenkins_auth'],
          body: body
        )
      end

      def rest_organizations_pipelines_get(organization:, pipeline:)
        raise ArgumentError, 'organization is required' if organization.nil?
        raise ArgumentError, 'pipeline is required' if pipeline.nil?

        @connection.call(
          :GET,
          '/blue/rest/organizations/{organization}/pipelines/{pipeline}'
            .gsub('{organization}', ERB::Util.url_encode(organization.to_s))
            .gsub('{pipeline}', ERB::Util.url_encode(pipeline.to_s)),
          type: OpenapiClient::Models::Pipeline,
          auth: ['jenkins_auth']
        )
      end

      def rest_organizations_pipelines_get_1(organization:, folder:)
        raise ArgumentError, 'organization is required' if organization.nil?
        raise ArgumentError, 'folder is required' if folder.nil?

        @connection.call(
          :GET,
          '/blue/rest/organizations/{organization}/pipelines/{folder}/'
            .gsub('{organization}', ERB::Util.url_encode(organization.to_s))
            .gsub('{folder}', ERB::Util.url_encode(folder.to_s)),
          type: OpenapiClient::Models::PipelineFolderImpl,
          auth: ['jenkins_auth']
        )
      end

      def rest_organizations_pipelines_pipelines(organization:, pipeline:, folder:)
        raise ArgumentError, 'organization is required' if organization.nil?
        raise ArgumentError, 'pipeline is required' if pipeline.nil?
        raise ArgumentError, 'folder is required' if folder.nil?

        @connection.call(
          :GET,
          '/blue/rest/organizations/{organization}/pipelines/{folder}/pipelines/{pipeline}'
            .gsub('{organization}', ERB::Util.url_encode(organization.to_s))
            .gsub('{pipeline}', ERB::Util.url_encode(pipeline.to_s))
            .gsub('{folder}', ERB::Util.url_encode(folder.to_s)),
          type: OpenapiClient::Models::PipelineImpl,
          auth: ['jenkins_auth']
        )
      end

      def rest_organizations_pipelines_queue(organization:, pipeline:)
        raise ArgumentError, 'organization is required' if organization.nil?
        raise ArgumentError, 'pipeline is required' if pipeline.nil?

        @connection.call(
          :GET,
          '/blue/rest/organizations/{organization}/pipelines/{pipeline}/queue'
            .gsub('{organization}', ERB::Util.url_encode(organization.to_s))
            .gsub('{pipeline}', ERB::Util.url_encode(pipeline.to_s)),
          type: [OpenapiClient::Models::QueueItemImpl],
          auth: ['jenkins_auth']
        )
      end

      def rest_organizations_pipelines_queue_delete(organization:, pipeline:, queue:)
        raise ArgumentError, 'organization is required' if organization.nil?
        raise ArgumentError, 'pipeline is required' if pipeline.nil?
        raise ArgumentError, 'queue is required' if queue.nil?

        @connection.call(
          :DELETE,
          '/blue/rest/organizations/{organization}/pipelines/{pipeline}/queue/{queue}'
            .gsub('{organization}', ERB::Util.url_encode(organization.to_s))
            .gsub('{pipeline}', ERB::Util.url_encode(pipeline.to_s))
            .gsub('{queue}', ERB::Util.url_encode(queue.to_s)),
          type: nil,
          auth: ['jenkins_auth']
        )
      end

      def rest_organizations_pipelines_runs(organization:, pipeline:)
        raise ArgumentError, 'organization is required' if organization.nil?
        raise ArgumentError, 'pipeline is required' if pipeline.nil?

        @connection.call(
          :GET,
          '/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs'
            .gsub('{organization}', ERB::Util.url_encode(organization.to_s))
            .gsub('{pipeline}', ERB::Util.url_encode(pipeline.to_s)),
          type: [OpenapiClient::Models::PipelineRun],
          auth: ['jenkins_auth']
        )
      end

      def rest_organizations_pipelines_runs_get(organization:, pipeline:, run:)
        raise ArgumentError, 'organization is required' if organization.nil?
        raise ArgumentError, 'pipeline is required' if pipeline.nil?
        raise ArgumentError, 'run is required' if run.nil?

        @connection.call(
          :GET,
          '/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}'
            .gsub('{organization}', ERB::Util.url_encode(organization.to_s))
            .gsub('{pipeline}', ERB::Util.url_encode(pipeline.to_s))
            .gsub('{run}', ERB::Util.url_encode(run.to_s)),
          type: OpenapiClient::Models::PipelineRun,
          auth: ['jenkins_auth']
        )
      end

      def rest_organizations_pipelines_runs_log(organization:, pipeline:, run:, start: nil, download: nil)
        raise ArgumentError, 'organization is required' if organization.nil?
        raise ArgumentError, 'pipeline is required' if pipeline.nil?
        raise ArgumentError, 'run is required' if run.nil?

        @connection.call(
          :GET,
          '/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/log'
            .gsub('{organization}', ERB::Util.url_encode(organization.to_s))
            .gsub('{pipeline}', ERB::Util.url_encode(pipeline.to_s))
            .gsub('{run}', ERB::Util.url_encode(run.to_s)),
          type: nil,
          auth: ['jenkins_auth'],
          query: { 'start' => start, 'download' => download }
        )
      end

      def rest_organizations_pipelines_runs_nodes(organization:, pipeline:, run:)
        raise ArgumentError, 'organization is required' if organization.nil?
        raise ArgumentError, 'pipeline is required' if pipeline.nil?
        raise ArgumentError, 'run is required' if run.nil?

        @connection.call(
          :GET,
          '/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes'
            .gsub('{organization}', ERB::Util.url_encode(organization.to_s))
            .gsub('{pipeline}', ERB::Util.url_encode(pipeline.to_s))
            .gsub('{run}', ERB::Util.url_encode(run.to_s)),
          type: [OpenapiClient::Models::PipelineRunNode],
          auth: ['jenkins_auth']
        )
      end

      def rest_organizations_pipelines_runs_nodes_get(organization:, pipeline:, run:, node:)
        raise ArgumentError, 'organization is required' if organization.nil?
        raise ArgumentError, 'pipeline is required' if pipeline.nil?
        raise ArgumentError, 'run is required' if run.nil?
        raise ArgumentError, 'node is required' if node.nil?

        @connection.call(
          :GET,
          '/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes/{node}'
            .gsub('{organization}', ERB::Util.url_encode(organization.to_s))
            .gsub('{pipeline}', ERB::Util.url_encode(pipeline.to_s))
            .gsub('{run}', ERB::Util.url_encode(run.to_s))
            .gsub('{node}', ERB::Util.url_encode(node.to_s)),
          type: OpenapiClient::Models::PipelineRunNode,
          auth: ['jenkins_auth']
        )
      end

      def rest_organizations_pipelines_runs_nodes_steps(organization:, pipeline:, run:, node:)
        raise ArgumentError, 'organization is required' if organization.nil?
        raise ArgumentError, 'pipeline is required' if pipeline.nil?
        raise ArgumentError, 'run is required' if run.nil?
        raise ArgumentError, 'node is required' if node.nil?

        @connection.call(
          :GET,
          '/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes/{node}/steps'
            .gsub('{organization}', ERB::Util.url_encode(organization.to_s))
            .gsub('{pipeline}', ERB::Util.url_encode(pipeline.to_s))
            .gsub('{run}', ERB::Util.url_encode(run.to_s))
            .gsub('{node}', ERB::Util.url_encode(node.to_s)),
          type: [OpenapiClient::Models::PipelineStepImpl],
          auth: ['jenkins_auth']
        )
      end

      def rest_organizations_pipelines_runs_nodes_steps_get(organization:, pipeline:, run:, node:, step:)
        raise ArgumentError, 'organization is required' if organization.nil?
        raise ArgumentError, 'pipeline is required' if pipeline.nil?
        raise ArgumentError, 'run is required' if run.nil?
        raise ArgumentError, 'node is required' if node.nil?
        raise ArgumentError, 'step is required' if step.nil?

        @connection.call(
          :GET,
          '/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes/{node}/steps/{step}'
            .gsub('{organization}', ERB::Util.url_encode(organization.to_s))
            .gsub('{pipeline}', ERB::Util.url_encode(pipeline.to_s))
            .gsub('{run}', ERB::Util.url_encode(run.to_s))
            .gsub('{node}', ERB::Util.url_encode(node.to_s))
            .gsub('{step}', ERB::Util.url_encode(step.to_s)),
          type: OpenapiClient::Models::PipelineStepImpl,
          auth: ['jenkins_auth']
        )
      end

      def rest_organizations_pipelines_runs_nodes_steps_log(organization:, pipeline:, run:, node:, step:)
        raise ArgumentError, 'organization is required' if organization.nil?
        raise ArgumentError, 'pipeline is required' if pipeline.nil?
        raise ArgumentError, 'run is required' if run.nil?
        raise ArgumentError, 'node is required' if node.nil?
        raise ArgumentError, 'step is required' if step.nil?

        @connection.call(
          :GET,
          '/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes/{node}/steps/{step}/log'
            .gsub('{organization}', ERB::Util.url_encode(organization.to_s))
            .gsub('{pipeline}', ERB::Util.url_encode(pipeline.to_s))
            .gsub('{run}', ERB::Util.url_encode(run.to_s))
            .gsub('{node}', ERB::Util.url_encode(node.to_s))
            .gsub('{step}', ERB::Util.url_encode(step.to_s)),
          type: nil,
          auth: ['jenkins_auth']
        )
      end

      def rest_organizations_pipelines_runs_post(organization:, pipeline:)
        raise ArgumentError, 'organization is required' if organization.nil?
        raise ArgumentError, 'pipeline is required' if pipeline.nil?

        @connection.call(
          :POST,
          '/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs'
            .gsub('{organization}', ERB::Util.url_encode(organization.to_s))
            .gsub('{pipeline}', ERB::Util.url_encode(pipeline.to_s)),
          type: OpenapiClient::Models::QueueItemImpl,
          auth: ['jenkins_auth']
        )
      end

      def rest_organizations_pipelines_runs_replay(organization:, pipeline:, run:)
        raise ArgumentError, 'organization is required' if organization.nil?
        raise ArgumentError, 'pipeline is required' if pipeline.nil?
        raise ArgumentError, 'run is required' if run.nil?

        @connection.call(
          :POST,
          '/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/replay'
            .gsub('{organization}', ERB::Util.url_encode(organization.to_s))
            .gsub('{pipeline}', ERB::Util.url_encode(pipeline.to_s))
            .gsub('{run}', ERB::Util.url_encode(run.to_s)),
          type: OpenapiClient::Models::QueueItemImpl,
          auth: ['jenkins_auth']
        )
      end

      def rest_organizations_pipelines_runs_stop(organization:, pipeline:, run:, blocking: nil, time_out_in_secs: nil)
        raise ArgumentError, 'organization is required' if organization.nil?
        raise ArgumentError, 'pipeline is required' if pipeline.nil?
        raise ArgumentError, 'run is required' if run.nil?

        @connection.call(
          :PUT,
          '/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/stop'
            .gsub('{organization}', ERB::Util.url_encode(organization.to_s))
            .gsub('{pipeline}', ERB::Util.url_encode(pipeline.to_s))
            .gsub('{run}', ERB::Util.url_encode(run.to_s)),
          type: OpenapiClient::Models::PipelineRun,
          auth: ['jenkins_auth'],
          query: { 'blocking' => blocking, 'timeOutInSecs' => time_out_in_secs }
        )
      end

      def rest_organizations_scm(organization:, scm:)
        raise ArgumentError, 'organization is required' if organization.nil?
        raise ArgumentError, 'scm is required' if scm.nil?

        @connection.call(
          :GET,
          '/blue/rest/organizations/{organization}/scm/{scm}'
            .gsub('{organization}', ERB::Util.url_encode(organization.to_s))
            .gsub('{scm}', ERB::Util.url_encode(scm.to_s)),
          type: OpenapiClient::Models::GithubScm,
          auth: ['jenkins_auth']
        )
      end

      def rest_organizations_scm_organizations(organization:, scm:, credential_id: nil)
        raise ArgumentError, 'organization is required' if organization.nil?
        raise ArgumentError, 'scm is required' if scm.nil?

        @connection.call(
          :GET,
          '/blue/rest/organizations/{organization}/scm/{scm}/organizations'
            .gsub('{organization}', ERB::Util.url_encode(organization.to_s))
            .gsub('{scm}', ERB::Util.url_encode(scm.to_s)),
          type: [OpenapiClient::Models::GithubOrganization],
          auth: ['jenkins_auth'],
          query: { 'credentialId' => credential_id }
        )
      end

      def rest_organizations_scm_organizations_repositories(organization:, scm:, scm_organisation:, credential_id: nil, page_size: nil, page_number: nil)
        raise ArgumentError, 'organization is required' if organization.nil?
        raise ArgumentError, 'scm is required' if scm.nil?
        raise ArgumentError, 'scm_organisation is required' if scm_organisation.nil?

        @connection.call(
          :GET,
          '/blue/rest/organizations/{organization}/scm/{scm}/organizations/{scmOrganisation}/repositories'
            .gsub('{organization}', ERB::Util.url_encode(organization.to_s))
            .gsub('{scm}', ERB::Util.url_encode(scm.to_s))
            .gsub('{scmOrganisation}', ERB::Util.url_encode(scm_organisation.to_s)),
          type: [OpenapiClient::Models::GithubOrganization],
          auth: ['jenkins_auth'],
          query: { 'credentialId' => credential_id, 'pageSize' => page_size, 'pageNumber' => page_number }
        )
      end

      def rest_organizations_scm_organizations_repositories_get(organization:, scm:, scm_organisation:, repository:, credential_id: nil)
        raise ArgumentError, 'organization is required' if organization.nil?
        raise ArgumentError, 'scm is required' if scm.nil?
        raise ArgumentError, 'scm_organisation is required' if scm_organisation.nil?
        raise ArgumentError, 'repository is required' if repository.nil?

        @connection.call(
          :GET,
          '/blue/rest/organizations/{organization}/scm/{scm}/organizations/{scmOrganisation}/repositories/{repository}'
            .gsub('{organization}', ERB::Util.url_encode(organization.to_s))
            .gsub('{scm}', ERB::Util.url_encode(scm.to_s))
            .gsub('{scmOrganisation}', ERB::Util.url_encode(scm_organisation.to_s))
            .gsub('{repository}', ERB::Util.url_encode(repository.to_s)),
          type: [OpenapiClient::Models::GithubOrganization],
          auth: ['jenkins_auth'],
          query: { 'credentialId' => credential_id }
        )
      end

      def rest_organizations_user(organization:)
        raise ArgumentError, 'organization is required' if organization.nil?

        @connection.call(
          :GET,
          '/blue/rest/organizations/{organization}/user/'
            .gsub('{organization}', ERB::Util.url_encode(organization.to_s)),
          type: OpenapiClient::Models::User,
          auth: ['jenkins_auth']
        )
      end

      def rest_organizations_users(organization:)
        raise ArgumentError, 'organization is required' if organization.nil?

        @connection.call(
          :GET,
          '/blue/rest/organizations/{organization}/users/'
            .gsub('{organization}', ERB::Util.url_encode(organization.to_s)),
          type: OpenapiClient::Models::User,
          auth: ['jenkins_auth']
        )
      end

      def rest_organizations_users_get(organization:, user:)
        raise ArgumentError, 'organization is required' if organization.nil?
        raise ArgumentError, 'user is required' if user.nil?

        @connection.call(
          :GET,
          '/blue/rest/organizations/{organization}/users/{user}'
            .gsub('{organization}', ERB::Util.url_encode(organization.to_s))
            .gsub('{user}', ERB::Util.url_encode(user.to_s)),
          type: OpenapiClient::Models::User,
          auth: ['jenkins_auth']
        )
      end

      def rest_search(q:)
        raise ArgumentError, 'q is required' if q.nil?

        @connection.call(
          :GET,
          '/blue/rest/search/',
          type: nil,
          auth: ['jenkins_auth'],
          query: { 'q' => q }
        )
      end

      def rest_users_favorites(user:)
        raise ArgumentError, 'user is required' if user.nil?

        @connection.call(
          :GET,
          '/blue/rest/users/{user}/favorites'
            .gsub('{user}', ERB::Util.url_encode(user.to_s)),
          type: [OpenapiClient::Models::FavoriteImpl],
          auth: ['jenkins_auth']
        )
      end
    end
  end
end
