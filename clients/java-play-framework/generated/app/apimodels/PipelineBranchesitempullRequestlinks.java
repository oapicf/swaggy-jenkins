package apimodels;

import java.util.Objects;
import com.fasterxml.jackson.annotation.*;
import java.util.Set;
import javax.validation.*;
import javax.validation.constraints.*;
/**
 * PipelineBranchesitempullRequestlinks
 */
@javax.annotation.Generated(value = "io.swagger.codegen.languages.JavaPlayFrameworkCodegen", date = "2017-08-03T23:33:33.060Z")

public class PipelineBranchesitempullRequestlinks   {
  @JsonProperty("self")
  private String self = null;

  @JsonProperty("_class")
  private String propertyClass = null;

  public PipelineBranchesitempullRequestlinks self(String self) {
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

  public PipelineBranchesitempullRequestlinks propertyClass(String propertyClass) {
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
    PipelineBranchesitempullRequestlinks pipelineBranchesitempullRequestlinks = (PipelineBranchesitempullRequestlinks) o;
    return Objects.equals(this.self, pipelineBranchesitempullRequestlinks.self) &&
        Objects.equals(this.propertyClass, pipelineBranchesitempullRequestlinks.propertyClass);
  }

  @Override
  public int hashCode() {
    return Objects.hash(self, propertyClass);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class PipelineBranchesitempullRequestlinks {\n");
    
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

  public void validate() {
    ValidatorFactory factory = Validation.buildDefaultValidatorFactory();
    Validator validator = factory.getValidator();
    Set<ConstraintViolation<PipelineBranchesitempullRequestlinks>> constraintViolations = validator.validate(this);
    if (constraintViolations.size() > 0) {
      StringBuilder errors = new StringBuilder();
      for (ConstraintViolation<PipelineBranchesitempullRequestlinks> contraintes : constraintViolations) {
        errors.append(String.format("%s.%s %s\n",
            contraintes.getRootBeanClass().getSimpleName(),
            contraintes.getPropertyPath(),
            contraintes.getMessage()));
      }
      throw new RuntimeException("Bean validation : " + errors);
    }
  }
}

