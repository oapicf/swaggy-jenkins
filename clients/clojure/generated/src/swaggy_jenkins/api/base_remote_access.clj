(ns swaggy-jenkins.api.base-remote-access
  (:require [swaggy-jenkins.core :refer [call-api check-required-params with-collection-format]])
  (:import (java.io File)))

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

