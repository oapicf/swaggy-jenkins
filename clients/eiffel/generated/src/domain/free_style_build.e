note
 description:"[
		Swaggy Jenkins
 		Jenkins API clients generated from Swagger / Open API specification
  		The version of the OpenAPI document: 1.1.1
 	    Contact: blah@cliffano.com

  	NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).

 		 Do not edit the class manually.
 	]"
	date: "$Date$"
	revision: "$Revision$"
	EIS:"Eiffel openapi generator", "src=https://openapi-generator.tech", "protocol=uri"
class FREE_STYLE_BUILD




feature --Access

    var_class: detachable STRING_32
      
 	number: INTEGER_32
    	 
    url: detachable STRING_32
      
    actions: detachable LIST [CAUSE_ACTION]
      
 	building: BOOLEAN
    	 
    description: detachable STRING_32
      
    display_name: detachable STRING_32
      
 	duration: INTEGER_32
    	 
 	estimated_duration: INTEGER_32
    	 
    executor: detachable STRING_32
      
    full_display_name: detachable STRING_32
      
    id: detachable STRING_32
      
 	keep_log: BOOLEAN
    	 
 	queue_id: INTEGER_32
    	 
    var_result: detachable STRING_32
      
 	timestamp: INTEGER_32
    	 
    built_on: detachable STRING_32
      
    change_set: detachable EMPTY_CHANGE_LOG_SET
      

feature -- Change Element

    set_var_class (a_name: like var_class)
        -- Set 'var_class' with 'a_name'.
      do
        var_class := a_name
      ensure
        var_class_set: var_class = a_name
      end

    set_number (a_name: like number)
        -- Set 'number' with 'a_name'.
      do
        number := a_name
      ensure
        number_set: number = a_name
      end

    set_url (a_name: like url)
        -- Set 'url' with 'a_name'.
      do
        url := a_name
      ensure
        url_set: url = a_name
      end

    set_actions (a_name: like actions)
        -- Set 'actions' with 'a_name'.
      do
        actions := a_name
      ensure
        actions_set: actions = a_name
      end

    set_building (a_name: like building)
        -- Set 'building' with 'a_name'.
      do
        building := a_name
      ensure
        building_set: building = a_name
      end

    set_description (a_name: like description)
        -- Set 'description' with 'a_name'.
      do
        description := a_name
      ensure
        description_set: description = a_name
      end

    set_display_name (a_name: like display_name)
        -- Set 'display_name' with 'a_name'.
      do
        display_name := a_name
      ensure
        display_name_set: display_name = a_name
      end

    set_duration (a_name: like duration)
        -- Set 'duration' with 'a_name'.
      do
        duration := a_name
      ensure
        duration_set: duration = a_name
      end

    set_estimated_duration (a_name: like estimated_duration)
        -- Set 'estimated_duration' with 'a_name'.
      do
        estimated_duration := a_name
      ensure
        estimated_duration_set: estimated_duration = a_name
      end

    set_executor (a_name: like executor)
        -- Set 'executor' with 'a_name'.
      do
        executor := a_name
      ensure
        executor_set: executor = a_name
      end

    set_full_display_name (a_name: like full_display_name)
        -- Set 'full_display_name' with 'a_name'.
      do
        full_display_name := a_name
      ensure
        full_display_name_set: full_display_name = a_name
      end

    set_id (a_name: like id)
        -- Set 'id' with 'a_name'.
      do
        id := a_name
      ensure
        id_set: id = a_name
      end

    set_keep_log (a_name: like keep_log)
        -- Set 'keep_log' with 'a_name'.
      do
        keep_log := a_name
      ensure
        keep_log_set: keep_log = a_name
      end

    set_queue_id (a_name: like queue_id)
        -- Set 'queue_id' with 'a_name'.
      do
        queue_id := a_name
      ensure
        queue_id_set: queue_id = a_name
      end

    set_var_result (a_name: like var_result)
        -- Set 'var_result' with 'a_name'.
      do
        var_result := a_name
      ensure
        var_result_set: var_result = a_name
      end

    set_timestamp (a_name: like timestamp)
        -- Set 'timestamp' with 'a_name'.
      do
        timestamp := a_name
      ensure
        timestamp_set: timestamp = a_name
      end

    set_built_on (a_name: like built_on)
        -- Set 'built_on' with 'a_name'.
      do
        built_on := a_name
      ensure
        built_on_set: built_on = a_name
      end

    set_change_set (a_name: like change_set)
        -- Set 'change_set' with 'a_name'.
      do
        change_set := a_name
      ensure
        change_set_set: change_set = a_name
      end


 feature -- Status Report

    output: STRING
          -- <Precursor>
      do
        create Result.make_empty
        Result.append("%Nclass FREE_STYLE_BUILD%N")
        if attached var_class as l_var_class then
          Result.append ("%Nvar_class:")
          Result.append (l_var_class.out)
          Result.append ("%N")
        end
        if attached number as l_number then
          Result.append ("%Nnumber:")
          Result.append (l_number.out)
          Result.append ("%N")
        end
        if attached url as l_url then
          Result.append ("%Nurl:")
          Result.append (l_url.out)
          Result.append ("%N")
        end
        if attached actions as l_actions then
          across l_actions as ic loop
            Result.append ("%N actions:")
            Result.append (ic.item.out)
            Result.append ("%N")
          end
        end
        if attached building as l_building then
          Result.append ("%Nbuilding:")
          Result.append (l_building.out)
          Result.append ("%N")
        end
        if attached description as l_description then
          Result.append ("%Ndescription:")
          Result.append (l_description.out)
          Result.append ("%N")
        end
        if attached display_name as l_display_name then
          Result.append ("%Ndisplay_name:")
          Result.append (l_display_name.out)
          Result.append ("%N")
        end
        if attached duration as l_duration then
          Result.append ("%Nduration:")
          Result.append (l_duration.out)
          Result.append ("%N")
        end
        if attached estimated_duration as l_estimated_duration then
          Result.append ("%Nestimated_duration:")
          Result.append (l_estimated_duration.out)
          Result.append ("%N")
        end
        if attached executor as l_executor then
          Result.append ("%Nexecutor:")
          Result.append (l_executor.out)
          Result.append ("%N")
        end
        if attached full_display_name as l_full_display_name then
          Result.append ("%Nfull_display_name:")
          Result.append (l_full_display_name.out)
          Result.append ("%N")
        end
        if attached id as l_id then
          Result.append ("%Nid:")
          Result.append (l_id.out)
          Result.append ("%N")
        end
        if attached keep_log as l_keep_log then
          Result.append ("%Nkeep_log:")
          Result.append (l_keep_log.out)
          Result.append ("%N")
        end
        if attached queue_id as l_queue_id then
          Result.append ("%Nqueue_id:")
          Result.append (l_queue_id.out)
          Result.append ("%N")
        end
        if attached var_result as l_var_result then
          Result.append ("%Nvar_result:")
          Result.append (l_var_result.out)
          Result.append ("%N")
        end
        if attached timestamp as l_timestamp then
          Result.append ("%Ntimestamp:")
          Result.append (l_timestamp.out)
          Result.append ("%N")
        end
        if attached built_on as l_built_on then
          Result.append ("%Nbuilt_on:")
          Result.append (l_built_on.out)
          Result.append ("%N")
        end
        if attached change_set as l_change_set then
          Result.append ("%Nchange_set:")
          Result.append (l_change_set.out)
          Result.append ("%N")
        end
      end
end

