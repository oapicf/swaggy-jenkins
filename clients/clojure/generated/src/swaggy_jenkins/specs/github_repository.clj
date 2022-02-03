(ns swaggy-jenkins.specs.github-repository
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [swaggy-jenkins.specs.github-repositorylinks :refer :all]
            [swaggy-jenkins.specs.github-repositorypermissions :refer :all]
            )
  (:import (java.io File)))


(def github-repository-data
  {
   (ds/opt :_class) string?
   (ds/opt :_links) github-repositorylinks-spec
   (ds/opt :defaultBranch) string?
   (ds/opt :description) string?
   (ds/opt :name) string?
   (ds/opt :permissions) github-repositorypermissions-spec
   (ds/opt :private) boolean?
   (ds/opt :fullName) string?
   })

(def github-repository-spec
  (ds/spec
    {:name ::github-repository
     :spec github-repository-data}))
