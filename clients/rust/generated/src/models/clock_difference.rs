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
pub struct ClockDifference {
  #[serde(rename = "_class")]
  _class: Option<String>,
  #[serde(rename = "diff")]
  diff: Option<i32>
}

impl ClockDifference {
  pub fn new() -> ClockDifference {
    ClockDifference {
      _class: None,
      diff: None
    }
  }

  pub fn set__class(&mut self, _class: String) {
    self._class = Some(_class);
  }

  pub fn with__class(mut self, _class: String) -> ClockDifference {
    self._class = Some(_class);
    self
  }

  pub fn _class(&self) -> Option<&String> {
    self._class.as_ref()
  }

  pub fn reset__class(&mut self) {
    self._class = None;
  }

  pub fn set_diff(&mut self, diff: i32) {
    self.diff = Some(diff);
  }

  pub fn with_diff(mut self, diff: i32) -> ClockDifference {
    self.diff = Some(diff);
    self
  }

  pub fn diff(&self) -> Option<&i32> {
    self.diff.as_ref()
  }

  pub fn reset_diff(&mut self) {
    self.diff = None;
  }

}



