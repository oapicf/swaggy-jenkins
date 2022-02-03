(ns swaggy-jenkins.specs.github-repositorylinks
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [swaggy-jenkins.specs.link :refer :all]
            )
  (:import (java.io File)))


(def github-repositorylinks-data
  {
   (ds/opt :self) link-spec
   (ds/opt :_class) string?
   })

(def github-repositorylinks-spec
  (ds/spec
    {:name ::github-repositorylinks
     :spec github-repositorylinks-data}))
