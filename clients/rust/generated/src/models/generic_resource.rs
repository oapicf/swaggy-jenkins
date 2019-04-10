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
pub struct GenericResource {
  #[serde(rename = "_class")]
  _class: Option<String>,
  #[serde(rename = "displayName")]
  display_name: Option<String>,
  #[serde(rename = "durationInMillis")]
  duration_in_millis: Option<i32>,
  #[serde(rename = "id")]
  id: Option<String>,
  #[serde(rename = "result")]
  result: Option<String>,
  #[serde(rename = "startTime")]
  start_time: Option<String>
}

impl GenericResource {
  pub fn new() -> GenericResource {
    GenericResource {
      _class: None,
      display_name: None,
      duration_in_millis: None,
      id: None,
      result: None,
      start_time: None
    }
  }

  pub fn set__class(&mut self, _class: String) {
    self._class = Some(_class);
  }

  pub fn with__class(mut self, _class: String) -> GenericResource {
    self._class = Some(_class);
    self
  }

  pub fn _class(&self) -> Option<&String> {
    self._class.as_ref()
  }

  pub fn reset__class(&mut self) {
    self._class = None;
  }

  pub fn set_display_name(&mut self, display_name: String) {
    self.display_name = Some(display_name);
  }

  pub fn with_display_name(mut self, display_name: String) -> GenericResource {
    self.display_name = Some(display_name);
    self
  }

  pub fn display_name(&self) -> Option<&String> {
    self.display_name.as_ref()
  }

  pub fn reset_display_name(&mut self) {
    self.display_name = None;
  }

  pub fn set_duration_in_millis(&mut self, duration_in_millis: i32) {
    self.duration_in_millis = Some(duration_in_millis);
  }

  pub fn with_duration_in_millis(mut self, duration_in_millis: i32) -> GenericResource {
    self.duration_in_millis = Some(duration_in_millis);
    self
  }

  pub fn duration_in_millis(&self) -> Option<&i32> {
    self.duration_in_millis.as_ref()
  }

  pub fn reset_duration_in_millis(&mut self) {
    self.duration_in_millis = None;
  }

  pub fn set_id(&mut self, id: String) {
    self.id = Some(id);
  }

  pub fn with_id(mut self, id: String) -> GenericResource {
    self.id = Some(id);
    self
  }

  pub fn id(&self) -> Option<&String> {
    self.id.as_ref()
  }

  pub fn reset_id(&mut self) {
    self.id = None;
  }

  pub fn set_result(&mut self, result: String) {
    self.result = Some(result);
  }

  pub fn with_result(mut self, result: String) -> GenericResource {
    self.result = Some(result);
    self
  }

  pub fn result(&self) -> Option<&String> {
    self.result.as_ref()
  }

  pub fn reset_result(&mut self) {
    self.result = None;
  }

  pub fn set_start_time(&mut self, start_time: String) {
    self.start_time = Some(start_time);
  }

  pub fn with_start_time(mut self, start_time: String) -> GenericResource {
    self.start_time = Some(start_time);
    self
  }

  pub fn start_time(&self) -> Option<&String> {
    self.start_time.as_ref()
  }

  pub fn reset_start_time(&mut self) {
    self.start_time = None;
  }

}



