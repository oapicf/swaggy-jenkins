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
pub struct Link {
  #[serde(rename = "_class")]
  _class: Option<String>,
  #[serde(rename = "href")]
  href: Option<String>
}

impl Link {
  pub fn new() -> Link {
    Link {
      _class: None,
      href: None
    }
  }

  pub fn set__class(&mut self, _class: String) {
    self._class = Some(_class);
  }

  pub fn with__class(mut self, _class: String) -> Link {
    self._class = Some(_class);
    self
  }

  pub fn _class(&self) -> Option<&String> {
    self._class.as_ref()
  }

  pub fn reset__class(&mut self) {
    self._class = None;
  }

  pub fn set_href(&mut self, href: String) {
    self.href = Some(href);
  }

  pub fn with_href(mut self, href: String) -> Link {
    self.href = Some(href);
    self
  }

  pub fn href(&self) -> Option<&String> {
    self.href.as_ref()
  }

  pub fn reset_href(&mut self) {
    self.href = None;
  }

}



