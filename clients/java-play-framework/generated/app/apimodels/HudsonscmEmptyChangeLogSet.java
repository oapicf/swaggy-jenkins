package apimodels;

import java.util.Objects;
import javax.validation.constraints.*;
import com.fasterxml.jackson.annotation.*;
/**
 * HudsonscmEmptyChangeLogSet
 */
@javax.annotation.Generated(value = "io.swagger.codegen.languages.JavaPlayFrameworkCodegen", date = "2017-07-25T10:44:57.391+10:00")

public class HudsonscmEmptyChangeLogSet   {
  @JsonProperty("_class")
  private String propertyClass = null;

  @JsonProperty("kind")
  private String kind = null;

  public HudsonscmEmptyChangeLogSet propertyClass(String propertyClass) {
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

  public HudsonscmEmptyChangeLogSet kind(String kind) {
    this.kind = kind;
    return this;
  }

   /**
   * Get kind
   * @return kind
  **/
    public String getKind() {
    return kind;
  }

  public void setKind(String kind) {
    this.kind = kind;
  }


  @Override
  public boolean equals(java.lang.Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    HudsonscmEmptyChangeLogSet hudsonscmEmptyChangeLogSet = (HudsonscmEmptyChangeLogSet) o;
    return Objects.equals(this.propertyClass, hudsonscmEmptyChangeLogSet.propertyClass) &&
        Objects.equals(this.kind, hudsonscmEmptyChangeLogSet.kind);
  }

  @Override
  public int hashCode() {
    return Objects.hash(propertyClass, kind);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class HudsonscmEmptyChangeLogSet {\n");
    
    sb.append("    propertyClass: ").append(toIndentedString(propertyClass)).append("\n");
    sb.append("    kind: ").append(toIndentedString(kind)).append("\n");
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

