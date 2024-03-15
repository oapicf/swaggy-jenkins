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
import com.github.oapicf.swaggyjenkins.model.Link;
import com.google.gson.TypeAdapter;
import com.google.gson.annotations.JsonAdapter;
import com.google.gson.annotations.SerializedName;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonWriter;
import java.io.IOException;
import java.util.Arrays;

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
 * PipelineImpllinks
 */
@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaClientCodegen", date = "2024-03-15T14:11:15.312613530Z[Etc/UTC]", comments = "Generator version: 7.4.0")
public class PipelineImpllinks {
  public static final String SERIALIZED_NAME_RUNS = "runs";
  @SerializedName(SERIALIZED_NAME_RUNS)
  private Link runs;

  public static final String SERIALIZED_NAME_SELF = "self";
  @SerializedName(SERIALIZED_NAME_SELF)
  private Link self;

  public static final String SERIALIZED_NAME_QUEUE = "queue";
  @SerializedName(SERIALIZED_NAME_QUEUE)
  private Link queue;

  public static final String SERIALIZED_NAME_ACTIONS = "actions";
  @SerializedName(SERIALIZED_NAME_ACTIONS)
  private Link actions;

  public static final String SERIALIZED_NAME_PROPERTY_CLASS = "_class";
  @SerializedName(SERIALIZED_NAME_PROPERTY_CLASS)
  private String propertyClass;

  public PipelineImpllinks() {
  }

  public PipelineImpllinks runs(Link runs) {
    this.runs = runs;
    return this;
  }

   /**
   * Get runs
   * @return runs
  **/
  @javax.annotation.Nullable
  public Link getRuns() {
    return runs;
  }

  public void setRuns(Link runs) {
    this.runs = runs;
  }


  public PipelineImpllinks self(Link self) {
    this.self = self;
    return this;
  }

   /**
   * Get self
   * @return self
  **/
  @javax.annotation.Nullable
  public Link getSelf() {
    return self;
  }

  public void setSelf(Link self) {
    this.self = self;
  }


  public PipelineImpllinks queue(Link queue) {
    this.queue = queue;
    return this;
  }

   /**
   * Get queue
   * @return queue
  **/
  @javax.annotation.Nullable
  public Link getQueue() {
    return queue;
  }

  public void setQueue(Link queue) {
    this.queue = queue;
  }


  public PipelineImpllinks actions(Link actions) {
    this.actions = actions;
    return this;
  }

   /**
   * Get actions
   * @return actions
  **/
  @javax.annotation.Nullable
  public Link getActions() {
    return actions;
  }

  public void setActions(Link actions) {
    this.actions = actions;
  }


  public PipelineImpllinks propertyClass(String propertyClass) {
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



  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    PipelineImpllinks pipelineImpllinks = (PipelineImpllinks) o;
    return Objects.equals(this.runs, pipelineImpllinks.runs) &&
        Objects.equals(this.self, pipelineImpllinks.self) &&
        Objects.equals(this.queue, pipelineImpllinks.queue) &&
        Objects.equals(this.actions, pipelineImpllinks.actions) &&
        Objects.equals(this.propertyClass, pipelineImpllinks.propertyClass);
  }

