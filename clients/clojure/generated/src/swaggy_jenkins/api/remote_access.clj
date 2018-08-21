(ns swaggy-jenkins.api.remote-access
  (:require [swaggy-jenkins.core :refer [call-api check-required-params with-collection-format]])
  (:import (java.io File)))

(defn get-computer-with-http-info
  "
  Retrieve computer details"
  [depth ]
  (check-required-params depth)
  (call-api "/computer/api/json" :get
            {:path-params   {}
             :header-params {}
             :query-params  {"depth" depth }
             :form-params   {}
             :content-types []
             :accepts       ["application/json"]
             :auth-names    ["jenkins_auth"]}))

(defn get-computer
  "
  Retrieve computer details"
  [depth ]
  (:data (get-computer-with-http-info depth)))

(defn get-crumb-with-http-info
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

(defn get-crumb
  "
  Retrieve CSRF protection token"
  []
  (:data (get-crumb-with-http-info)))

(defn get-jenkins-with-http-info
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

(defn get-jenkins
  "
  Retrieve Jenkins details"
  []
  (:data (get-jenkins-with-http-info)))

(defn get-job-with-http-info
  "
  Retrieve job details"
  [name ]
  (check-required-params name)
  (call-api "/job/{name}/api/json" :get
            {:path-params   {"name" name }
             :header-params {}
             :query-params  {}
             :form-params   {}
             :content-types []
             :accepts       ["application/json"]
             :auth-names    ["jenkins_auth"]}))

(defn get-job
  "
  Retrieve job details"
  [name ]
  (:data (get-job-with-http-info name)))

(defn get-job-config-with-http-info
  "
  Retrieve job configuration"
  [name ]
  (check-required-params name)
  (call-api "/job/{name}/config.xml" :get
            {:path-params   {"name" name }
             :header-params {}
             :query-params  {}
             :form-params   {}
             :content-types []
             :accepts       ["text/xml"]
             :auth-names    ["jenkins_auth"]}))

(defn get-job-config
  "
  Retrieve job configuration"
  [name ]
  (:data (get-job-config-with-http-info name)))

(defn get-job-last-build-with-http-info
  "
  Retrieve job's last build details"
  [name ]
  (check-required-params name)
  (call-api "/job/{name}/lastBuild/api/json" :get
            {:path-params   {"name" name }
             :header-params {}
             :query-params  {}
             :form-params   {}
             :content-types []
             :accepts       ["application/json"]
             :auth-names    ["jenkins_auth"]}))

(defn get-job-last-build
  "
  Retrieve job's last build details"
  [name ]
  (:data (get-job-last-build-with-http-info name)))

(defn get-job-progressive-text-with-http-info
  "
  Retrieve job's build progressive text output"
  [name number start ]
  (check-required-params name number start)
  (call-api "/job/{name}/{number}/logText/progressiveText" :get
            {:path-params   {"name" name "number" number }
             :header-params {}
             :query-params  {"start" start }
             :form-params   {}
             :content-types []
             :accepts       []
             :auth-names    ["jenkins_auth"]}))

(defn get-job-progressive-text
  "
  Retrieve job's build progressive text output"
  [name number start ]
  (:data (get-job-progressive-text-with-http-info name number start)))

(defn get-queue-with-http-info
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

(defn get-queue
  "
  Retrieve queue details"
  []
  (:data (get-queue-with-http-info)))

(defn get-queue-item-with-http-info
  "
  Retrieve queued item details"
  [number ]
  (check-required-params number)
  (call-api "/queue/item/{number}/api/json" :get
            {:path-params   {"number" number }
             :header-params {}
             :query-params  {}
             :form-params   {}
             :content-types []
             :accepts       ["application/json"]
             :auth-names    ["jenkins_auth"]}))

(defn get-queue-item
  "
  Retrieve queued item details"
  [number ]
  (:data (get-queue-item-with-http-info number)))

(defn get-view-with-http-info
  "
  Retrieve view details"
  [name ]
  (check-required-params name)
  (call-api "/view/{name}/api/json" :get
            {:path-params   {"name" name }
             :header-params {}
             :query-params  {}
             :form-params   {}
             :content-types []
             :accepts       ["application/json"]
             :auth-names    ["jenkins_auth"]}))

(defn get-view
  "
  Retrieve view details"
  [name ]
  (:data (get-view-with-http-info name)))

(defn get-view-config-with-http-info
  "
  Retrieve view configuration"
  [name ]
  (check-required-params name)
  (call-api "/view/{name}/config.xml" :get
            {:path-params   {"name" name }
             :header-params {}
             :query-params  {}
             :form-params   {}
             :content-types []
             :accepts       ["text/xml"]
             :auth-names    ["jenkins_auth"]}))

(defn get-view-config
  "
  Retrieve view configuration"
  [name ]
  (:data (get-view-config-with-http-info name)))

(defn head-jenkins-with-http-info
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

(defn head-jenkins
  "
  Retrieve Jenkins headers"
  []
  (:data (head-jenkins-with-http-info)))

(defn post-create-item-with-http-info
  "
  Create a new job using job configuration, or copied from an existing job"
  ([name ] (post-create-item-with-http-info name nil))
  ([name {:keys [from mode jenkins-crumb content-type body ]}]
   (check-required-params name)
   (call-api "/createItem" :post
             {:path-params   {}
              :header-params {"Jenkins-Crumb" jenkins-crumb "Content-Type" content-type }
              :query-params  {"name" name "from" from "mode" mode }
              :form-params   {}
              :body-param    body
              :content-types ["application/json"]
              :accepts       ["*/*"]
              :auth-names    ["jenkins_auth"]})))

(defn post-create-item
  "
  Create a new job using job configuration, or copied from an existing job"
  ([name ] (post-create-item name nil))
  ([name optional-params]
   (:data (post-create-item-with-http-info name optional-params))))

(defn post-create-view-with-http-info
  "
  Create a new view using view configuration"
  ([name ] (post-create-view-with-http-info name nil))
  ([name {:keys [jenkins-crumb content-type body ]}]
   (check-required-params name)
   (call-api "/createView" :post
             {:path-params   {}
              :header-params {"Jenkins-Crumb" jenkins-crumb "Content-Type" content-type }
              :query-params  {"name" name }
              :form-params   {}
              :body-param    body
              :content-types ["application/json"]
              :accepts       ["*/*"]
              :auth-names    ["jenkins_auth"]})))

(defn post-create-view
  "
  Create a new view using view configuration"
  ([name ] (post-create-view name nil))
  ([name optional-params]
   (:data (post-create-view-with-http-info name optional-params))))

(defn post-job-build-with-http-info
  "
  Build a job"
  ([name json ] (post-job-build-with-http-info name json nil))
  ([name json {:keys [token jenkins-crumb ]}]
   (check-required-params name json)
   (call-api "/job/{name}/build" :post
             {:path-params   {"name" name }
              :header-params {"Jenkins-Crumb" jenkins-crumb }
              :query-params  {"json" json "token" token }
              :form-params   {}
              :content-types []
              :accepts       []
              :auth-names    ["jenkins_auth"]})))

(defn post-job-build
  "
  Build a job"
  ([name json ] (post-job-build name json nil))
  ([name json optional-params]
   (:data (post-job-build-with-http-info name json optional-params))))

(defn post-job-config-with-http-info
  "
  Update job configuration"
  ([name body ] (post-job-config-with-http-info name body nil))
  ([name body {:keys [jenkins-crumb ]}]
   (check-required-params name body)
   (call-api "/job/{name}/config.xml" :post
             {:path-params   {"name" name }
              :header-params {"Jenkins-Crumb" jenkins-crumb }
              :query-params  {}
              :form-params   {}
              :body-param    body
              :content-types ["application/json"]
              :accepts       ["*/*"]
              :auth-names    ["jenkins_auth"]})))

(defn post-job-config
  "
  Update job configuration"
  ([name body ] (post-job-config name body nil))
  ([name body optional-params]
   (:data (post-job-config-with-http-info name body optional-params))))

(defn post-job-delete-with-http-info
  "
  Delete a job"
  ([name ] (post-job-delete-with-http-info name nil))
  ([name {:keys [jenkins-crumb ]}]
   (check-required-params name)
   (call-api "/job/{name}/doDelete" :post
             {:path-params   {"name" name }
              :header-params {"Jenkins-Crumb" jenkins-crumb }
              :query-params  {}
              :form-params   {}
              :content-types []
              :accepts       []
              :auth-names    ["jenkins_auth"]})))

(defn post-job-delete
  "
  Delete a job"
  ([name ] (post-job-delete name nil))
  ([name optional-params]
   (:data (post-job-delete-with-http-info name optional-params))))

(defn post-job-disable-with-http-info
  "
  Disable a job"
  ([name ] (post-job-disable-with-http-info name nil))
  ([name {:keys [jenkins-crumb ]}]
   (check-required-params name)
   (call-api "/job/{name}/disable" :post
             {:path-params   {"name" name }
              :header-params {"Jenkins-Crumb" jenkins-crumb }
              :query-params  {}
              :form-params   {}
              :content-types []
              :accepts       []
              :auth-names    ["jenkins_auth"]})))

(defn post-job-disable
  "
  Disable a job"
  ([name ] (post-job-disable name nil))
  ([name optional-params]
   (:data (post-job-disable-with-http-info name optional-params))))

(defn post-job-enable-with-http-info
  "
  Enable a job"
  ([name ] (post-job-enable-with-http-info name nil))
  ([name {:keys [jenkins-crumb ]}]
   (check-required-params name)
   (call-api "/job/{name}/enable" :post
             {:path-params   {"name" name }
              :header-params {"Jenkins-Crumb" jenkins-crumb }
              :query-params  {}
              :form-params   {}
              :content-types []
              :accepts       []
              :auth-names    ["jenkins_auth"]})))

(defn post-job-enable
  "
  Enable a job"
  ([name ] (post-job-enable name nil))
  ([name optional-params]
   (:data (post-job-enable-with-http-info name optional-params))))

(defn post-job-last-build-stop-with-http-info
  "
  Stop a job"
  ([name ] (post-job-last-build-stop-with-http-info name nil))
  ([name {:keys [jenkins-crumb ]}]
   (check-required-params name)
   (call-api "/job/{name}/lastBuild/stop" :post
             {:path-params   {"name" name }
              :header-params {"Jenkins-Crumb" jenkins-crumb }
              :query-params  {}
              :form-params   {}
              :content-types []
              :accepts       []
              :auth-names    ["jenkins_auth"]})))

(defn post-job-last-build-stop
  "
  Stop a job"
  ([name ] (post-job-last-build-stop name nil))
  ([name optional-params]
   (:data (post-job-last-build-stop-with-http-info name optional-params))))

(defn post-view-config-with-http-info
  "
  Update view configuration"
  ([name body ] (post-view-config-with-http-info name body nil))
  ([name body {:keys [jenkins-crumb ]}]
   (check-required-params name body)
   (call-api "/view/{name}/config.xml" :post
             {:path-params   {"name" name }
              :header-params {"Jenkins-Crumb" jenkins-crumb }
              :query-params  {}
              :form-params   {}
              :body-param    body
              :content-types ["application/json"]
              :accepts       ["*/*"]
              :auth-names    ["jenkins_auth"]})))

(defn post-view-config
  "
  Update view configuration"
  ([name body ] (post-view-config name body nil))
  ([name body optional-params]
   (:data (post-view-config-with-http-info name body optional-params))))

