package apimodels;

import com.fasterxml.jackson.annotation.*;
import java.util.Set;
import javax.validation.*;
import java.util.Objects;
import javax.validation.constraints.*;
/**
 * PipelineActivityartifacts
 */
@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaPlayFrameworkCodegen", date = "2018-08-21T02:12:05.971Z[GMT]")

@SuppressWarnings({"UnusedReturnValue", "WeakerAccess"})
public class PipelineActivityartifacts   {
  @JsonProperty("name")
  private String name = null;

  @JsonProperty("size")
  private Integer size = null;

  @JsonProperty("url")
  private String url = null;

  @JsonProperty("_class")
  private String propertyClass = null;

  public PipelineActivityartifacts name(String name) {
    this.name = name;
    return this;
  }

   /**
   * Get name
   * @return name
  **/
    public String getName() {
    return name;
  }

  public void setName(String name) {
    this.name = name;
  }

  public PipelineActivityartifacts size(Integer size) {
    this.size = size;
    return this;
  }

   /**
   * Get size
   * @return size
  **/
    public Integer getSize() {
    return size;
  }

  public void setSize(Integer size) {
    this.size = size;
  }

  public PipelineActivityartifacts url(String url) {
    this.url = url;
    return this;
  }

   /**
   * Get url
   * @return url
  **/
    public String getUrl() {
    return url;
  }

  public void setUrl(String url) {
    this.url = url;
  }

  public PipelineActivityartifacts propertyClass(String propertyClass) {
    this.propertyClass = propertyClass;
    return this;
  }

   /**
   * Get propertyClass
   * @return propertyClass
  **/
    public String getPropertyClass() {
    return propertyClass;
  }

  public void setPropertyClass(String propertyClass) {
    this.propertyClass = propertyClass;
  }


  @Override
  public boolean equals(java.lang.Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    PipelineActivityartifacts pipelineActivityartifacts = (PipelineActivityartifacts) o;
    return Objects.equals(name, pipelineActivityartifacts.name) &&
        Objects.equals(size, pipelineActivityartifacts.size) &&
        Objects.equals(url, pipelineActivityartifacts.url) &&
        Objects.equals(propertyClass, pipelineActivityartifacts.propertyClass);
  }

  @Override
  public int hashCode() {
    return Objects.hash(name, size, url, propertyClass);
  }

  @SuppressWarnings("StringBufferReplaceableByString")
  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class PipelineActivityartifacts {\n");
    
    sb.append("    name: ").append(toIndentedString(name)).append("\n");
    sb.append("    size: ").append(toIndentedString(size)).append("\n");
    sb.append("    url: ").append(toIndentedString(url)).append("\n");
    sb.append("    propertyClass: ").append(toIndentedString(propertyClass)).append("\n");
    sb.append("}");
    return sb.toString();
  }

  /**
   * Convert the given object to string with each line indented by 4 spaces
   * (except the first line).
   */
  private String toIndentedString(java.lang.Object o) {
    if (o == null) {
      return "null";
    }
    return o.toString().replace("\n", "\n    ");
  }
}

