package apimodels;

import java.util.Objects;
import javax.validation.constraints.*;
import com.fasterxml.jackson.annotation.*;
/**
 * GetPipelineBranchesitemPullRequestLinks
 */
@javax.annotation.Generated(value = "io.swagger.codegen.languages.JavaPlayFrameworkCodegen", date = "2017-07-25T10:44:57.391+10:00")

public class GetPipelineBranchesitemPullRequestLinks   {
  @JsonProperty("self")
  private String self = null;

  @JsonProperty("_class")
  private String propertyClass = null;

  public GetPipelineBranchesitemPullRequestLinks self(String self) {
    this.self = self;
    return this;
  }

   /**
   * Get self
   * @return self
  **/
    public String getSelf() {
    return self;
  }

  public void setSelf(String self) {
    this.self = self;
  }

  public GetPipelineBranchesitemPullRequestLinks propertyClass(String propertyClass) {
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
    GetPipelineBranchesitemPullRequestLinks getPipelineBranchesitemPullRequestLinks = (GetPipelineBranchesitemPullRequestLinks) o;
    return Objects.equals(this.self, getPipelineBranchesitemPullRequestLinks.self) &&
        Objects.equals(this.propertyClass, getPipelineBranchesitemPullRequestLinks.propertyClass);
  }

  @Override
  public int hashCode() {
    return Objects.hash(self, propertyClass);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class GetPipelineBranchesitemPullRequestLinks {\n");
    
    sb.append("    self: ").append(toIndentedString(self)).append("\n");
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

