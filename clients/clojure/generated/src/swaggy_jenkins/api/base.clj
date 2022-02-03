(ns swaggy-jenkins.api.base
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


(defn-spec get-crumb-with-http-info any?
  "
  Retrieve CSRF protection token"
  []
  (call-api "/crumbIssuer/api/json" :get
            {:path-params   {}
             :header-params {}
             :query-params  {}
             :form-params   {}
             :content-types []
             :accepts       ["application/json"]
             :auth-names    ["jenkins_auth"]}))

(defn-spec get-crumb default-crumb-issuer-spec
  "
  Retrieve CSRF protection token"
  []
  (let [res (:data (get-crumb-with-http-info))]
    (if (:decode-models *api-context*)
       (st/decode default-crumb-issuer-spec res st/string-transformer)
       res)))


