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
class USERS 

inherit

  ANY
      redefine
          out 
      select
          out  
      end

  ARRAYED_LIST [USER] 
      rename
          out as out_,
          is_equal as is_equal_,
          copy as copy_
      select
          is_equal_,
          copy_     
      end   

feature --Access


feature -- Change Element  
 

 feature -- Status Report

    out: STRING
          -- <Precursor>
      do
        create Result.make_empty
        Result.append(out_)
        Result.append("%Nclass USERS%N")
      end
end


