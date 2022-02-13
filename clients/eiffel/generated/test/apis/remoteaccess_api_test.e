note
    description: "API tests for REMOTEACCESS_API"
    date: "$Date$"
    revision: "$Revision$"


class REMOTEACCESS_API_TEST

inherit

    EQA_TEST_SET

feature -- Test routines


    test_computer
            -- 
            --
            -- Retrieve computer details
        local
            l_response: COMPUTER_SET
            l_depth: INTEGER_32
        do
            -- TODO: Initialize required params.
            -- l_depth

            -- l_response := api.computer(l_depth)
            assert ("not_implemented", False)
        end

    test_head_jenkins
            -- 
            --
            -- Retrieve Jenkins headers
        local
        do
            -- TODO: Initialize required params.

            -- api.head_jenkins
            assert ("not_implemented", False)
        end

    test_jenkins
            -- 
            --
            -- Retrieve Jenkins details
        local
            l_response: HUDSON
        do
            -- TODO: Initialize required params.

            -- l_response := api.jenkins
            assert ("not_implemented", False)
        end

    test_job
            -- 
            --
            -- Retrieve job details
        local
            l_response: FREE_STYLE_PROJECT
            l_name: STRING_32
        do
            -- TODO: Initialize required params.
            -- l_name

            -- l_response := api.job(l_name)
            assert ("not_implemented", False)
        end

    test_job_config
            -- 
            --
            -- Retrieve job configuration
        local
            l_response: STRING_32
            l_name: STRING_32
        do
            -- TODO: Initialize required params.
            -- l_name

            -- l_response := api.job_config(l_name)
            assert ("not_implemented", False)
        end

    test_job_last_build
            -- 
            --
            -- Retrieve job&#39;s last build details
        local
            l_response: FREE_STYLE_BUILD
            l_name: STRING_32
        do
            -- TODO: Initialize required params.
            -- l_name

            -- l_response := api.job_last_build(l_name)
            assert ("not_implemented", False)
        end

    test_job_progressive_text
            -- 
            --
            -- Retrieve job&#39;s build progressive text output
        local
            l_name: STRING_32
            l_number: STRING_32
            l_start: STRING_32
        do
            -- TODO: Initialize required params.
            -- l_name
            -- l_number
            -- l_start

            -- api.job_progressive_text(l_name, l_number, l_start)
            assert ("not_implemented", False)
        end

    test_post_create_item
            -- 
            --
            -- Create a new job using job configuration, or copied from an existing job
        local
            l_name: STRING_32
            l_var_from: STRING_32
            l_mode: STRING_32
            l_jenkins__crumb: STRING_32
            l_content__type: STRING_32
            l_body: STRING_32
        do
            -- TODO: Initialize required params.
            -- l_name

            -- api.post_create_item(l_name, l_var_from, l_mode, l_jenkins__crumb, l_content__type, l_body)
            assert ("not_implemented", False)
        end

    test_post_create_view
            -- 
            --
            -- Create a new view using view configuration
        local
            l_name: STRING_32
            l_jenkins__crumb: STRING_32
            l_content__type: STRING_32
            l_body: STRING_32
        do
            -- TODO: Initialize required params.
            -- l_name

            -- api.post_create_view(l_name, l_jenkins__crumb, l_content__type, l_body)
            assert ("not_implemented", False)
        end

    test_post_job_build
            -- 
            --
            -- Build a job
        local
            l_name: STRING_32
            l_json: STRING_32
            l_token: STRING_32
            l_jenkins__crumb: STRING_32
        do
            -- TODO: Initialize required params.
            -- l_name
            -- l_json

            -- api.post_job_build(l_name, l_json, l_token, l_jenkins__crumb)
            assert ("not_implemented", False)
        end

    test_post_job_config
            -- 
            --
            -- Update job configuration
        local
            l_name: STRING_32
            l_body: STRING_32
            l_jenkins__crumb: STRING_32
        do
            -- TODO: Initialize required params.
            -- l_name
            -- l_body

            -- api.post_job_config(l_name, l_body, l_jenkins__crumb)
            assert ("not_implemented", False)
        end

    test_post_job_delete
            -- 
            --
            -- Delete a job
        local
            l_name: STRING_32
            l_jenkins__crumb: STRING_32
        do
            -- TODO: Initialize required params.
            -- l_name

            -- api.post_job_delete(l_name, l_jenkins__crumb)
            assert ("not_implemented", False)
        end

    test_post_job_disable
            -- 
            --
            -- Disable a job
        local
            l_name: STRING_32
            l_jenkins__crumb: STRING_32
        do
            -- TODO: Initialize required params.
            -- l_name

            -- api.post_job_disable(l_name, l_jenkins__crumb)
            assert ("not_implemented", False)
        end

    test_post_job_enable
            -- 
            --
            -- Enable a job
        local
            l_name: STRING_32
            l_jenkins__crumb: STRING_32
        do
            -- TODO: Initialize required params.
            -- l_name

            -- api.post_job_enable(l_name, l_jenkins__crumb)
            assert ("not_implemented", False)
        end

    test_post_job_last_build_stop
            -- 
            --
            -- Stop a job
        local
            l_name: STRING_32
            l_jenkins__crumb: STRING_32
        do
            -- TODO: Initialize required params.
            -- l_name

            -- api.post_job_last_build_stop(l_name, l_jenkins__crumb)
            assert ("not_implemented", False)
        end

    test_post_view_config
            -- 
            --
            -- Update view configuration
        local
            l_name: STRING_32
            l_body: STRING_32
            l_jenkins__crumb: STRING_32
        do
            -- TODO: Initialize required params.
            -- l_name
            -- l_body

            -- api.post_view_config(l_name, l_body, l_jenkins__crumb)
            assert ("not_implemented", False)
        end

    test_queue
            -- 
            --
            -- Retrieve queue details
        local
            l_response: QUEUE
        do
            -- TODO: Initialize required params.

            -- l_response := api.queue
            assert ("not_implemented", False)
        end

    test_queue_item
            -- 
            --
            -- Retrieve queued item details
        local
            l_response: QUEUE
            l_number: STRING_32
        do
            -- TODO: Initialize required params.
            -- l_number

            -- l_response := api.queue_item(l_number)
            assert ("not_implemented", False)
        end

    test_view
            -- 
            --
            -- Retrieve view details
        local
            l_response: LIST_VIEW
            l_name: STRING_32
        do
            -- TODO: Initialize required params.
            -- l_name

            -- l_response := api.view(l_name)
            assert ("not_implemented", False)
        end

    test_view_config
            -- 
            --
            -- Retrieve view configuration
        local
            l_response: STRING_32
            l_name: STRING_32
        do
            -- TODO: Initialize required params.
            -- l_name

            -- l_response := api.view_config(l_name)
            assert ("not_implemented", False)
        end

feature {NONE} -- Implementation

    api: REMOTEACCESS_API
            -- Create an object instance of `REMOTEACCESS_API'.
        once
            create { REMOTEACCESS_API } Result
        end

end
