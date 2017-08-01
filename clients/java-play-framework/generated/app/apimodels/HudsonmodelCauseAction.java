package apimodels;

import java.util.Objects;
import apimodels.HudsonmodelCauseUserIdCause;
import java.util.ArrayList;
import java.util.List;
import javax.validation.constraints.*;
import com.fasterxml.jackson.annotation.*;
/**
 * HudsonmodelCauseAction
 */
@javax.annotation.Generated(value = "io.swagger.codegen.languages.JavaPlayFrameworkCodegen", date = "2017-07-25T10:44:57.391+10:00")

public class HudsonmodelCauseAction   {
  @JsonProperty("_class")
  private String propertyClass = null;

  @JsonProperty("causes")
  private List<HudsonmodelCauseUserIdCause> causes = null;

  public HudsonmodelCauseAction propertyClass(String propertyClass) {
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

  public HudsonmodelCauseAction causes(List<HudsonmodelCauseUserIdCause> causes) {
    this.causes = causes;
    return this;
  }

  public HudsonmodelCauseAction addCausesItem(HudsonmodelCauseUserIdCause causesItem) {
    if (this.causes == null) {
      this.causes = new ArrayList<HudsonmodelCauseUserIdCause>();
    }
    this.causes.add(causesItem);
    return this;
  }

   /**
   * Get causes
   * @return causes
  **/
    public List<HudsonmodelCauseUserIdCause> getCauses() {
    return causes;
  }

  public void setCauses(List<HudsonmodelCauseUserIdCause> causes) {
    this.causes = causes;
  }


  @Override
  public boolean equals(java.lang.Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    HudsonmodelCauseAction hudsonmodelCauseAction = (HudsonmodelCauseAction) o;
    return Objects.equals(this.propertyClass, hudsonmodelCauseAction.propertyClass) &&
        Objects.equals(this.causes, hudsonmodelCauseAction.causes);
  }

  @Override
  public int hashCode() {
    return Objects.hash(propertyClass, causes);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class HudsonmodelCauseAction {\n");
    
    sb.append("    propertyClass: ").append(toIndentedString(propertyClass)).append("\n");
    sb.append("    causes: ").append(toIndentedString(causes)).append("\n");
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

