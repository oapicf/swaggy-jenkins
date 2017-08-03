(ns swaggy-jenkins.api.blue-ocean
  (:require [swaggy-jenkins.core :refer [call-api check-required-params with-collection-format]])
  (:import (java.io File)))

(defn delete-pipeline-queue-item-with-http-info
  "
  Delete queue item from an organization pipeline queue"
  [organization pipeline queue ]
  (call-api "/blue/rest/organizations/{organization}/pipelines/{pipeline}/queue/{queue}" :delete
            {:path-params   {"organization" organization "pipeline" pipeline "queue" queue }
             :header-params {}
             :query-params  {}
             :form-params   {}
             :content-types []
             :accepts       ["application/json"]
             :auth-names    ["jenkins_auth"]}))

(defn delete-pipeline-queue-item
  "
  Delete queue item from an organization pipeline queue"
  [organization pipeline queue ]
  (:data (delete-pipeline-queue-item-with-http-info organization pipeline queue)))

(defn get-authenticated-user-with-http-info
  "
  Retrieve authenticated user details for an organization"
  [organization ]
  (call-api "/blue/rest/organizations/{organization}/user/" :get
            {:path-params   {"organization" organization }
             :header-params {}
             :query-params  {}
             :form-params   {}
             :content-types []
             :accepts       ["application/json"]
             :auth-names    ["jenkins_auth"]}))

(defn get-authenticated-user
  "
  Retrieve authenticated user details for an organization"
  [organization ]
  (:data (get-authenticated-user-with-http-info organization)))

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
             :auth-names    ["jenkins_auth"]}))

(defn get-classes
  "
  Get a list of class names supported by a given class"
  [class ]
  (:data (get-classes-with-http-info class)))

(defn get-organisation-with-http-info
  "
  Retrieve organization details"
  [organization ]
  (call-api "/blue/rest/organizations/{organization}" :get
            {:path-params   {"organization" organization }
             :header-params {}
             :query-params  {}
             :form-params   {}
             :content-types []
             :accepts       ["application/json"]
             :auth-names    ["jenkins_auth"]}))

(defn get-organisation
  "
  Retrieve organization details"
  [organization ]
  (:data (get-organisation-with-http-info organization)))

(defn get-organisations-with-http-info
  "
  Retrieve all organizations details"
  []
  (call-api "/blue/rest/organizations/" :get
            {:path-params   {}
             :header-params {}
             :query-params  {}
             :form-params   {}
             :content-types []
             :accepts       ["application/json"]
             :auth-names    ["jenkins_auth"]}))

(defn get-organisations
  "
  Retrieve all organizations details"
  []
  (:data (get-organisations-with-http-info)))

(defn get-pipeline-with-http-info
  "
  Retrieve pipeline details for an organization"
  [organization pipeline ]
  (call-api "/blue/rest/organizations/{organization}/pipelines/{pipeline}" :get
            {:path-params   {"organization" organization "pipeline" pipeline }
             :header-params {}
             :query-params  {}
             :form-params   {}
             :content-types []
             :accepts       ["application/json"]
             :auth-names    ["jenkins_auth"]}))

(defn get-pipeline
  "
  Retrieve pipeline details for an organization"
  [organization pipeline ]
  (:data (get-pipeline-with-http-info organization pipeline)))

(defn get-pipeline-activities-with-http-info
  "
  Retrieve all activities details for an organization pipeline"
  [organization pipeline ]
  (call-api "/blue/rest/organizations/{organization}/pipelines/{pipeline}/activities" :get
            {:path-params   {"organization" organization "pipeline" pipeline }
             :header-params {}
             :query-params  {}
             :form-params   {}
             :content-types []
             :accepts       ["application/json"]
             :auth-names    ["jenkins_auth"]}))

(defn get-pipeline-activities
  "
  Retrieve all activities details for an organization pipeline"
  [organization pipeline ]
  (:data (get-pipeline-activities-with-http-info organization pipeline)))

(defn get-pipeline-branch-with-http-info
  "
  Retrieve branch details for an organization pipeline"
  [organization pipeline branch ]
  (call-api "/blue/rest/organizations/{organization}/pipelines/{pipeline}/branches/{branch}/" :get
            {:path-params   {"organization" organization "pipeline" pipeline "branch" branch }
             :header-params {}
             :query-params  {}
             :form-params   {}
             :content-types []
             :accepts       ["application/json"]
             :auth-names    ["jenkins_auth"]}))

