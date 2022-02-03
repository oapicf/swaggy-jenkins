(ns swaggy-jenkins.specs.github-respository-containerlinks
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [swaggy-jenkins.specs.link :refer :all]
            )
  (:import (java.io File)))


(def github-respository-containerlinks-data
  {
   (ds/opt :self) link-spec
   (ds/opt :_class) string?
   })

(def github-respository-containerlinks-spec
  (ds/spec
    {:name ::github-respository-containerlinks
     :spec github-respository-containerlinks-data}))
