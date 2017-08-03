package io.swagger.model;

import io.swagger.model.QueueBlockedItem;
import java.util.ArrayList;
import java.util.List;

import io.swagger.annotations.ApiModelProperty;
import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlType;
import javax.xml.bind.annotation.XmlEnum;
import javax.xml.bind.annotation.XmlEnumValue;

public class Queue  {
  
  @ApiModelProperty(value = "")
  private String propertyClass = null;
  @ApiModelProperty(value = "")
  private List<QueueBlockedItem> items = new ArrayList<QueueBlockedItem>();

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

  public Queue propertyClass(String propertyClass) {
    this.propertyClass = propertyClass;
    return this;
  }

 /**
   * Get items
   * @return items
  **/
  public List<QueueBlockedItem> getItems() {
    return items;
  }

  public void setItems(List<QueueBlockedItem> items) {
    this.items = items;
  }

  public Queue items(List<QueueBlockedItem> items) {
    this.items = items;
    return this;
  }

  public Queue addItemsItem(QueueBlockedItem itemsItem) {
    this.items.add(itemsItem);
    return this;
  }


  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class Queue {\n");
    
    sb.append("    propertyClass: ").append(toIndentedString(propertyClass)).append("\n");
    sb.append("    items: ").append(toIndentedString(items)).append("\n");
    sb.append("}");
    return sb.toString();
  }

  /**
   * Convert the given object to string with each line indented by 4 spaces
   * (except the first line).
   */
  private static String toIndentedString(java.lang.Object o) {
    if (o == null) {
      return "null";
    }
    return o.toString().replace("\n", "\n    ");
  }
}