(defn get-pipeline-branch
  "
  Retrieve branch details for an organization pipeline"
  [organization pipeline branch ]
  (:data (get-pipeline-branch-with-http-info organization pipeline branch)))

(defn get-pipeline-branch-run-with-http-info
  "
  Retrieve branch run details for an organization pipeline"
  [organization pipeline branch run ]
  (call-api "/blue/rest/organizations/{organization}/pipelines/{pipeline}/branches/{branch}/runs/{run}" :get
            {:path-params   {"organization" organization "pipeline" pipeline "branch" branch "run" run }
             :header-params {}
             :query-params  {}
             :form-params   {}
             :content-types []
             :accepts       ["application/json"]
             :auth-names    ["jenkins_auth"]}))

(defn get-pipeline-branch-run
  "
  Retrieve branch run details for an organization pipeline"
  [organization pipeline branch run ]
  (:data (get-pipeline-branch-run-with-http-info organization pipeline branch run)))

(defn get-pipeline-branches-with-http-info
  "
  Retrieve all branches details for an organization pipeline"
  [organization pipeline ]
  (call-api "/blue/rest/organizations/{organization}/pipelines/{pipeline}/branches" :get
            {:path-params   {"organization" organization "pipeline" pipeline }
             :header-params {}
             :query-params  {}
             :form-params   {}
             :content-types []
             :accepts       ["application/json"]
             :auth-names    ["jenkins_auth"]}))

(defn get-pipeline-branches
  "
  Retrieve all branches details for an organization pipeline"
  [organization pipeline ]
  (:data (get-pipeline-branches-with-http-info organization pipeline)))

(defn get-pipeline-folder-with-http-info
  "
  Retrieve pipeline folder for an organization"
  [organization folder ]
  (call-api "/blue/rest/organizations/{organization}/pipelines/{folder}/" :get
            {:path-params   {"organization" organization "folder" folder }
             :header-params {}
             :query-params  {}
             :form-params   {}
             :content-types []
             :accepts       ["application/json"]
             :auth-names    ["jenkins_auth"]}))

(defn get-pipeline-folder
  "
  Retrieve pipeline folder for an organization"
  [organization folder ]
  (:data (get-pipeline-folder-with-http-info organization folder)))

(defn get-pipeline-folder-pipeline-with-http-info
  "
  Retrieve pipeline details for an organization folder"
  [organization pipeline folder ]
  (call-api "/blue/rest/organizations/{organization}/pipelines/{folder}/pipelines/{pipeline}" :get
            {:path-params   {"organization" organization "pipeline" pipeline "folder" folder }
             :header-params {}
             :query-params  {}
             :form-params   {}
             :content-types []
             :accepts       ["application/json"]
             :auth-names    ["jenkins_auth"]}))

(defn get-pipeline-folder-pipeline
  "
  Retrieve pipeline details for an organization folder"
  [organization pipeline folder ]
  (:data (get-pipeline-folder-pipeline-with-http-info organization pipeline folder)))

(defn get-pipeline-queue-with-http-info
  "
  Retrieve queue details for an organization pipeline"
  [organization pipeline ]
  (call-api "/blue/rest/organizations/{organization}/pipelines/{pipeline}/queue" :get
            {:path-params   {"organization" organization "pipeline" pipeline }
             :header-params {}
             :query-params  {}
             :form-params   {}
             :content-types []
             :accepts       ["application/json"]
             :auth-names    ["jenkins_auth"]}))

(defn get-pipeline-queue
  "
  Retrieve queue details for an organization pipeline"
  [organization pipeline ]
  (:data (get-pipeline-queue-with-http-info organization pipeline)))

(defn get-pipeline-run-with-http-info
  "
  Retrieve run details for an organization pipeline"
  [organization pipeline run ]
  (call-api "/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}" :get
            {:path-params   {"organization" organization "pipeline" pipeline "run" run }
             :header-params {}
             :query-params  {}
             :form-params   {}
             :content-types []
             :accepts       ["application/json"]
             :auth-names    ["jenkins_auth"]}))

(defn get-pipeline-run
  "
  Retrieve run details for an organization pipeline"
  [organization pipeline run ]
  (:data (get-pipeline-run-with-http-info organization pipeline run)))

