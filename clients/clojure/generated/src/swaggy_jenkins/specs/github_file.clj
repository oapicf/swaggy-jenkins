(ns swaggy-jenkins.specs.github-file
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [swaggy-jenkins.specs.github-content :refer :all]
            )
  (:import (java.io File)))


(def github-file-data
  {
   (ds/opt :content) github-content-spec
   (ds/opt :_class) string?
   })

(def github-file-spec
  (ds/spec
    {:name ::github-file
     :spec github-file-data}))
