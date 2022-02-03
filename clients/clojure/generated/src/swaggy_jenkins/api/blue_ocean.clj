(ns swaggy-jenkins.api.blue-ocean
  (:require [swaggy-jenkins.core :refer [call-api check-required-params with-collection-format *api-context*]]
            [clojure.spec.alpha :as s]
            [spec-tools.core :as st]
            [orchestra.core :refer [defn-spec]]
            [swaggy-jenkins.specs.input-step-impl :refer :all]
            [swaggy-jenkins.specs.pipeline-run-impl :refer :all]
            [swaggy-jenkins.specs.pipeline-activity :refer :all]
            [swaggy-jenkins.specs.default-crumb-issuer :refer :all]
            [swaggy-jenkins.specs.generic-resource :refer :all]
            [swaggy-jenkins.specs.github-organizationlinks :refer :all]
            [swaggy-jenkins.specs.organisation :refer :all]
            [swaggy-jenkins.specs.queue-item-impl :refer :all]
            [swaggy-jenkins.specs.empty-change-log-set :refer :all]
            [swaggy-jenkins.specs.response-time-monitor-data :refer :all]
            [swaggy-jenkins.specs.pipeline-run :refer :all]
            [swaggy-jenkins.specs.pipeline-impl :refer :all]
            [swaggy-jenkins.specs.hudson-master-computerexecutors :refer :all]
            [swaggy-jenkins.specs.github-respository-container :refer :all]
            [swaggy-jenkins.specs.branch-implpermissions :refer :all]
            [swaggy-jenkins.specs.queue-left-item :refer :all]
            [swaggy-jenkins.specs.github-repositorypermissions :refer :all]
            [swaggy-jenkins.specs.hudsonassigned-labels :refer :all]
            [swaggy-jenkins.specs.pipeline-step-impl :refer :all]
            [swaggy-jenkins.specs.pipeline-run-nodeedges :refer :all]
            [swaggy-jenkins.specs.null-scm :refer :all]
            [swaggy-jenkins.specs.clock-difference :refer :all]
            [swaggy-jenkins.specs.github-file :refer :all]
            [swaggy-jenkins.specs.hudson-master-computermonitor-data :refer :all]
            [swaggy-jenkins.specs.pipeline-run-node :refer :all]
            [swaggy-jenkins.specs.github-scmlinks :refer :all]
            [swaggy-jenkins.specs.extension-class-impllinks :refer :all]
            [swaggy-jenkins.specs.free-style-build :refer :all]
            [swaggy-jenkins.specs.classes-by-class :refer :all]
            [swaggy-jenkins.specs.cause-user-id-cause :refer :all]
            [swaggy-jenkins.specs.hudson :refer :all]
            [swaggy-jenkins.specs.extension-class-container-impl1 :refer :all]
            [swaggy-jenkins.specs.free-style-project :refer :all]
            [swaggy-jenkins.specs.pipeline-step-impllinks :refer :all]
            [swaggy-jenkins.specs.branch-impllinks :refer :all]
            [swaggy-jenkins.specs.extension-class-container-impl1map :refer :all]
            [swaggy-jenkins.specs.favorite-impllinks :refer :all]
            [swaggy-jenkins.specs.pipeline-activityartifacts :refer :all]
            [swaggy-jenkins.specs.computer-set :refer :all]
            [swaggy-jenkins.specs.disk-space-monitor-descriptor-disk-space :refer :all]
            [swaggy-jenkins.specs.free-style-projectactions :refer :all]
            [swaggy-jenkins.specs.cause-action :refer :all]
            [swaggy-jenkins.specs.all-view :refer :all]
            [swaggy-jenkins.specs.list-view :refer :all]
            [swaggy-jenkins.specs.pipeline-branchesitempull-requestlinks :refer :all]
            [swaggy-jenkins.specs.string-parameter-definition :refer :all]
            [swaggy-jenkins.specs.favorite-impl :refer :all]
            [swaggy-jenkins.specs.github-repositories :refer :all]
            [swaggy-jenkins.specs.github-organization :refer :all]
            [swaggy-jenkins.specs.github-respository-containerlinks :refer :all]
            [swaggy-jenkins.specs.github-repositorieslinks :refer :all]
            [swaggy-jenkins.specs.link :refer :all]
            [swaggy-jenkins.specs.swap-space-monitor-memory-usage2 :refer :all]
            [swaggy-jenkins.specs.pipelinelatest-run :refer :all]
            [swaggy-jenkins.specs.pipeline-branchesitemlatest-run :refer :all]
            [swaggy-jenkins.specs.pipeline-branchesitempull-request :refer :all]
            [swaggy-jenkins.specs.pipeline-runartifacts :refer :all]
            [swaggy-jenkins.specs.queue-blocked-item :refer :all]
            [swaggy-jenkins.specs.github-scm :refer :all]
            [swaggy-jenkins.specs.hudson-master-computer :refer :all]
            [swaggy-jenkins.specs.pipeline-run-impllinks :refer :all]
            [swaggy-jenkins.specs.input-step-impllinks :refer :all]
            [swaggy-jenkins.specs.github-repositorylinks :refer :all]
            [swaggy-jenkins.specs.pipeline-folder-impl :refer :all]
            [swaggy-jenkins.specs.multibranch-pipeline :refer :all]
            [swaggy-jenkins.specs.pipeline-impllinks :refer :all]
            [swaggy-jenkins.specs.label1 :refer :all]
            [swaggy-jenkins.specs.pipeline-branchesitem :refer :all]
            [swaggy-jenkins.specs.extension-class-container-impl1links :refer :all]
            [swaggy-jenkins.specs.pipeline :refer :all]
            [swaggy-jenkins.specs.string-parameter-value :refer :all]
            [swaggy-jenkins.specs.extension-class-impl :refer :all]
            [swaggy-jenkins.specs.unlabeled-load-statistics :refer :all]
            [swaggy-jenkins.specs.branch-impl :refer :all]
            [swaggy-jenkins.specs.free-style-projecthealth-report :refer :all]
            [swaggy-jenkins.specs.github-repository :refer :all]
            [swaggy-jenkins.specs.pipelinelatest-runartifacts :refer :all]
            [swaggy-jenkins.specs.user :refer :all]
            [swaggy-jenkins.specs.queue :refer :all]
            [swaggy-jenkins.specs.github-content :refer :all]
            )
  (:import (java.io File)))