(defn get-pipeline-run-log-with-http-info
  "
  Get log for a pipeline run"
  ([organization pipeline run ] (get-pipeline-run-log-with-http-info organization pipeline run nil))
  ([organization pipeline run {:keys [start download ]}]
   (call-api "/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/log" :get
             {:path-params   {"organization" organization "pipeline" pipeline "run" run }
              :header-params {}
              :query-params  {"start" start "download" download }
              :form-params   {}
              :content-types []
              :accepts       ["application/json"]
              :auth-names    ["jenkins_auth"]})))

(defn get-pipeline-run-log
  "
  Get log for a pipeline run"
  ([organization pipeline run ] (get-pipeline-run-log organization pipeline run nil))
  ([organization pipeline run optional-params]
   (:data (get-pipeline-run-log-with-http-info organization pipeline run optional-params))))

(defn get-pipeline-run-node-with-http-info
  "
  Retrieve run node details for an organization pipeline"
  [organization pipeline run node ]
  (call-api "/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes/{node}" :get
            {:path-params   {"organization" organization "pipeline" pipeline "run" run "node" node }
             :header-params {}
             :query-params  {}
             :form-params   {}
             :content-types []
             :accepts       ["application/json"]
             :auth-names    ["jenkins_auth"]}))

(defn get-pipeline-run-node
  "
  Retrieve run node details for an organization pipeline"
  [organization pipeline run node ]
  (:data (get-pipeline-run-node-with-http-info organization pipeline run node)))

(defn get-pipeline-run-node-step-with-http-info
  "
  Retrieve run node details for an organization pipeline"
  [organization pipeline run node step ]
  (call-api "/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes/{node}/steps/{step}" :get
            {:path-params   {"organization" organization "pipeline" pipeline "run" run "node" node "step" step }
             :header-params {}
             :query-params  {}
             :form-params   {}
             :content-types []
             :accepts       ["application/json"]
             :auth-names    ["jenkins_auth"]}))

(defn get-pipeline-run-node-step
  "
  Retrieve run node details for an organization pipeline"
  [organization pipeline run node step ]
  (:data (get-pipeline-run-node-step-with-http-info organization pipeline run node step)))

(defn get-pipeline-run-node-step-log-with-http-info
  "
  Get log for a pipeline run node step"
  [organization pipeline run node step ]
  (call-api "/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes/{node}/steps/{step}/log" :get
            {:path-params   {"organization" organization "pipeline" pipeline "run" run "node" node "step" step }
             :header-params {}
             :query-params  {}
             :form-params   {}
             :content-types []
             :accepts       ["application/json"]
             :auth-names    ["jenkins_auth"]}))

(defn get-pipeline-run-node-step-log
  "
  Get log for a pipeline run node step"
  [organization pipeline run node step ]
  (:data (get-pipeline-run-node-step-log-with-http-info organization pipeline run node step)))

(defn get-pipeline-run-node-steps-with-http-info
  "
  Retrieve run node steps details for an organization pipeline"
  [organization pipeline run node ]
  (call-api "/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes/{node}/steps" :get
            {:path-params   {"organization" organization "pipeline" pipeline "run" run "node" node }
             :header-params {}
             :query-params  {}
             :form-params   {}
             :content-types []
             :accepts       ["application/json"]
             :auth-names    ["jenkins_auth"]}))

(defn get-pipeline-run-node-steps
  "
  Retrieve run node steps details for an organization pipeline"
  [organization pipeline run node ]
  (:data (get-pipeline-run-node-steps-with-http-info organization pipeline run node)))

(defn get-pipeline-run-nodes-with-http-info
  "
  Retrieve run nodes details for an organization pipeline"
  [organization pipeline run ]
  (call-api "/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes" :get
            {:path-params   {"organization" organization "pipeline" pipeline "run" run }
             :header-params {}
             :query-params  {}
             :form-params   {}
             :content-types []
             :accepts       ["application/json"]
             :auth-names    ["jenkins_auth"]}))

(defn get-pipeline-run-nodes
  "
  Retrieve run nodes details for an organization pipeline"
  [organization pipeline run ]
  (:data (get-pipeline-run-nodes-with-http-info organization pipeline run)))

(defn get-pipeline-runs-with-http-info
  "
  Retrieve all runs details for an organization pipeline"
  [organization pipeline ]
  (call-api "/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs" :get
            {:path-params   {"organization" organization "pipeline" pipeline }
             :header-params {}
             :query-params  {}
             :form-params   {}
             :content-types []
             :accepts       ["application/json"]
             :auth-names    ["jenkins_auth"]}))

(defn get-pipeline-runs
  "
  Retrieve all runs details for an organization pipeline"
  [organization pipeline ]
  (:data (get-pipeline-runs-with-http-info organization pipeline)))

