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
class STRING_PARAMETER_DEFINITION 

inherit

  ANY
      redefine
          out 
      end


feature --Access

    var_class: detachable STRING_32 
      
    default_parameter_value: detachable STRING_PARAMETER_VALUE 
      
    description: detachable STRING_32 
      
    name: detachable STRING_32 
      
    type: detachable STRING_32 
      

feature -- Change Element  
 
    set_var_class (a_name: like var_class)
        -- Set 'var_class' with 'a_name'.
      do
        var_class := a_name
      ensure
        var_class_set: var_class = a_name		
      end

    set_default_parameter_value (a_name: like default_parameter_value)
        -- Set 'default_parameter_value' with 'a_name'.
      do
        default_parameter_value := a_name
      ensure
        default_parameter_value_set: default_parameter_value = a_name		
      end

    set_description (a_name: like description)
        -- Set 'description' with 'a_name'.
      do
        description := a_name
      ensure
        description_set: description = a_name		
      end

    set_name (a_name: like name)
        -- Set 'name' with 'a_name'.
      do
        name := a_name
      ensure
        name_set: name = a_name		
      end

    set_type (a_name: like type)
        -- Set 'type' with 'a_name'.
      do
        type := a_name
      ensure
        type_set: type = a_name		
      end


 feature -- Status Report

    out: STRING
          -- <Precursor>
      do
        create Result.make_empty
        Result.append("%Nclass STRING_PARAMETER_DEFINITION%N")
        if attached var_class as l_var_class then
          Result.append ("%Nvar_class:")
          Result.append (l_var_class.out)
          Result.append ("%N")    
        end  
        if attached default_parameter_value as l_default_parameter_value then
          Result.append ("%Ndefault_parameter_value:")
          Result.append (l_default_parameter_value.out)
          Result.append ("%N")    
        end  
        if attached description as l_description then
          Result.append ("%Ndescription:")
          Result.append (l_description.out)
          Result.append ("%N")    
        end  
        if attached name as l_name then
          Result.append ("%Nname:")
          Result.append (l_name.out)
          Result.append ("%N")    
        end  
        if attached type as l_type then
          Result.append ("%Ntype:")
          Result.append (l_type.out)
          Result.append ("%N")    
        end  
      end
end