(defn-spec delete-pipeline-queue-item-with-http-info any?
  "
  Delete queue item from an organization pipeline queue"
  [organization string?, pipeline string?, queue string?]
  (check-required-params organization pipeline queue)
  (call-api "/blue/rest/organizations/{organization}/pipelines/{pipeline}/queue/{queue}" :delete
            {:path-params   {"organization" organization "pipeline" pipeline "queue" queue }
             :header-params {}
             :query-params  {}
             :form-params   {}
             :content-types []
             :accepts       []
             :auth-names    ["jenkins_auth"]}))

(defn-spec delete-pipeline-queue-item any?
  "
  Delete queue item from an organization pipeline queue"
  [organization string?, pipeline string?, queue string?]
  (let [res (:data (delete-pipeline-queue-item-with-http-info organization pipeline queue))]
    (if (:decode-models *api-context*)
       (st/decode any? res st/string-transformer)
       res)))


(defn-spec get-authenticated-user-with-http-info any?
  "
  Retrieve authenticated user details for an organization"
  [organization string?]
  (check-required-params organization)
  (call-api "/blue/rest/organizations/{organization}/user/" :get
            {:path-params   {"organization" organization }
             :header-params {}
             :query-params  {}
             :form-params   {}
             :content-types []
             :accepts       ["application/json"]
             :auth-names    ["jenkins_auth"]}))

(defn-spec get-authenticated-user user-spec
  "
  Retrieve authenticated user details for an organization"
  [organization string?]
  (let [res (:data (get-authenticated-user-with-http-info organization))]
    (if (:decode-models *api-context*)
       (st/decode user-spec res st/string-transformer)
       res)))


(defn-spec get-classes-with-http-info any?
  "
  Get a list of class names supported by a given class"
  [class string?]
  (check-required-params class)
  (call-api "/blue/rest/classes/{class}" :get
            {:path-params   {"class" class }
             :header-params {}
             :query-params  {}
             :form-params   {}
             :content-types []
             :accepts       ["application/json"]
             :auth-names    ["jenkins_auth"]}))

(defn-spec get-classes string?
  "
  Get a list of class names supported by a given class"
  [class string?]
  (let [res (:data (get-classes-with-http-info class))]
    (if (:decode-models *api-context*)
       (st/decode string? res st/string-transformer)
       res)))


(defn-spec get-json-web-key-with-http-info any?
  "
  Retrieve JSON Web Key"
  [key int?]
  (check-required-params key)
  (call-api "/jwt-auth/jwks/{key}" :get
            {:path-params   {"key" key }
             :header-params {}
             :query-params  {}
             :form-params   {}
             :content-types []
             :accepts       ["application/json"]
             :auth-names    []}))

(defn-spec get-json-web-key string?
  "
  Retrieve JSON Web Key"
  [key int?]
  (let [res (:data (get-json-web-key-with-http-info key))]
    (if (:decode-models *api-context*)
       (st/decode string? res st/string-transformer)
       res)))


(defn-spec get-json-web-token-with-http-info any?
  "
  Retrieve JSON Web Token"
  ([] (get-json-web-token-with-http-info nil))
  ([{:keys [expiryTimeInMins maxExpiryTimeInMins]} (s/map-of keyword? any?)]
   (call-api "/jwt-auth/token" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"expiryTimeInMins" expiryTimeInMins "maxExpiryTimeInMins" maxExpiryTimeInMins }
              :form-params   {}
              :content-types []
              :accepts       ["application/json"]
              :auth-names    []})))