(defn get-pipelines-with-http-info
  "
  Retrieve all pipelines details for an organization"
  [organization ]
  (call-api "/blue/rest/organizations/{organization}/pipelines/" :get
            {:path-params   {"organization" organization }
             :header-params {}
             :query-params  {}
             :form-params   {}
             :content-types []
             :accepts       ["application/json"]
             :auth-names    ["jenkins_auth"]}))

(defn get-pipelines
  "
  Retrieve all pipelines details for an organization"
  [organization ]
  (:data (get-pipelines-with-http-info organization)))

(defn get-scm-with-http-info
  "
  Retrieve SCM details for an organization"
  [organization scm ]
  (call-api "/blue/rest/organizations/{organization}/scm/{scm}" :get
            {:path-params   {"organization" organization "scm" scm }
             :header-params {}
             :query-params  {}
             :form-params   {}
             :content-types []
             :accepts       ["application/json"]
             :auth-names    ["jenkins_auth"]}))

(defn get-scm
  "
  Retrieve SCM details for an organization"
  [organization scm ]
  (:data (get-scm-with-http-info organization scm)))

(defn get-scm-organisation-repositories-with-http-info
  "
  Retrieve SCM organization repositories details for an organization"
  ([organization scm scm-organisation ] (get-scm-organisation-repositories-with-http-info organization scm scm-organisation nil))
  ([organization scm scm-organisation {:keys [credential-id page-size page-number ]}]
   (call-api "/blue/rest/organizations/{organization}/scm/{scm}/organizations/{scmOrganisation}/repositories" :get
             {:path-params   {"organization" organization "scm" scm "scmOrganisation" scm-organisation }
              :header-params {}
              :query-params  {"credentialId" credential-id "pageSize" page-size "pageNumber" page-number }
              :form-params   {}
              :content-types []
              :accepts       ["application/json"]
              :auth-names    ["jenkins_auth"]})))

(defn get-scm-organisation-repositories
  "
  Retrieve SCM organization repositories details for an organization"
  ([organization scm scm-organisation ] (get-scm-organisation-repositories organization scm scm-organisation nil))
  ([organization scm scm-organisation optional-params]
   (:data (get-scm-organisation-repositories-with-http-info organization scm scm-organisation optional-params))))

(defn get-scm-organisation-repository-with-http-info
  "
  Retrieve SCM organization repository details for an organization"
  ([organization scm scm-organisation repository ] (get-scm-organisation-repository-with-http-info organization scm scm-organisation repository nil))
  ([organization scm scm-organisation repository {:keys [credential-id ]}]
   (call-api "/blue/rest/organizations/{organization}/scm/{scm}/organizations/{scmOrganisation}/repositories/{repository}" :get
             {:path-params   {"organization" organization "scm" scm "scmOrganisation" scm-organisation "repository" repository }
              :header-params {}
              :query-params  {"credentialId" credential-id }
              :form-params   {}
              :content-types []
              :accepts       ["application/json"]
              :auth-names    ["jenkins_auth"]})))

(defn get-scm-organisation-repository
  "
  Retrieve SCM organization repository details for an organization"
  ([organization scm scm-organisation repository ] (get-scm-organisation-repository organization scm scm-organisation repository nil))
  ([organization scm scm-organisation repository optional-params]
   (:data (get-scm-organisation-repository-with-http-info organization scm scm-organisation repository optional-params))))

(defn get-scm-organisations-with-http-info
  "
  Retrieve SCM organizations details for an organization"
  ([organization scm ] (get-scm-organisations-with-http-info organization scm nil))
  ([organization scm {:keys [credential-id ]}]
   (call-api "/blue/rest/organizations/{organization}/scm/{scm}/organizations" :get
             {:path-params   {"organization" organization "scm" scm }
              :header-params {}
              :query-params  {"credentialId" credential-id }
              :form-params   {}
              :content-types []
              :accepts       ["application/json"]
              :auth-names    ["jenkins_auth"]})))

(defn get-scm-organisations
  "
  Retrieve SCM organizations details for an organization"
  ([organization scm ] (get-scm-organisations organization scm nil))
  ([organization scm optional-params]
   (:data (get-scm-organisations-with-http-info organization scm optional-params))))

(defn get-user-with-http-info
  "
  Retrieve user details for an organization"
  [organization user ]
  (call-api "/blue/rest/organizations/{organization}/users/{user}" :get
            {:path-params   {"organization" organization "user" user }
             :header-params {}
             :query-params  {}
             :form-params   {}
             :content-types []
             :accepts       ["application/json"]
             :auth-names    ["jenkins_auth"]}))

