/*
 * Swaggy Jenkins
 * Jenkins API clients generated from Swagger / Open API specification
 *
 * The version of the OpenAPI document: 2.0.1-pre.0
 * Contact: blah+oapicf@cliffano.com
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */


package com.github.oapicf.swaggyjenkins.model;

import java.util.Objects;
import com.github.oapicf.swaggyjenkins.model.AllView;
import com.github.oapicf.swaggyjenkins.model.FreeStyleProject;
import com.github.oapicf.swaggyjenkins.model.HudsonassignedLabels;
import com.github.oapicf.swaggyjenkins.model.UnlabeledLoadStatistics;
import com.google.gson.TypeAdapter;
import com.google.gson.annotations.JsonAdapter;
import com.google.gson.annotations.SerializedName;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonWriter;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.google.gson.JsonArray;
import com.google.gson.JsonDeserializationContext;
import com.google.gson.JsonDeserializer;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.google.gson.JsonParseException;
import com.google.gson.TypeAdapterFactory;
import com.google.gson.reflect.TypeToken;
import com.google.gson.TypeAdapter;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonWriter;
import java.io.IOException;

import java.lang.reflect.Type;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;

import com.github.oapicf.swaggyjenkins.JSON;

/**
 * Hudson
 */
@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaClientCodegen", date = "2024-03-15T14:11:15.312613530Z[Etc/UTC]", comments = "Generator version: 7.4.0")
public class Hudson {
  public static final String SERIALIZED_NAME_PROPERTY_CLASS = "_class";
  @SerializedName(SERIALIZED_NAME_PROPERTY_CLASS)
  private String propertyClass;

  public static final String SERIALIZED_NAME_ASSIGNED_LABELS = "assignedLabels";
  @SerializedName(SERIALIZED_NAME_ASSIGNED_LABELS)
  private List<HudsonassignedLabels> assignedLabels;

  public static final String SERIALIZED_NAME_MODE = "mode";
  @SerializedName(SERIALIZED_NAME_MODE)
  private String mode;

  public static final String SERIALIZED_NAME_NODE_DESCRIPTION = "nodeDescription";
  @SerializedName(SERIALIZED_NAME_NODE_DESCRIPTION)
  private String nodeDescription;

  public static final String SERIALIZED_NAME_NODE_NAME = "nodeName";
  @SerializedName(SERIALIZED_NAME_NODE_NAME)
  private String nodeName;

  public static final String SERIALIZED_NAME_NUM_EXECUTORS = "numExecutors";
  @SerializedName(SERIALIZED_NAME_NUM_EXECUTORS)
  private Integer numExecutors;

  public static final String SERIALIZED_NAME_DESCRIPTION = "description";
  @SerializedName(SERIALIZED_NAME_DESCRIPTION)
  private String description;

  public static final String SERIALIZED_NAME_JOBS = "jobs";
  @SerializedName(SERIALIZED_NAME_JOBS)
  private List<FreeStyleProject> jobs;

  public static final String SERIALIZED_NAME_PRIMARY_VIEW = "primaryView";
  @SerializedName(SERIALIZED_NAME_PRIMARY_VIEW)
  private AllView primaryView;

  public static final String SERIALIZED_NAME_QUIETING_DOWN = "quietingDown";
  @SerializedName(SERIALIZED_NAME_QUIETING_DOWN)
  private Boolean quietingDown;

  public static final String SERIALIZED_NAME_SLAVE_AGENT_PORT = "slaveAgentPort";
  @SerializedName(SERIALIZED_NAME_SLAVE_AGENT_PORT)
  private Integer slaveAgentPort;

  public static final String SERIALIZED_NAME_UNLABELED_LOAD = "unlabeledLoad";
  @SerializedName(SERIALIZED_NAME_UNLABELED_LOAD)
  private UnlabeledLoadStatistics unlabeledLoad;

  public static final String SERIALIZED_NAME_USE_CRUMBS = "useCrumbs";
  @SerializedName(SERIALIZED_NAME_USE_CRUMBS)
  private Boolean useCrumbs;

  public static final String SERIALIZED_NAME_USE_SECURITY = "useSecurity";
  @SerializedName(SERIALIZED_NAME_USE_SECURITY)
  private Boolean useSecurity;

  public static final String SERIALIZED_NAME_VIEWS = "views";
  @SerializedName(SERIALIZED_NAME_VIEWS)
  private List<AllView> views;

  public Hudson() {
  }

