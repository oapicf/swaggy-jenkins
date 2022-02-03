note
    description: "API tests for BASE_API"
    date: "$Date$"
    revision: "$Revision$"


class BASE_API_TEST

inherit

    EQA_TEST_SET

feature -- Test routines


    test_crumb
            -- 
            --
            -- Retrieve CSRF protection token
        local
            l_response: DEFAULT_CRUMB_ISSUER
        do
            -- TODO: Initialize required params.

            -- l_response := api.crumb
            assert ("not_implemented", False)
        end

feature {NONE} -- Implementation

    api: BASE_API
            -- Create an object instance of `BASE_API'.
        once
            create { BASE_API } Result
        end

end
