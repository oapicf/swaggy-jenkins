package apimodels;

import java.util.Objects;
import apimodels.PipelineBranchesitempullRequestlinks;
import com.fasterxml.jackson.annotation.*;
import java.util.Set;
import javax.validation.*;
import javax.validation.constraints.*;
/**
 * PipelineBranchesitempullRequest
 */
@javax.annotation.Generated(value = "io.swagger.codegen.languages.JavaPlayFrameworkCodegen", date = "2017-08-03T23:33:33.060Z")

public class PipelineBranchesitempullRequest   {
  @JsonProperty("_links")
  private PipelineBranchesitempullRequestlinks links = null;

  @JsonProperty("author")
  private String author = null;

  @JsonProperty("id")
  private String id = null;

  @JsonProperty("title")
  private String title = null;

  @JsonProperty("url")
  private String url = null;

  @JsonProperty("_class")
  private String propertyClass = null;

  public PipelineBranchesitempullRequest links(PipelineBranchesitempullRequestlinks links) {
    this.links = links;
    return this;
  }

   /**
   * Get links
   * @return links
  **/
  @Valid
  public PipelineBranchesitempullRequestlinks getLinks() {
    return links;
  }

  public void setLinks(PipelineBranchesitempullRequestlinks links) {
    this.links = links;
  }

  public PipelineBranchesitempullRequest author(String author) {
    this.author = author;
    return this;
  }

   /**
   * Get author
   * @return author
  **/
    public String getAuthor() {
    return author;
  }

  public void setAuthor(String author) {
    this.author = author;
  }

  public PipelineBranchesitempullRequest id(String id) {
    this.id = id;
    return this;
  }

   /**
   * Get id
   * @return id
  **/
    public String getId() {
    return id;
  }

  public void setId(String id) {
    this.id = id;
  }

  public PipelineBranchesitempullRequest title(String title) {
    this.title = title;
    return this;
  }

   /**
   * Get title
   * @return title
  **/
    public String getTitle() {
    return title;
  }

  public void setTitle(String title) {
    this.title = title;
  }

  public PipelineBranchesitempullRequest url(String url) {
    this.url = url;
    return this;
  }

   /**
   * Get url
   * @return url
  **/
    public String getUrl() {
    return url;
  }

  public void setUrl(String url) {
    this.url = url;
  }

  public PipelineBranchesitempullRequest propertyClass(String propertyClass) {
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
    PipelineBranchesitempullRequest pipelineBranchesitempullRequest = (PipelineBranchesitempullRequest) o;
    return Objects.equals(this.links, pipelineBranchesitempullRequest.links) &&
        Objects.equals(this.author, pipelineBranchesitempullRequest.author) &&
        Objects.equals(this.id, pipelineBranchesitempullRequest.id) &&
        Objects.equals(this.title, pipelineBranchesitempullRequest.title) &&
        Objects.equals(this.url, pipelineBranchesitempullRequest.url) &&
        Objects.equals(this.propertyClass, pipelineBranchesitempullRequest.propertyClass);
  }

  @Override
  public int hashCode() {
    return Objects.hash(links, author, id, title, url, propertyClass);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class PipelineBranchesitempullRequest {\n");
    
    sb.append("    links: ").append(toIndentedString(links)).append("\n");
    sb.append("    author: ").append(toIndentedString(author)).append("\n");
    sb.append("    id: ").append(toIndentedString(id)).append("\n");
    sb.append("    title: ").append(toIndentedString(title)).append("\n");
    sb.append("    url: ").append(toIndentedString(url)).append("\n");
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
    Set<ConstraintViolation<PipelineBranchesitempullRequest>> constraintViolations = validator.validate(this);
    if (constraintViolations.size() > 0) {
      StringBuilder errors = new StringBuilder();
      for (ConstraintViolation<PipelineBranchesitempullRequest> contraintes : constraintViolations) {
        errors.append(String.format("%s.%s %s\n",
            contraintes.getRootBeanClass().getSimpleName(),
            contraintes.getPropertyPath(),
            contraintes.getMessage()));
      }
      throw new RuntimeException("Bean validation : " + errors);
    }
  }
}

