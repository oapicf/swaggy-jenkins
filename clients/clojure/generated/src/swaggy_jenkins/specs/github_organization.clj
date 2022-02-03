(ns swaggy-jenkins.specs.github-organization
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [swaggy-jenkins.specs.github-organizationlinks :refer :all]
            )
  (:import (java.io File)))


(def github-organization-data
  {
   (ds/opt :_class) string?
   (ds/opt :_links) github-organizationlinks-spec
   (ds/opt :jenkinsOrganizationPipeline) boolean?
   (ds/opt :name) string?
   })

(def github-organization-spec
  (ds/spec
    {:name ::github-organization
     :spec github-organization-data}))
