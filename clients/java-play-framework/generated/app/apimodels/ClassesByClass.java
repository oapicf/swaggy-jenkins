package apimodels;

import java.util.Objects;
import java.util.ArrayList;
import java.util.List;
import com.fasterxml.jackson.annotation.*;
import java.util.Set;
import javax.validation.*;
import javax.validation.constraints.*;
/**
 * ClassesByClass
 */
@javax.annotation.Generated(value = "io.swagger.codegen.languages.JavaPlayFrameworkCodegen", date = "2017-08-03T23:33:33.060Z")

public class ClassesByClass   {
  @JsonProperty("classes")
  private List<String> classes = null;

  @JsonProperty("_class")
  private String propertyClass = null;

  public ClassesByClass classes(List<String> classes) {
    this.classes = classes;
    return this;
  }

  public ClassesByClass addClassesItem(String classesItem) {
    if (this.classes == null) {
      this.classes = new ArrayList<String>();
    }
    this.classes.add(classesItem);
    return this;
  }

   /**
   * Get classes
   * @return classes
  **/
    public List<String> getClasses() {
    return classes;
  }

  public void setClasses(List<String> classes) {
    this.classes = classes;
  }

  public ClassesByClass propertyClass(String propertyClass) {
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
    ClassesByClass classesByClass = (ClassesByClass) o;
    return Objects.equals(this.classes, classesByClass.classes) &&
        Objects.equals(this.propertyClass, classesByClass.propertyClass);
  }

  @Override
  public int hashCode() {
    return Objects.hash(classes, propertyClass);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class ClassesByClass {\n");
    
    sb.append("    classes: ").append(toIndentedString(classes)).append("\n");
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
    Set<ConstraintViolation<ClassesByClass>> constraintViolations = validator.validate(this);
    if (constraintViolations.size() > 0) {
      StringBuilder errors = new StringBuilder();
      for (ConstraintViolation<ClassesByClass> contraintes : constraintViolations) {
        errors.append(String.format("%s.%s %s\n",
            contraintes.getRootBeanClass().getSimpleName(),
            contraintes.getPropertyPath(),
            contraintes.getMessage()));
      }
      throw new RuntimeException("Bean validation : " + errors);
    }
  }
}

