(ns swaggy-jenkins.specs.github-repositories
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [swaggy-jenkins.specs.github-repositorieslinks :refer :all]
            [swaggy-jenkins.specs.github-repository :refer :all]
            )
  (:import (java.io File)))


(def github-repositories-data
  {
   (ds/opt :_class) string?
   (ds/opt :_links) github-repositorieslinks-spec
   (ds/opt :items) (s/coll-of github-repository-spec)
   (ds/opt :lastPage) int?
   (ds/opt :nextPage) int?
   (ds/opt :pageSize) int?
   })

(def github-repositories-spec
  (ds/spec
    {:name ::github-repositories
     :spec github-repositories-data}))
