#include "BaseApi.h"

using namespace Tiny;



        Response<
            DefaultCrumbIssuer
        >
        BaseApi::
        getCrumb(
        )
        {
            std::string url = basepath + "/crumbIssuer/api/json"; //


            // Headers  | 

            // Query    | 

            // Form     | 





            std::string payload = "";
            // Send Request
            // METHOD | GET
            // Body     | 
            int httpCode = sendRequest(url, "GET", reinterpret_cast<uint8_t*>(&payload[0]), payload.length());

            // Handle Request
            String output = getResponseBody();
            std::string output_string = output.c_str();




            DefaultCrumbIssuer obj(output_string);


            Response<DefaultCrumbIssuer> response(obj, httpCode);
            return response;
        }



