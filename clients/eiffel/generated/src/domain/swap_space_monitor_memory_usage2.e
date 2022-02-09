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
class SWAP_SPACE_MONITOR_MEMORY_USAGE2




feature --Access

    var_class: detachable STRING_32
      
 	available_physical_memory: INTEGER_32
    	 
 	available_swap_space: INTEGER_32
    	 
 	total_physical_memory: INTEGER_32
    	 
 	total_swap_space: INTEGER_32
    	 

feature -- Change Element

    set_var_class (a_name: like var_class)
        -- Set 'var_class' with 'a_name'.
      do
        var_class := a_name
      ensure
        var_class_set: var_class = a_name
      end

    set_available_physical_memory (a_name: like available_physical_memory)
        -- Set 'available_physical_memory' with 'a_name'.
      do
        available_physical_memory := a_name
      ensure
        available_physical_memory_set: available_physical_memory = a_name
      end

    set_available_swap_space (a_name: like available_swap_space)
        -- Set 'available_swap_space' with 'a_name'.
      do
        available_swap_space := a_name
      ensure
        available_swap_space_set: available_swap_space = a_name
      end

    set_total_physical_memory (a_name: like total_physical_memory)
        -- Set 'total_physical_memory' with 'a_name'.
      do
        total_physical_memory := a_name
      ensure
        total_physical_memory_set: total_physical_memory = a_name
      end

    set_total_swap_space (a_name: like total_swap_space)
        -- Set 'total_swap_space' with 'a_name'.
      do
        total_swap_space := a_name
      ensure
        total_swap_space_set: total_swap_space = a_name
      end


 feature -- Status Report

    output: STRING
          -- <Precursor>
      do
        create Result.make_empty
        Result.append("%Nclass SWAP_SPACE_MONITOR_MEMORY_USAGE2%N")
        if attached var_class as l_var_class then
          Result.append ("%Nvar_class:")
          Result.append (l_var_class.out)
          Result.append ("%N")
        end
        if attached available_physical_memory as l_available_physical_memory then
          Result.append ("%Navailable_physical_memory:")
          Result.append (l_available_physical_memory.out)
          Result.append ("%N")
        end
        if attached available_swap_space as l_available_swap_space then
          Result.append ("%Navailable_swap_space:")
          Result.append (l_available_swap_space.out)
          Result.append ("%N")
        end
        if attached total_physical_memory as l_total_physical_memory then
          Result.append ("%Ntotal_physical_memory:")
          Result.append (l_total_physical_memory.out)
          Result.append ("%N")
        end
        if attached total_swap_space as l_total_swap_space then
          Result.append ("%Ntotal_swap_space:")
          Result.append (l_total_swap_space.out)
          Result.append ("%N")
        end
      end
end