  public Hudson propertyClass(String propertyClass) {
    this.propertyClass = propertyClass;
    return this;
  }

   /**
   * Get propertyClass
   * @return propertyClass
  **/
  @javax.annotation.Nullable
  public String getPropertyClass() {
    return propertyClass;
  }

  public void setPropertyClass(String propertyClass) {
    this.propertyClass = propertyClass;
  }


  public Hudson assignedLabels(List<HudsonassignedLabels> assignedLabels) {
    this.assignedLabels = assignedLabels;
    return this;
  }

  public Hudson addAssignedLabelsItem(HudsonassignedLabels assignedLabelsItem) {
    if (this.assignedLabels == null) {
      this.assignedLabels = new ArrayList<>();
    }
    this.assignedLabels.add(assignedLabelsItem);
    return this;
  }

   /**
   * Get assignedLabels
   * @return assignedLabels
  **/
  @javax.annotation.Nullable
  public List<HudsonassignedLabels> getAssignedLabels() {
    return assignedLabels;
  }

  public void setAssignedLabels(List<HudsonassignedLabels> assignedLabels) {
    this.assignedLabels = assignedLabels;
  }


  public Hudson mode(String mode) {
    this.mode = mode;
    return this;
  }

   /**
   * Get mode
   * @return mode
  **/
  @javax.annotation.Nullable
  public String getMode() {
    return mode;
  }

  public void setMode(String mode) {
    this.mode = mode;
  }


  public Hudson nodeDescription(String nodeDescription) {
    this.nodeDescription = nodeDescription;
    return this;
  }

   /**
   * Get nodeDescription
   * @return nodeDescription
  **/
  @javax.annotation.Nullable
  public String getNodeDescription() {
    return nodeDescription;
  }

  public void setNodeDescription(String nodeDescription) {
    this.nodeDescription = nodeDescription;
  }


  public Hudson nodeName(String nodeName) {
    this.nodeName = nodeName;
    return this;
  }

   /**
   * Get nodeName
   * @return nodeName
  **/
  @javax.annotation.Nullable
  public String getNodeName() {
    return nodeName;
  }

  public void setNodeName(String nodeName) {
    this.nodeName = nodeName;
  }


  public Hudson numExecutors(Integer numExecutors) {
    this.numExecutors = numExecutors;
    return this;
  }

   /**
   * Get numExecutors
   * @return numExecutors
  **/
  @javax.annotation.Nullable
  public Integer getNumExecutors() {
    return numExecutors;
  }

  public void setNumExecutors(Integer numExecutors) {
    this.numExecutors = numExecutors;
  }


  public Hudson description(String description) {
    this.description = description;
    return this;
  }

   /**
   * Get description
   * @return description
  **/
  @javax.annotation.Nullable
  public String getDescription() {
    return description;
  }

  public void setDescription(String description) {
    this.description = description;
  }


  public Hudson jobs(List<FreeStyleProject> jobs) {
    this.jobs = jobs;
    return this;
  }

  public Hudson addJobsItem(FreeStyleProject jobsItem) {
    if (this.jobs == null) {
      this.jobs = new ArrayList<>();
    }
    this.jobs.add(jobsItem);
    return this;
  }

   /**
   * Get jobs
   * @return jobs
  **/
  @javax.annotation.Nullable
  public List<FreeStyleProject> getJobs() {
    return jobs;
  }

  public void setJobs(List<FreeStyleProject> jobs) {
    this.jobs = jobs;
  }


  public Hudson primaryView(AllView primaryView) {
    this.primaryView = primaryView;
    return this;
  }

   /**
   * Get primaryView
   * @return primaryView
  **/
  @javax.annotation.Nullable
  public AllView getPrimaryView() {
    return primaryView;
  }

  public void setPrimaryView(AllView primaryView) {
    this.primaryView = primaryView;
  }


  public Hudson quietingDown(Boolean quietingDown) {
    this.quietingDown = quietingDown;
    return this;
  }

   /**
   * Get quietingDown
   * @return quietingDown
  **/
  @javax.annotation.Nullable
  public Boolean getQuietingDown() {
    return quietingDown;
  }

  public void setQuietingDown(Boolean quietingDown) {
    this.quietingDown = quietingDown;
  }


  public Hudson slaveAgentPort(Integer slaveAgentPort) {
    this.slaveAgentPort = slaveAgentPort;
    return this;
  }

