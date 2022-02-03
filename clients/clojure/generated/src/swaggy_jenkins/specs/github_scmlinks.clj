(ns swaggy-jenkins.specs.github-scmlinks
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [swaggy-jenkins.specs.link :refer :all]
            )
  (:import (java.io File)))


(def github-scmlinks-data
  {
   (ds/opt :self) link-spec
   (ds/opt :_class) string?
   })

(def github-scmlinks-spec
  (ds/spec
    {:name ::github-scmlinks
     :spec github-scmlinks-data}))