(defn get-user
  "
  Retrieve user details for an organization"
  [organization user ]
  (:data (get-user-with-http-info organization user)))

(defn get-user-favorites-with-http-info
  "
  Retrieve user favorites details for an organization"
  [user ]
  (call-api "/blue/rest/users/{user}/favorites" :get
            {:path-params   {"user" user }
             :header-params {}
             :query-params  {}
             :form-params   {}
             :content-types []
             :accepts       ["application/json"]
             :auth-names    ["jenkins_auth"]}))

(defn get-user-favorites
  "
  Retrieve user favorites details for an organization"
  [user ]
  (:data (get-user-favorites-with-http-info user)))

(defn get-users-with-http-info
  "
  Retrieve users details for an organization"
  [organization ]
  (call-api "/blue/rest/organizations/{organization}/users/" :get
            {:path-params   {"organization" organization }
             :header-params {}
             :query-params  {}
             :form-params   {}
             :content-types []
             :accepts       ["application/json"]
             :auth-names    ["jenkins_auth"]}))

(defn get-users
  "
  Retrieve users details for an organization"
  [organization ]
  (:data (get-users-with-http-info organization)))

(defn post-pipeline-run-with-http-info
  "
  Replay an organization pipeline run"
  [organization pipeline run ]
  (call-api "/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/replay" :post
            {:path-params   {"organization" organization "pipeline" pipeline "run" run }
             :header-params {}
             :query-params  {}
             :form-params   {}
             :content-types []
             :accepts       ["application/json"]
             :auth-names    ["jenkins_auth"]}))

(defn post-pipeline-run
  "
  Replay an organization pipeline run"
  [organization pipeline run ]
  (:data (post-pipeline-run-with-http-info organization pipeline run)))

(defn post-pipeline-runs-with-http-info
  "
  Start a build for an organization pipeline"
  [organization pipeline ]
  (call-api "/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs" :post
            {:path-params   {"organization" organization "pipeline" pipeline }
             :header-params {}
             :query-params  {}
             :form-params   {}
             :content-types []
             :accepts       ["application/json"]
             :auth-names    ["jenkins_auth"]}))

(defn post-pipeline-runs
  "
  Start a build for an organization pipeline"
  [organization pipeline ]
  (:data (post-pipeline-runs-with-http-info organization pipeline)))

(defn put-pipeline-favorite-with-http-info
  "
  Favorite/unfavorite a pipeline"
  [organization pipeline body ]
  (call-api "/blue/rest/organizations/{organization}/pipelines/{pipeline}/favorite" :put
            {:path-params   {"organization" organization "pipeline" pipeline }
             :header-params {}
             :query-params  {}
             :form-params   {}
             :body-param    body
             :content-types []
             :accepts       ["application/json"]
             :auth-names    ["jenkins_auth"]}))

(defn put-pipeline-favorite
  "
  Favorite/unfavorite a pipeline"
  [organization pipeline body ]
  (:data (put-pipeline-favorite-with-http-info organization pipeline body)))

(defn put-pipeline-run-with-http-info
  "
  Stop a build of an organization pipeline"
  ([organization pipeline run ] (put-pipeline-run-with-http-info organization pipeline run nil))
  ([organization pipeline run {:keys [blocking time-out-in-secs ]}]
   (call-api "/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/stop" :put
             {:path-params   {"organization" organization "pipeline" pipeline "run" run }
              :header-params {}
              :query-params  {"blocking" blocking "timeOutInSecs" time-out-in-secs }
              :form-params   {}
              :content-types []
              :accepts       ["application/json"]
              :auth-names    ["jenkins_auth"]})))

(defn put-pipeline-run
  "
  Stop a build of an organization pipeline"
  ([organization pipeline run ] (put-pipeline-run organization pipeline run nil))
  ([organization pipeline run optional-params]
   (:data (put-pipeline-run-with-http-info organization pipeline run optional-params))))

(defn search-with-http-info
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
             :auth-names    ["jenkins_auth"]}))

(defn search
  "
  Search for any resource details"
  [q ]
  (:data (search-with-http-info q)))

(defn search-classes-with-http-info
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
             :auth-names    ["jenkins_auth"]}))

(defn search-classes
  "
  Get classes details"
  [q ]
  (:data (search-classes-with-http-info q)))

