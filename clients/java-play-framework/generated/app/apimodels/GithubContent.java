package apimodels;

import com.fasterxml.jackson.annotation.*;
import java.util.Set;
import javax.validation.*;
import java.util.Objects;
import javax.validation.constraints.*;
/**
 * GithubContent
 */
@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaPlayFrameworkCodegen", date = "2022-02-13T02:17:56.963279Z[Etc/UTC]")
@SuppressWarnings({"UnusedReturnValue", "WeakerAccess"})
public class GithubContent   {
  @JsonProperty("name")
  
  private String name;

  @JsonProperty("sha")
  
  private String sha;

  @JsonProperty("_class")
  
  private String propertyClass;

  @JsonProperty("repo")
  
  private String repo;

  @JsonProperty("size")
  
  private Integer size;

  @JsonProperty("owner")
  
  private String owner;

  @JsonProperty("path")
  
  private String path;

  @JsonProperty("base64Data")
  
  private String base64Data;

  public GithubContent name(String name) {
    this.name = name;
    return this;
  }

   /**
   * Get name
   * @return name
  **/
  public String getName() {
    return name;
  }

  public void setName(String name) {
    this.name = name;
  }

  public GithubContent sha(String sha) {
    this.sha = sha;
    return this;
  }

   /**
   * Get sha
   * @return sha
  **/
  public String getSha() {
    return sha;
  }

  public void setSha(String sha) {
    this.sha = sha;
  }

  public GithubContent propertyClass(String propertyClass) {
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

  public GithubContent repo(String repo) {
    this.repo = repo;
    return this;
  }

   /**
   * Get repo
   * @return repo
  **/
  public String getRepo() {
    return repo;
  }

  public void setRepo(String repo) {
    this.repo = repo;
  }

  public GithubContent size(Integer size) {
    this.size = size;
    return this;
  }

   /**
   * Get size
   * @return size
  **/
  public Integer getSize() {
    return size;
  }

  public void setSize(Integer size) {
    this.size = size;
  }

  public GithubContent owner(String owner) {
    this.owner = owner;
    return this;
  }

   /**
   * Get owner
   * @return owner
  **/
  public String getOwner() {
    return owner;
  }

  public void setOwner(String owner) {
    this.owner = owner;
  }

  public GithubContent path(String path) {
    this.path = path;
    return this;
  }

   /**
   * Get path
   * @return path
  **/
  public String getPath() {
    return path;
  }

  public void setPath(String path) {
    this.path = path;
  }

  public GithubContent base64Data(String base64Data) {
    this.base64Data = base64Data;
    return this;
  }

   /**
   * Get base64Data
   * @return base64Data
  **/
  public String getBase64Data() {
    return base64Data;
  }

  public void setBase64Data(String base64Data) {
    this.base64Data = base64Data;
  }


  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    GithubContent githubContent = (GithubContent) o;
    return Objects.equals(name, githubContent.name) &&
        Objects.equals(sha, githubContent.sha) &&
        Objects.equals(propertyClass, githubContent.propertyClass) &&
        Objects.equals(repo, githubContent.repo) &&
        Objects.equals(size, githubContent.size) &&
        Objects.equals(owner, githubContent.owner) &&
        Objects.equals(path, githubContent.path) &&
        Objects.equals(base64Data, githubContent.base64Data);
  }

  @Override
  public int hashCode() {
    return Objects.hash(name, sha, propertyClass, repo, size, owner, path, base64Data);
  }

  @SuppressWarnings("StringBufferReplaceableByString")
  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class GithubContent {\n");
    
    sb.append("    name: ").append(toIndentedString(name)).append("\n");
    sb.append("    sha: ").append(toIndentedString(sha)).append("\n");
    sb.append("    propertyClass: ").append(toIndentedString(propertyClass)).append("\n");
    sb.append("    repo: ").append(toIndentedString(repo)).append("\n");
    sb.append("    size: ").append(toIndentedString(size)).append("\n");
    sb.append("    owner: ").append(toIndentedString(owner)).append("\n");
    sb.append("    path: ").append(toIndentedString(path)).append("\n");
    sb.append("    base64Data: ").append(toIndentedString(base64Data)).append("\n");
    sb.append("}");
    return sb.toString();
  }

  /**
   * Convert the given object to string with each line indented by 4 spaces
   * (except the first line).
   */
  private String toIndentedString(Object o) {
    if (o == null) {
      return "null";
    }
    return o.toString().replace("\n", "\n    ");
  }
}

