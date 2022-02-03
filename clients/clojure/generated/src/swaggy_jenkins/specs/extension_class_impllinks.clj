(ns swaggy-jenkins.specs.extension-class-impllinks
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [swaggy-jenkins.specs.link :refer :all]
            )
  (:import (java.io File)))


(def extension-class-impllinks-data
  {
   (ds/opt :self) link-spec
   (ds/opt :_class) string?
   })

(def extension-class-impllinks-spec
  (ds/spec
    {:name ::extension-class-impllinks
     :spec extension-class-impllinks-data}))