   /**
   * Get slaveAgentPort
   * @return slaveAgentPort
  **/
  @javax.annotation.Nullable
  public Integer getSlaveAgentPort() {
    return slaveAgentPort;
  }

  public void setSlaveAgentPort(Integer slaveAgentPort) {
    this.slaveAgentPort = slaveAgentPort;
  }


  public Hudson unlabeledLoad(UnlabeledLoadStatistics unlabeledLoad) {
    this.unlabeledLoad = unlabeledLoad;
    return this;
  }

   /**
   * Get unlabeledLoad
   * @return unlabeledLoad
  **/
  @javax.annotation.Nullable
  public UnlabeledLoadStatistics getUnlabeledLoad() {
    return unlabeledLoad;
  }

  public void setUnlabeledLoad(UnlabeledLoadStatistics unlabeledLoad) {
    this.unlabeledLoad = unlabeledLoad;
  }


  public Hudson useCrumbs(Boolean useCrumbs) {
    this.useCrumbs = useCrumbs;
    return this;
  }

   /**
   * Get useCrumbs
   * @return useCrumbs
  **/
  @javax.annotation.Nullable
  public Boolean getUseCrumbs() {
    return useCrumbs;
  }

  public void setUseCrumbs(Boolean useCrumbs) {
    this.useCrumbs = useCrumbs;
  }


  public Hudson useSecurity(Boolean useSecurity) {
    this.useSecurity = useSecurity;
    return this;
  }

   /**
   * Get useSecurity
   * @return useSecurity
  **/
  @javax.annotation.Nullable
  public Boolean getUseSecurity() {
    return useSecurity;
  }

  public void setUseSecurity(Boolean useSecurity) {
    this.useSecurity = useSecurity;
  }


  public Hudson views(List<AllView> views) {
    this.views = views;
    return this;
  }

  public Hudson addViewsItem(AllView viewsItem) {
    if (this.views == null) {
      this.views = new ArrayList<>();
    }
    this.views.add(viewsItem);
    return this;
  }

   /**
   * Get views
   * @return views
  **/
  @javax.annotation.Nullable
  public List<AllView> getViews() {
    return views;
  }

