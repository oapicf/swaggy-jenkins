note
    description: "API tests for BLUEOCEAN_API"
    date: "$Date$"
    revision: "$Revision$"


class BLUEOCEAN_API_TEST

inherit

    EQA_TEST_SET

feature -- Test routines

    
    test_authenticated_user
            -- 
            -- 
            -- Retrieve authenticated user details for an organization 
        local
            l_response: USER
            l_organization: STRING_32
        do
            -- TODO: Initialize required params.
            -- l_organization
                      
            -- l_response := api.authenticated_user(l_organization)
            assert ("not_implemented", False)
        end
    
    test_classes
            -- 
            -- 
            -- Get a list of class names supported by a given class 
        local
            l_response: STRING_32
            l_var_class: STRING_32
        do
            -- TODO: Initialize required params.
            -- l_var_class
                      
            -- l_response := api.classes(l_var_class)
            assert ("not_implemented", False)
        end
    
    test_delete_pipeline_queue_item
            -- 
            -- 
            -- Delete queue item from an organization pipeline queue 
        local
            l_organization: STRING_32
            l_pipeline: STRING_32
            l_queue: STRING_32
        do
            -- TODO: Initialize required params.
            -- l_organization
            -- l_pipeline
            -- l_queue
                      
            -- api.delete_pipeline_queue_item(l_organization, l_pipeline, l_queue)
            assert ("not_implemented", False)
        end
    
    test_organisation
            -- 
            -- 
            -- Retrieve organization details 
        local
            l_response: ORGANISATION
            l_organization: STRING_32
        do
            -- TODO: Initialize required params.
            -- l_organization
                      
            -- l_response := api.organisation(l_organization)
            assert ("not_implemented", False)
        end
    
    test_organisations
            -- 
            -- 
            -- Retrieve all organizations details 
        local
            l_response: ORGANISATIONS
        do
            -- TODO: Initialize required params.
                      
            -- l_response := api.organisations
            assert ("not_implemented", False)
        end
    
    test_pipeline
            -- 
            -- 
            -- Retrieve pipeline details for an organization 
        local
            l_response: PIPELINE
            l_organization: STRING_32
            l_pipeline: STRING_32
        do
            -- TODO: Initialize required params.
            -- l_organization
            -- l_pipeline
                      
            -- l_response := api.pipeline(l_organization, l_pipeline)
            assert ("not_implemented", False)
        end
    
    test_pipeline_activities
            -- 
            -- 
            -- Retrieve all activities details for an organization pipeline 
        local
            l_response: PIPELINE_ACTIVITIES
            l_organization: STRING_32
            l_pipeline: STRING_32
        do
            -- TODO: Initialize required params.
            -- l_organization
            -- l_pipeline
                      
            -- l_response := api.pipeline_activities(l_organization, l_pipeline)
            assert ("not_implemented", False)
        end
    
    test_pipeline_branch
            -- 
            -- 
            -- Retrieve branch details for an organization pipeline 
        local
            l_response: BRANCH_IMPL
            l_organization: STRING_32
            l_pipeline: STRING_32
            l_branch: STRING_32
        do
            -- TODO: Initialize required params.
            -- l_organization
            -- l_pipeline
            -- l_branch
                      
            -- l_response := api.pipeline_branch(l_organization, l_pipeline, l_branch)
            assert ("not_implemented", False)
        end
    
    test_pipeline_branch_run
            -- 
            -- 
            -- Retrieve branch run details for an organization pipeline 
        local
            l_response: PIPELINE_RUN
            l_organization: STRING_32
            l_pipeline: STRING_32
            l_branch: STRING_32
            l_run: STRING_32
        do
            -- TODO: Initialize required params.
            -- l_organization
            -- l_pipeline
            -- l_branch
            -- l_run
                      
            -- l_response := api.pipeline_branch_run(l_organization, l_pipeline, l_branch, l_run)
            assert ("not_implemented", False)
        end
    
    test_pipeline_branches
            -- 
            -- 
            -- Retrieve all branches details for an organization pipeline 
        local
            l_response: MULTIBRANCH_PIPELINE
            l_organization: STRING_32
            l_pipeline: STRING_32
        do
            -- TODO: Initialize required params.
            -- l_organization
            -- l_pipeline
                      
            -- l_response := api.pipeline_branches(l_organization, l_pipeline)
            assert ("not_implemented", False)
        end
    
    test_pipeline_folder
            -- 
            -- 
            -- Retrieve pipeline folder for an organization 
        local
            l_response: PIPELINE_FOLDER_IMPL
            l_organization: STRING_32
            l_folder: STRING_32
        do
            -- TODO: Initialize required params.
            -- l_organization
            -- l_folder
                      
            -- l_response := api.pipeline_folder(l_organization, l_folder)
            assert ("not_implemented", False)
        end
    
    test_pipeline_folder_pipeline
            -- 
            -- 
            -- Retrieve pipeline details for an organization folder 
        local
            l_response: PIPELINE_IMPL
            l_organization: STRING_32
            l_pipeline: STRING_32
            l_folder: STRING_32
        do
            -- TODO: Initialize required params.
            -- l_organization
            -- l_pipeline
            -- l_folder
                      
            -- l_response := api.pipeline_folder_pipeline(l_organization, l_pipeline, l_folder)
            assert ("not_implemented", False)
        end
    
    test_pipeline_queue
            -- 
            -- 
            -- Retrieve queue details for an organization pipeline 
        local
            l_response: PIPELINE_QUEUE
            l_organization: STRING_32
            l_pipeline: STRING_32
        do
            -- TODO: Initialize required params.
            -- l_organization
            -- l_pipeline
                      
            -- l_response := api.pipeline_queue(l_organization, l_pipeline)
            assert ("not_implemented", False)
        end
    
    test_pipeline_run
            -- 
            -- 
            -- Retrieve run details for an organization pipeline 
        local
            l_response: PIPELINE_RUN
            l_organization: STRING_32
            l_pipeline: STRING_32
            l_run: STRING_32
        do
            -- TODO: Initialize required params.
            -- l_organization
            -- l_pipeline
            -- l_run
                      
            -- l_response := api.pipeline_run(l_organization, l_pipeline, l_run)
            assert ("not_implemented", False)
        end
    
    test_pipeline_run_log
            -- 
            -- 
            -- Get log for a pipeline run 
        local
            l_response: STRING_32
            l_organization: STRING_32
            l_pipeline: STRING_32
            l_run: STRING_32
            l_start: INTEGER_32
            l_download: BOOLEAN
        do
            -- TODO: Initialize required params.
            -- l_organization
            -- l_pipeline
            -- l_run
                      
            -- l_response := api.pipeline_run_log(l_organization, l_pipeline, l_run, l_start, l_download)
            assert ("not_implemented", False)
        end
    
    test_pipeline_run_node
            -- 
            -- 
            -- Retrieve run node details for an organization pipeline 
        local
            l_response: PIPELINE_RUN_NODE
            l_organization: STRING_32
            l_pipeline: STRING_32
            l_run: STRING_32
            l_node: STRING_32
        do
            -- TODO: Initialize required params.
            -- l_organization
            -- l_pipeline
            -- l_run
            -- l_node
                      
            -- l_response := api.pipeline_run_node(l_organization, l_pipeline, l_run, l_node)
            assert ("not_implemented", False)
        end
    
    test_pipeline_run_node_step
            -- 
            -- 
            -- Retrieve run node details for an organization pipeline 
        local
            l_response: PIPELINE_STEP_IMPL
            l_organization: STRING_32
            l_pipeline: STRING_32
            l_run: STRING_32
            l_node: STRING_32
            l_step: STRING_32
        do
            -- TODO: Initialize required params.
            -- l_organization
            -- l_pipeline
            -- l_run
            -- l_node
            -- l_step
                      
            -- l_response := api.pipeline_run_node_step(l_organization, l_pipeline, l_run, l_node, l_step)
            assert ("not_implemented", False)
        end
    
    test_pipeline_run_node_step_log
            -- 
            -- 
            -- Get log for a pipeline run node step 
        local
            l_response: STRING_32
            l_organization: STRING_32
            l_pipeline: STRING_32
            l_run: STRING_32
            l_node: STRING_32
            l_step: STRING_32
        do
            -- TODO: Initialize required params.
            -- l_organization
            -- l_pipeline
            -- l_run
            -- l_node
            -- l_step
                      
            -- l_response := api.pipeline_run_node_step_log(l_organization, l_pipeline, l_run, l_node, l_step)
            assert ("not_implemented", False)
        end
    
    test_pipeline_run_node_steps
            -- 
            -- 
            -- Retrieve run node steps details for an organization pipeline 
        local
            l_response: PIPELINE_RUN_NODE_STEPS
            l_organization: STRING_32
            l_pipeline: STRING_32
            l_run: STRING_32
            l_node: STRING_32
        do
            -- TODO: Initialize required params.
            -- l_organization
            -- l_pipeline
            -- l_run
            -- l_node
                      
            -- l_response := api.pipeline_run_node_steps(l_organization, l_pipeline, l_run, l_node)
            assert ("not_implemented", False)
        end
    
    test_pipeline_run_nodes
            -- 
            -- 
            -- Retrieve run nodes details for an organization pipeline 
        local
            l_response: PIPELINE_RUN_NODES
            l_organization: STRING_32
            l_pipeline: STRING_32
            l_run: STRING_32
        do
            -- TODO: Initialize required params.
            -- l_organization
            -- l_pipeline
            -- l_run
                      
            -- l_response := api.pipeline_run_nodes(l_organization, l_pipeline, l_run)
            assert ("not_implemented", False)
        end
    
    test_pipeline_runs
            -- 
            -- 
            -- Retrieve all runs details for an organization pipeline 
        local
            l_response: PIPELINE_RUNS
            l_organization: STRING_32
            l_pipeline: STRING_32
        do
            -- TODO: Initialize required params.
            -- l_organization
            -- l_pipeline
                      
            -- l_response := api.pipeline_runs(l_organization, l_pipeline)
            assert ("not_implemented", False)
        end
    
    test_pipelines
            -- 
            -- 
            -- Retrieve all pipelines details for an organization 
        local
            l_response: PIPELINES
            l_organization: STRING_32
        do
            -- TODO: Initialize required params.
            -- l_organization
                      
            -- l_response := api.pipelines(l_organization)
            assert ("not_implemented", False)
        end
    
    test_post_pipeline_run
            -- 
            -- 
            -- Replay an organization pipeline run 
        local
            l_response: QUEUE_ITEM_IMPL
            l_organization: STRING_32
            l_pipeline: STRING_32
            l_run: STRING_32
        do
            -- TODO: Initialize required params.
            -- l_organization
            -- l_pipeline
            -- l_run
                      
            -- l_response := api.post_pipeline_run(l_organization, l_pipeline, l_run)
            assert ("not_implemented", False)
        end
    
    test_post_pipeline_runs
            -- 
            -- 
            -- Start a build for an organization pipeline 
        local
            l_response: QUEUE_ITEM_IMPL
            l_organization: STRING_32
            l_pipeline: STRING_32
        do
            -- TODO: Initialize required params.
            -- l_organization
            -- l_pipeline
                      
            -- l_response := api.post_pipeline_runs(l_organization, l_pipeline)
            assert ("not_implemented", False)
        end
    
    test_put_pipeline_favorite
            -- 
            -- 
            -- Favorite/unfavorite a pipeline 
        local
            l_response: FAVORITE_IMPL
            l_organization: STRING_32
            l_pipeline: STRING_32
            l_body: BODY
        do
            -- TODO: Initialize required params.
            -- l_organization
            -- l_pipeline
            -- l_body
                      
            -- l_response := api.put_pipeline_favorite(l_organization, l_pipeline, l_body)
            assert ("not_implemented", False)
        end
    
    test_put_pipeline_run
            -- 
            -- 
            -- Stop a build of an organization pipeline 
        local
            l_response: PIPELINE_RUN
            l_organization: STRING_32
            l_pipeline: STRING_32
            l_run: STRING_32
            l_blocking: STRING_32
            l_time_out_in_secs: INTEGER_32
        do
            -- TODO: Initialize required params.
            -- l_organization
            -- l_pipeline
            -- l_run
                      
            -- l_response := api.put_pipeline_run(l_organization, l_pipeline, l_run, l_blocking, l_time_out_in_secs)
            assert ("not_implemented", False)
        end
    
    test_sc_m
            -- 
            -- 
            -- Retrieve SCM details for an organization 
        local
            l_response: GITHUB_SCM
            l_organization: STRING_32
            l_scm: STRING_32
        do
            -- TODO: Initialize required params.
            -- l_organization
            -- l_scm
                      
            -- l_response := api.sc_m(l_organization, l_scm)
            assert ("not_implemented", False)
        end
    
    test_sc_morganisation_repositories
            -- 
            -- 
            -- Retrieve SCM organization repositories details for an organization 
        local
            l_response: SCM_ORGANISATIONS
            l_organization: STRING_32
            l_scm: STRING_32
            l_scm_organisation: STRING_32
            l_credential_id: STRING_32
            l_page_size: INTEGER_32
            l_page_number: INTEGER_32
        do
            -- TODO: Initialize required params.
            -- l_organization
            -- l_scm
            -- l_scm_organisation
                      
            -- l_response := api.sc_morganisation_repositories(l_organization, l_scm, l_scm_organisation, l_credential_id, l_page_size, l_page_number)
            assert ("not_implemented", False)
        end
    
    test_sc_morganisation_repository
            -- 
            -- 
            -- Retrieve SCM organization repository details for an organization 
        local
            l_response: SCM_ORGANISATIONS
            l_organization: STRING_32
            l_scm: STRING_32
            l_scm_organisation: STRING_32
            l_repository: STRING_32
            l_credential_id: STRING_32
        do
            -- TODO: Initialize required params.
            -- l_organization
            -- l_scm
            -- l_scm_organisation
            -- l_repository
                      
            -- l_response := api.sc_morganisation_repository(l_organization, l_scm, l_scm_organisation, l_repository, l_credential_id)
            assert ("not_implemented", False)
        end
    
    test_sc_morganisations
            -- 
            -- 
            -- Retrieve SCM organizations details for an organization 
        local
            l_response: SCM_ORGANISATIONS
            l_organization: STRING_32
            l_scm: STRING_32
            l_credential_id: STRING_32
        do
            -- TODO: Initialize required params.
            -- l_organization
            -- l_scm
                      
            -- l_response := api.sc_morganisations(l_organization, l_scm, l_credential_id)
            assert ("not_implemented", False)
        end
    
    test_search
            -- 
            -- 
            -- Search for any resource details 
        local
            l_response: STRING_32
            l_q: STRING_32
        do
            -- TODO: Initialize required params.
            -- l_q
                      
            -- l_response := api.search(l_q)
            assert ("not_implemented", False)
        end
    
    test_search_classes
            -- 
            -- 
            -- Get classes details 
        local
            l_response: STRING_32
            l_q: STRING_32
        do
            -- TODO: Initialize required params.
            -- l_q
                      
            -- l_response := api.search_classes(l_q)
            assert ("not_implemented", False)
        end
    
    test_user
            -- 
            -- 
            -- Retrieve user details for an organization 
        local
            l_response: USER
            l_organization: STRING_32
            l_user: STRING_32
        do
            -- TODO: Initialize required params.
            -- l_organization
            -- l_user
                      
            -- l_response := api.user(l_organization, l_user)
            assert ("not_implemented", False)
        end
    
    test_user_favorites
            -- 
            -- 
            -- Retrieve user favorites details for an organization 
        local
            l_response: USER_FAVORITES
            l_user: STRING_32
        do
            -- TODO: Initialize required params.
            -- l_user
                      
            -- l_response := api.user_favorites(l_user)
            assert ("not_implemented", False)
        end
    
    test_users
            -- 
            -- 
            -- Retrieve users details for an organization 
        local
            l_response: USER
            l_organization: STRING_32
        do
            -- TODO: Initialize required params.
            -- l_organization
                      
            -- l_response := api.users(l_organization)
            assert ("not_implemented", False)
        end

feature {NONE} -- Implementation

    api: BLUEOCEAN_API
            -- Create an object instance of `BLUEOCEAN_API'.
        once            
            create { BLUEOCEAN_API } Result
        end

end