(defn-spec get-json-web-token string?
  "
  Retrieve JSON Web Token"
  ([] (get-json-web-token nil))
  ([optional-params any?]
   (let [res (:data (get-json-web-token-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode string? res st/string-transformer)
        res))))


(defn-spec get-organisation-with-http-info any?
  "
  Retrieve organization details"
  [organization string?]
  (check-required-params organization)
  (call-api "/blue/rest/organizations/{organization}" :get
            {:path-params   {"organization" organization }
             :header-params {}
             :query-params  {}
             :form-params   {}
             :content-types []
             :accepts       ["application/json"]
             :auth-names    ["jenkins_auth"]}))

(defn-spec get-organisation organisation-spec
  "
  Retrieve organization details"
  [organization string?]
  (let [res (:data (get-organisation-with-http-info organization))]
    (if (:decode-models *api-context*)
       (st/decode organisation-spec res st/string-transformer)
       res)))


(defn-spec get-organisations-with-http-info any?
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

(defn-spec get-organisations (s/coll-of organisation-spec)
  "
  Retrieve all organizations details"
  []
  (let [res (:data (get-organisations-with-http-info))]
    (if (:decode-models *api-context*)
       (st/decode (s/coll-of organisation-spec) res st/string-transformer)
       res)))


(defn-spec get-pipeline-with-http-info any?
  "
  Retrieve pipeline details for an organization"
  [organization string?, pipeline string?]
  (check-required-params organization pipeline)
  (call-api "/blue/rest/organizations/{organization}/pipelines/{pipeline}" :get
            {:path-params   {"organization" organization "pipeline" pipeline }
             :header-params {}
             :query-params  {}
             :form-params   {}
             :content-types []
             :accepts       ["application/json"]
             :auth-names    ["jenkins_auth"]}))

(defn-spec get-pipeline pipeline-spec
  "
  Retrieve pipeline details for an organization"
  [organization string?, pipeline string?]
  (let [res (:data (get-pipeline-with-http-info organization pipeline))]
    (if (:decode-models *api-context*)
       (st/decode pipeline-spec res st/string-transformer)
       res)))


(defn-spec get-pipeline-activities-with-http-info any?
  "
  Retrieve all activities details for an organization pipeline"
  [organization string?, pipeline string?]
  (check-required-params organization pipeline)
  (call-api "/blue/rest/organizations/{organization}/pipelines/{pipeline}/activities" :get
            {:path-params   {"organization" organization "pipeline" pipeline }
             :header-params {}
             :query-params  {}
             :form-params   {}
             :content-types []
             :accepts       ["application/json"]
             :auth-names    ["jenkins_auth"]}))

(defn-spec get-pipeline-activities (s/coll-of pipeline-activity-spec)
  "
  Retrieve all activities details for an organization pipeline"
  [organization string?, pipeline string?]
  (let [res (:data (get-pipeline-activities-with-http-info organization pipeline))]
    (if (:decode-models *api-context*)
       (st/decode (s/coll-of pipeline-activity-spec) res st/string-transformer)
       res)))


(defn-spec get-pipeline-branch-with-http-info any?
  "
  Retrieve branch details for an organization pipeline"
  [organization string?, pipeline string?, branch string?]
  (check-required-params organization pipeline branch)
  (call-api "/blue/rest/organizations/{organization}/pipelines/{pipeline}/branches/{branch}/" :get
            {:path-params   {"organization" organization "pipeline" pipeline "branch" branch }
             :header-params {}
             :query-params  {}
             :form-params   {}
             :content-types []
             :accepts       ["application/json"]
             :auth-names    ["jenkins_auth"]}))

(defn-spec get-pipeline-branch branch-impl-spec
  "
  Retrieve branch details for an organization pipeline"
  [organization string?, pipeline string?, branch string?]
  (let [res (:data (get-pipeline-branch-with-http-info organization pipeline branch))]
    (if (:decode-models *api-context*)
       (st/decode branch-impl-spec res st/string-transformer)
       res)))


(defn-spec get-pipeline-branch-run-with-http-info any?
  "
  Retrieve branch run details for an organization pipeline"
  [organization string?, pipeline string?, branch string?, run string?]
  (check-required-params organization pipeline branch run)
  (call-api "/blue/rest/organizations/{organization}/pipelines/{pipeline}/branches/{branch}/runs/{run}" :get
            {:path-params   {"organization" organization "pipeline" pipeline "branch" branch "run" run }
             :header-params {}
             :query-params  {}
             :form-params   {}
             :content-types []
             :accepts       ["application/json"]
             :auth-names    ["jenkins_auth"]}))

(defn-spec get-pipeline-branch-run pipeline-run-spec
  "
  Retrieve branch run details for an organization pipeline"
  [organization string?, pipeline string?, branch string?, run string?]
  (let [res (:data (get-pipeline-branch-run-with-http-info organization pipeline branch run))]
    (if (:decode-models *api-context*)
       (st/decode pipeline-run-spec res st/string-transformer)
       res)))


(defn-spec get-pipeline-branches-with-http-info any?
  "
  Retrieve all branches details for an organization pipeline"
  [organization string?, pipeline string?]
  (check-required-params organization pipeline)
  (call-api "/blue/rest/organizations/{organization}/pipelines/{pipeline}/branches" :get
            {:path-params   {"organization" organization "pipeline" pipeline }
             :header-params {}
             :query-params  {}
             :form-params   {}
             :content-types []
             :accepts       ["application/json"]
             :auth-names    ["jenkins_auth"]}))

(defn-spec get-pipeline-branches multibranch-pipeline-spec
  "
  Retrieve all branches details for an organization pipeline"
  [organization string?, pipeline string?]
  (let [res (:data (get-pipeline-branches-with-http-info organization pipeline))]
    (if (:decode-models *api-context*)
       (st/decode multibranch-pipeline-spec res st/string-transformer)
       res)))


(defn-spec get-pipeline-folder-with-http-info any?
  "
  Retrieve pipeline folder for an organization"
  [organization string?, folder string?]
  (check-required-params organization folder)
  (call-api "/blue/rest/organizations/{organization}/pipelines/{folder}/" :get
            {:path-params   {"organization" organization "folder" folder }
             :header-params {}
             :query-params  {}
             :form-params   {}
             :content-types []
             :accepts       ["application/json"]
             :auth-names    ["jenkins_auth"]}))

(defn-spec get-pipeline-folder pipeline-folder-impl-spec
  "
  Retrieve pipeline folder for an organization"
  [organization string?, folder string?]
  (let [res (:data (get-pipeline-folder-with-http-info organization folder))]
    (if (:decode-models *api-context*)
       (st/decode pipeline-folder-impl-spec res st/string-transformer)
       res)))


(defn-spec get-pipeline-folder-pipeline-with-http-info any?
  "
  Retrieve pipeline details for an organization folder"
  [organization string?, pipeline string?, folder string?]
  (check-required-params organization pipeline folder)
  (call-api "/blue/rest/organizations/{organization}/pipelines/{folder}/pipelines/{pipeline}" :get
            {:path-params   {"organization" organization "pipeline" pipeline "folder" folder }
             :header-params {}
             :query-params  {}
             :form-params   {}
             :content-types []
             :accepts       ["application/json"]
             :auth-names    ["jenkins_auth"]}))

(defn-spec get-pipeline-folder-pipeline pipeline-impl-spec
  "
  Retrieve pipeline details for an organization folder"
  [organization string?, pipeline string?, folder string?]
  (let [res (:data (get-pipeline-folder-pipeline-with-http-info organization pipeline folder))]
    (if (:decode-models *api-context*)
       (st/decode pipeline-impl-spec res st/string-transformer)
       res)))


(defn-spec get-pipeline-queue-with-http-info any?
  "
  Retrieve queue details for an organization pipeline"
  [organization string?, pipeline string?]
  (check-required-params organization pipeline)
  (call-api "/blue/rest/organizations/{organization}/pipelines/{pipeline}/queue" :get
            {:path-params   {"organization" organization "pipeline" pipeline }
             :header-params {}
             :query-params  {}
             :form-params   {}
             :content-types []
             :accepts       ["application/json"]
             :auth-names    ["jenkins_auth"]}))

(defn-spec get-pipeline-queue (s/coll-of queue-item-impl-spec)
  "
  Retrieve queue details for an organization pipeline"
  [organization string?, pipeline string?]
  (let [res (:data (get-pipeline-queue-with-http-info organization pipeline))]
    (if (:decode-models *api-context*)
       (st/decode (s/coll-of queue-item-impl-spec) res st/string-transformer)
       res)))


(defn-spec get-pipeline-run-with-http-info any?
  "
  Retrieve run details for an organization pipeline"
  [organization string?, pipeline string?, run string?]
  (check-required-params organization pipeline run)
  (call-api "/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}" :get
            {:path-params   {"organization" organization "pipeline" pipeline "run" run }
             :header-params {}
             :query-params  {}
             :form-params   {}
             :content-types []
             :accepts       ["application/json"]
             :auth-names    ["jenkins_auth"]}))

(defn-spec get-pipeline-run pipeline-run-spec
  "
  Retrieve run details for an organization pipeline"
  [organization string?, pipeline string?, run string?]
  (let [res (:data (get-pipeline-run-with-http-info organization pipeline run))]
    (if (:decode-models *api-context*)
       (st/decode pipeline-run-spec res st/string-transformer)
       res)))


(defn-spec get-pipeline-run-log-with-http-info any?
  "
  Get log for a pipeline run"
  ([organization string?, pipeline string?, run string?, ] (get-pipeline-run-log-with-http-info organization pipeline run nil))
  ([organization string?, pipeline string?, run string?, {:keys [start download]} (s/map-of keyword? any?)]
   (check-required-params organization pipeline run)
   (call-api "/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/log" :get
             {:path-params   {"organization" organization "pipeline" pipeline "run" run }
              :header-params {}
              :query-params  {"start" start "download" download }
              :form-params   {}
              :content-types []
              :accepts       ["application/json"]
              :auth-names    ["jenkins_auth"]})))

(defn-spec get-pipeline-run-log string?
  "
  Get log for a pipeline run"
  ([organization string?, pipeline string?, run string?, ] (get-pipeline-run-log organization pipeline run nil))
  ([organization string?, pipeline string?, run string?, optional-params any?]
   (let [res (:data (get-pipeline-run-log-with-http-info organization pipeline run optional-params))]
     (if (:decode-models *api-context*)
        (st/decode string? res st/string-transformer)
        res))))


(defn-spec get-pipeline-run-node-with-http-info any?
  "
  Retrieve run node details for an organization pipeline"
  [organization string?, pipeline string?, run string?, node string?]
  (check-required-params organization pipeline run node)
  (call-api "/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes/{node}" :get
            {:path-params   {"organization" organization "pipeline" pipeline "run" run "node" node }
             :header-params {}
             :query-params  {}
             :form-params   {}
             :content-types []
             :accepts       ["application/json"]
             :auth-names    ["jenkins_auth"]}))

(defn-spec get-pipeline-run-node pipeline-run-node-spec
  "
  Retrieve run node details for an organization pipeline"
  [organization string?, pipeline string?, run string?, node string?]
  (let [res (:data (get-pipeline-run-node-with-http-info organization pipeline run node))]
    (if (:decode-models *api-context*)
       (st/decode pipeline-run-node-spec res st/string-transformer)
       res)))


(defn-spec get-pipeline-run-node-step-with-http-info any?
  "
  Retrieve run node details for an organization pipeline"
  [organization string?, pipeline string?, run string?, node string?, step string?]
  (check-required-params organization pipeline run node step)
  (call-api "/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes/{node}/steps/{step}" :get
            {:path-params   {"organization" organization "pipeline" pipeline "run" run "node" node "step" step }
             :header-params {}
             :query-params  {}
             :form-params   {}
             :content-types []
             :accepts       ["application/json"]
             :auth-names    ["jenkins_auth"]}))

(defn-spec get-pipeline-run-node-step pipeline-step-impl-spec
  "
  Retrieve run node details for an organization pipeline"
  [organization string?, pipeline string?, run string?, node string?, step string?]
  (let [res (:data (get-pipeline-run-node-step-with-http-info organization pipeline run node step))]
    (if (:decode-models *api-context*)
       (st/decode pipeline-step-impl-spec res st/string-transformer)
       res)))


(defn-spec get-pipeline-run-node-step-log-with-http-info any?
  "
  Get log for a pipeline run node step"
  [organization string?, pipeline string?, run string?, node string?, step string?]
  (check-required-params organization pipeline run node step)
  (call-api "/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes/{node}/steps/{step}/log" :get
            {:path-params   {"organization" organization "pipeline" pipeline "run" run "node" node "step" step }
             :header-params {}
             :query-params  {}
             :form-params   {}
             :content-types []
             :accepts       ["application/json"]
             :auth-names    ["jenkins_auth"]}))

(defn-spec get-pipeline-run-node-step-log string?
  "
  Get log for a pipeline run node step"
  [organization string?, pipeline string?, run string?, node string?, step string?]
  (let [res (:data (get-pipeline-run-node-step-log-with-http-info organization pipeline run node step))]
    (if (:decode-models *api-context*)
       (st/decode string? res st/string-transformer)
       res)))


(defn-spec get-pipeline-run-node-steps-with-http-info any?
  "
  Retrieve run node steps details for an organization pipeline"
  [organization string?, pipeline string?, run string?, node string?]
  (check-required-params organization pipeline run node)
  (call-api "/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes/{node}/steps" :get
            {:path-params   {"organization" organization "pipeline" pipeline "run" run "node" node }
             :header-params {}
             :query-params  {}
             :form-params   {}
             :content-types []
             :accepts       ["application/json"]
             :auth-names    ["jenkins_auth"]}))

(defn-spec get-pipeline-run-node-steps (s/coll-of pipeline-step-impl-spec)
  "
  Retrieve run node steps details for an organization pipeline"
  [organization string?, pipeline string?, run string?, node string?]
  (let [res (:data (get-pipeline-run-node-steps-with-http-info organization pipeline run node))]
    (if (:decode-models *api-context*)
       (st/decode (s/coll-of pipeline-step-impl-spec) res st/string-transformer)
       res)))


(defn-spec get-pipeline-run-nodes-with-http-info any?
  "
  Retrieve run nodes details for an organization pipeline"
  [organization string?, pipeline string?, run string?]
  (check-required-params organization pipeline run)
  (call-api "/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes" :get
            {:path-params   {"organization" organization "pipeline" pipeline "run" run }
             :header-params {}
             :query-params  {}
             :form-params   {}
             :content-types []
             :accepts       ["application/json"]
             :auth-names    ["jenkins_auth"]}))

(defn-spec get-pipeline-run-nodes (s/coll-of pipeline-run-node-spec)
  "
  Retrieve run nodes details for an organization pipeline"
  [organization string?, pipeline string?, run string?]
  (let [res (:data (get-pipeline-run-nodes-with-http-info organization pipeline run))]
    (if (:decode-models *api-context*)
       (st/decode (s/coll-of pipeline-run-node-spec) res st/string-transformer)
       res)))


(defn-spec get-pipeline-runs-with-http-info any?
  "
  Retrieve all runs details for an organization pipeline"
  [organization string?, pipeline string?]
  (check-required-params organization pipeline)
  (call-api "/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs" :get
            {:path-params   {"organization" organization "pipeline" pipeline }
             :header-params {}
             :query-params  {}
             :form-params   {}
             :content-types []
             :accepts       ["application/json"]
             :auth-names    ["jenkins_auth"]}))

(defn-spec get-pipeline-runs (s/coll-of pipeline-run-spec)
  "
  Retrieve all runs details for an organization pipeline"
  [organization string?, pipeline string?]
  (let [res (:data (get-pipeline-runs-with-http-info organization pipeline))]
    (if (:decode-models *api-context*)
       (st/decode (s/coll-of pipeline-run-spec) res st/string-transformer)
       res)))


(defn-spec get-pipelines-with-http-info any?
  "
  Retrieve all pipelines details for an organization"
  [organization string?]
  (check-required-params organization)
  (call-api "/blue/rest/organizations/{organization}/pipelines/" :get
            {:path-params   {"organization" organization }
             :header-params {}
             :query-params  {}
             :form-params   {}
             :content-types []
             :accepts       ["application/json"]
             :auth-names    ["jenkins_auth"]}))

(defn-spec get-pipelines (s/coll-of pipeline-spec)
  "
  Retrieve all pipelines details for an organization"
  [organization string?]
  (let [res (:data (get-pipelines-with-http-info organization))]
    (if (:decode-models *api-context*)
       (st/decode (s/coll-of pipeline-spec) res st/string-transformer)
       res)))


(defn-spec get-scm-with-http-info any?
  "
  Retrieve SCM details for an organization"
  [organization string?, scm string?]
  (check-required-params organization scm)
  (call-api "/blue/rest/organizations/{organization}/scm/{scm}" :get
            {:path-params   {"organization" organization "scm" scm }
             :header-params {}
             :query-params  {}
             :form-params   {}
             :content-types []
             :accepts       ["application/json"]
             :auth-names    ["jenkins_auth"]}))

(defn-spec get-scm github-scm-spec
  "
  Retrieve SCM details for an organization"
  [organization string?, scm string?]
  (let [res (:data (get-scm-with-http-info organization scm))]
    (if (:decode-models *api-context*)
       (st/decode github-scm-spec res st/string-transformer)
       res)))


(defn-spec get-scm-organisation-repositories-with-http-info any?
  "
  Retrieve SCM organization repositories details for an organization"
  ([organization string?, scm string?, scmOrganisation string?, ] (get-scm-organisation-repositories-with-http-info organization scm scmOrganisation nil))
  ([organization string?, scm string?, scmOrganisation string?, {:keys [credentialId pageSize pageNumber]} (s/map-of keyword? any?)]
   (check-required-params organization scm scmOrganisation)
   (call-api "/blue/rest/organizations/{organization}/scm/{scm}/organizations/{scmOrganisation}/repositories" :get
             {:path-params   {"organization" organization "scm" scm "scmOrganisation" scmOrganisation }
              :header-params {}
              :query-params  {"credentialId" credentialId "pageSize" pageSize "pageNumber" pageNumber }
              :form-params   {}
              :content-types []
              :accepts       ["application/json"]
              :auth-names    ["jenkins_auth"]})))

(defn-spec get-scm-organisation-repositories (s/coll-of github-organization-spec)
  "
  Retrieve SCM organization repositories details for an organization"
  ([organization string?, scm string?, scmOrganisation string?, ] (get-scm-organisation-repositories organization scm scmOrganisation nil))
  ([organization string?, scm string?, scmOrganisation string?, optional-params any?]
   (let [res (:data (get-scm-organisation-repositories-with-http-info organization scm scmOrganisation optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of github-organization-spec) res st/string-transformer)
        res))))


(defn-spec get-scm-organisation-repository-with-http-info any?
  "
  Retrieve SCM organization repository details for an organization"
  ([organization string?, scm string?, scmOrganisation string?, repository string?, ] (get-scm-organisation-repository-with-http-info organization scm scmOrganisation repository nil))
  ([organization string?, scm string?, scmOrganisation string?, repository string?, {:keys [credentialId]} (s/map-of keyword? any?)]
   (check-required-params organization scm scmOrganisation repository)
   (call-api "/blue/rest/organizations/{organization}/scm/{scm}/organizations/{scmOrganisation}/repositories/{repository}" :get
             {:path-params   {"organization" organization "scm" scm "scmOrganisation" scmOrganisation "repository" repository }
              :header-params {}
              :query-params  {"credentialId" credentialId }
              :form-params   {}
              :content-types []
              :accepts       ["application/json"]
              :auth-names    ["jenkins_auth"]})))

(defn-spec get-scm-organisation-repository (s/coll-of github-organization-spec)
  "
  Retrieve SCM organization repository details for an organization"
  ([organization string?, scm string?, scmOrganisation string?, repository string?, ] (get-scm-organisation-repository organization scm scmOrganisation repository nil))
  ([organization string?, scm string?, scmOrganisation string?, repository string?, optional-params any?]
   (let [res (:data (get-scm-organisation-repository-with-http-info organization scm scmOrganisation repository optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of github-organization-spec) res st/string-transformer)
        res))))


(defn-spec get-scm-organisations-with-http-info any?
  "
  Retrieve SCM organizations details for an organization"
  ([organization string?, scm string?, ] (get-scm-organisations-with-http-info organization scm nil))
  ([organization string?, scm string?, {:keys [credentialId]} (s/map-of keyword? any?)]
   (check-required-params organization scm)
   (call-api "/blue/rest/organizations/{organization}/scm/{scm}/organizations" :get
             {:path-params   {"organization" organization "scm" scm }
              :header-params {}
              :query-params  {"credentialId" credentialId }
              :form-params   {}
              :content-types []
              :accepts       ["application/json"]
              :auth-names    ["jenkins_auth"]})))

(defn-spec get-scm-organisations (s/coll-of github-organization-spec)
  "
  Retrieve SCM organizations details for an organization"
  ([organization string?, scm string?, ] (get-scm-organisations organization scm nil))
  ([organization string?, scm string?, optional-params any?]
   (let [res (:data (get-scm-organisations-with-http-info organization scm optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of github-organization-spec) res st/string-transformer)
        res))))


(defn-spec get-user-with-http-info any?
  "
  Retrieve user details for an organization"
  [organization string?, user string?]
  (check-required-params organization user)
  (call-api "/blue/rest/organizations/{organization}/users/{user}" :get
            {:path-params   {"organization" organization "user" user }
             :header-params {}
             :query-params  {}
             :form-params   {}
             :content-types []
             :accepts       ["application/json"]
             :auth-names    ["jenkins_auth"]}))

(defn-spec get-user user-spec
  "
  Retrieve user details for an organization"
  [organization string?, user string?]
  (let [res (:data (get-user-with-http-info organization user))]
    (if (:decode-models *api-context*)
       (st/decode user-spec res st/string-transformer)
       res)))


(defn-spec get-user-favorites-with-http-info any?
  "
  Retrieve user favorites details for an organization"
  [user string?]
  (check-required-params user)
  (call-api "/blue/rest/users/{user}/favorites" :get
            {:path-params   {"user" user }
             :header-params {}
             :query-params  {}
             :form-params   {}
             :content-types []
             :accepts       ["application/json"]
             :auth-names    ["jenkins_auth"]}))

(defn-spec get-user-favorites (s/coll-of favorite-impl-spec)
  "
  Retrieve user favorites details for an organization"
  [user string?]
  (let [res (:data (get-user-favorites-with-http-info user))]
    (if (:decode-models *api-context*)
       (st/decode (s/coll-of favorite-impl-spec) res st/string-transformer)
       res)))


(defn-spec get-users-with-http-info any?
  "
  Retrieve users details for an organization"
  [organization string?]
  (check-required-params organization)
  (call-api "/blue/rest/organizations/{organization}/users/" :get
            {:path-params   {"organization" organization }
             :header-params {}
             :query-params  {}
             :form-params   {}
             :content-types []
             :accepts       ["application/json"]
             :auth-names    ["jenkins_auth"]}))

(defn-spec get-users user-spec
  "
  Retrieve users details for an organization"
  [organization string?]
  (let [res (:data (get-users-with-http-info organization))]
    (if (:decode-models *api-context*)
       (st/decode user-spec res st/string-transformer)
       res)))


(defn-spec post-pipeline-run-with-http-info any?
  "
  Replay an organization pipeline run"
  [organization string?, pipeline string?, run string?]
  (check-required-params organization pipeline run)
  (call-api "/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/replay" :post
            {:path-params   {"organization" organization "pipeline" pipeline "run" run }
             :header-params {}
             :query-params  {}
             :form-params   {}
             :content-types []
             :accepts       ["application/json"]
             :auth-names    ["jenkins_auth"]}))

(defn-spec post-pipeline-run queue-item-impl-spec
  "
  Replay an organization pipeline run"
  [organization string?, pipeline string?, run string?]
  (let [res (:data (post-pipeline-run-with-http-info organization pipeline run))]
    (if (:decode-models *api-context*)
       (st/decode queue-item-impl-spec res st/string-transformer)
       res)))


(defn-spec post-pipeline-runs-with-http-info any?
  "
  Start a build for an organization pipeline"
  [organization string?, pipeline string?]
  (check-required-params organization pipeline)
  (call-api "/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs" :post
            {:path-params   {"organization" organization "pipeline" pipeline }
             :header-params {}
             :query-params  {}
             :form-params   {}
             :content-types []
             :accepts       ["application/json"]
             :auth-names    ["jenkins_auth"]}))

(defn-spec post-pipeline-runs queue-item-impl-spec
  "
  Start a build for an organization pipeline"
  [organization string?, pipeline string?]
  (let [res (:data (post-pipeline-runs-with-http-info organization pipeline))]
    (if (:decode-models *api-context*)
       (st/decode queue-item-impl-spec res st/string-transformer)
       res)))


(defn-spec put-pipeline-favorite-with-http-info any?
  "
  Favorite/unfavorite a pipeline"
  [organization string?, pipeline string?, UNKNOWN_BASE_TYPE UNKNOWN_BASE_TYPE]
  (check-required-params organization pipeline UNKNOWN_BASE_TYPE)
  (call-api "/blue/rest/organizations/{organization}/pipelines/{pipeline}/favorite" :put
            {:path-params   {"organization" organization "pipeline" pipeline }
             :header-params {}
             :query-params  {}
             :form-params   {}
             :body-param    UNKNOWN_BASE_TYPE
             :content-types ["application/json"]
             :accepts       ["application/json"]
             :auth-names    ["jenkins_auth"]}))

(defn-spec put-pipeline-favorite favorite-impl-spec
  "
  Favorite/unfavorite a pipeline"
  [organization string?, pipeline string?, UNKNOWN_BASE_TYPE UNKNOWN_BASE_TYPE]
  (let [res (:data (put-pipeline-favorite-with-http-info organization pipeline UNKNOWN_BASE_TYPE))]
    (if (:decode-models *api-context*)
       (st/decode favorite-impl-spec res st/string-transformer)
       res)))


(defn-spec put-pipeline-run-with-http-info any?
  "
  Stop a build of an organization pipeline"
  ([organization string?, pipeline string?, run string?, ] (put-pipeline-run-with-http-info organization pipeline run nil))
  ([organization string?, pipeline string?, run string?, {:keys [blocking timeOutInSecs]} (s/map-of keyword? any?)]
   (check-required-params organization pipeline run)
   (call-api "/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/stop" :put
             {:path-params   {"organization" organization "pipeline" pipeline "run" run }
              :header-params {}
              :query-params  {"blocking" blocking "timeOutInSecs" timeOutInSecs }
              :form-params   {}
              :content-types []
              :accepts       ["application/json"]
              :auth-names    ["jenkins_auth"]})))

(defn-spec put-pipeline-run pipeline-run-spec
  "
  Stop a build of an organization pipeline"
  ([organization string?, pipeline string?, run string?, ] (put-pipeline-run organization pipeline run nil))
  ([organization string?, pipeline string?, run string?, optional-params any?]
   (let [res (:data (put-pipeline-run-with-http-info organization pipeline run optional-params))]
     (if (:decode-models *api-context*)
        (st/decode pipeline-run-spec res st/string-transformer)
        res))))


(defn-spec search-with-http-info any?
  "
  Search for any resource details"
  [q string?]
  (check-required-params q)
  (call-api "/blue/rest/search/" :get
            {:path-params   {}
             :header-params {}
             :query-params  {"q" q }
             :form-params   {}
             :content-types []
             :accepts       ["application/json"]
             :auth-names    ["jenkins_auth"]}))

(defn-spec search string?
  "
  Search for any resource details"
  [q string?]
  (let [res (:data (search-with-http-info q))]
    (if (:decode-models *api-context*)
       (st/decode string? res st/string-transformer)
       res)))


(defn-spec search-classes-with-http-info any?
  "
  Get classes details"
  [q string?]
  (check-required-params q)
  (call-api "/blue/rest/classes/" :get
            {:path-params   {}
             :header-params {}
             :query-params  {"q" q }
             :form-params   {}
             :content-types []
             :accepts       ["application/json"]
             :auth-names    ["jenkins_auth"]}))

(defn-spec search-classes string?
  "
  Get classes details"
  [q string?]
  (let [res (:data (search-classes-with-http-info q))]
    (if (:decode-models *api-context*)
       (st/decode string? res st/string-transformer)
       res)))


