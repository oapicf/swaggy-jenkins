note
 description:"[
		Swaggy Jenkins
 		Jenkins API clients generated from Swagger / Open API specification
  		The version of the OpenAPI document: 1.5.1-pre.0
 	    Contact: blah@cliffano.com

  	NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).

 		 Do not edit the class manually.
 	]"
	date: "$Date$"
	revision: "$Revision$"
	EIS:"Eiffel openapi generator", "src=https://openapi-generator.tech", "protocol=uri"
class QUEUE_BLOCKED_ITEM




feature --Access

    var_class: detachable STRING_32
      
    actions: detachable LIST [CAUSE_ACTION]
      
 	blocked: BOOLEAN
    	 
 	buildable: BOOLEAN
    	 
 	id: INTEGER_32
    	 
 	in_queue_since: INTEGER_32
    	 
    params: detachable STRING_32
      
 	stuck: BOOLEAN
    	 
    task: detachable FREE_STYLE_PROJECT
      
    url: detachable STRING_32
      
    why: detachable STRING_32
      
 	buildable_start_milliseconds: INTEGER_32
    	 

feature -- Change Element

    set_var_class (a_name: like var_class)
        -- Set 'var_class' with 'a_name'.
      do
        var_class := a_name
      ensure
        var_class_set: var_class = a_name
      end

    set_actions (a_name: like actions)
        -- Set 'actions' with 'a_name'.
      do
        actions := a_name
      ensure
        actions_set: actions = a_name
      end

    set_blocked (a_name: like blocked)
        -- Set 'blocked' with 'a_name'.
      do
        blocked := a_name
      ensure
        blocked_set: blocked = a_name
      end

    set_buildable (a_name: like buildable)
        -- Set 'buildable' with 'a_name'.
      do
        buildable := a_name
      ensure
        buildable_set: buildable = a_name
      end

    set_id (a_name: like id)
        -- Set 'id' with 'a_name'.
      do
        id := a_name
      ensure
        id_set: id = a_name
      end

    set_in_queue_since (a_name: like in_queue_since)
        -- Set 'in_queue_since' with 'a_name'.
      do
        in_queue_since := a_name
      ensure
        in_queue_since_set: in_queue_since = a_name
      end

    set_params (a_name: like params)
        -- Set 'params' with 'a_name'.
      do
        params := a_name
      ensure
        params_set: params = a_name
      end

    set_stuck (a_name: like stuck)
        -- Set 'stuck' with 'a_name'.
      do
        stuck := a_name
      ensure
        stuck_set: stuck = a_name
      end

    set_task (a_name: like task)
        -- Set 'task' with 'a_name'.
      do
        task := a_name
      ensure
        task_set: task = a_name
      end

    set_url (a_name: like url)
        -- Set 'url' with 'a_name'.
      do
        url := a_name
      ensure
        url_set: url = a_name
      end

    set_why (a_name: like why)
        -- Set 'why' with 'a_name'.
      do
        why := a_name
      ensure
        why_set: why = a_name
      end

    set_buildable_start_milliseconds (a_name: like buildable_start_milliseconds)
        -- Set 'buildable_start_milliseconds' with 'a_name'.
      do
        buildable_start_milliseconds := a_name
      ensure
        buildable_start_milliseconds_set: buildable_start_milliseconds = a_name
      end


 feature -- Status Report

    output: STRING
          -- <Precursor>
      do
        create Result.make_empty
        Result.append("%Nclass QUEUE_BLOCKED_ITEM%N")
        if attached var_class as l_var_class then
          Result.append ("%Nvar_class:")
          Result.append (l_var_class.out)
          Result.append ("%N")
        end
        if attached actions as l_actions then
          across l_actions as ic loop
            Result.append ("%N actions:")
            Result.append (ic.item.out)
            Result.append ("%N")
          end
        end
        if attached blocked as l_blocked then
          Result.append ("%Nblocked:")
          Result.append (l_blocked.out)
          Result.append ("%N")
        end
        if attached buildable as l_buildable then
          Result.append ("%Nbuildable:")
          Result.append (l_buildable.out)
          Result.append ("%N")
        end
        if attached id as l_id then
          Result.append ("%Nid:")
          Result.append (l_id.out)
          Result.append ("%N")
        end
        if attached in_queue_since as l_in_queue_since then
          Result.append ("%Nin_queue_since:")
          Result.append (l_in_queue_since.out)
          Result.append ("%N")
        end
        if attached params as l_params then
          Result.append ("%Nparams:")
          Result.append (l_params.out)
          Result.append ("%N")
        end
        if attached stuck as l_stuck then
          Result.append ("%Nstuck:")
          Result.append (l_stuck.out)
          Result.append ("%N")
        end
        if attached task as l_task then
          Result.append ("%Ntask:")
          Result.append (l_task.out)
          Result.append ("%N")
        end
        if attached url as l_url then
          Result.append ("%Nurl:")
          Result.append (l_url.out)
          Result.append ("%N")
        end
        if attached why as l_why then
          Result.append ("%Nwhy:")
          Result.append (l_why.out)
          Result.append ("%N")
        end
        if attached buildable_start_milliseconds as l_buildable_start_milliseconds then
          Result.append ("%Nbuildable_start_milliseconds:")
          Result.append (l_buildable_start_milliseconds.out)
          Result.append ("%N")
        end
      end
end

