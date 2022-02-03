(ns swaggy-jenkins.specs.github-repositorieslinks
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [swaggy-jenkins.specs.link :refer :all]
            )
  (:import (java.io File)))


(def github-repositorieslinks-data
  {
   (ds/opt :self) link-spec
   (ds/opt :_class) string?
   })

(def github-repositorieslinks-spec
  (ds/spec
    {:name ::github-repositorieslinks
     :spec github-repositorieslinks-data}))
