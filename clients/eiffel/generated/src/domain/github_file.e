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
class GITHUB_FILE




feature --Access

    content: detachable GITHUB_CONTENT
      
    var_class: detachable STRING_32
      

feature -- Change Element

    set_content (a_name: like content)
        -- Set 'content' with 'a_name'.
      do
        content := a_name
      ensure
        content_set: content = a_name
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
        Result.append("%Nclass GITHUB_FILE%N")
        if attached content as l_content then
          Result.append ("%Ncontent:")
          Result.append (l_content.out)
          Result.append ("%N")
        end
        if attached var_class as l_var_class then
          Result.append ("%Nvar_class:")
          Result.append (l_var_class.out)
          Result.append ("%N")
        end
      end
end

