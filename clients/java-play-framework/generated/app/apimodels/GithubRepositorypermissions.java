package apimodels;

import java.util.Objects;
import com.fasterxml.jackson.annotation.*;
import java.util.Set;
import javax.validation.*;
import javax.validation.constraints.*;
/**
 * GithubRepositorypermissions
 */
@javax.annotation.Generated(value = "io.swagger.codegen.languages.JavaPlayFrameworkCodegen", date = "2017-08-03T23:33:33.060Z")

public class GithubRepositorypermissions   {
  @JsonProperty("admin")
  private Boolean admin = null;

  @JsonProperty("push")
  private Boolean push = null;

  @JsonProperty("pull")
  private Boolean pull = null;

  @JsonProperty("_class")
  private String propertyClass = null;

  public GithubRepositorypermissions admin(Boolean admin) {
    this.admin = admin;
    return this;
  }

   /**
   * Get admin
   * @return admin
  **/
    public Boolean isAdmin() {
    return admin;
  }

  public void setAdmin(Boolean admin) {
    this.admin = admin;
  }

  public GithubRepositorypermissions push(Boolean push) {
    this.push = push;
    return this;
  }

   /**
   * Get push
   * @return push
  **/
    public Boolean isPush() {
    return push;
  }

  public void setPush(Boolean push) {
    this.push = push;
  }

  public GithubRepositorypermissions pull(Boolean pull) {
    this.pull = pull;
    return this;
  }

   /**
   * Get pull
   * @return pull
  **/
    public Boolean isPull() {
    return pull;
  }

  public void setPull(Boolean pull) {
    this.pull = pull;
  }

  public GithubRepositorypermissions propertyClass(String propertyClass) {
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
    GithubRepositorypermissions githubRepositorypermissions = (GithubRepositorypermissions) o;
    return Objects.equals(this.admin, githubRepositorypermissions.admin) &&
        Objects.equals(this.push, githubRepositorypermissions.push) &&
        Objects.equals(this.pull, githubRepositorypermissions.pull) &&
        Objects.equals(this.propertyClass, githubRepositorypermissions.propertyClass);
  }

  @Override
  public int hashCode() {
    return Objects.hash(admin, push, pull, propertyClass);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class GithubRepositorypermissions {\n");
    
    sb.append("    admin: ").append(toIndentedString(admin)).append("\n");
    sb.append("    push: ").append(toIndentedString(push)).append("\n");
    sb.append("    pull: ").append(toIndentedString(pull)).append("\n");
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
    Set<ConstraintViolation<GithubRepositorypermissions>> constraintViolations = validator.validate(this);
    if (constraintViolations.size() > 0) {
      StringBuilder errors = new StringBuilder();
      for (ConstraintViolation<GithubRepositorypermissions> contraintes : constraintViolations) {
        errors.append(String.format("%s.%s %s\n",
            contraintes.getRootBeanClass().getSimpleName(),
            contraintes.getPropertyPath(),
            contraintes.getMessage()));
      }
      throw new RuntimeException("Bean validation : " + errors);
    }
  }
}

