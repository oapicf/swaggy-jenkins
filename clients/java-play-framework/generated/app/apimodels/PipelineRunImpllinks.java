package apimodels;

import apimodels.Link;
import com.fasterxml.jackson.annotation.*;
import java.util.Set;
import javax.validation.*;
import java.util.Objects;
import javax.validation.constraints.*;
/**
 * PipelineRunImpllinks
 */
@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaPlayFrameworkCodegen", date = "2019-04-10T03:54:21.169Z[GMT]")

@SuppressWarnings({"UnusedReturnValue", "WeakerAccess"})
public class PipelineRunImpllinks   {
  @JsonProperty("nodes")
  private Link nodes = null;

  @JsonProperty("log")
  private Link log = null;

  @JsonProperty("self")
  private Link self = null;

  @JsonProperty("actions")
  private Link actions = null;

  @JsonProperty("steps")
  private Link steps = null;

  @JsonProperty("_class")
  private String propertyClass = null;

  public PipelineRunImpllinks nodes(Link nodes) {
    this.nodes = nodes;
    return this;
  }

   /**
   * Get nodes
   * @return nodes
  **/
  @Valid
  public Link getNodes() {
    return nodes;
  }

  public void setNodes(Link nodes) {
    this.nodes = nodes;
  }

  public PipelineRunImpllinks log(Link log) {
    this.log = log;
    return this;
  }

   /**
   * Get log
   * @return log
  **/
  @Valid
  public Link getLog() {
    return log;
  }

  public void setLog(Link log) {
    this.log = log;
  }

  public PipelineRunImpllinks self(Link self) {
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

  public PipelineRunImpllinks actions(Link actions) {
    this.actions = actions;
    return this;
  }

   /**
   * Get actions
   * @return actions
  **/
  @Valid
  public Link getActions() {
    return actions;
  }

  public void setActions(Link actions) {
    this.actions = actions;
  }

  public PipelineRunImpllinks steps(Link steps) {
    this.steps = steps;
    return this;
  }

   /**
   * Get steps
   * @return steps
  **/
  @Valid
  public Link getSteps() {
    return steps;
  }

  public void setSteps(Link steps) {
    this.steps = steps;
  }

  public PipelineRunImpllinks propertyClass(String propertyClass) {
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
    PipelineRunImpllinks pipelineRunImpllinks = (PipelineRunImpllinks) o;
    return Objects.equals(nodes, pipelineRunImpllinks.nodes) &&
        Objects.equals(log, pipelineRunImpllinks.log) &&
        Objects.equals(self, pipelineRunImpllinks.self) &&
        Objects.equals(actions, pipelineRunImpllinks.actions) &&
        Objects.equals(steps, pipelineRunImpllinks.steps) &&
        Objects.equals(propertyClass, pipelineRunImpllinks.propertyClass);
  }

  @Override
  public int hashCode() {
    return Objects.hash(nodes, log, self, actions, steps, propertyClass);
  }

  @SuppressWarnings("StringBufferReplaceableByString")
  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class PipelineRunImpllinks {\n");
    
    sb.append("    nodes: ").append(toIndentedString(nodes)).append("\n");
    sb.append("    log: ").append(toIndentedString(log)).append("\n");
    sb.append("    self: ").append(toIndentedString(self)).append("\n");
    sb.append("    actions: ").append(toIndentedString(actions)).append("\n");
    sb.append("    steps: ").append(toIndentedString(steps)).append("\n");
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

