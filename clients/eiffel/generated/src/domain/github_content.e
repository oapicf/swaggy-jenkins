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
class GITHUB_CONTENT




feature --Access

    name: detachable STRING_32
      
    sha: detachable STRING_32
      
    var_class: detachable STRING_32
      
    repo: detachable STRING_32
      
    size: INTEGER_32
      
    owner: detachable STRING_32
      
    path: detachable STRING_32
      
    base64_data: detachable STRING_32
      

feature -- Change Element

    set_name (a_name: like name)
        -- Set 'name' with 'a_name'.
      do
        name := a_name
      ensure
        name_set: name = a_name
      end

    set_sha (a_name: like sha)
        -- Set 'sha' with 'a_name'.
      do
        sha := a_name
      ensure
        sha_set: sha = a_name
      end

    set_var_class (a_name: like var_class)
        -- Set 'var_class' with 'a_name'.
      do
        var_class := a_name
      ensure
        var_class_set: var_class = a_name
      end

    set_repo (a_name: like repo)
        -- Set 'repo' with 'a_name'.
      do
        repo := a_name
      ensure
        repo_set: repo = a_name
      end

    set_size (a_name: like size)
        -- Set 'size' with 'a_name'.
      do
        size := a_name
      ensure
        size_set: size = a_name
      end

    set_owner (a_name: like owner)
        -- Set 'owner' with 'a_name'.
      do
        owner := a_name
      ensure
        owner_set: owner = a_name
      end

    set_path (a_name: like path)
        -- Set 'path' with 'a_name'.
      do
        path := a_name
      ensure
        path_set: path = a_name
      end

    set_base64_data (a_name: like base64_data)
        -- Set 'base64_data' with 'a_name'.
      do
        base64_data := a_name
      ensure
        base64_data_set: base64_data = a_name
      end


 feature -- Status Report

    output: STRING
          -- <Precursor>
      do
        create Result.make_empty
        Result.append("%Nclass GITHUB_CONTENT%N")
        if attached name as l_name then
          Result.append ("%Nname:")
          Result.append (l_name.out)
          Result.append ("%N")
        end
        if attached sha as l_sha then
          Result.append ("%Nsha:")
          Result.append (l_sha.out)
          Result.append ("%N")
        end
        if attached var_class as l_var_class then
          Result.append ("%Nvar_class:")
          Result.append (l_var_class.out)
          Result.append ("%N")
        end
        if attached repo as l_repo then
          Result.append ("%Nrepo:")
          Result.append (l_repo.out)
          Result.append ("%N")
        end
        if attached size as l_size then
          Result.append ("%Nsize:")
          Result.append (l_size.out)
          Result.append ("%N")
        end
        if attached owner as l_owner then
          Result.append ("%Nowner:")
          Result.append (l_owner.out)
          Result.append ("%N")
        end
        if attached path as l_path then
          Result.append ("%Npath:")
          Result.append (l_path.out)
          Result.append ("%N")
        end
        if attached base64_data as l_base64_data then
          Result.append ("%Nbase64_data:")
          Result.append (l_base64_data.out)
          Result.append ("%N")
        end
      end
end

