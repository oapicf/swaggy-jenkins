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
class GITHUB_REPOSITORYPERMISSIONS




feature --Access

    admin: BOOLEAN
      
    push: BOOLEAN
      
    pull: BOOLEAN
      
    var_class: detachable STRING_32
      

feature -- Change Element

    set_admin (a_name: like admin)
        -- Set 'admin' with 'a_name'.
      do
        admin := a_name
      ensure
        admin_set: admin = a_name
      end

    set_push (a_name: like push)
        -- Set 'push' with 'a_name'.
      do
        push := a_name
      ensure
        push_set: push = a_name
      end

    set_pull (a_name: like pull)
        -- Set 'pull' with 'a_name'.
      do
        pull := a_name
      ensure
        pull_set: pull = a_name
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
        Result.append("%Nclass GITHUB_REPOSITORYPERMISSIONS%N")
        if attached admin as l_admin then
          Result.append ("%Nadmin:")
          Result.append (l_admin.out)
          Result.append ("%N")
        end
        if attached push as l_push then
          Result.append ("%Npush:")
          Result.append (l_push.out)
          Result.append ("%N")
        end
        if attached pull as l_pull then
          Result.append ("%Npull:")
          Result.append (l_pull.out)
          Result.append ("%N")
        end
        if attached var_class as l_var_class then
          Result.append ("%Nvar_class:")
          Result.append (l_var_class.out)
          Result.append ("%N")
        end
      end
end