  @Override
  public int hashCode() {
    return Objects.hash(runs, self, queue, actions, propertyClass);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class PipelineImpllinks {\n");
    sb.append("    runs: ").append(toIndentedString(runs)).append("\n");
    sb.append("    self: ").append(toIndentedString(self)).append("\n");
    sb.append("    queue: ").append(toIndentedString(queue)).append("\n");
    sb.append("    actions: ").append(toIndentedString(actions)).append("\n");
    sb.append("    propertyClass: ").append(toIndentedString(propertyClass)).append("\n");
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
    openapiFields.add("runs");
    openapiFields.add("self");
    openapiFields.add("queue");
    openapiFields.add("actions");
    openapiFields.add("_class");

    // a set of required properties/fields (JSON key names)
    openapiRequiredFields = new HashSet<String>();
  }

 /**
  * Validates the JSON Element and throws an exception if issues found
  *
  * @param jsonElement JSON Element
  * @throws IOException if the JSON Element is invalid with respect to PipelineImpllinks
  */
  public static void validateJsonElement(JsonElement jsonElement) throws IOException {
      if (jsonElement == null) {
        if (!PipelineImpllinks.openapiRequiredFields.isEmpty()) { // has required fields but JSON element is null
          throw new IllegalArgumentException(String.format("The required field(s) %s in PipelineImpllinks is not found in the empty JSON string", PipelineImpllinks.openapiRequiredFields.toString()));
        }
      }

      Set<Map.Entry<String, JsonElement>> entries = jsonElement.getAsJsonObject().entrySet();
      // check to see if the JSON string contains additional fields
      for (Map.Entry<String, JsonElement> entry : entries) {
        if (!PipelineImpllinks.openapiFields.contains(entry.getKey())) {
          throw new IllegalArgumentException(String.format("The field `%s` in the JSON string is not defined in the `PipelineImpllinks` properties. JSON: %s", entry.getKey(), jsonElement.toString()));
        }
      }
        JsonObject jsonObj = jsonElement.getAsJsonObject();
      // validate the optional field `runs`
      if (jsonObj.get("runs") != null && !jsonObj.get("runs").isJsonNull()) {
        Link.validateJsonElement(jsonObj.get("runs"));
      }
      // validate the optional field `self`
      if (jsonObj.get("self") != null && !jsonObj.get("self").isJsonNull()) {
        Link.validateJsonElement(jsonObj.get("self"));
      }
      // validate the optional field `queue`
      if (jsonObj.get("queue") != null && !jsonObj.get("queue").isJsonNull()) {
        Link.validateJsonElement(jsonObj.get("queue"));
      }
      // validate the optional field `actions`
      if (jsonObj.get("actions") != null && !jsonObj.get("actions").isJsonNull()) {
        Link.validateJsonElement(jsonObj.get("actions"));
      }
      if ((jsonObj.get("_class") != null && !jsonObj.get("_class").isJsonNull()) && !jsonObj.get("_class").isJsonPrimitive()) {
        throw new IllegalArgumentException(String.format("Expected the field `_class` to be a primitive type in the JSON string but got `%s`", jsonObj.get("_class").toString()));
      }
  }

  public static class CustomTypeAdapterFactory implements TypeAdapterFactory {
    @SuppressWarnings("unchecked")
    @Override
    public <T> TypeAdapter<T> create(Gson gson, TypeToken<T> type) {
       if (!PipelineImpllinks.class.isAssignableFrom(type.getRawType())) {
         return null; // this class only serializes 'PipelineImpllinks' and its subtypes
       }
       final TypeAdapter<JsonElement> elementAdapter = gson.getAdapter(JsonElement.class);
       final TypeAdapter<PipelineImpllinks> thisAdapter
                        = gson.getDelegateAdapter(this, TypeToken.get(PipelineImpllinks.class));

       return (TypeAdapter<T>) new TypeAdapter<PipelineImpllinks>() {
           @Override
           public void write(JsonWriter out, PipelineImpllinks value) throws IOException {
             JsonObject obj = thisAdapter.toJsonTree(value).getAsJsonObject();
             elementAdapter.write(out, obj);
           }

           @Override
           public PipelineImpllinks read(JsonReader in) throws IOException {
             JsonElement jsonElement = elementAdapter.read(in);
             validateJsonElement(jsonElement);
             return thisAdapter.fromJsonTree(jsonElement);
           }

       }.nullSafe();
    }
  }

 /**
  * Create an instance of PipelineImpllinks given an JSON string
  *
  * @param jsonString JSON string
  * @return An instance of PipelineImpllinks
  * @throws IOException if the JSON string is invalid with respect to PipelineImpllinks
  */
  public static PipelineImpllinks fromJson(String jsonString) throws IOException {
    return JSON.getGson().fromJson(jsonString, PipelineImpllinks.class);
  }

 /**
  * Convert an instance of PipelineImpllinks to an JSON string
  *
  * @return JSON string
  */
  public String toJson() {
    return JSON.getGson().toJson(this);
  }
}

