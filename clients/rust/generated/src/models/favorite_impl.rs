/* 
 * Swaggy Jenkins
 *
 * Jenkins API clients generated from Swagger / Open API specification
 *
 * OpenAPI spec version: 1.1.1
 * Contact: blah@cliffano.com
 * Generated by: https://openapi-generator.tech
 */


#[allow(unused_imports)]
use serde_json::Value;

#[derive(Debug, Serialize, Deserialize)]
pub struct FavoriteImpl {
  #[serde(rename = "_class")]
  _class: Option<String>,
  #[serde(rename = "_links")]
  _links: Option<::models::FavoriteImpllinks>,
  #[serde(rename = "item")]
  item: Option<::models::PipelineImpl>
}

impl FavoriteImpl {
  pub fn new() -> FavoriteImpl {
    FavoriteImpl {
      _class: None,
      _links: None,
      item: None
    }
  }

  pub fn set__class(&mut self, _class: String) {
    self._class = Some(_class);
  }

  pub fn with__class(mut self, _class: String) -> FavoriteImpl {
    self._class = Some(_class);
    self
  }

  pub fn _class(&self) -> Option<&String> {
    self._class.as_ref()
  }

  pub fn reset__class(&mut self) {
    self._class = None;
  }

  pub fn set__links(&mut self, _links: ::models::FavoriteImpllinks) {
    self._links = Some(_links);
  }

  pub fn with__links(mut self, _links: ::models::FavoriteImpllinks) -> FavoriteImpl {
    self._links = Some(_links);
    self
  }

  pub fn _links(&self) -> Option<&::models::FavoriteImpllinks> {
    self._links.as_ref()
  }

  pub fn reset__links(&mut self) {
    self._links = None;
  }

  pub fn set_item(&mut self, item: ::models::PipelineImpl) {
    self.item = Some(item);
  }

  pub fn with_item(mut self, item: ::models::PipelineImpl) -> FavoriteImpl {
    self.item = Some(item);
    self
  }

  pub fn item(&self) -> Option<&::models::PipelineImpl> {
    self.item.as_ref()
  }

  pub fn reset_item(&mut self) {
    self.item = None;
  }

}



