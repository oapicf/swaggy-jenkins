note
 description:"[
		Swaggy Jenkins
 		Jenkins API clients generated from Swagger / Open API specification
  		The version of the OpenAPI document: 1.1.2-pre.0
 	    Contact: blah@cliffano.com

  	NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).

 		 Do not edit the class manually.
 	]"
	date: "$Date$"
	revision: "$Revision$"
	EIS:"Eiffel openapi generator", "src=https://openapi-generator.tech", "protocol=uri"
class PIPELINE_STEP_IMPL




feature --Access

    var_class: detachable STRING_32
      
    var_links: detachable PIPELINE_STEP_IMPLLINKS
      
    display_name: detachable STRING_32
      
 	duration_in_millis: INTEGER_32
    	 
    id: detachable STRING_32
      
    input: detachable INPUT_STEP_IMPL
      
    var_result: detachable STRING_32
      
    start_time: detachable STRING_32
      
    state: detachable STRING_32
      

feature -- Change Element

    set_var_class (a_name: like var_class)
        -- Set 'var_class' with 'a_name'.
      do
        var_class := a_name
      ensure
        var_class_set: var_class = a_name
      end

    set_var_links (a_name: like var_links)
        -- Set 'var_links' with 'a_name'.
      do
        var_links := a_name
      ensure
        var_links_set: var_links = a_name
      end

    set_display_name (a_name: like display_name)
        -- Set 'display_name' with 'a_name'.
      do
        display_name := a_name
      ensure
        display_name_set: display_name = a_name
      end

    set_duration_in_millis (a_name: like duration_in_millis)
        -- Set 'duration_in_millis' with 'a_name'.
      do
        duration_in_millis := a_name
      ensure
        duration_in_millis_set: duration_in_millis = a_name
      end

    set_id (a_name: like id)
        -- Set 'id' with 'a_name'.
      do
        id := a_name
      ensure
        id_set: id = a_name
      end

    set_input (a_name: like input)
        -- Set 'input' with 'a_name'.
      do
        input := a_name
      ensure
        input_set: input = a_name
      end

    set_var_result (a_name: like var_result)
        -- Set 'var_result' with 'a_name'.
      do
        var_result := a_name
      ensure
        var_result_set: var_result = a_name
      end

    set_start_time (a_name: like start_time)
        -- Set 'start_time' with 'a_name'.
      do
        start_time := a_name
      ensure
        start_time_set: start_time = a_name
      end

    set_state (a_name: like state)
        -- Set 'state' with 'a_name'.
      do
        state := a_name
      ensure
        state_set: state = a_name
      end


 feature -- Status Report

    output: STRING
          -- <Precursor>
      do
        create Result.make_empty
        Result.append("%Nclass PIPELINE_STEP_IMPL%N")
        if attached var_class as l_var_class then
          Result.append ("%Nvar_class:")
          Result.append (l_var_class.out)
          Result.append ("%N")
        end
        if attached var_links as l_var_links then
          Result.append ("%Nvar_links:")
          Result.append (l_var_links.out)
          Result.append ("%N")
        end
        if attached display_name as l_display_name then
          Result.append ("%Ndisplay_name:")
          Result.append (l_display_name.out)
          Result.append ("%N")
        end
        if attached duration_in_millis as l_duration_in_millis then
          Result.append ("%Nduration_in_millis:")
          Result.append (l_duration_in_millis.out)
          Result.append ("%N")
        end
        if attached id as l_id then
          Result.append ("%Nid:")
          Result.append (l_id.out)
          Result.append ("%N")
        end
        if attached input as l_input then
          Result.append ("%Ninput:")
          Result.append (l_input.out)
          Result.append ("%N")
        end
        if attached var_result as l_var_result then
          Result.append ("%Nvar_result:")
          Result.append (l_var_result.out)
          Result.append ("%N")
        end
        if attached start_time as l_start_time then
          Result.append ("%Nstart_time:")
          Result.append (l_start_time.out)
          Result.append ("%N")
        end
        if attached state as l_state then
          Result.append ("%Nstate:")
          Result.append (l_state.out)
          Result.append ("%N")
        end
      end
end

