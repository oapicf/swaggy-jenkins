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
class EXTENSION_CLASS_IMPL




feature --Access

    var_class: detachable STRING_32
      
    var_links: detachable EXTENSION_CLASS_IMPLLINKS
      
    classes: detachable LIST [STRING_32]
      

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

    set_classes (a_name: like classes)
        -- Set 'classes' with 'a_name'.
      do
        classes := a_name
      ensure
        classes_set: classes = a_name
      end


 feature -- Status Report

    output: STRING
          -- <Precursor>
      do
        create Result.make_empty
        Result.append("%Nclass EXTENSION_CLASS_IMPL%N")
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
        if attached classes as l_classes then
          across l_classes as ic loop
            Result.append ("%N classes:")
            Result.append (ic.item.out)
            Result.append ("%N")
          end
        end
      end
end

