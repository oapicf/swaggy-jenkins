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
class PIPELINE_RUN_IMPLLINKS 

inherit

  ANY
      redefine
          out 
      end


feature --Access

    nodes: detachable LINK 
      
    log: detachable LINK 
      
    self: detachable LINK 
      
    actions: detachable LINK 
      
    steps: detachable LINK 
      
    var_class: detachable STRING_32 
      

feature -- Change Element  
 
    set_nodes (a_name: like nodes)
        -- Set 'nodes' with 'a_name'.
      do
        nodes := a_name
      ensure
        nodes_set: nodes = a_name		
      end

    set_log (a_name: like log)
        -- Set 'log' with 'a_name'.
      do
        log := a_name
      ensure
        log_set: log = a_name		
      end

    set_self (a_name: like self)
        -- Set 'self' with 'a_name'.
      do
        self := a_name
      ensure
        self_set: self = a_name		
      end

    set_actions (a_name: like actions)
        -- Set 'actions' with 'a_name'.
      do
        actions := a_name
      ensure
        actions_set: actions = a_name		
      end

    set_steps (a_name: like steps)
        -- Set 'steps' with 'a_name'.
      do
        steps := a_name
      ensure
        steps_set: steps = a_name		
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
        Result.append("%Nclass PIPELINE_RUN_IMPLLINKS%N")
        if attached nodes as l_nodes then
          Result.append ("%Nnodes:")
          Result.append (l_nodes.out)
          Result.append ("%N")    
        end  
        if attached log as l_log then
          Result.append ("%Nlog:")
          Result.append (l_log.out)
          Result.append ("%N")    
        end  
        if attached self as l_self then
          Result.append ("%Nself:")
          Result.append (l_self.out)
          Result.append ("%N")    
        end  
        if attached actions as l_actions then
          Result.append ("%Nactions:")
          Result.append (l_actions.out)
          Result.append ("%N")    
        end  
        if attached steps as l_steps then
          Result.append ("%Nsteps:")
          Result.append (l_steps.out)
          Result.append ("%N")    
        end  
        if attached var_class as l_var_class then
          Result.append ("%Nvar_class:")
          Result.append (l_var_class.out)
          Result.append ("%N")    
        end  
      end
end


