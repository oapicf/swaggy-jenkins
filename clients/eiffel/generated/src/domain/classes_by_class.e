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
class CLASSES_BY_CLASS




feature --Access

    classes: detachable LIST [STRING_32]
      
    var_class: detachable STRING_32
      

feature -- Change Element

    set_classes (a_name: like classes)
        -- Set 'classes' with 'a_name'.
      do
        classes := a_name
      ensure
        classes_set: classes = a_name
      end

    set_var_class (a_name: like var_class)
        -- Set 'var_class' with 'a_name'.
      do
        var_class := a_name
      ensure
        var_class_set: var_class = a_name
      end


 feature -- Status Report

    output: STRING
          -- <Precursor>
      do
        create Result.make_empty
        Result.append("%Nclass CLASSES_BY_CLASS%N")
        if attached classes as l_classes then
          across l_classes as ic loop
            Result.append ("%N classes:")
            Result.append (ic.item.out)
            Result.append ("%N")
          end
        end
        if attached var_class as l_var_class then
          Result.append ("%Nvar_class:")
          Result.append (l_var_class.out)
          Result.append ("%N")
        end
      end
end

