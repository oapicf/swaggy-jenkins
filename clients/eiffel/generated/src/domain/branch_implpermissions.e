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
class BRANCH_IMPLPERMISSIONS




feature --Access

 	var_create: BOOLEAN
    	 
 	read: BOOLEAN
    	 
 	start: BOOLEAN
    	 
 	stop: BOOLEAN
    	 
    var_class: detachable STRING_32
      

feature -- Change Element

    set_var_create (a_name: like var_create)
        -- Set 'var_create' with 'a_name'.
      do
        var_create := a_name
      ensure
        var_create_set: var_create = a_name
      end

    set_read (a_name: like read)
        -- Set 'read' with 'a_name'.
      do
        read := a_name
      ensure
        read_set: read = a_name
      end

    set_start (a_name: like start)
        -- Set 'start' with 'a_name'.
      do
        start := a_name
      ensure
        start_set: start = a_name
      end

    set_stop (a_name: like stop)
        -- Set 'stop' with 'a_name'.
      do
        stop := a_name
      ensure
        stop_set: stop = a_name
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
        Result.append("%Nclass BRANCH_IMPLPERMISSIONS%N")
        if attached var_create as l_var_create then
          Result.append ("%Nvar_create:")
          Result.append (l_var_create.out)
          Result.append ("%N")
        end
        if attached read as l_read then
          Result.append ("%Nread:")
          Result.append (l_read.out)
          Result.append ("%N")
        end
        if attached start as l_start then
          Result.append ("%Nstart:")
          Result.append (l_start.out)
          Result.append ("%N")
        end
        if attached stop as l_stop then
          Result.append ("%Nstop:")
          Result.append (l_stop.out)
          Result.append ("%N")
        end
        if attached var_class as l_var_class then
          Result.append ("%Nvar_class:")
          Result.append (l_var_class.out)
          Result.append ("%N")
        end
      end
end