  public void setViews(List<AllView> views) {
    this.views = views;
  }



  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    Hudson hudson = (Hudson) o;
    return Objects.equals(this.propertyClass, hudson.propertyClass) &&
        Objects.equals(this.assignedLabels, hudson.assignedLabels) &&
        Objects.equals(this.mode, hudson.mode) &&
        Objects.equals(this.nodeDescription, hudson.nodeDescription) &&
        Objects.equals(this.nodeName, hudson.nodeName) &&
        Objects.equals(this.numExecutors, hudson.numExecutors) &&
        Objects.equals(this.description, hudson.description) &&
        Objects.equals(this.jobs, hudson.jobs) &&
        Objects.equals(this.primaryView, hudson.primaryView) &&
        Objects.equals(this.quietingDown, hudson.quietingDown) &&
        Objects.equals(this.slaveAgentPort, hudson.slaveAgentPort) &&
        Objects.equals(this.unlabeledLoad, hudson.unlabeledLoad) &&
        Objects.equals(this.useCrumbs, hudson.useCrumbs) &&
        Objects.equals(this.useSecurity, hudson.useSecurity) &&
        Objects.equals(this.views, hudson.views);
  }

  @Override
  public int hashCode() {
    return Objects.hash(propertyClass, assignedLabels, mode, nodeDescription, nodeName, numExecutors, description, jobs, primaryView, quietingDown, slaveAgentPort, unlabeledLoad, useCrumbs, useSecurity, views);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class Hudson {\n");
    sb.append("    propertyClass: ").append(toIndentedString(propertyClass)).append("\n");
    sb.append("    assignedLabels: ").append(toIndentedString(assignedLabels)).append("\n");
    sb.append("    mode: ").append(toIndentedString(mode)).append("\n");
    sb.append("    nodeDescription: ").append(toIndentedString(nodeDescription)).append("\n");
    sb.append("    nodeName: ").append(toIndentedString(nodeName)).append("\n");
    sb.append("    numExecutors: ").append(toIndentedString(numExecutors)).append("\n");
    sb.append("    description: ").append(toIndentedString(description)).append("\n");
    sb.append("    jobs: ").append(toIndentedString(jobs)).append("\n");
    sb.append("    primaryView: ").append(toIndentedString(primaryView)).append("\n");
    sb.append("    quietingDown: ").append(toIndentedString(quietingDown)).append("\n");
    sb.append("    slaveAgentPort: ").append(toIndentedString(slaveAgentPort)).append("\n");
    sb.append("    unlabeledLoad: ").append(toIndentedString(unlabeledLoad)).append("\n");
    sb.append("    useCrumbs: ").append(toIndentedString(useCrumbs)).append("\n");
    sb.append("    useSecurity: ").append(toIndentedString(useSecurity)).append("\n");
    sb.append("    views: ").append(toIndentedString(views)).append("\n");
    sb.append("}");
    return sb.toString();
  }

  /**
   * Convert the given object to string with each line indented by 4 spaces
   * (except the first line).
   */
  private String toIndentedString(Object o) {
    if (o == null) {
      return "null";
    }
    return o.toString().replace("\n", "\n    ");
  }


  public static HashSet<String> openapiFields;
  public static HashSet<String> openapiRequiredFields;

  static {
    // a set of all properties/fields (JSON key names)
    openapiFields = new HashSet<String>();
    openapiFields.add("_class");
    openapiFields.add("assignedLabels");
    openapiFields.add("mode");
    openapiFields.add("nodeDescription");
    openapiFields.add("nodeName");
    openapiFields.add("numExecutors");
    openapiFields.add("description");
    openapiFields.add("jobs");
    openapiFields.add("primaryView");
    openapiFields.add("quietingDown");
    openapiFields.add("slaveAgentPort");
    openapiFields.add("unlabeledLoad");
    openapiFields.add("useCrumbs");
    openapiFields.add("useSecurity");
    openapiFields.add("views");

    // a set of required properties/fields (JSON key names)
    openapiRequiredFields = new HashSet<String>();
  }

 /**
  * Validates the JSON Element and throws an exception if issues found
  *
  * @param jsonElement JSON Element
  * @throws IOException if the JSON Element is invalid with respect to Hudson
  */
  public static void validateJsonElement(JsonElement jsonElement) throws IOException {
      if (jsonElement == null) {
        if (!Hudson.openapiRequiredFields.isEmpty()) { // has required fields but JSON element is null
          throw new IllegalArgumentException(String.format("The required field(s) %s in Hudson is not found in the empty JSON string", Hudson.openapiRequiredFields.toString()));
        }
      }

      Set<Map.Entry<String, JsonElement>> entries = jsonElement.getAsJsonObject().entrySet();
      // check to see if the JSON string contains additional fields
      for (Map.Entry<String, JsonElement> entry : entries) {
        if (!Hudson.openapiFields.contains(entry.getKey())) {
          throw new IllegalArgumentException(String.format("The field `%s` in the JSON string is not defined in the `Hudson` properties. JSON: %s", entry.getKey(), jsonElement.toString()));
        }
      }
        JsonObject jsonObj = jsonElement.getAsJsonObject();
      if ((jsonObj.get("_class") != null && !jsonObj.get("_class").isJsonNull()) && !jsonObj.get("_class").isJsonPrimitive()) {
        throw new IllegalArgumentException(String.format("Expected the field `_class` to be a primitive type in the JSON string but got `%s`", jsonObj.get("_class").toString()));
      }
      if (jsonObj.get("assignedLabels") != null && !jsonObj.get("assignedLabels").isJsonNull()) {
        JsonArray jsonArrayassignedLabels = jsonObj.getAsJsonArray("assignedLabels");
        if (jsonArrayassignedLabels != null) {
          // ensure the json data is an array
          if (!jsonObj.get("assignedLabels").isJsonArray()) {
            throw new IllegalArgumentException(String.format("Expected the field `assignedLabels` to be an array in the JSON string but got `%s`", jsonObj.get("assignedLabels").toString()));
          }

          // validate the optional field `assignedLabels` (array)
          for (int i = 0; i < jsonArrayassignedLabels.size(); i++) {
            HudsonassignedLabels.validateJsonElement(jsonArrayassignedLabels.get(i));
          };
        }
      }
      if ((jsonObj.get("mode") != null && !jsonObj.get("mode").isJsonNull()) && !jsonObj.get("mode").isJsonPrimitive()) {
        throw new IllegalArgumentException(String.format("Expected the field `mode` to be a primitive type in the JSON string but got `%s`", jsonObj.get("mode").toString()));
      }
      if ((jsonObj.get("nodeDescription") != null && !jsonObj.get("nodeDescription").isJsonNull()) && !jsonObj.get("nodeDescription").isJsonPrimitive()) {
        throw new IllegalArgumentException(String.format("Expected the field `nodeDescription` to be a primitive type in the JSON string but got `%s`", jsonObj.get("nodeDescription").toString()));
      }
      if ((jsonObj.get("nodeName") != null && !jsonObj.get("nodeName").isJsonNull()) && !jsonObj.get("nodeName").isJsonPrimitive()) {
        throw new IllegalArgumentException(String.format("Expected the field `nodeName` to be a primitive type in the JSON string but got `%s`", jsonObj.get("nodeName").toString()));
      }
      if ((jsonObj.get("description") != null && !jsonObj.get("description").isJsonNull()) && !jsonObj.get("description").isJsonPrimitive()) {
        throw new IllegalArgumentException(String.format("Expected the field `description` to be a primitive type in the JSON string but got `%s`", jsonObj.get("description").toString()));
      }
      if (jsonObj.get("jobs") != null && !jsonObj.get("jobs").isJsonNull()) {
        JsonArray jsonArrayjobs = jsonObj.getAsJsonArray("jobs");
        if (jsonArrayjobs != null) {
          // ensure the json data is an array
          if (!jsonObj.get("jobs").isJsonArray()) {
            throw new IllegalArgumentException(String.format("Expected the field `jobs` to be an array in the JSON string but got `%s`", jsonObj.get("jobs").toString()));
          }

          // validate the optional field `jobs` (array)
          for (int i = 0; i < jsonArrayjobs.size(); i++) {
            FreeStyleProject.validateJsonElement(jsonArrayjobs.get(i));
          };
        }
      }
      // validate the optional field `primaryView`
      if (jsonObj.get("primaryView") != null && !jsonObj.get("primaryView").isJsonNull()) {
        AllView.validateJsonElement(jsonObj.get("primaryView"));
      }
      // validate the optional field `unlabeledLoad`
      if (jsonObj.get("unlabeledLoad") != null && !jsonObj.get("unlabeledLoad").isJsonNull()) {
        UnlabeledLoadStatistics.validateJsonElement(jsonObj.get("unlabeledLoad"));
      }
      if (jsonObj.get("views") != null && !jsonObj.get("views").isJsonNull()) {
        JsonArray jsonArrayviews = jsonObj.getAsJsonArray("views");
        if (jsonArrayviews != null) {
          // ensure the json data is an array
          if (!jsonObj.get("views").isJsonArray()) {
            throw new IllegalArgumentException(String.format("Expected the field `views` to be an array in the JSON string but got `%s`", jsonObj.get("views").toString()));
          }

          // validate the optional field `views` (array)
          for (int i = 0; i < jsonArrayviews.size(); i++) {
            AllView.validateJsonElement(jsonArrayviews.get(i));
          };
        }
      }
  }

  public static class CustomTypeAdapterFactory implements TypeAdapterFactory {
    @SuppressWarnings("unchecked")
    @Override
    public <T> TypeAdapter<T> create(Gson gson, TypeToken<T> type) {
       if (!Hudson.class.isAssignableFrom(type.getRawType())) {
         return null; // this class only serializes 'Hudson' and its subtypes
       }
       final TypeAdapter<JsonElement> elementAdapter = gson.getAdapter(JsonElement.class);
       final TypeAdapter<Hudson> thisAdapter
                        = gson.getDelegateAdapter(this, TypeToken.get(Hudson.class));

       return (TypeAdapter<T>) new TypeAdapter<Hudson>() {
           @Override
           public void write(JsonWriter out, Hudson value) throws IOException {
             JsonObject obj = thisAdapter.toJsonTree(value).getAsJsonObject();
             elementAdapter.write(out, obj);
           }

           @Override
           public Hudson read(JsonReader in) throws IOException {
             JsonElement jsonElement = elementAdapter.read(in);
             validateJsonElement(jsonElement);
             return thisAdapter.fromJsonTree(jsonElement);
           }

       }.nullSafe();
    }
  }

 /**
  * Create an instance of Hudson given an JSON string
  *
  * @param jsonString JSON string
  * @return An instance of Hudson
  * @throws IOException if the JSON string is invalid with respect to Hudson
  */
  public static Hudson fromJson(String jsonString) throws IOException {
    return JSON.getGson().fromJson(jsonString, Hudson.class);
  }

 /**
  * Convert an instance of Hudson to an JSON string
  *
  * @return JSON string
  */
  public String toJson() {
    return JSON.getGson().toJson(this);
  }
}

