note
 description:"[
		Swaggy Jenkins
 		Jenkins API clients generated from Swagger / Open API specification
  		The version of the OpenAPI document: 2.0.1-pre.0
 	    Contact: blah+oapicf@cliffano.com

  	NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).

 		 Do not edit the class manually.
 	]"
	date: "$Date$"
	revision: "$Revision$"
	EIS:"Eiffel openapi generator", "src=https://openapi-generator.tech", "protocol=uri"
class CAUSE_ACTION




feature --Access

    var_class: detachable STRING_32
      
    causes: detachable LIST [CAUSE_USER_ID_CAUSE]
      

feature -- Change Element

    set_var_class (a_name: like var_class)
        -- Set 'var_class' with 'a_name'.
      do
        var_class := a_name
      ensure
        var_class_set: var_class = a_name
      end

    set_causes (a_name: like causes)
        -- Set 'causes' with 'a_name'.
      do
        causes := a_name
      ensure
        causes_set: causes = a_name
      end


 feature -- Status Report

    output: STRING
          -- <Precursor>
      do
        create Result.make_empty
        Result.append("%Nclass CAUSE_ACTION%N")
        if attached var_class as l_var_class then
          Result.append ("%Nvar_class:")
          Result.append (l_var_class.out)
          Result.append ("%N")
        end
        if attached causes as l_causes then
          across l_causes as ic loop
            Result.append ("%N causes:")
            Result.append (ic.item.out)
            Result.append ("%N")
          end
        end
      end
end

