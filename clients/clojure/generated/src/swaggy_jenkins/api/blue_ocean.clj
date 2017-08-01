(ns swaggy-jenkins.api.blue-ocean
  (:require [swaggy-jenkins.core :refer [call-api check-required-params with-collection-format]])
  (:import (java.io File)))

(defn get-authenticated-user-with-http-info
  "
  Retrieve authenticated user details for an organisation"
  [organisation ]
  (call-api "/blue/rest/organizations/{organisation}/user/" :get
            {:path-params   {"organisation" organisation }
             :header-params {}
             :query-params  {}
             :form-params   {}
             :content-types []
             :accepts       ["application/json"]
             :auth-names    []}))

(defn get-authenticated-user
  "
  Retrieve authenticated user details for an organisation"
  [organisation ]
  (:data (get-authenticated-user-with-http-info organisation)))

(defn get-classes-with-http-info
  "
  Get a list of class names supported by a given class"
  [class ]
  (call-api "/blue/rest/classes/{class}" :get
            {:path-params   {"class" class }
             :header-params {}
             :query-params  {}
             :form-params   {}
             :content-types []
             :accepts       ["application/json"]
             :auth-names    []}))

(defn get-classes
  "
  Get a list of class names supported by a given class"
  [class ]
  (:data (get-classes-with-http-info class)))

(defn get-organisation-with-http-info
  "
  Retrieve organisation details"
  [organisation ]
  (call-api "/blue/rest/organizations/{organisation}" :get
            {:path-params   {"organisation" organisation }
             :header-params {}
             :query-params  {}
             :form-params   {}
             :content-types []
             :accepts       ["application/json"]
             :auth-names    []}))

(defn get-organisation
  "
  Retrieve organisation details"
  [organisation ]
  (:data (get-organisation-with-http-info organisation)))

(defn get-organisations-with-http-info
  "
  Retrieve all organisations details"
  []
  (call-api "/blue/rest/organizations/" :get
            {:path-params   {}
             :header-params {}
             :query-params  {}
             :form-params   {}
             :content-types []
             :accepts       ["application/json"]
             :auth-names    []}))

(defn get-organisations
  "
  Retrieve all organisations details"
  []
  (:data (get-organisations-with-http-info)))

(defn get-pipeline-branch-by-org-with-http-info
  "
  Retrieve branch details for an organisation pipeline"
  [organisation pipeline branch ]
  (call-api "/blue/rest/organizations/{organisation}/pipelines/{pipeline}/branches/{branch}/" :get
            {:path-params   {"organisation" organisation "pipeline" pipeline "branch" branch }
             :header-params {}
             :query-params  {}
             :form-params   {}
             :content-types []
             :accepts       ["application/json"]
             :auth-names    []}))

(defn get-pipeline-branch-by-org
  "
  Retrieve branch details for an organisation pipeline"
  [organisation pipeline branch ]
  (:data (get-pipeline-branch-by-org-with-http-info organisation pipeline branch)))

(defn get-pipeline-branches-by-org-with-http-info
  "
  Retrieve all branches details for an organisation pipeline"
  [organisation pipeline ]
  (call-api "/blue/rest/organizations/{organisation}/pipelines/{pipeline}/branches" :get
            {:path-params   {"organisation" organisation "pipeline" pipeline }
             :header-params {}
             :query-params  {}
             :form-params   {}
             :content-types []
             :accepts       ["application/json"]
             :auth-names    []}))

(defn get-pipeline-branches-by-org
  "
  Retrieve all branches details for an organisation pipeline"
  [organisation pipeline ]
  (:data (get-pipeline-branches-by-org-with-http-info organisation pipeline)))

(defn get-pipeline-by-org-with-http-info
  "
  Retrieve pipeline details for an organisation"
  [organisation pipeline ]
  (call-api "/blue/rest/organizations/{organisation}/pipelines/{pipeline}" :get
            {:path-params   {"organisation" organisation "pipeline" pipeline }
             :header-params {}
             :query-params  {}
             :form-params   {}
             :content-types []
             :accepts       ["application/json"]
             :auth-names    []}))

