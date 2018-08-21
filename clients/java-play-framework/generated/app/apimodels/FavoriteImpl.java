package apimodels;

import apimodels.FavoriteImpllinks;
import apimodels.PipelineImpl;
import com.fasterxml.jackson.annotation.*;
import java.util.Set;
import javax.validation.*;
import java.util.Objects;
import javax.validation.constraints.*;
/**
 * FavoriteImpl
 */
@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaPlayFrameworkCodegen", date = "2018-08-21T02:12:05.971Z[GMT]")

@SuppressWarnings({"UnusedReturnValue", "WeakerAccess"})
public class FavoriteImpl   {
  @JsonProperty("_class")
  private String propertyClass = null;

  @JsonProperty("_links")
  private FavoriteImpllinks links = null;

  @JsonProperty("item")
  private PipelineImpl item = null;

  public FavoriteImpl propertyClass(String propertyClass) {
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

  public FavoriteImpl links(FavoriteImpllinks links) {
    this.links = links;
    return this;
  }

   /**
   * Get links
   * @return links
  **/
  @Valid
  public FavoriteImpllinks getLinks() {
    return links;
  }

  public void setLinks(FavoriteImpllinks links) {
    this.links = links;
  }

  public FavoriteImpl item(PipelineImpl item) {
    this.item = item;
    return this;
  }

   /**
   * Get item
   * @return item
  **/
  @Valid
  public PipelineImpl getItem() {
    return item;
  }

  public void setItem(PipelineImpl item) {
    this.item = item;
  }


  @Override
  public boolean equals(java.lang.Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    FavoriteImpl favoriteImpl = (FavoriteImpl) o;
    return Objects.equals(propertyClass, favoriteImpl.propertyClass) &&
        Objects.equals(links, favoriteImpl.links) &&
        Objects.equals(item, favoriteImpl.item);
  }

  @Override
  public int hashCode() {
    return Objects.hash(propertyClass, links, item);
  }

  @SuppressWarnings("StringBufferReplaceableByString")
  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class FavoriteImpl {\n");
    
    sb.append("    propertyClass: ").append(toIndentedString(propertyClass)).append("\n");
    sb.append("    links: ").append(toIndentedString(links)).append("\n");
    sb.append("    item: ").append(toIndentedString(item)).append("\n");
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

