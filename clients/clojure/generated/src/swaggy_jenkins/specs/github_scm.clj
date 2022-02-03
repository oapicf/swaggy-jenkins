(ns swaggy-jenkins.specs.github-scm
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [swaggy-jenkins.specs.github-scmlinks :refer :all]
            )
  (:import (java.io File)))


(def github-scm-data
  {
   (ds/opt :_class) string?
   (ds/opt :_links) github-scmlinks-spec
   (ds/opt :credentialId) string?
   (ds/opt :id) string?
   (ds/opt :uri) string?
   })

(def github-scm-spec
  (ds/spec
    {:name ::github-scm
     :spec github-scm-data}))
