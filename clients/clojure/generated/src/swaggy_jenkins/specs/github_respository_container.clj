(ns swaggy-jenkins.specs.github-respository-container
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [swaggy-jenkins.specs.github-respository-containerlinks :refer :all]
            [swaggy-jenkins.specs.github-repositories :refer :all]
            )
  (:import (java.io File)))


(def github-respository-container-data
  {
   (ds/opt :_class) string?
   (ds/opt :_links) github-respository-containerlinks-spec
   (ds/opt :repositories) github-repositories-spec
   })

(def github-respository-container-spec
  (ds/spec
    {:name ::github-respository-container
     :spec github-respository-container-data}))
