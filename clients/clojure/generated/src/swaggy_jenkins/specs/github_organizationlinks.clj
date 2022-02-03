(ns swaggy-jenkins.specs.github-organizationlinks
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [swaggy-jenkins.specs.link :refer :all]
            [swaggy-jenkins.specs.link :refer :all]
            )
  (:import (java.io File)))


(def github-organizationlinks-data
  {
   (ds/opt :repositories) link-spec
   (ds/opt :self) link-spec
   (ds/opt :_class) string?
   })

(def github-organizationlinks-spec
  (ds/spec
    {:name ::github-organizationlinks
     :spec github-organizationlinks-data}))
