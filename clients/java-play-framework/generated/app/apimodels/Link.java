package apimodels;

import com.fasterxml.jackson.annotation.*;
import java.util.Set;
import javax.validation.*;
import java.util.Objects;
import javax.validation.constraints.*;
import javax.validation.Valid;
/**
 * Link
 */
@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaPlayFrameworkCodegen", date = "2025-04-27T08:09:26.057404893Z[Etc/UTC]", comments = "Generator version: 7.12.0")
@SuppressWarnings({"UnusedReturnValue", "WeakerAccess"})
public class Link   {
  @JsonProperty("_class")
  
  private String propertyClass;

  @JsonProperty("href")
  
  private String href;

  public Link propertyClass(String propertyClass) {
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

  public Link href(String href) {
    this.href = href;
    return this;
  }

   /**
   * Get href
   * @return href
  **/
  public String getHref() {
    return href;
  }

  public void setHref(String href) {
    this.href = href;
  }


  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    Link link = (Link) o;
    return Objects.equals(propertyClass, link.propertyClass) &&
        Objects.equals(href, link.href);
  }

  @Override
  public int hashCode() {
    return Objects.hash(propertyClass, href);
  }

  @SuppressWarnings("StringBufferReplaceableByString")
  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class Link {\n");
    
    sb.append("    propertyClass: ").append(toIndentedString(propertyClass)).append("\n");
    sb.append("    href: ").append(toIndentedString(href)).append("\n");
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
}

