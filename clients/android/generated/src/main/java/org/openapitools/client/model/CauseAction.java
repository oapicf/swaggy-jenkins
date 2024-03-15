/**
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

package org.openapitools.client.model;

import java.util.*;
import org.openapitools.client.model.CauseUserIdCause;
import io.swagger.annotations.*;
import com.google.gson.annotations.SerializedName;

@ApiModel(description = "")
public class CauseAction {
  
  @SerializedName("_class")
  private String _class = null;
  @SerializedName("causes")
  private List<CauseUserIdCause> causes = null;

  /**
   **/
  @ApiModelProperty(value = "")
  public String getClass() {
    return _class;
  }
  public void setClass(String _class) {
    this._class = _class;
  }

  /**
   **/
  @ApiModelProperty(value = "")
  public List<CauseUserIdCause> getCauses() {
    return causes;
  }
  public void setCauses(List<CauseUserIdCause> causes) {
    this.causes = causes;
  }


  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    CauseAction causeAction = (CauseAction) o;
    return (this._class == null ? causeAction._class == null : this._class.equals(causeAction._class)) &&
        (this.causes == null ? causeAction.causes == null : this.causes.equals(causeAction.causes));
  }

  @Override
  public int hashCode() {
    int result = 17;
    result = 31 * result + (this._class == null ? 0: this._class.hashCode());
    result = 31 * result + (this.causes == null ? 0: this.causes.hashCode());
    return result;
  }

  @Override
  public String toString()  {
    StringBuilder sb = new StringBuilder();
    sb.append("class CauseAction {\n");
    
    sb.append("  _class: ").append(_class).append("\n");
    sb.append("  causes: ").append(causes).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}
