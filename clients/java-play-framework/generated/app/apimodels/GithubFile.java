package apimodels;

import apimodels.GithubContent;
import com.fasterxml.jackson.annotation.*;
import java.util.Set;
import javax.validation.*;
import java.util.Objects;
import javax.validation.constraints.*;
/**
 * GithubFile
 */
@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaPlayFrameworkCodegen", date = "2019-04-10T13:18:27.094Z[GMT]")

@SuppressWarnings({"UnusedReturnValue", "WeakerAccess"})
public class GithubFile   {
  @JsonProperty("content")
  private GithubContent content = null;

  @JsonProperty("_class")
  private String propertyClass = null;

  public GithubFile content(GithubContent content) {
    this.content = content;
    return this;
  }

   /**
   * Get content
   * @return content
  **/
  @Valid
  public GithubContent getContent() {
    return content;
  }

  public void setContent(GithubContent content) {
    this.content = content;
  }

  public GithubFile propertyClass(String propertyClass) {
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
    GithubFile githubFile = (GithubFile) o;
    return Objects.equals(content, githubFile.content) &&
        Objects.equals(propertyClass, githubFile.propertyClass);
  }

  @Override
  public int hashCode() {
    return Objects.hash(content, propertyClass);
  }

  @SuppressWarnings("StringBufferReplaceableByString")
  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class GithubFile {\n");
    
    sb.append("    content: ").append(toIndentedString(content)).append("\n");
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