(defn get-pipeline-by-org
  "
  Retrieve pipeline details for an organisation"
  [organisation pipeline ]
  (:data (get-pipeline-by-org-with-http-info organisation pipeline)))

(defn get-pipeline-folder-by-org-with-http-info
  "
  Retrieve pipeline folder for an organisation"
  [organisation folder ]
  (call-api "/blue/rest/organizations/{organisation}/pipelines/{folder}/" :get
            {:path-params   {"organisation" organisation "folder" folder }
             :header-params {}
             :query-params  {}
             :form-params   {}
             :content-types []
             :accepts       ["application/json"]
             :auth-names    []}))

(defn get-pipeline-folder-by-org
  "
  Retrieve pipeline folder for an organisation"
  [organisation folder ]
  (:data (get-pipeline-folder-by-org-with-http-info organisation folder)))

(defn get-pipeline-folder-by-org_0-with-http-info
  "
  Retrieve pipeline details for an organisation folder"
  [organisation pipeline folder ]
  (call-api "/blue/rest/organizations/{organisation}/pipelines/{folder}/pipelines/{pipeline}" :get
            {:path-params   {"organisation" organisation "pipeline" pipeline "folder" folder }
             :header-params {}
             :query-params  {}
             :form-params   {}
             :content-types []
             :accepts       ["application/json"]
             :auth-names    []}))

(defn get-pipeline-folder-by-org_0
  "
  Retrieve pipeline details for an organisation folder"
  [organisation pipeline folder ]
  (:data (get-pipeline-folder-by-org_0-with-http-info organisation pipeline folder)))

(defn get-pipelines-by-org-with-http-info
  "
  Retrieve all pipelines details for an organisation"
  [organisation ]
  (call-api "/blue/rest/organizations/{organisation}/pipelines/" :get
            {:path-params   {"organisation" organisation }
             :header-params {}
             :query-params  {}
             :form-params   {}
             :content-types []
             :accepts       ["application/json"]
             :auth-names    []}))

(defn get-pipelines-by-org
  "
  Retrieve all pipelines details for an organisation"
  [organisation ]
  (:data (get-pipelines-by-org-with-http-info organisation)))

(defn get-user-with-http-info
  "
  Retrieve user details for an organisation"
  [organisation user ]
  (call-api "/blue/rest/organizations/{organisation}/users/{user}" :get
            {:path-params   {"organisation" organisation "user" user }
             :header-params {}
             :query-params  {}
             :form-params   {}
             :content-types []
             :accepts       ["application/json"]
             :auth-names    []}))

(defn get-user
  "
  Retrieve user details for an organisation"
  [organisation user ]
  (:data (get-user-with-http-info organisation user)))

(defn get-users-with-http-info
  "
  Retrieve users details for an organisation"
  [organisation ]
  (call-api "/blue/rest/organizations/{organisation}/users/" :get
            {:path-params   {"organisation" organisation }
             :header-params {}
             :query-params  {}
             :form-params   {}
             :content-types []
             :accepts       ["application/json"]
             :auth-names    []}))

(defn get-users
  "
  Retrieve users details for an organisation"
  [organisation ]
  (:data (get-users-with-http-info organisation)))

(defn search-with-http-info
  "
  Get classes details"
  [q ]
  (call-api "/blue/rest/classes/" :get
            {:path-params   {}
             :header-params {}
             :query-params  {"q" q }
             :form-params   {}
             :content-types []
             :accepts       ["application/json"]
             :auth-names    []}))

(defn search
  "
  Get classes details"
  [q ]
  (:data (search-with-http-info q)))

(defn search_0-with-http-info
  "
  Search for any resource details"
  [q ]
  (call-api "/blue/rest/search/" :get
            {:path-params   {}
             :header-params {}
             :query-params  {"q" q }
             :form-params   {}
             :content-types []
             :accepts       ["application/json"]
             :auth-names    []}))

(defn search_0
  "
  Search for any resource details"
  [q ]
  (:data (search_0-with-http-info q)))

