note
 description:"[
		Swaggy Jenkins
 		Jenkins API clients generated from Swagger / Open API specification
  		OpenAPI spec version: 1.1.1
 	    Contact: blah@cliffano.com

  	NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).

 		 Do not edit the class manually.
 	]"
	date: "$Date$"
	revision: "$Revision$"
	EIS:"Eiffel openapi generator", "src=https://openapi-generator.tech", "protocol=uri"
class PIPELINE_BRANCHESITEM 

inherit

  ANY
      redefine
          out 
      end


feature --Access

    display_name: detachable STRING_32 
      
    estimated_duration_in_millis: INTEGER_32 
      
    name: detachable STRING_32 
      
    weather_score: INTEGER_32 
      
    latest_run: detachable PIPELINE_BRANCHESITEMLATEST_RUN 
      
    organization: detachable STRING_32 
      
    pull_request: detachable PIPELINE_BRANCHESITEMPULL_REQUEST 
      
    total_number_of_pull_requests: INTEGER_32 
      
    var_class: detachable STRING_32 
      

feature -- Change Element  
 
    set_display_name (a_name: like display_name)
        -- Set 'display_name' with 'a_name'.
      do
        display_name := a_name
      ensure
        display_name_set: display_name = a_name		
      end

    set_estimated_duration_in_millis (a_name: like estimated_duration_in_millis)
        -- Set 'estimated_duration_in_millis' with 'a_name'.
      do
        estimated_duration_in_millis := a_name
      ensure
        estimated_duration_in_millis_set: estimated_duration_in_millis = a_name		
      end

    set_name (a_name: like name)
        -- Set 'name' with 'a_name'.
      do
        name := a_name
      ensure
        name_set: name = a_name		
      end

    set_weather_score (a_name: like weather_score)
        -- Set 'weather_score' with 'a_name'.
      do
        weather_score := a_name
      ensure
        weather_score_set: weather_score = a_name		
      end

    set_latest_run (a_name: like latest_run)
        -- Set 'latest_run' with 'a_name'.
      do
        latest_run := a_name
      ensure
        latest_run_set: latest_run = a_name		
      end

    set_organization (a_name: like organization)
        -- Set 'organization' with 'a_name'.
      do
        organization := a_name
      ensure
        organization_set: organization = a_name		
      end

    set_pull_request (a_name: like pull_request)
        -- Set 'pull_request' with 'a_name'.
      do
        pull_request := a_name
      ensure
        pull_request_set: pull_request = a_name		
      end

    set_total_number_of_pull_requests (a_name: like total_number_of_pull_requests)
        -- Set 'total_number_of_pull_requests' with 'a_name'.
      do
        total_number_of_pull_requests := a_name
      ensure
        total_number_of_pull_requests_set: total_number_of_pull_requests = a_name		
      end

    set_var_class (a_name: like var_class)
        -- Set 'var_class' with 'a_name'.
      do
        var_class := a_name
      ensure
        var_class_set: var_class = a_name		
      end


 feature -- Status Report

    out: STRING
          -- <Precursor>
      do
        create Result.make_empty
        Result.append("%Nclass PIPELINE_BRANCHESITEM%N")
        if attached display_name as l_display_name then
          Result.append ("%Ndisplay_name:")
          Result.append (l_display_name.out)
          Result.append ("%N")    
        end  
        if attached estimated_duration_in_millis as l_estimated_duration_in_millis then
          Result.append ("%Nestimated_duration_in_millis:")
          Result.append (l_estimated_duration_in_millis.out)
          Result.append ("%N")    
        end  
        if attached name as l_name then
          Result.append ("%Nname:")
          Result.append (l_name.out)
          Result.append ("%N")    
        end  
        if attached weather_score as l_weather_score then
          Result.append ("%Nweather_score:")
          Result.append (l_weather_score.out)
          Result.append ("%N")    
        end  
        if attached latest_run as l_latest_run then
          Result.append ("%Nlatest_run:")
          Result.append (l_latest_run.out)
          Result.append ("%N")    
        end  
        if attached organization as l_organization then
          Result.append ("%Norganization:")
          Result.append (l_organization.out)
          Result.append ("%N")    
        end  
        if attached pull_request as l_pull_request then
          Result.append ("%Npull_request:")
          Result.append (l_pull_request.out)
          Result.append ("%N")    
        end  
        if attached total_number_of_pull_requests as l_total_number_of_pull_requests then
          Result.append ("%Ntotal_number_of_pull_requests:")
          Result.append (l_total_number_of_pull_requests.out)
          Result.append ("%N")    
        end  
        if attached var_class as l_var_class then
          Result.append ("%Nvar_class:")
          Result.append (l_var_class.out)
          Result.append ("%N")    
        end  
      end
end


