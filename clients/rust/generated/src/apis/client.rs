use std::rc::Rc;

use hyper;
use super::configuration::Configuration;

pub struct APIClient<C: hyper::client::Connect> {
  configuration: Rc<Configuration<C>>,
  base_api: Box<::apis::BaseApi>,
  blue_ocean_api: Box<::apis::BlueOceanApi>,
  remote_access_api: Box<::apis::RemoteAccessApi>,
}

impl<C: hyper::client::Connect> APIClient<C> {
  pub fn new(configuration: Configuration<C>) -> APIClient<C> {
    let rc = Rc::new(configuration);

    APIClient {
      configuration: rc.clone(),
      base_api: Box::new(::apis::BaseApiClient::new(rc.clone())),
      blue_ocean_api: Box::new(::apis::BlueOceanApiClient::new(rc.clone())),
      remote_access_api: Box::new(::apis::RemoteAccessApiClient::new(rc.clone())),
    }
  }

  pub fn base_api(&self) -> &::apis::BaseApi{
    self.base_api.as_ref()
  }

  pub fn blue_ocean_api(&self) -> &::apis::BlueOceanApi{
    self.blue_ocean_api.as_ref()
  }

  pub fn remote_access_api(&self) -> &::apis::RemoteAccessApi{
    self.remote_access_api.as_ref()
  }


}
