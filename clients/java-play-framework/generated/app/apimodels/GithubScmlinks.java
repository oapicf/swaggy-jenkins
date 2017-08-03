package apimodels;

import java.util.Objects;
import apimodels.Link;
import com.fasterxml.jackson.annotation.*;
import java.util.Set;
import javax.validation.*;
import javax.validation.constraints.*;
/**
 * GithubScmlinks
 */
@javax.annotation.Generated(value = "io.swagger.codegen.languages.JavaPlayFrameworkCodegen", date = "2017-08-03T23:33:33.060Z")

public class GithubScmlinks   {
  @JsonProperty("self")
  private Link self = null;

  @JsonProperty("_class")
  private String propertyClass = null;

  public GithubScmlinks self(Link self) {
    this.self = self;
    return this;
  }

   /**
   * Get self
   * @return self
  **/
  @Valid
  public Link getSelf() {
    return self;
  }

  public void setSelf(Link self) {
    this.self = self;
  }

  public GithubScmlinks propertyClass(String propertyClass) {
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
    GithubScmlinks githubScmlinks = (GithubScmlinks) o;
    return Objects.equals(this.self, githubScmlinks.self) &&
        Objects.equals(this.propertyClass, githubScmlinks.propertyClass);
  }

  @Override
  public int hashCode() {
    return Objects.hash(self, propertyClass);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class GithubScmlinks {\n");
    
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
    Set<ConstraintViolation<GithubScmlinks>> constraintViolations = validator.validate(this);
    if (constraintViolations.size() > 0) {
      StringBuilder errors = new StringBuilder();
      for (ConstraintViolation<GithubScmlinks> contraintes : constraintViolations) {
        errors.append(String.format("%s.%s %s\n",
            contraintes.getRootBeanClass().getSimpleName(),
            contraintes.getPropertyPath(),
            contraintes.getMessage()));
      }
      throw new RuntimeException("Bean validation : " + errors);
    }
  }
}

