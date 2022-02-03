(ns swaggy-jenkins.api.remote-access
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


(defn-spec get-computer-with-http-info any?
  "
  Retrieve computer details"
  [depth int?]
  (check-required-params depth)
  (call-api "/computer/api/json" :get
            {:path-params   {}
             :header-params {}
             :query-params  {"depth" depth }
             :form-params   {}
             :content-types []
             :accepts       ["application/json"]
             :auth-names    ["jenkins_auth"]}))

(defn-spec get-computer computer-set-spec
  "
  Retrieve computer details"
  [depth int?]
  (let [res (:data (get-computer-with-http-info depth))]
    (if (:decode-models *api-context*)
       (st/decode computer-set-spec res st/string-transformer)
       res)))


(defn-spec get-jenkins-with-http-info any?
  "
  Retrieve Jenkins details"
  []
  (call-api "/api/json" :get
            {:path-params   {}
             :header-params {}
             :query-params  {}
             :form-params   {}
             :content-types []
             :accepts       ["application/json"]
             :auth-names    ["jenkins_auth"]}))

(defn-spec get-jenkins hudson-spec
  "
  Retrieve Jenkins details"
  []
  (let [res (:data (get-jenkins-with-http-info))]
    (if (:decode-models *api-context*)
       (st/decode hudson-spec res st/string-transformer)
       res)))


(defn-spec get-job-with-http-info any?
  "
  Retrieve job details"
  [name string?]
  (check-required-params name)
  (call-api "/job/{name}/api/json" :get
            {:path-params   {"name" name }
             :header-params {}
             :query-params  {}
             :form-params   {}
             :content-types []
             :accepts       ["application/json"]
             :auth-names    ["jenkins_auth"]}))

(defn-spec get-job free-style-project-spec
  "
  Retrieve job details"
  [name string?]
  (let [res (:data (get-job-with-http-info name))]
    (if (:decode-models *api-context*)
       (st/decode free-style-project-spec res st/string-transformer)
       res)))


(defn-spec get-job-config-with-http-info any?
  "
  Retrieve job configuration"
  [name string?]
  (check-required-params name)
  (call-api "/job/{name}/config.xml" :get
            {:path-params   {"name" name }
             :header-params {}
             :query-params  {}
             :form-params   {}
             :content-types []
             :accepts       ["text/xml"]
             :auth-names    ["jenkins_auth"]}))

(defn-spec get-job-config string?
  "
  Retrieve job configuration"
  [name string?]
  (let [res (:data (get-job-config-with-http-info name))]
    (if (:decode-models *api-context*)
       (st/decode string? res st/string-transformer)
       res)))


(defn-spec get-job-last-build-with-http-info any?
  "
  Retrieve job's last build details"
  [name string?]
  (check-required-params name)
  (call-api "/job/{name}/lastBuild/api/json" :get
            {:path-params   {"name" name }
             :header-params {}
             :query-params  {}
             :form-params   {}
             :content-types []
             :accepts       ["application/json"]
             :auth-names    ["jenkins_auth"]}))

(defn-spec get-job-last-build free-style-build-spec
  "
  Retrieve job's last build details"
  [name string?]
  (let [res (:data (get-job-last-build-with-http-info name))]
    (if (:decode-models *api-context*)
       (st/decode free-style-build-spec res st/string-transformer)
       res)))


(defn-spec get-job-progressive-text-with-http-info any?
  "
  Retrieve job's build progressive text output"
  [name string?, number string?, start string?]
  (check-required-params name number start)
  (call-api "/job/{name}/{number}/logText/progressiveText" :get
            {:path-params   {"name" name "number" number }
             :header-params {}
             :query-params  {"start" start }
             :form-params   {}
             :content-types []
             :accepts       []
             :auth-names    ["jenkins_auth"]}))

(defn-spec get-job-progressive-text any?
  "
  Retrieve job's build progressive text output"
  [name string?, number string?, start string?]
  (let [res (:data (get-job-progressive-text-with-http-info name number start))]
    (if (:decode-models *api-context*)
       (st/decode any? res st/string-transformer)
       res)))


(defn-spec get-queue-with-http-info any?
  "
  Retrieve queue details"
  []
  (call-api "/queue/api/json" :get
            {:path-params   {}
             :header-params {}
             :query-params  {}
             :form-params   {}
             :content-types []
             :accepts       ["application/json"]
             :auth-names    ["jenkins_auth"]}))

(defn-spec get-queue queue-spec
  "
  Retrieve queue details"
  []
  (let [res (:data (get-queue-with-http-info))]
    (if (:decode-models *api-context*)
       (st/decode queue-spec res st/string-transformer)
       res)))


(defn-spec get-queue-item-with-http-info any?
  "
  Retrieve queued item details"
  [number string?]
  (check-required-params number)
  (call-api "/queue/item/{number}/api/json" :get
            {:path-params   {"number" number }
             :header-params {}
             :query-params  {}
             :form-params   {}
             :content-types []
             :accepts       ["application/json"]
             :auth-names    ["jenkins_auth"]}))

(defn-spec get-queue-item queue-spec
  "
  Retrieve queued item details"
  [number string?]
  (let [res (:data (get-queue-item-with-http-info number))]
    (if (:decode-models *api-context*)
       (st/decode queue-spec res st/string-transformer)
       res)))


(defn-spec get-view-with-http-info any?
  "
  Retrieve view details"
  [name string?]
  (check-required-params name)
  (call-api "/view/{name}/api/json" :get
            {:path-params   {"name" name }
             :header-params {}
             :query-params  {}
             :form-params   {}
             :content-types []
             :accepts       ["application/json"]
             :auth-names    ["jenkins_auth"]}))

(defn-spec get-view list-view-spec
  "
  Retrieve view details"
  [name string?]
  (let [res (:data (get-view-with-http-info name))]
    (if (:decode-models *api-context*)
       (st/decode list-view-spec res st/string-transformer)
       res)))


(defn-spec get-view-config-with-http-info any?
  "
  Retrieve view configuration"
  [name string?]
  (check-required-params name)
  (call-api "/view/{name}/config.xml" :get
            {:path-params   {"name" name }
             :header-params {}
             :query-params  {}
             :form-params   {}
             :content-types []
             :accepts       ["text/xml"]
             :auth-names    ["jenkins_auth"]}))

(defn-spec get-view-config string?
  "
  Retrieve view configuration"
  [name string?]
  (let [res (:data (get-view-config-with-http-info name))]
    (if (:decode-models *api-context*)
       (st/decode string? res st/string-transformer)
       res)))


(defn-spec head-jenkins-with-http-info any?
  "
  Retrieve Jenkins headers"
  []
  (call-api "/api/json" :head
            {:path-params   {}
             :header-params {}
             :query-params  {}
             :form-params   {}
             :content-types []
             :accepts       []
             :auth-names    ["jenkins_auth"]}))

(defn-spec head-jenkins any?
  "
  Retrieve Jenkins headers"
  []
  (let [res (:data (head-jenkins-with-http-info))]
    (if (:decode-models *api-context*)
       (st/decode any? res st/string-transformer)
       res)))


(defn-spec post-create-item-with-http-info any?
  "
  Create a new job using job configuration, or copied from an existing job"
  ([name string?, ] (post-create-item-with-http-info name nil))
  ([name string?, {:keys [from mode Jenkins-Crumb Content-Type body]} (s/map-of keyword? any?)]
   (check-required-params name)
   (call-api "/createItem" :post
             {:path-params   {}
              :header-params {"Jenkins-Crumb" Jenkins-Crumb "Content-Type" Content-Type }
              :query-params  {"name" name "from" from "mode" mode }
              :form-params   {}
              :body-param    body
              :content-types ["application/json"]
              :accepts       ["*/*"]
              :auth-names    ["jenkins_auth"]})))

(defn-spec post-create-item any?
  "
  Create a new job using job configuration, or copied from an existing job"
  ([name string?, ] (post-create-item name nil))
  ([name string?, optional-params any?]
   (let [res (:data (post-create-item-with-http-info name optional-params))]
     (if (:decode-models *api-context*)
        (st/decode any? res st/string-transformer)
        res))))


(defn-spec post-create-view-with-http-info any?
  "
  Create a new view using view configuration"
  ([name string?, ] (post-create-view-with-http-info name nil))
  ([name string?, {:keys [Jenkins-Crumb Content-Type body]} (s/map-of keyword? any?)]
   (check-required-params name)
   (call-api "/createView" :post
             {:path-params   {}
              :header-params {"Jenkins-Crumb" Jenkins-Crumb "Content-Type" Content-Type }
              :query-params  {"name" name }
              :form-params   {}
              :body-param    body
              :content-types ["application/json"]
              :accepts       ["*/*"]
              :auth-names    ["jenkins_auth"]})))

(defn-spec post-create-view any?
  "
  Create a new view using view configuration"
  ([name string?, ] (post-create-view name nil))
  ([name string?, optional-params any?]
   (let [res (:data (post-create-view-with-http-info name optional-params))]
     (if (:decode-models *api-context*)
        (st/decode any? res st/string-transformer)
        res))))


(defn-spec post-job-build-with-http-info any?
  "
  Build a job"
  ([name string?, json string?, ] (post-job-build-with-http-info name json nil))
  ([name string?, json string?, {:keys [token Jenkins-Crumb]} (s/map-of keyword? any?)]
   (check-required-params name json)
   (call-api "/job/{name}/build" :post
             {:path-params   {"name" name }
              :header-params {"Jenkins-Crumb" Jenkins-Crumb }
              :query-params  {"json" json "token" token }
              :form-params   {}
              :content-types []
              :accepts       []
              :auth-names    ["jenkins_auth"]})))

(defn-spec post-job-build any?
  "
  Build a job"
  ([name string?, json string?, ] (post-job-build name json nil))
  ([name string?, json string?, optional-params any?]
   (let [res (:data (post-job-build-with-http-info name json optional-params))]
     (if (:decode-models *api-context*)
        (st/decode any? res st/string-transformer)
        res))))


(defn-spec post-job-config-with-http-info any?
  "
  Update job configuration"
  ([name string?, body string?, ] (post-job-config-with-http-info name body nil))
  ([name string?, body string?, {:keys [Jenkins-Crumb]} (s/map-of keyword? any?)]
   (check-required-params name body)
   (call-api "/job/{name}/config.xml" :post
             {:path-params   {"name" name }
              :header-params {"Jenkins-Crumb" Jenkins-Crumb }
              :query-params  {}
              :form-params   {}
              :body-param    body
              :content-types ["application/json"]
              :accepts       ["*/*"]
              :auth-names    ["jenkins_auth"]})))

(defn-spec post-job-config any?
  "
  Update job configuration"
  ([name string?, body string?, ] (post-job-config name body nil))
  ([name string?, body string?, optional-params any?]
   (let [res (:data (post-job-config-with-http-info name body optional-params))]
     (if (:decode-models *api-context*)
        (st/decode any? res st/string-transformer)
        res))))


(defn-spec post-job-delete-with-http-info any?
  "
  Delete a job"
  ([name string?, ] (post-job-delete-with-http-info name nil))
  ([name string?, {:keys [Jenkins-Crumb]} (s/map-of keyword? any?)]
   (check-required-params name)
   (call-api "/job/{name}/doDelete" :post
             {:path-params   {"name" name }
              :header-params {"Jenkins-Crumb" Jenkins-Crumb }
              :query-params  {}
              :form-params   {}
              :content-types []
              :accepts       []
              :auth-names    ["jenkins_auth"]})))

(defn-spec post-job-delete any?
  "
  Delete a job"
  ([name string?, ] (post-job-delete name nil))
  ([name string?, optional-params any?]
   (let [res (:data (post-job-delete-with-http-info name optional-params))]
     (if (:decode-models *api-context*)
        (st/decode any? res st/string-transformer)
        res))))


(defn-spec post-job-disable-with-http-info any?
  "
  Disable a job"
  ([name string?, ] (post-job-disable-with-http-info name nil))
  ([name string?, {:keys [Jenkins-Crumb]} (s/map-of keyword? any?)]
   (check-required-params name)
   (call-api "/job/{name}/disable" :post
             {:path-params   {"name" name }
              :header-params {"Jenkins-Crumb" Jenkins-Crumb }
              :query-params  {}
              :form-params   {}
              :content-types []
              :accepts       []
              :auth-names    ["jenkins_auth"]})))

(defn-spec post-job-disable any?
  "
  Disable a job"
  ([name string?, ] (post-job-disable name nil))
  ([name string?, optional-params any?]
   (let [res (:data (post-job-disable-with-http-info name optional-params))]
     (if (:decode-models *api-context*)
        (st/decode any? res st/string-transformer)
        res))))


(defn-spec post-job-enable-with-http-info any?
  "
  Enable a job"
  ([name string?, ] (post-job-enable-with-http-info name nil))
  ([name string?, {:keys [Jenkins-Crumb]} (s/map-of keyword? any?)]
   (check-required-params name)
   (call-api "/job/{name}/enable" :post
             {:path-params   {"name" name }
              :header-params {"Jenkins-Crumb" Jenkins-Crumb }
              :query-params  {}
              :form-params   {}
              :content-types []
              :accepts       []
              :auth-names    ["jenkins_auth"]})))

(defn-spec post-job-enable any?
  "
  Enable a job"
  ([name string?, ] (post-job-enable name nil))
  ([name string?, optional-params any?]
   (let [res (:data (post-job-enable-with-http-info name optional-params))]
     (if (:decode-models *api-context*)
        (st/decode any? res st/string-transformer)
        res))))


(defn-spec post-job-last-build-stop-with-http-info any?
  "
  Stop a job"
  ([name string?, ] (post-job-last-build-stop-with-http-info name nil))
  ([name string?, {:keys [Jenkins-Crumb]} (s/map-of keyword? any?)]
   (check-required-params name)
   (call-api "/job/{name}/lastBuild/stop" :post
             {:path-params   {"name" name }
              :header-params {"Jenkins-Crumb" Jenkins-Crumb }
              :query-params  {}
              :form-params   {}
              :content-types []
              :accepts       []
              :auth-names    ["jenkins_auth"]})))

(defn-spec post-job-last-build-stop any?
  "
  Stop a job"
  ([name string?, ] (post-job-last-build-stop name nil))
  ([name string?, optional-params any?]
   (let [res (:data (post-job-last-build-stop-with-http-info name optional-params))]
     (if (:decode-models *api-context*)
        (st/decode any? res st/string-transformer)
        res))))


(defn-spec post-view-config-with-http-info any?
  "
  Update view configuration"
  ([name string?, body string?, ] (post-view-config-with-http-info name body nil))
  ([name string?, body string?, {:keys [Jenkins-Crumb]} (s/map-of keyword? any?)]
   (check-required-params name body)
   (call-api "/view/{name}/config.xml" :post
             {:path-params   {"name" name }
              :header-params {"Jenkins-Crumb" Jenkins-Crumb }
              :query-params  {}
              :form-params   {}
              :body-param    body
              :content-types ["application/json"]
              :accepts       ["*/*"]
              :auth-names    ["jenkins_auth"]})))

(defn-spec post-view-config any?
  "
  Update view configuration"
  ([name string?, body string?, ] (post-view-config name body nil))
  ([name string?, body string?, optional-params any?]
   (let [res (:data (post-view-config-with-http-info name body optional-params))]
     (if (:decode-models *api-context*)
        (st/decode any? res st/string-transformer)
        res))))


