note
    description: "API tests for BASEREMOTEACCESS_API"
    date: "$Date$"
    revision: "$Revision$"


class BASEREMOTEACCESS_API_TEST

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

    api: BASEREMOTEACCESS_API
            -- Create an object instance of `BASEREMOTEACCESS_API'.
        once            
            create { BASEREMOTEACCESS_API } Result
        end

end
