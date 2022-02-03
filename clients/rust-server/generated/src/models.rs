#![allow(unused_qualifications)]

use crate::models;
#[cfg(any(feature = "client", feature = "server"))]
use crate::header;

#[derive(Debug, Clone, PartialEq, serde::Serialize, serde::Deserialize)]
#[cfg_attr(feature = "conversion", derive(frunk::LabelledGeneric))]
pub struct AllView {
    #[serde(rename = "_class")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub _class: Option<String>,

    #[serde(rename = "name")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub name: Option<String>,

    #[serde(rename = "url")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub url: Option<String>,

}

impl AllView {
    pub fn new() -> AllView {
        AllView {
            _class: None,
            name: None,
            url: None,
        }
    }
}

/// Converts the AllView value to the Query Parameters representation (style=form, explode=false)
/// specified in https://swagger.io/docs/specification/serialization/
/// Should be implemented in a serde serializer
impl std::string::ToString for AllView {
    fn to_string(&self) -> String {
        let mut params: Vec<String> = vec![];

        if let Some(ref _class) = self._class {
            params.push("_class".to_string());
            params.push(_class.to_string());
        }


        if let Some(ref name) = self.name {
            params.push("name".to_string());
            params.push(name.to_string());
        }


        if let Some(ref url) = self.url {
            params.push("url".to_string());
            params.push(url.to_string());
        }

        params.join(",").to_string()
    }
}

/// Converts Query Parameters representation (style=form, explode=false) to a AllView value
/// as specified in https://swagger.io/docs/specification/serialization/
/// Should be implemented in a serde deserializer
impl std::str::FromStr for AllView {
    type Err = String;

    fn from_str(s: &str) -> std::result::Result<Self, Self::Err> {
        #[derive(Default)]
        // An intermediate representation of the struct to use for parsing.
        struct IntermediateRep {
            pub _class: Vec<String>,
            pub name: Vec<String>,
            pub url: Vec<String>,
        }

        let mut intermediate_rep = IntermediateRep::default();

        // Parse into intermediate representation
        let mut string_iter = s.split(',').into_iter();
        let mut key_result = string_iter.next();

        while key_result.is_some() {
            let val = match string_iter.next() {
                Some(x) => x,
                None => return std::result::Result::Err("Missing value while parsing AllView".to_string())
            };

            if let Some(key) = key_result {
                match key {
                    "_class" => intermediate_rep._class.push(<String as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "name" => intermediate_rep.name.push(<String as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "url" => intermediate_rep.url.push(<String as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    _ => return std::result::Result::Err("Unexpected key while parsing AllView".to_string())
                }
            }

            // Get the next key
            key_result = string_iter.next();
        }

        // Use the intermediate representation to return the struct
        std::result::Result::Ok(AllView {
            _class: intermediate_rep._class.into_iter().next(),
            name: intermediate_rep.name.into_iter().next(),
            url: intermediate_rep.url.into_iter().next(),
        })
    }
}

// Methods for converting between header::IntoHeaderValue<AllView> and hyper::header::HeaderValue

#[cfg(any(feature = "client", feature = "server"))]
impl std::convert::TryFrom<header::IntoHeaderValue<AllView>> for hyper::header::HeaderValue {
    type Error = String;

    fn try_from(hdr_value: header::IntoHeaderValue<AllView>) -> std::result::Result<Self, Self::Error> {
        let hdr_value = hdr_value.to_string();
        match hyper::header::HeaderValue::from_str(&hdr_value) {
             std::result::Result::Ok(value) => std::result::Result::Ok(value),
             std::result::Result::Err(e) => std::result::Result::Err(
                 format!("Invalid header value for AllView - value: {} is invalid {}",
                     hdr_value, e))
        }
    }
}

#[cfg(any(feature = "client", feature = "server"))]
impl std::convert::TryFrom<hyper::header::HeaderValue> for header::IntoHeaderValue<AllView> {
    type Error = String;

    fn try_from(hdr_value: hyper::header::HeaderValue) -> std::result::Result<Self, Self::Error> {
        match hdr_value.to_str() {
             std::result::Result::Ok(value) => {
                    match <AllView as std::str::FromStr>::from_str(value) {
                        std::result::Result::Ok(value) => std::result::Result::Ok(header::IntoHeaderValue(value)),
                        std::result::Result::Err(err) => std::result::Result::Err(
                            format!("Unable to convert header value '{}' into AllView - {}",
                                value, err))
                    }
             },
             std::result::Result::Err(e) => std::result::Result::Err(
                 format!("Unable to convert header: {:?} to string: {}",
                     hdr_value, e))
        }
    }
}


impl AllView {
    /// Helper function to allow us to convert this model to an XML string.
    /// Will panic if serialisation fails.
    #[allow(dead_code)]
    pub(crate) fn to_xml(&self) -> String {
        serde_xml_rs::to_string(&self).expect("impossible to fail to serialize")
    }
}

#[derive(Debug, Clone, PartialEq, serde::Serialize, serde::Deserialize)]
#[cfg_attr(feature = "conversion", derive(frunk::LabelledGeneric))]
pub struct BranchImpl {
    #[serde(rename = "_class")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub _class: Option<String>,

    #[serde(rename = "displayName")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub display_name: Option<String>,

    #[serde(rename = "estimatedDurationInMillis")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub estimated_duration_in_millis: Option<isize>,

    #[serde(rename = "fullDisplayName")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub full_display_name: Option<String>,

    #[serde(rename = "fullName")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub full_name: Option<String>,

    #[serde(rename = "name")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub name: Option<String>,

    #[serde(rename = "organization")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub organization: Option<String>,

    #[serde(rename = "parameters")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub parameters: Option<Vec<models::StringParameterDefinition>>,

    #[serde(rename = "permissions")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub permissions: Option<models::BranchImplpermissions>,

    #[serde(rename = "weatherScore")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub weather_score: Option<isize>,

    #[serde(rename = "pullRequest")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub pull_request: Option<String>,

    #[serde(rename = "_links")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub _links: Option<models::BranchImpllinks>,

    #[serde(rename = "latestRun")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub latest_run: Option<models::PipelineRunImpl>,

}

impl BranchImpl {
    pub fn new() -> BranchImpl {
        BranchImpl {
            _class: None,
            display_name: None,
            estimated_duration_in_millis: None,
            full_display_name: None,
            full_name: None,
            name: None,
            organization: None,
            parameters: None,
            permissions: None,
            weather_score: None,
            pull_request: None,
            _links: None,
            latest_run: None,
        }
    }
}

/// Converts the BranchImpl value to the Query Parameters representation (style=form, explode=false)
/// specified in https://swagger.io/docs/specification/serialization/
/// Should be implemented in a serde serializer
impl std::string::ToString for BranchImpl {
    fn to_string(&self) -> String {
        let mut params: Vec<String> = vec![];

        if let Some(ref _class) = self._class {
            params.push("_class".to_string());
            params.push(_class.to_string());
        }


        if let Some(ref display_name) = self.display_name {
            params.push("displayName".to_string());
            params.push(display_name.to_string());
        }


        if let Some(ref estimated_duration_in_millis) = self.estimated_duration_in_millis {
            params.push("estimatedDurationInMillis".to_string());
            params.push(estimated_duration_in_millis.to_string());
        }


        if let Some(ref full_display_name) = self.full_display_name {
            params.push("fullDisplayName".to_string());
            params.push(full_display_name.to_string());
        }


        if let Some(ref full_name) = self.full_name {
            params.push("fullName".to_string());
            params.push(full_name.to_string());
        }


        if let Some(ref name) = self.name {
            params.push("name".to_string());
            params.push(name.to_string());
        }


        if let Some(ref organization) = self.organization {
            params.push("organization".to_string());
            params.push(organization.to_string());
        }

        // Skipping parameters in query parameter serialization

        // Skipping permissions in query parameter serialization


        if let Some(ref weather_score) = self.weather_score {
            params.push("weatherScore".to_string());
            params.push(weather_score.to_string());
        }


        if let Some(ref pull_request) = self.pull_request {
            params.push("pullRequest".to_string());
            params.push(pull_request.to_string());
        }

        // Skipping _links in query parameter serialization

        // Skipping latestRun in query parameter serialization

        params.join(",").to_string()
    }
}

/// Converts Query Parameters representation (style=form, explode=false) to a BranchImpl value
/// as specified in https://swagger.io/docs/specification/serialization/
/// Should be implemented in a serde deserializer
impl std::str::FromStr for BranchImpl {
    type Err = String;

    fn from_str(s: &str) -> std::result::Result<Self, Self::Err> {
        #[derive(Default)]
        // An intermediate representation of the struct to use for parsing.
        struct IntermediateRep {
            pub _class: Vec<String>,
            pub display_name: Vec<String>,
            pub estimated_duration_in_millis: Vec<isize>,
            pub full_display_name: Vec<String>,
            pub full_name: Vec<String>,
            pub name: Vec<String>,
            pub organization: Vec<String>,
            pub parameters: Vec<Vec<models::StringParameterDefinition>>,
            pub permissions: Vec<models::BranchImplpermissions>,
            pub weather_score: Vec<isize>,
            pub pull_request: Vec<String>,
            pub _links: Vec<models::BranchImpllinks>,
            pub latest_run: Vec<models::PipelineRunImpl>,
        }

        let mut intermediate_rep = IntermediateRep::default();

        // Parse into intermediate representation
        let mut string_iter = s.split(',').into_iter();
        let mut key_result = string_iter.next();

        while key_result.is_some() {
            let val = match string_iter.next() {
                Some(x) => x,
                None => return std::result::Result::Err("Missing value while parsing BranchImpl".to_string())
            };

            if let Some(key) = key_result {
                match key {
                    "_class" => intermediate_rep._class.push(<String as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "displayName" => intermediate_rep.display_name.push(<String as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "estimatedDurationInMillis" => intermediate_rep.estimated_duration_in_millis.push(<isize as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "fullDisplayName" => intermediate_rep.full_display_name.push(<String as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "fullName" => intermediate_rep.full_name.push(<String as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "name" => intermediate_rep.name.push(<String as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "organization" => intermediate_rep.organization.push(<String as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "parameters" => return std::result::Result::Err("Parsing a container in this style is not supported in BranchImpl".to_string()),
                    "permissions" => intermediate_rep.permissions.push(<models::BranchImplpermissions as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "weatherScore" => intermediate_rep.weather_score.push(<isize as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "pullRequest" => intermediate_rep.pull_request.push(<String as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "_links" => intermediate_rep._links.push(<models::BranchImpllinks as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "latestRun" => intermediate_rep.latest_run.push(<models::PipelineRunImpl as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    _ => return std::result::Result::Err("Unexpected key while parsing BranchImpl".to_string())
                }
            }

            // Get the next key
            key_result = string_iter.next();
        }

        // Use the intermediate representation to return the struct
        std::result::Result::Ok(BranchImpl {
            _class: intermediate_rep._class.into_iter().next(),
            display_name: intermediate_rep.display_name.into_iter().next(),
            estimated_duration_in_millis: intermediate_rep.estimated_duration_in_millis.into_iter().next(),
            full_display_name: intermediate_rep.full_display_name.into_iter().next(),
            full_name: intermediate_rep.full_name.into_iter().next(),
            name: intermediate_rep.name.into_iter().next(),
            organization: intermediate_rep.organization.into_iter().next(),
            parameters: intermediate_rep.parameters.into_iter().next(),
            permissions: intermediate_rep.permissions.into_iter().next(),
            weather_score: intermediate_rep.weather_score.into_iter().next(),
            pull_request: intermediate_rep.pull_request.into_iter().next(),
            _links: intermediate_rep._links.into_iter().next(),
            latest_run: intermediate_rep.latest_run.into_iter().next(),
        })
    }
}

// Methods for converting between header::IntoHeaderValue<BranchImpl> and hyper::header::HeaderValue

#[cfg(any(feature = "client", feature = "server"))]
impl std::convert::TryFrom<header::IntoHeaderValue<BranchImpl>> for hyper::header::HeaderValue {
    type Error = String;

    fn try_from(hdr_value: header::IntoHeaderValue<BranchImpl>) -> std::result::Result<Self, Self::Error> {
        let hdr_value = hdr_value.to_string();
        match hyper::header::HeaderValue::from_str(&hdr_value) {
             std::result::Result::Ok(value) => std::result::Result::Ok(value),
             std::result::Result::Err(e) => std::result::Result::Err(
                 format!("Invalid header value for BranchImpl - value: {} is invalid {}",
                     hdr_value, e))
        }
    }
}

#[cfg(any(feature = "client", feature = "server"))]
impl std::convert::TryFrom<hyper::header::HeaderValue> for header::IntoHeaderValue<BranchImpl> {
    type Error = String;

    fn try_from(hdr_value: hyper::header::HeaderValue) -> std::result::Result<Self, Self::Error> {
        match hdr_value.to_str() {
             std::result::Result::Ok(value) => {
                    match <BranchImpl as std::str::FromStr>::from_str(value) {
                        std::result::Result::Ok(value) => std::result::Result::Ok(header::IntoHeaderValue(value)),
                        std::result::Result::Err(err) => std::result::Result::Err(
                            format!("Unable to convert header value '{}' into BranchImpl - {}",
                                value, err))
                    }
             },
             std::result::Result::Err(e) => std::result::Result::Err(
                 format!("Unable to convert header: {:?} to string: {}",
                     hdr_value, e))
        }
    }
}


impl BranchImpl {
    /// Helper function to allow us to convert this model to an XML string.
    /// Will panic if serialisation fails.
    #[allow(dead_code)]
    pub(crate) fn to_xml(&self) -> String {
        serde_xml_rs::to_string(&self).expect("impossible to fail to serialize")
    }
}

#[derive(Debug, Clone, PartialEq, serde::Serialize, serde::Deserialize)]
#[cfg_attr(feature = "conversion", derive(frunk::LabelledGeneric))]
pub struct BranchImpllinks {
    #[serde(rename = "self")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub self_: Option<models::Link>,

    #[serde(rename = "actions")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub actions: Option<models::Link>,

    #[serde(rename = "runs")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub runs: Option<models::Link>,

    #[serde(rename = "queue")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub queue: Option<models::Link>,

    #[serde(rename = "_class")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub _class: Option<String>,

}

impl BranchImpllinks {
    pub fn new() -> BranchImpllinks {
        BranchImpllinks {
            self_: None,
            actions: None,
            runs: None,
            queue: None,
            _class: None,
        }
    }
}

/// Converts the BranchImpllinks value to the Query Parameters representation (style=form, explode=false)
/// specified in https://swagger.io/docs/specification/serialization/
/// Should be implemented in a serde serializer
impl std::string::ToString for BranchImpllinks {
    fn to_string(&self) -> String {
        let mut params: Vec<String> = vec![];
        // Skipping self in query parameter serialization

        // Skipping actions in query parameter serialization

        // Skipping runs in query parameter serialization

        // Skipping queue in query parameter serialization


        if let Some(ref _class) = self._class {
            params.push("_class".to_string());
            params.push(_class.to_string());
        }

        params.join(",").to_string()
    }
}

/// Converts Query Parameters representation (style=form, explode=false) to a BranchImpllinks value
/// as specified in https://swagger.io/docs/specification/serialization/
/// Should be implemented in a serde deserializer
impl std::str::FromStr for BranchImpllinks {
    type Err = String;

    fn from_str(s: &str) -> std::result::Result<Self, Self::Err> {
        #[derive(Default)]
        // An intermediate representation of the struct to use for parsing.
        struct IntermediateRep {
            pub self_: Vec<models::Link>,
            pub actions: Vec<models::Link>,
            pub runs: Vec<models::Link>,
            pub queue: Vec<models::Link>,
            pub _class: Vec<String>,
        }

        let mut intermediate_rep = IntermediateRep::default();

        // Parse into intermediate representation
        let mut string_iter = s.split(',').into_iter();
        let mut key_result = string_iter.next();

        while key_result.is_some() {
            let val = match string_iter.next() {
                Some(x) => x,
                None => return std::result::Result::Err("Missing value while parsing BranchImpllinks".to_string())
            };

            if let Some(key) = key_result {
                match key {
                    "self" => intermediate_rep.self_.push(<models::Link as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "actions" => intermediate_rep.actions.push(<models::Link as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "runs" => intermediate_rep.runs.push(<models::Link as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "queue" => intermediate_rep.queue.push(<models::Link as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "_class" => intermediate_rep._class.push(<String as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    _ => return std::result::Result::Err("Unexpected key while parsing BranchImpllinks".to_string())
                }
            }

            // Get the next key
            key_result = string_iter.next();
        }

        // Use the intermediate representation to return the struct
        std::result::Result::Ok(BranchImpllinks {
            self_: intermediate_rep.self_.into_iter().next(),
            actions: intermediate_rep.actions.into_iter().next(),
            runs: intermediate_rep.runs.into_iter().next(),
            queue: intermediate_rep.queue.into_iter().next(),
            _class: intermediate_rep._class.into_iter().next(),
        })
    }
}

// Methods for converting between header::IntoHeaderValue<BranchImpllinks> and hyper::header::HeaderValue

#[cfg(any(feature = "client", feature = "server"))]
impl std::convert::TryFrom<header::IntoHeaderValue<BranchImpllinks>> for hyper::header::HeaderValue {
    type Error = String;

    fn try_from(hdr_value: header::IntoHeaderValue<BranchImpllinks>) -> std::result::Result<Self, Self::Error> {
        let hdr_value = hdr_value.to_string();
        match hyper::header::HeaderValue::from_str(&hdr_value) {
             std::result::Result::Ok(value) => std::result::Result::Ok(value),
             std::result::Result::Err(e) => std::result::Result::Err(
                 format!("Invalid header value for BranchImpllinks - value: {} is invalid {}",
                     hdr_value, e))
        }
    }
}

#[cfg(any(feature = "client", feature = "server"))]
impl std::convert::TryFrom<hyper::header::HeaderValue> for header::IntoHeaderValue<BranchImpllinks> {
    type Error = String;

    fn try_from(hdr_value: hyper::header::HeaderValue) -> std::result::Result<Self, Self::Error> {
        match hdr_value.to_str() {
             std::result::Result::Ok(value) => {
                    match <BranchImpllinks as std::str::FromStr>::from_str(value) {
                        std::result::Result::Ok(value) => std::result::Result::Ok(header::IntoHeaderValue(value)),
                        std::result::Result::Err(err) => std::result::Result::Err(
                            format!("Unable to convert header value '{}' into BranchImpllinks - {}",
                                value, err))
                    }
             },
             std::result::Result::Err(e) => std::result::Result::Err(
                 format!("Unable to convert header: {:?} to string: {}",
                     hdr_value, e))
        }
    }
}


impl BranchImpllinks {
    /// Helper function to allow us to convert this model to an XML string.
    /// Will panic if serialisation fails.
    #[allow(dead_code)]
    pub(crate) fn to_xml(&self) -> String {
        serde_xml_rs::to_string(&self).expect("impossible to fail to serialize")
    }
}

#[derive(Debug, Clone, PartialEq, serde::Serialize, serde::Deserialize)]
#[cfg_attr(feature = "conversion", derive(frunk::LabelledGeneric))]
pub struct BranchImplpermissions {
    #[serde(rename = "create")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub create: Option<bool>,

    #[serde(rename = "read")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub read: Option<bool>,

    #[serde(rename = "start")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub start: Option<bool>,

    #[serde(rename = "stop")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub stop: Option<bool>,

    #[serde(rename = "_class")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub _class: Option<String>,

}

impl BranchImplpermissions {
    pub fn new() -> BranchImplpermissions {
        BranchImplpermissions {
            create: None,
            read: None,
            start: None,
            stop: None,
            _class: None,
        }
    }
}

/// Converts the BranchImplpermissions value to the Query Parameters representation (style=form, explode=false)
/// specified in https://swagger.io/docs/specification/serialization/
/// Should be implemented in a serde serializer
impl std::string::ToString for BranchImplpermissions {
    fn to_string(&self) -> String {
        let mut params: Vec<String> = vec![];

        if let Some(ref create) = self.create {
            params.push("create".to_string());
            params.push(create.to_string());
        }


        if let Some(ref read) = self.read {
            params.push("read".to_string());
            params.push(read.to_string());
        }


        if let Some(ref start) = self.start {
            params.push("start".to_string());
            params.push(start.to_string());
        }


        if let Some(ref stop) = self.stop {
            params.push("stop".to_string());
            params.push(stop.to_string());
        }


        if let Some(ref _class) = self._class {
            params.push("_class".to_string());
            params.push(_class.to_string());
        }

        params.join(",").to_string()
    }
}

/// Converts Query Parameters representation (style=form, explode=false) to a BranchImplpermissions value
/// as specified in https://swagger.io/docs/specification/serialization/
/// Should be implemented in a serde deserializer
impl std::str::FromStr for BranchImplpermissions {
    type Err = String;

    fn from_str(s: &str) -> std::result::Result<Self, Self::Err> {
        #[derive(Default)]
        // An intermediate representation of the struct to use for parsing.
        struct IntermediateRep {
            pub create: Vec<bool>,
            pub read: Vec<bool>,
            pub start: Vec<bool>,
            pub stop: Vec<bool>,
            pub _class: Vec<String>,
        }

        let mut intermediate_rep = IntermediateRep::default();

        // Parse into intermediate representation
        let mut string_iter = s.split(',').into_iter();
        let mut key_result = string_iter.next();

        while key_result.is_some() {
            let val = match string_iter.next() {
                Some(x) => x,
                None => return std::result::Result::Err("Missing value while parsing BranchImplpermissions".to_string())
            };

            if let Some(key) = key_result {
                match key {
                    "create" => intermediate_rep.create.push(<bool as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "read" => intermediate_rep.read.push(<bool as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "start" => intermediate_rep.start.push(<bool as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "stop" => intermediate_rep.stop.push(<bool as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "_class" => intermediate_rep._class.push(<String as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    _ => return std::result::Result::Err("Unexpected key while parsing BranchImplpermissions".to_string())
                }
            }

            // Get the next key
            key_result = string_iter.next();
        }

        // Use the intermediate representation to return the struct
        std::result::Result::Ok(BranchImplpermissions {
            create: intermediate_rep.create.into_iter().next(),
            read: intermediate_rep.read.into_iter().next(),
            start: intermediate_rep.start.into_iter().next(),
            stop: intermediate_rep.stop.into_iter().next(),
            _class: intermediate_rep._class.into_iter().next(),
        })
    }
}

// Methods for converting between header::IntoHeaderValue<BranchImplpermissions> and hyper::header::HeaderValue

#[cfg(any(feature = "client", feature = "server"))]
impl std::convert::TryFrom<header::IntoHeaderValue<BranchImplpermissions>> for hyper::header::HeaderValue {
    type Error = String;

    fn try_from(hdr_value: header::IntoHeaderValue<BranchImplpermissions>) -> std::result::Result<Self, Self::Error> {
        let hdr_value = hdr_value.to_string();
        match hyper::header::HeaderValue::from_str(&hdr_value) {
             std::result::Result::Ok(value) => std::result::Result::Ok(value),
             std::result::Result::Err(e) => std::result::Result::Err(
                 format!("Invalid header value for BranchImplpermissions - value: {} is invalid {}",
                     hdr_value, e))
        }
    }
}

#[cfg(any(feature = "client", feature = "server"))]
impl std::convert::TryFrom<hyper::header::HeaderValue> for header::IntoHeaderValue<BranchImplpermissions> {
    type Error = String;

    fn try_from(hdr_value: hyper::header::HeaderValue) -> std::result::Result<Self, Self::Error> {
        match hdr_value.to_str() {
             std::result::Result::Ok(value) => {
                    match <BranchImplpermissions as std::str::FromStr>::from_str(value) {
                        std::result::Result::Ok(value) => std::result::Result::Ok(header::IntoHeaderValue(value)),
                        std::result::Result::Err(err) => std::result::Result::Err(
                            format!("Unable to convert header value '{}' into BranchImplpermissions - {}",
                                value, err))
                    }
             },
             std::result::Result::Err(e) => std::result::Result::Err(
                 format!("Unable to convert header: {:?} to string: {}",
                     hdr_value, e))
        }
    }
}


impl BranchImplpermissions {
    /// Helper function to allow us to convert this model to an XML string.
    /// Will panic if serialisation fails.
    #[allow(dead_code)]
    pub(crate) fn to_xml(&self) -> String {
        serde_xml_rs::to_string(&self).expect("impossible to fail to serialize")
    }
}

#[derive(Debug, Clone, PartialEq, serde::Serialize, serde::Deserialize)]
#[cfg_attr(feature = "conversion", derive(frunk::LabelledGeneric))]
pub struct CauseAction {
    #[serde(rename = "_class")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub _class: Option<String>,

    #[serde(rename = "causes")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub causes: Option<Vec<models::CauseUserIdCause>>,

}

impl CauseAction {
    pub fn new() -> CauseAction {
        CauseAction {
            _class: None,
            causes: None,
        }
    }
}

/// Converts the CauseAction value to the Query Parameters representation (style=form, explode=false)
/// specified in https://swagger.io/docs/specification/serialization/
/// Should be implemented in a serde serializer
impl std::string::ToString for CauseAction {
    fn to_string(&self) -> String {
        let mut params: Vec<String> = vec![];

        if let Some(ref _class) = self._class {
            params.push("_class".to_string());
            params.push(_class.to_string());
        }

        // Skipping causes in query parameter serialization

        params.join(",").to_string()
    }
}

/// Converts Query Parameters representation (style=form, explode=false) to a CauseAction value
/// as specified in https://swagger.io/docs/specification/serialization/
/// Should be implemented in a serde deserializer
impl std::str::FromStr for CauseAction {
    type Err = String;

    fn from_str(s: &str) -> std::result::Result<Self, Self::Err> {
        #[derive(Default)]
        // An intermediate representation of the struct to use for parsing.
        struct IntermediateRep {
            pub _class: Vec<String>,
            pub causes: Vec<Vec<models::CauseUserIdCause>>,
        }

        let mut intermediate_rep = IntermediateRep::default();

        // Parse into intermediate representation
        let mut string_iter = s.split(',').into_iter();
        let mut key_result = string_iter.next();

        while key_result.is_some() {
            let val = match string_iter.next() {
                Some(x) => x,
                None => return std::result::Result::Err("Missing value while parsing CauseAction".to_string())
            };

            if let Some(key) = key_result {
                match key {
                    "_class" => intermediate_rep._class.push(<String as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "causes" => return std::result::Result::Err("Parsing a container in this style is not supported in CauseAction".to_string()),
                    _ => return std::result::Result::Err("Unexpected key while parsing CauseAction".to_string())
                }
            }

            // Get the next key
            key_result = string_iter.next();
        }

        // Use the intermediate representation to return the struct
        std::result::Result::Ok(CauseAction {
            _class: intermediate_rep._class.into_iter().next(),
            causes: intermediate_rep.causes.into_iter().next(),
        })
    }
}

// Methods for converting between header::IntoHeaderValue<CauseAction> and hyper::header::HeaderValue

#[cfg(any(feature = "client", feature = "server"))]
impl std::convert::TryFrom<header::IntoHeaderValue<CauseAction>> for hyper::header::HeaderValue {
    type Error = String;

    fn try_from(hdr_value: header::IntoHeaderValue<CauseAction>) -> std::result::Result<Self, Self::Error> {
        let hdr_value = hdr_value.to_string();
        match hyper::header::HeaderValue::from_str(&hdr_value) {
             std::result::Result::Ok(value) => std::result::Result::Ok(value),
             std::result::Result::Err(e) => std::result::Result::Err(
                 format!("Invalid header value for CauseAction - value: {} is invalid {}",
                     hdr_value, e))
        }
    }
}

#[cfg(any(feature = "client", feature = "server"))]
impl std::convert::TryFrom<hyper::header::HeaderValue> for header::IntoHeaderValue<CauseAction> {
    type Error = String;

    fn try_from(hdr_value: hyper::header::HeaderValue) -> std::result::Result<Self, Self::Error> {
        match hdr_value.to_str() {
             std::result::Result::Ok(value) => {
                    match <CauseAction as std::str::FromStr>::from_str(value) {
                        std::result::Result::Ok(value) => std::result::Result::Ok(header::IntoHeaderValue(value)),
                        std::result::Result::Err(err) => std::result::Result::Err(
                            format!("Unable to convert header value '{}' into CauseAction - {}",
                                value, err))
                    }
             },
             std::result::Result::Err(e) => std::result::Result::Err(
                 format!("Unable to convert header: {:?} to string: {}",
                     hdr_value, e))
        }
    }
}


impl CauseAction {
    /// Helper function to allow us to convert this model to an XML string.
    /// Will panic if serialisation fails.
    #[allow(dead_code)]
    pub(crate) fn to_xml(&self) -> String {
        serde_xml_rs::to_string(&self).expect("impossible to fail to serialize")
    }
}

#[derive(Debug, Clone, PartialEq, serde::Serialize, serde::Deserialize)]
#[cfg_attr(feature = "conversion", derive(frunk::LabelledGeneric))]
pub struct CauseUserIdCause {
    #[serde(rename = "_class")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub _class: Option<String>,

    #[serde(rename = "shortDescription")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub short_description: Option<String>,

    #[serde(rename = "userId")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub user_id: Option<String>,

    #[serde(rename = "userName")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub user_name: Option<String>,

}

impl CauseUserIdCause {
    pub fn new() -> CauseUserIdCause {
        CauseUserIdCause {
            _class: None,
            short_description: None,
            user_id: None,
            user_name: None,
        }
    }
}

/// Converts the CauseUserIdCause value to the Query Parameters representation (style=form, explode=false)
/// specified in https://swagger.io/docs/specification/serialization/
/// Should be implemented in a serde serializer
impl std::string::ToString for CauseUserIdCause {
    fn to_string(&self) -> String {
        let mut params: Vec<String> = vec![];

        if let Some(ref _class) = self._class {
            params.push("_class".to_string());
            params.push(_class.to_string());
        }


        if let Some(ref short_description) = self.short_description {
            params.push("shortDescription".to_string());
            params.push(short_description.to_string());
        }


        if let Some(ref user_id) = self.user_id {
            params.push("userId".to_string());
            params.push(user_id.to_string());
        }


        if let Some(ref user_name) = self.user_name {
            params.push("userName".to_string());
            params.push(user_name.to_string());
        }

        params.join(",").to_string()
    }
}

/// Converts Query Parameters representation (style=form, explode=false) to a CauseUserIdCause value
/// as specified in https://swagger.io/docs/specification/serialization/
/// Should be implemented in a serde deserializer
impl std::str::FromStr for CauseUserIdCause {
    type Err = String;

    fn from_str(s: &str) -> std::result::Result<Self, Self::Err> {
        #[derive(Default)]
        // An intermediate representation of the struct to use for parsing.
        struct IntermediateRep {
            pub _class: Vec<String>,
            pub short_description: Vec<String>,
            pub user_id: Vec<String>,
            pub user_name: Vec<String>,
        }

        let mut intermediate_rep = IntermediateRep::default();

        // Parse into intermediate representation
        let mut string_iter = s.split(',').into_iter();
        let mut key_result = string_iter.next();

        while key_result.is_some() {
            let val = match string_iter.next() {
                Some(x) => x,
                None => return std::result::Result::Err("Missing value while parsing CauseUserIdCause".to_string())
            };

            if let Some(key) = key_result {
                match key {
                    "_class" => intermediate_rep._class.push(<String as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "shortDescription" => intermediate_rep.short_description.push(<String as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "userId" => intermediate_rep.user_id.push(<String as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "userName" => intermediate_rep.user_name.push(<String as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    _ => return std::result::Result::Err("Unexpected key while parsing CauseUserIdCause".to_string())
                }
            }

            // Get the next key
            key_result = string_iter.next();
        }

        // Use the intermediate representation to return the struct
        std::result::Result::Ok(CauseUserIdCause {
            _class: intermediate_rep._class.into_iter().next(),
            short_description: intermediate_rep.short_description.into_iter().next(),
            user_id: intermediate_rep.user_id.into_iter().next(),
            user_name: intermediate_rep.user_name.into_iter().next(),
        })
    }
}

// Methods for converting between header::IntoHeaderValue<CauseUserIdCause> and hyper::header::HeaderValue

#[cfg(any(feature = "client", feature = "server"))]
impl std::convert::TryFrom<header::IntoHeaderValue<CauseUserIdCause>> for hyper::header::HeaderValue {
    type Error = String;

    fn try_from(hdr_value: header::IntoHeaderValue<CauseUserIdCause>) -> std::result::Result<Self, Self::Error> {
        let hdr_value = hdr_value.to_string();
        match hyper::header::HeaderValue::from_str(&hdr_value) {
             std::result::Result::Ok(value) => std::result::Result::Ok(value),
             std::result::Result::Err(e) => std::result::Result::Err(
                 format!("Invalid header value for CauseUserIdCause - value: {} is invalid {}",
                     hdr_value, e))
        }
    }
}

#[cfg(any(feature = "client", feature = "server"))]
impl std::convert::TryFrom<hyper::header::HeaderValue> for header::IntoHeaderValue<CauseUserIdCause> {
    type Error = String;

    fn try_from(hdr_value: hyper::header::HeaderValue) -> std::result::Result<Self, Self::Error> {
        match hdr_value.to_str() {
             std::result::Result::Ok(value) => {
                    match <CauseUserIdCause as std::str::FromStr>::from_str(value) {
                        std::result::Result::Ok(value) => std::result::Result::Ok(header::IntoHeaderValue(value)),
                        std::result::Result::Err(err) => std::result::Result::Err(
                            format!("Unable to convert header value '{}' into CauseUserIdCause - {}",
                                value, err))
                    }
             },
             std::result::Result::Err(e) => std::result::Result::Err(
                 format!("Unable to convert header: {:?} to string: {}",
                     hdr_value, e))
        }
    }
}


impl CauseUserIdCause {
    /// Helper function to allow us to convert this model to an XML string.
    /// Will panic if serialisation fails.
    #[allow(dead_code)]
    pub(crate) fn to_xml(&self) -> String {
        serde_xml_rs::to_string(&self).expect("impossible to fail to serialize")
    }
}

#[derive(Debug, Clone, PartialEq, serde::Serialize, serde::Deserialize)]
#[cfg_attr(feature = "conversion", derive(frunk::LabelledGeneric))]
pub struct ClassesByClass {
    #[serde(rename = "classes")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub classes: Option<Vec<String>>,

    #[serde(rename = "_class")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub _class: Option<String>,

}

impl ClassesByClass {
    pub fn new() -> ClassesByClass {
        ClassesByClass {
            classes: None,
            _class: None,
        }
    }
}

/// Converts the ClassesByClass value to the Query Parameters representation (style=form, explode=false)
/// specified in https://swagger.io/docs/specification/serialization/
/// Should be implemented in a serde serializer
impl std::string::ToString for ClassesByClass {
    fn to_string(&self) -> String {
        let mut params: Vec<String> = vec![];

        if let Some(ref classes) = self.classes {
            params.push("classes".to_string());
            params.push(classes.iter().map(|x| x.to_string()).collect::<Vec<_>>().join(",").to_string());
        }


        if let Some(ref _class) = self._class {
            params.push("_class".to_string());
            params.push(_class.to_string());
        }

        params.join(",").to_string()
    }
}

/// Converts Query Parameters representation (style=form, explode=false) to a ClassesByClass value
/// as specified in https://swagger.io/docs/specification/serialization/
/// Should be implemented in a serde deserializer
impl std::str::FromStr for ClassesByClass {
    type Err = String;

    fn from_str(s: &str) -> std::result::Result<Self, Self::Err> {
        #[derive(Default)]
        // An intermediate representation of the struct to use for parsing.
        struct IntermediateRep {
            pub classes: Vec<Vec<String>>,
            pub _class: Vec<String>,
        }

        let mut intermediate_rep = IntermediateRep::default();

        // Parse into intermediate representation
        let mut string_iter = s.split(',').into_iter();
        let mut key_result = string_iter.next();

        while key_result.is_some() {
            let val = match string_iter.next() {
                Some(x) => x,
                None => return std::result::Result::Err("Missing value while parsing ClassesByClass".to_string())
            };

            if let Some(key) = key_result {
                match key {
                    "classes" => return std::result::Result::Err("Parsing a container in this style is not supported in ClassesByClass".to_string()),
                    "_class" => intermediate_rep._class.push(<String as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    _ => return std::result::Result::Err("Unexpected key while parsing ClassesByClass".to_string())
                }
            }

            // Get the next key
            key_result = string_iter.next();
        }

        // Use the intermediate representation to return the struct
        std::result::Result::Ok(ClassesByClass {
            classes: intermediate_rep.classes.into_iter().next(),
            _class: intermediate_rep._class.into_iter().next(),
        })
    }
}

// Methods for converting between header::IntoHeaderValue<ClassesByClass> and hyper::header::HeaderValue

#[cfg(any(feature = "client", feature = "server"))]
impl std::convert::TryFrom<header::IntoHeaderValue<ClassesByClass>> for hyper::header::HeaderValue {
    type Error = String;

    fn try_from(hdr_value: header::IntoHeaderValue<ClassesByClass>) -> std::result::Result<Self, Self::Error> {
        let hdr_value = hdr_value.to_string();
        match hyper::header::HeaderValue::from_str(&hdr_value) {
             std::result::Result::Ok(value) => std::result::Result::Ok(value),
             std::result::Result::Err(e) => std::result::Result::Err(
                 format!("Invalid header value for ClassesByClass - value: {} is invalid {}",
                     hdr_value, e))
        }
    }
}

#[cfg(any(feature = "client", feature = "server"))]
impl std::convert::TryFrom<hyper::header::HeaderValue> for header::IntoHeaderValue<ClassesByClass> {
    type Error = String;

    fn try_from(hdr_value: hyper::header::HeaderValue) -> std::result::Result<Self, Self::Error> {
        match hdr_value.to_str() {
             std::result::Result::Ok(value) => {
                    match <ClassesByClass as std::str::FromStr>::from_str(value) {
                        std::result::Result::Ok(value) => std::result::Result::Ok(header::IntoHeaderValue(value)),
                        std::result::Result::Err(err) => std::result::Result::Err(
                            format!("Unable to convert header value '{}' into ClassesByClass - {}",
                                value, err))
                    }
             },
             std::result::Result::Err(e) => std::result::Result::Err(
                 format!("Unable to convert header: {:?} to string: {}",
                     hdr_value, e))
        }
    }
}


impl ClassesByClass {
    /// Helper function to allow us to convert this model to an XML string.
    /// Will panic if serialisation fails.
    #[allow(dead_code)]
    pub(crate) fn to_xml(&self) -> String {
        serde_xml_rs::to_string(&self).expect("impossible to fail to serialize")
    }
}

#[derive(Debug, Clone, PartialEq, serde::Serialize, serde::Deserialize)]
#[cfg_attr(feature = "conversion", derive(frunk::LabelledGeneric))]
pub struct ClockDifference {
    #[serde(rename = "_class")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub _class: Option<String>,

    #[serde(rename = "diff")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub diff: Option<isize>,

}

impl ClockDifference {
    pub fn new() -> ClockDifference {
        ClockDifference {
            _class: None,
            diff: None,
        }
    }
}

/// Converts the ClockDifference value to the Query Parameters representation (style=form, explode=false)
/// specified in https://swagger.io/docs/specification/serialization/
/// Should be implemented in a serde serializer
impl std::string::ToString for ClockDifference {
    fn to_string(&self) -> String {
        let mut params: Vec<String> = vec![];

        if let Some(ref _class) = self._class {
            params.push("_class".to_string());
            params.push(_class.to_string());
        }


        if let Some(ref diff) = self.diff {
            params.push("diff".to_string());
            params.push(diff.to_string());
        }

        params.join(",").to_string()
    }
}

/// Converts Query Parameters representation (style=form, explode=false) to a ClockDifference value
/// as specified in https://swagger.io/docs/specification/serialization/
/// Should be implemented in a serde deserializer
impl std::str::FromStr for ClockDifference {
    type Err = String;

    fn from_str(s: &str) -> std::result::Result<Self, Self::Err> {
        #[derive(Default)]
        // An intermediate representation of the struct to use for parsing.
        struct IntermediateRep {
            pub _class: Vec<String>,
            pub diff: Vec<isize>,
        }

        let mut intermediate_rep = IntermediateRep::default();

        // Parse into intermediate representation
        let mut string_iter = s.split(',').into_iter();
        let mut key_result = string_iter.next();

        while key_result.is_some() {
            let val = match string_iter.next() {
                Some(x) => x,
                None => return std::result::Result::Err("Missing value while parsing ClockDifference".to_string())
            };

            if let Some(key) = key_result {
                match key {
                    "_class" => intermediate_rep._class.push(<String as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "diff" => intermediate_rep.diff.push(<isize as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    _ => return std::result::Result::Err("Unexpected key while parsing ClockDifference".to_string())
                }
            }

            // Get the next key
            key_result = string_iter.next();
        }

        // Use the intermediate representation to return the struct
        std::result::Result::Ok(ClockDifference {
            _class: intermediate_rep._class.into_iter().next(),
            diff: intermediate_rep.diff.into_iter().next(),
        })
    }
}

// Methods for converting between header::IntoHeaderValue<ClockDifference> and hyper::header::HeaderValue

#[cfg(any(feature = "client", feature = "server"))]
impl std::convert::TryFrom<header::IntoHeaderValue<ClockDifference>> for hyper::header::HeaderValue {
    type Error = String;

    fn try_from(hdr_value: header::IntoHeaderValue<ClockDifference>) -> std::result::Result<Self, Self::Error> {
        let hdr_value = hdr_value.to_string();
        match hyper::header::HeaderValue::from_str(&hdr_value) {
             std::result::Result::Ok(value) => std::result::Result::Ok(value),
             std::result::Result::Err(e) => std::result::Result::Err(
                 format!("Invalid header value for ClockDifference - value: {} is invalid {}",
                     hdr_value, e))
        }
    }
}

#[cfg(any(feature = "client", feature = "server"))]
impl std::convert::TryFrom<hyper::header::HeaderValue> for header::IntoHeaderValue<ClockDifference> {
    type Error = String;

    fn try_from(hdr_value: hyper::header::HeaderValue) -> std::result::Result<Self, Self::Error> {
        match hdr_value.to_str() {
             std::result::Result::Ok(value) => {
                    match <ClockDifference as std::str::FromStr>::from_str(value) {
                        std::result::Result::Ok(value) => std::result::Result::Ok(header::IntoHeaderValue(value)),
                        std::result::Result::Err(err) => std::result::Result::Err(
                            format!("Unable to convert header value '{}' into ClockDifference - {}",
                                value, err))
                    }
             },
             std::result::Result::Err(e) => std::result::Result::Err(
                 format!("Unable to convert header: {:?} to string: {}",
                     hdr_value, e))
        }
    }
}


impl ClockDifference {
    /// Helper function to allow us to convert this model to an XML string.
    /// Will panic if serialisation fails.
    #[allow(dead_code)]
    pub(crate) fn to_xml(&self) -> String {
        serde_xml_rs::to_string(&self).expect("impossible to fail to serialize")
    }
}

#[derive(Debug, Clone, PartialEq, serde::Serialize, serde::Deserialize)]
#[cfg_attr(feature = "conversion", derive(frunk::LabelledGeneric))]
pub struct ComputerSet {
    #[serde(rename = "_class")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub _class: Option<String>,

    #[serde(rename = "busyExecutors")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub busy_executors: Option<isize>,

    #[serde(rename = "computer")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub computer: Option<Vec<models::HudsonMasterComputer>>,

    #[serde(rename = "displayName")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub display_name: Option<String>,

    #[serde(rename = "totalExecutors")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub total_executors: Option<isize>,

}

impl ComputerSet {
    pub fn new() -> ComputerSet {
        ComputerSet {
            _class: None,
            busy_executors: None,
            computer: None,
            display_name: None,
            total_executors: None,
        }
    }
}

/// Converts the ComputerSet value to the Query Parameters representation (style=form, explode=false)
/// specified in https://swagger.io/docs/specification/serialization/
/// Should be implemented in a serde serializer
impl std::string::ToString for ComputerSet {
    fn to_string(&self) -> String {
        let mut params: Vec<String> = vec![];

        if let Some(ref _class) = self._class {
            params.push("_class".to_string());
            params.push(_class.to_string());
        }


        if let Some(ref busy_executors) = self.busy_executors {
            params.push("busyExecutors".to_string());
            params.push(busy_executors.to_string());
        }

        // Skipping computer in query parameter serialization


        if let Some(ref display_name) = self.display_name {
            params.push("displayName".to_string());
            params.push(display_name.to_string());
        }


        if let Some(ref total_executors) = self.total_executors {
            params.push("totalExecutors".to_string());
            params.push(total_executors.to_string());
        }

        params.join(",").to_string()
    }
}

/// Converts Query Parameters representation (style=form, explode=false) to a ComputerSet value
/// as specified in https://swagger.io/docs/specification/serialization/
/// Should be implemented in a serde deserializer
impl std::str::FromStr for ComputerSet {
    type Err = String;

    fn from_str(s: &str) -> std::result::Result<Self, Self::Err> {
        #[derive(Default)]
        // An intermediate representation of the struct to use for parsing.
        struct IntermediateRep {
            pub _class: Vec<String>,
            pub busy_executors: Vec<isize>,
            pub computer: Vec<Vec<models::HudsonMasterComputer>>,
            pub display_name: Vec<String>,
            pub total_executors: Vec<isize>,
        }

        let mut intermediate_rep = IntermediateRep::default();

        // Parse into intermediate representation
        let mut string_iter = s.split(',').into_iter();
        let mut key_result = string_iter.next();

        while key_result.is_some() {
            let val = match string_iter.next() {
                Some(x) => x,
                None => return std::result::Result::Err("Missing value while parsing ComputerSet".to_string())
            };

            if let Some(key) = key_result {
                match key {
                    "_class" => intermediate_rep._class.push(<String as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "busyExecutors" => intermediate_rep.busy_executors.push(<isize as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "computer" => return std::result::Result::Err("Parsing a container in this style is not supported in ComputerSet".to_string()),
                    "displayName" => intermediate_rep.display_name.push(<String as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "totalExecutors" => intermediate_rep.total_executors.push(<isize as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    _ => return std::result::Result::Err("Unexpected key while parsing ComputerSet".to_string())
                }
            }

            // Get the next key
            key_result = string_iter.next();
        }

        // Use the intermediate representation to return the struct
        std::result::Result::Ok(ComputerSet {
            _class: intermediate_rep._class.into_iter().next(),
            busy_executors: intermediate_rep.busy_executors.into_iter().next(),
            computer: intermediate_rep.computer.into_iter().next(),
            display_name: intermediate_rep.display_name.into_iter().next(),
            total_executors: intermediate_rep.total_executors.into_iter().next(),
        })
    }
}

// Methods for converting between header::IntoHeaderValue<ComputerSet> and hyper::header::HeaderValue

#[cfg(any(feature = "client", feature = "server"))]
impl std::convert::TryFrom<header::IntoHeaderValue<ComputerSet>> for hyper::header::HeaderValue {
    type Error = String;

    fn try_from(hdr_value: header::IntoHeaderValue<ComputerSet>) -> std::result::Result<Self, Self::Error> {
        let hdr_value = hdr_value.to_string();
        match hyper::header::HeaderValue::from_str(&hdr_value) {
             std::result::Result::Ok(value) => std::result::Result::Ok(value),
             std::result::Result::Err(e) => std::result::Result::Err(
                 format!("Invalid header value for ComputerSet - value: {} is invalid {}",
                     hdr_value, e))
        }
    }
}

#[cfg(any(feature = "client", feature = "server"))]
impl std::convert::TryFrom<hyper::header::HeaderValue> for header::IntoHeaderValue<ComputerSet> {
    type Error = String;

    fn try_from(hdr_value: hyper::header::HeaderValue) -> std::result::Result<Self, Self::Error> {
        match hdr_value.to_str() {
             std::result::Result::Ok(value) => {
                    match <ComputerSet as std::str::FromStr>::from_str(value) {
                        std::result::Result::Ok(value) => std::result::Result::Ok(header::IntoHeaderValue(value)),
                        std::result::Result::Err(err) => std::result::Result::Err(
                            format!("Unable to convert header value '{}' into ComputerSet - {}",
                                value, err))
                    }
             },
             std::result::Result::Err(e) => std::result::Result::Err(
                 format!("Unable to convert header: {:?} to string: {}",
                     hdr_value, e))
        }
    }
}


impl ComputerSet {
    /// Helper function to allow us to convert this model to an XML string.
    /// Will panic if serialisation fails.
    #[allow(dead_code)]
    pub(crate) fn to_xml(&self) -> String {
        serde_xml_rs::to_string(&self).expect("impossible to fail to serialize")
    }
}

#[derive(Debug, Clone, PartialEq, serde::Serialize, serde::Deserialize)]
#[cfg_attr(feature = "conversion", derive(frunk::LabelledGeneric))]
pub struct DefaultCrumbIssuer {
    #[serde(rename = "_class")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub _class: Option<String>,

    #[serde(rename = "crumb")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub crumb: Option<String>,

    #[serde(rename = "crumbRequestField")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub crumb_request_field: Option<String>,

}

impl DefaultCrumbIssuer {
    pub fn new() -> DefaultCrumbIssuer {
        DefaultCrumbIssuer {
            _class: None,
            crumb: None,
            crumb_request_field: None,
        }
    }
}

/// Converts the DefaultCrumbIssuer value to the Query Parameters representation (style=form, explode=false)
/// specified in https://swagger.io/docs/specification/serialization/
/// Should be implemented in a serde serializer
impl std::string::ToString for DefaultCrumbIssuer {
    fn to_string(&self) -> String {
        let mut params: Vec<String> = vec![];

        if let Some(ref _class) = self._class {
            params.push("_class".to_string());
            params.push(_class.to_string());
        }


        if let Some(ref crumb) = self.crumb {
            params.push("crumb".to_string());
            params.push(crumb.to_string());
        }


        if let Some(ref crumb_request_field) = self.crumb_request_field {
            params.push("crumbRequestField".to_string());
            params.push(crumb_request_field.to_string());
        }

        params.join(",").to_string()
    }
}

/// Converts Query Parameters representation (style=form, explode=false) to a DefaultCrumbIssuer value
/// as specified in https://swagger.io/docs/specification/serialization/
/// Should be implemented in a serde deserializer
impl std::str::FromStr for DefaultCrumbIssuer {
    type Err = String;

    fn from_str(s: &str) -> std::result::Result<Self, Self::Err> {
        #[derive(Default)]
        // An intermediate representation of the struct to use for parsing.
        struct IntermediateRep {
            pub _class: Vec<String>,
            pub crumb: Vec<String>,
            pub crumb_request_field: Vec<String>,
        }

        let mut intermediate_rep = IntermediateRep::default();

        // Parse into intermediate representation
        let mut string_iter = s.split(',').into_iter();
        let mut key_result = string_iter.next();

        while key_result.is_some() {
            let val = match string_iter.next() {
                Some(x) => x,
                None => return std::result::Result::Err("Missing value while parsing DefaultCrumbIssuer".to_string())
            };

            if let Some(key) = key_result {
                match key {
                    "_class" => intermediate_rep._class.push(<String as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "crumb" => intermediate_rep.crumb.push(<String as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "crumbRequestField" => intermediate_rep.crumb_request_field.push(<String as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    _ => return std::result::Result::Err("Unexpected key while parsing DefaultCrumbIssuer".to_string())
                }
            }

            // Get the next key
            key_result = string_iter.next();
        }

        // Use the intermediate representation to return the struct
        std::result::Result::Ok(DefaultCrumbIssuer {
            _class: intermediate_rep._class.into_iter().next(),
            crumb: intermediate_rep.crumb.into_iter().next(),
            crumb_request_field: intermediate_rep.crumb_request_field.into_iter().next(),
        })
    }
}

// Methods for converting between header::IntoHeaderValue<DefaultCrumbIssuer> and hyper::header::HeaderValue

#[cfg(any(feature = "client", feature = "server"))]
impl std::convert::TryFrom<header::IntoHeaderValue<DefaultCrumbIssuer>> for hyper::header::HeaderValue {
    type Error = String;

    fn try_from(hdr_value: header::IntoHeaderValue<DefaultCrumbIssuer>) -> std::result::Result<Self, Self::Error> {
        let hdr_value = hdr_value.to_string();
        match hyper::header::HeaderValue::from_str(&hdr_value) {
             std::result::Result::Ok(value) => std::result::Result::Ok(value),
             std::result::Result::Err(e) => std::result::Result::Err(
                 format!("Invalid header value for DefaultCrumbIssuer - value: {} is invalid {}",
                     hdr_value, e))
        }
    }
}

#[cfg(any(feature = "client", feature = "server"))]
impl std::convert::TryFrom<hyper::header::HeaderValue> for header::IntoHeaderValue<DefaultCrumbIssuer> {
    type Error = String;

    fn try_from(hdr_value: hyper::header::HeaderValue) -> std::result::Result<Self, Self::Error> {
        match hdr_value.to_str() {
             std::result::Result::Ok(value) => {
                    match <DefaultCrumbIssuer as std::str::FromStr>::from_str(value) {
                        std::result::Result::Ok(value) => std::result::Result::Ok(header::IntoHeaderValue(value)),
                        std::result::Result::Err(err) => std::result::Result::Err(
                            format!("Unable to convert header value '{}' into DefaultCrumbIssuer - {}",
                                value, err))
                    }
             },
             std::result::Result::Err(e) => std::result::Result::Err(
                 format!("Unable to convert header: {:?} to string: {}",
                     hdr_value, e))
        }
    }
}


impl DefaultCrumbIssuer {
    /// Helper function to allow us to convert this model to an XML string.
    /// Will panic if serialisation fails.
    #[allow(dead_code)]
    pub(crate) fn to_xml(&self) -> String {
        serde_xml_rs::to_string(&self).expect("impossible to fail to serialize")
    }
}

#[derive(Debug, Clone, PartialEq, serde::Serialize, serde::Deserialize)]
#[cfg_attr(feature = "conversion", derive(frunk::LabelledGeneric))]
pub struct DiskSpaceMonitorDescriptorDiskSpace {
    #[serde(rename = "_class")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub _class: Option<String>,

    #[serde(rename = "timestamp")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub timestamp: Option<isize>,

    #[serde(rename = "path")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub path: Option<String>,

    #[serde(rename = "size")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub size: Option<isize>,

}

impl DiskSpaceMonitorDescriptorDiskSpace {
    pub fn new() -> DiskSpaceMonitorDescriptorDiskSpace {
        DiskSpaceMonitorDescriptorDiskSpace {
            _class: None,
            timestamp: None,
            path: None,
            size: None,
        }
    }
}

/// Converts the DiskSpaceMonitorDescriptorDiskSpace value to the Query Parameters representation (style=form, explode=false)
/// specified in https://swagger.io/docs/specification/serialization/
/// Should be implemented in a serde serializer
impl std::string::ToString for DiskSpaceMonitorDescriptorDiskSpace {
    fn to_string(&self) -> String {
        let mut params: Vec<String> = vec![];

        if let Some(ref _class) = self._class {
            params.push("_class".to_string());
            params.push(_class.to_string());
        }


        if let Some(ref timestamp) = self.timestamp {
            params.push("timestamp".to_string());
            params.push(timestamp.to_string());
        }


        if let Some(ref path) = self.path {
            params.push("path".to_string());
            params.push(path.to_string());
        }


        if let Some(ref size) = self.size {
            params.push("size".to_string());
            params.push(size.to_string());
        }

        params.join(",").to_string()
    }
}

/// Converts Query Parameters representation (style=form, explode=false) to a DiskSpaceMonitorDescriptorDiskSpace value
/// as specified in https://swagger.io/docs/specification/serialization/
/// Should be implemented in a serde deserializer
impl std::str::FromStr for DiskSpaceMonitorDescriptorDiskSpace {
    type Err = String;

    fn from_str(s: &str) -> std::result::Result<Self, Self::Err> {
        #[derive(Default)]
        // An intermediate representation of the struct to use for parsing.
        struct IntermediateRep {
            pub _class: Vec<String>,
            pub timestamp: Vec<isize>,
            pub path: Vec<String>,
            pub size: Vec<isize>,
        }

        let mut intermediate_rep = IntermediateRep::default();

        // Parse into intermediate representation
        let mut string_iter = s.split(',').into_iter();
        let mut key_result = string_iter.next();

        while key_result.is_some() {
            let val = match string_iter.next() {
                Some(x) => x,
                None => return std::result::Result::Err("Missing value while parsing DiskSpaceMonitorDescriptorDiskSpace".to_string())
            };

            if let Some(key) = key_result {
                match key {
                    "_class" => intermediate_rep._class.push(<String as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "timestamp" => intermediate_rep.timestamp.push(<isize as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "path" => intermediate_rep.path.push(<String as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "size" => intermediate_rep.size.push(<isize as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    _ => return std::result::Result::Err("Unexpected key while parsing DiskSpaceMonitorDescriptorDiskSpace".to_string())
                }
            }

            // Get the next key
            key_result = string_iter.next();
        }

        // Use the intermediate representation to return the struct
        std::result::Result::Ok(DiskSpaceMonitorDescriptorDiskSpace {
            _class: intermediate_rep._class.into_iter().next(),
            timestamp: intermediate_rep.timestamp.into_iter().next(),
            path: intermediate_rep.path.into_iter().next(),
            size: intermediate_rep.size.into_iter().next(),
        })
    }
}

// Methods for converting between header::IntoHeaderValue<DiskSpaceMonitorDescriptorDiskSpace> and hyper::header::HeaderValue

#[cfg(any(feature = "client", feature = "server"))]
impl std::convert::TryFrom<header::IntoHeaderValue<DiskSpaceMonitorDescriptorDiskSpace>> for hyper::header::HeaderValue {
    type Error = String;

    fn try_from(hdr_value: header::IntoHeaderValue<DiskSpaceMonitorDescriptorDiskSpace>) -> std::result::Result<Self, Self::Error> {
        let hdr_value = hdr_value.to_string();
        match hyper::header::HeaderValue::from_str(&hdr_value) {
             std::result::Result::Ok(value) => std::result::Result::Ok(value),
             std::result::Result::Err(e) => std::result::Result::Err(
                 format!("Invalid header value for DiskSpaceMonitorDescriptorDiskSpace - value: {} is invalid {}",
                     hdr_value, e))
        }
    }
}

#[cfg(any(feature = "client", feature = "server"))]
impl std::convert::TryFrom<hyper::header::HeaderValue> for header::IntoHeaderValue<DiskSpaceMonitorDescriptorDiskSpace> {
    type Error = String;

    fn try_from(hdr_value: hyper::header::HeaderValue) -> std::result::Result<Self, Self::Error> {
        match hdr_value.to_str() {
             std::result::Result::Ok(value) => {
                    match <DiskSpaceMonitorDescriptorDiskSpace as std::str::FromStr>::from_str(value) {
                        std::result::Result::Ok(value) => std::result::Result::Ok(header::IntoHeaderValue(value)),
                        std::result::Result::Err(err) => std::result::Result::Err(
                            format!("Unable to convert header value '{}' into DiskSpaceMonitorDescriptorDiskSpace - {}",
                                value, err))
                    }
             },
             std::result::Result::Err(e) => std::result::Result::Err(
                 format!("Unable to convert header: {:?} to string: {}",
                     hdr_value, e))
        }
    }
}


impl DiskSpaceMonitorDescriptorDiskSpace {
    /// Helper function to allow us to convert this model to an XML string.
    /// Will panic if serialisation fails.
    #[allow(dead_code)]
    pub(crate) fn to_xml(&self) -> String {
        serde_xml_rs::to_string(&self).expect("impossible to fail to serialize")
    }
}

#[derive(Debug, Clone, PartialEq, serde::Serialize, serde::Deserialize)]
#[cfg_attr(feature = "conversion", derive(frunk::LabelledGeneric))]
pub struct EmptyChangeLogSet {
    #[serde(rename = "_class")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub _class: Option<String>,

    #[serde(rename = "kind")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub kind: Option<String>,

}

impl EmptyChangeLogSet {
    pub fn new() -> EmptyChangeLogSet {
        EmptyChangeLogSet {
            _class: None,
            kind: None,
        }
    }
}

/// Converts the EmptyChangeLogSet value to the Query Parameters representation (style=form, explode=false)
/// specified in https://swagger.io/docs/specification/serialization/
/// Should be implemented in a serde serializer
impl std::string::ToString for EmptyChangeLogSet {
    fn to_string(&self) -> String {
        let mut params: Vec<String> = vec![];

        if let Some(ref _class) = self._class {
            params.push("_class".to_string());
            params.push(_class.to_string());
        }


        if let Some(ref kind) = self.kind {
            params.push("kind".to_string());
            params.push(kind.to_string());
        }

        params.join(",").to_string()
    }
}

/// Converts Query Parameters representation (style=form, explode=false) to a EmptyChangeLogSet value
/// as specified in https://swagger.io/docs/specification/serialization/
/// Should be implemented in a serde deserializer
impl std::str::FromStr for EmptyChangeLogSet {
    type Err = String;

    fn from_str(s: &str) -> std::result::Result<Self, Self::Err> {
        #[derive(Default)]
        // An intermediate representation of the struct to use for parsing.
        struct IntermediateRep {
            pub _class: Vec<String>,
            pub kind: Vec<String>,
        }

        let mut intermediate_rep = IntermediateRep::default();

        // Parse into intermediate representation
        let mut string_iter = s.split(',').into_iter();
        let mut key_result = string_iter.next();

        while key_result.is_some() {
            let val = match string_iter.next() {
                Some(x) => x,
                None => return std::result::Result::Err("Missing value while parsing EmptyChangeLogSet".to_string())
            };

            if let Some(key) = key_result {
                match key {
                    "_class" => intermediate_rep._class.push(<String as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "kind" => intermediate_rep.kind.push(<String as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    _ => return std::result::Result::Err("Unexpected key while parsing EmptyChangeLogSet".to_string())
                }
            }

            // Get the next key
            key_result = string_iter.next();
        }

        // Use the intermediate representation to return the struct
        std::result::Result::Ok(EmptyChangeLogSet {
            _class: intermediate_rep._class.into_iter().next(),
            kind: intermediate_rep.kind.into_iter().next(),
        })
    }
}

// Methods for converting between header::IntoHeaderValue<EmptyChangeLogSet> and hyper::header::HeaderValue

#[cfg(any(feature = "client", feature = "server"))]
impl std::convert::TryFrom<header::IntoHeaderValue<EmptyChangeLogSet>> for hyper::header::HeaderValue {
    type Error = String;

    fn try_from(hdr_value: header::IntoHeaderValue<EmptyChangeLogSet>) -> std::result::Result<Self, Self::Error> {
        let hdr_value = hdr_value.to_string();
        match hyper::header::HeaderValue::from_str(&hdr_value) {
             std::result::Result::Ok(value) => std::result::Result::Ok(value),
             std::result::Result::Err(e) => std::result::Result::Err(
                 format!("Invalid header value for EmptyChangeLogSet - value: {} is invalid {}",
                     hdr_value, e))
        }
    }
}

#[cfg(any(feature = "client", feature = "server"))]
impl std::convert::TryFrom<hyper::header::HeaderValue> for header::IntoHeaderValue<EmptyChangeLogSet> {
    type Error = String;

    fn try_from(hdr_value: hyper::header::HeaderValue) -> std::result::Result<Self, Self::Error> {
        match hdr_value.to_str() {
             std::result::Result::Ok(value) => {
                    match <EmptyChangeLogSet as std::str::FromStr>::from_str(value) {
                        std::result::Result::Ok(value) => std::result::Result::Ok(header::IntoHeaderValue(value)),
                        std::result::Result::Err(err) => std::result::Result::Err(
                            format!("Unable to convert header value '{}' into EmptyChangeLogSet - {}",
                                value, err))
                    }
             },
             std::result::Result::Err(e) => std::result::Result::Err(
                 format!("Unable to convert header: {:?} to string: {}",
                     hdr_value, e))
        }
    }
}


impl EmptyChangeLogSet {
    /// Helper function to allow us to convert this model to an XML string.
    /// Will panic if serialisation fails.
    #[allow(dead_code)]
    pub(crate) fn to_xml(&self) -> String {
        serde_xml_rs::to_string(&self).expect("impossible to fail to serialize")
    }
}

#[derive(Debug, Clone, PartialEq, serde::Serialize, serde::Deserialize)]
#[cfg_attr(feature = "conversion", derive(frunk::LabelledGeneric))]
pub struct ExtensionClassContainerImpl1 {
    #[serde(rename = "_class")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub _class: Option<String>,

    #[serde(rename = "_links")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub _links: Option<models::ExtensionClassContainerImpl1links>,

    #[serde(rename = "map")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub map: Option<models::ExtensionClassContainerImpl1map>,

}

impl ExtensionClassContainerImpl1 {
    pub fn new() -> ExtensionClassContainerImpl1 {
        ExtensionClassContainerImpl1 {
            _class: None,
            _links: None,
            map: None,
        }
    }
}

/// Converts the ExtensionClassContainerImpl1 value to the Query Parameters representation (style=form, explode=false)
/// specified in https://swagger.io/docs/specification/serialization/
/// Should be implemented in a serde serializer
impl std::string::ToString for ExtensionClassContainerImpl1 {
    fn to_string(&self) -> String {
        let mut params: Vec<String> = vec![];

        if let Some(ref _class) = self._class {
            params.push("_class".to_string());
            params.push(_class.to_string());
        }

        // Skipping _links in query parameter serialization

        // Skipping map in query parameter serialization

        params.join(",").to_string()
    }
}

/// Converts Query Parameters representation (style=form, explode=false) to a ExtensionClassContainerImpl1 value
/// as specified in https://swagger.io/docs/specification/serialization/
/// Should be implemented in a serde deserializer
impl std::str::FromStr for ExtensionClassContainerImpl1 {
    type Err = String;

    fn from_str(s: &str) -> std::result::Result<Self, Self::Err> {
        #[derive(Default)]
        // An intermediate representation of the struct to use for parsing.
        struct IntermediateRep {
            pub _class: Vec<String>,
            pub _links: Vec<models::ExtensionClassContainerImpl1links>,
            pub map: Vec<models::ExtensionClassContainerImpl1map>,
        }

        let mut intermediate_rep = IntermediateRep::default();

        // Parse into intermediate representation
        let mut string_iter = s.split(',').into_iter();
        let mut key_result = string_iter.next();

        while key_result.is_some() {
            let val = match string_iter.next() {
                Some(x) => x,
                None => return std::result::Result::Err("Missing value while parsing ExtensionClassContainerImpl1".to_string())
            };

            if let Some(key) = key_result {
                match key {
                    "_class" => intermediate_rep._class.push(<String as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "_links" => intermediate_rep._links.push(<models::ExtensionClassContainerImpl1links as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "map" => intermediate_rep.map.push(<models::ExtensionClassContainerImpl1map as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    _ => return std::result::Result::Err("Unexpected key while parsing ExtensionClassContainerImpl1".to_string())
                }
            }

            // Get the next key
            key_result = string_iter.next();
        }

        // Use the intermediate representation to return the struct
        std::result::Result::Ok(ExtensionClassContainerImpl1 {
            _class: intermediate_rep._class.into_iter().next(),
            _links: intermediate_rep._links.into_iter().next(),
            map: intermediate_rep.map.into_iter().next(),
        })
    }
}

// Methods for converting between header::IntoHeaderValue<ExtensionClassContainerImpl1> and hyper::header::HeaderValue

#[cfg(any(feature = "client", feature = "server"))]
impl std::convert::TryFrom<header::IntoHeaderValue<ExtensionClassContainerImpl1>> for hyper::header::HeaderValue {
    type Error = String;

    fn try_from(hdr_value: header::IntoHeaderValue<ExtensionClassContainerImpl1>) -> std::result::Result<Self, Self::Error> {
        let hdr_value = hdr_value.to_string();
        match hyper::header::HeaderValue::from_str(&hdr_value) {
             std::result::Result::Ok(value) => std::result::Result::Ok(value),
             std::result::Result::Err(e) => std::result::Result::Err(
                 format!("Invalid header value for ExtensionClassContainerImpl1 - value: {} is invalid {}",
                     hdr_value, e))
        }
    }
}

#[cfg(any(feature = "client", feature = "server"))]
impl std::convert::TryFrom<hyper::header::HeaderValue> for header::IntoHeaderValue<ExtensionClassContainerImpl1> {
    type Error = String;

    fn try_from(hdr_value: hyper::header::HeaderValue) -> std::result::Result<Self, Self::Error> {
        match hdr_value.to_str() {
             std::result::Result::Ok(value) => {
                    match <ExtensionClassContainerImpl1 as std::str::FromStr>::from_str(value) {
                        std::result::Result::Ok(value) => std::result::Result::Ok(header::IntoHeaderValue(value)),
                        std::result::Result::Err(err) => std::result::Result::Err(
                            format!("Unable to convert header value '{}' into ExtensionClassContainerImpl1 - {}",
                                value, err))
                    }
             },
             std::result::Result::Err(e) => std::result::Result::Err(
                 format!("Unable to convert header: {:?} to string: {}",
                     hdr_value, e))
        }
    }
}


impl ExtensionClassContainerImpl1 {
    /// Helper function to allow us to convert this model to an XML string.
    /// Will panic if serialisation fails.
    #[allow(dead_code)]
    pub(crate) fn to_xml(&self) -> String {
        serde_xml_rs::to_string(&self).expect("impossible to fail to serialize")
    }
}

#[derive(Debug, Clone, PartialEq, serde::Serialize, serde::Deserialize)]
#[cfg_attr(feature = "conversion", derive(frunk::LabelledGeneric))]
pub struct ExtensionClassContainerImpl1links {
    #[serde(rename = "self")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub self_: Option<models::Link>,

    #[serde(rename = "_class")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub _class: Option<String>,

}

impl ExtensionClassContainerImpl1links {
    pub fn new() -> ExtensionClassContainerImpl1links {
        ExtensionClassContainerImpl1links {
            self_: None,
            _class: None,
        }
    }
}

/// Converts the ExtensionClassContainerImpl1links value to the Query Parameters representation (style=form, explode=false)
/// specified in https://swagger.io/docs/specification/serialization/
/// Should be implemented in a serde serializer
impl std::string::ToString for ExtensionClassContainerImpl1links {
    fn to_string(&self) -> String {
        let mut params: Vec<String> = vec![];
        // Skipping self in query parameter serialization


        if let Some(ref _class) = self._class {
            params.push("_class".to_string());
            params.push(_class.to_string());
        }

        params.join(",").to_string()
    }
}

/// Converts Query Parameters representation (style=form, explode=false) to a ExtensionClassContainerImpl1links value
/// as specified in https://swagger.io/docs/specification/serialization/
/// Should be implemented in a serde deserializer
impl std::str::FromStr for ExtensionClassContainerImpl1links {
    type Err = String;

    fn from_str(s: &str) -> std::result::Result<Self, Self::Err> {
        #[derive(Default)]
        // An intermediate representation of the struct to use for parsing.
        struct IntermediateRep {
            pub self_: Vec<models::Link>,
            pub _class: Vec<String>,
        }

        let mut intermediate_rep = IntermediateRep::default();

        // Parse into intermediate representation
        let mut string_iter = s.split(',').into_iter();
        let mut key_result = string_iter.next();

        while key_result.is_some() {
            let val = match string_iter.next() {
                Some(x) => x,
                None => return std::result::Result::Err("Missing value while parsing ExtensionClassContainerImpl1links".to_string())
            };

            if let Some(key) = key_result {
                match key {
                    "self" => intermediate_rep.self_.push(<models::Link as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "_class" => intermediate_rep._class.push(<String as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    _ => return std::result::Result::Err("Unexpected key while parsing ExtensionClassContainerImpl1links".to_string())
                }
            }

            // Get the next key
            key_result = string_iter.next();
        }

        // Use the intermediate representation to return the struct
        std::result::Result::Ok(ExtensionClassContainerImpl1links {
            self_: intermediate_rep.self_.into_iter().next(),
            _class: intermediate_rep._class.into_iter().next(),
        })
    }
}

// Methods for converting between header::IntoHeaderValue<ExtensionClassContainerImpl1links> and hyper::header::HeaderValue

#[cfg(any(feature = "client", feature = "server"))]
impl std::convert::TryFrom<header::IntoHeaderValue<ExtensionClassContainerImpl1links>> for hyper::header::HeaderValue {
    type Error = String;

    fn try_from(hdr_value: header::IntoHeaderValue<ExtensionClassContainerImpl1links>) -> std::result::Result<Self, Self::Error> {
        let hdr_value = hdr_value.to_string();
        match hyper::header::HeaderValue::from_str(&hdr_value) {
             std::result::Result::Ok(value) => std::result::Result::Ok(value),
             std::result::Result::Err(e) => std::result::Result::Err(
                 format!("Invalid header value for ExtensionClassContainerImpl1links - value: {} is invalid {}",
                     hdr_value, e))
        }
    }
}

#[cfg(any(feature = "client", feature = "server"))]
impl std::convert::TryFrom<hyper::header::HeaderValue> for header::IntoHeaderValue<ExtensionClassContainerImpl1links> {
    type Error = String;

    fn try_from(hdr_value: hyper::header::HeaderValue) -> std::result::Result<Self, Self::Error> {
        match hdr_value.to_str() {
             std::result::Result::Ok(value) => {
                    match <ExtensionClassContainerImpl1links as std::str::FromStr>::from_str(value) {
                        std::result::Result::Ok(value) => std::result::Result::Ok(header::IntoHeaderValue(value)),
                        std::result::Result::Err(err) => std::result::Result::Err(
                            format!("Unable to convert header value '{}' into ExtensionClassContainerImpl1links - {}",
                                value, err))
                    }
             },
             std::result::Result::Err(e) => std::result::Result::Err(
                 format!("Unable to convert header: {:?} to string: {}",
                     hdr_value, e))
        }
    }
}


impl ExtensionClassContainerImpl1links {
    /// Helper function to allow us to convert this model to an XML string.
    /// Will panic if serialisation fails.
    #[allow(dead_code)]
    pub(crate) fn to_xml(&self) -> String {
        serde_xml_rs::to_string(&self).expect("impossible to fail to serialize")
    }
}

#[derive(Debug, Clone, PartialEq, serde::Serialize, serde::Deserialize)]
#[cfg_attr(feature = "conversion", derive(frunk::LabelledGeneric))]
pub struct ExtensionClassContainerImpl1map {
    #[serde(rename = "io.jenkins.blueocean.service.embedded.rest.PipelineImpl")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub io_jenkins_blueocean_service_embedded_rest_pipeline_impl: Option<models::ExtensionClassImpl>,

    #[serde(rename = "io.jenkins.blueocean.service.embedded.rest.MultiBranchPipelineImpl")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub io_jenkins_blueocean_service_embedded_rest_multi_branch_pipeline_impl: Option<models::ExtensionClassImpl>,

    #[serde(rename = "_class")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub _class: Option<String>,

}

impl ExtensionClassContainerImpl1map {
    pub fn new() -> ExtensionClassContainerImpl1map {
        ExtensionClassContainerImpl1map {
            io_jenkins_blueocean_service_embedded_rest_pipeline_impl: None,
            io_jenkins_blueocean_service_embedded_rest_multi_branch_pipeline_impl: None,
            _class: None,
        }
    }
}

/// Converts the ExtensionClassContainerImpl1map value to the Query Parameters representation (style=form, explode=false)
/// specified in https://swagger.io/docs/specification/serialization/
/// Should be implemented in a serde serializer
impl std::string::ToString for ExtensionClassContainerImpl1map {
    fn to_string(&self) -> String {
        let mut params: Vec<String> = vec![];
        // Skipping io.jenkins.blueocean.service.embedded.rest.PipelineImpl in query parameter serialization

        // Skipping io.jenkins.blueocean.service.embedded.rest.MultiBranchPipelineImpl in query parameter serialization


        if let Some(ref _class) = self._class {
            params.push("_class".to_string());
            params.push(_class.to_string());
        }

        params.join(",").to_string()
    }
}

/// Converts Query Parameters representation (style=form, explode=false) to a ExtensionClassContainerImpl1map value
/// as specified in https://swagger.io/docs/specification/serialization/
/// Should be implemented in a serde deserializer
impl std::str::FromStr for ExtensionClassContainerImpl1map {
    type Err = String;

    fn from_str(s: &str) -> std::result::Result<Self, Self::Err> {
        #[derive(Default)]
        // An intermediate representation of the struct to use for parsing.
        struct IntermediateRep {
            pub io_jenkins_blueocean_service_embedded_rest_pipeline_impl: Vec<models::ExtensionClassImpl>,
            pub io_jenkins_blueocean_service_embedded_rest_multi_branch_pipeline_impl: Vec<models::ExtensionClassImpl>,
            pub _class: Vec<String>,
        }

        let mut intermediate_rep = IntermediateRep::default();

        // Parse into intermediate representation
        let mut string_iter = s.split(',').into_iter();
        let mut key_result = string_iter.next();

        while key_result.is_some() {
            let val = match string_iter.next() {
                Some(x) => x,
                None => return std::result::Result::Err("Missing value while parsing ExtensionClassContainerImpl1map".to_string())
            };

            if let Some(key) = key_result {
                match key {
                    "io.jenkins.blueocean.service.embedded.rest.PipelineImpl" => intermediate_rep.io_jenkins_blueocean_service_embedded_rest_pipeline_impl.push(<models::ExtensionClassImpl as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "io.jenkins.blueocean.service.embedded.rest.MultiBranchPipelineImpl" => intermediate_rep.io_jenkins_blueocean_service_embedded_rest_multi_branch_pipeline_impl.push(<models::ExtensionClassImpl as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "_class" => intermediate_rep._class.push(<String as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    _ => return std::result::Result::Err("Unexpected key while parsing ExtensionClassContainerImpl1map".to_string())
                }
            }

            // Get the next key
            key_result = string_iter.next();
        }

        // Use the intermediate representation to return the struct
        std::result::Result::Ok(ExtensionClassContainerImpl1map {
            io_jenkins_blueocean_service_embedded_rest_pipeline_impl: intermediate_rep.io_jenkins_blueocean_service_embedded_rest_pipeline_impl.into_iter().next(),
            io_jenkins_blueocean_service_embedded_rest_multi_branch_pipeline_impl: intermediate_rep.io_jenkins_blueocean_service_embedded_rest_multi_branch_pipeline_impl.into_iter().next(),
            _class: intermediate_rep._class.into_iter().next(),
        })
    }
}

// Methods for converting between header::IntoHeaderValue<ExtensionClassContainerImpl1map> and hyper::header::HeaderValue

#[cfg(any(feature = "client", feature = "server"))]
impl std::convert::TryFrom<header::IntoHeaderValue<ExtensionClassContainerImpl1map>> for hyper::header::HeaderValue {
    type Error = String;

    fn try_from(hdr_value: header::IntoHeaderValue<ExtensionClassContainerImpl1map>) -> std::result::Result<Self, Self::Error> {
        let hdr_value = hdr_value.to_string();
        match hyper::header::HeaderValue::from_str(&hdr_value) {
             std::result::Result::Ok(value) => std::result::Result::Ok(value),
             std::result::Result::Err(e) => std::result::Result::Err(
                 format!("Invalid header value for ExtensionClassContainerImpl1map - value: {} is invalid {}",
                     hdr_value, e))
        }
    }
}

#[cfg(any(feature = "client", feature = "server"))]
impl std::convert::TryFrom<hyper::header::HeaderValue> for header::IntoHeaderValue<ExtensionClassContainerImpl1map> {
    type Error = String;

    fn try_from(hdr_value: hyper::header::HeaderValue) -> std::result::Result<Self, Self::Error> {
        match hdr_value.to_str() {
             std::result::Result::Ok(value) => {
                    match <ExtensionClassContainerImpl1map as std::str::FromStr>::from_str(value) {
                        std::result::Result::Ok(value) => std::result::Result::Ok(header::IntoHeaderValue(value)),
                        std::result::Result::Err(err) => std::result::Result::Err(
                            format!("Unable to convert header value '{}' into ExtensionClassContainerImpl1map - {}",
                                value, err))
                    }
             },
             std::result::Result::Err(e) => std::result::Result::Err(
                 format!("Unable to convert header: {:?} to string: {}",
                     hdr_value, e))
        }
    }
}


impl ExtensionClassContainerImpl1map {
    /// Helper function to allow us to convert this model to an XML string.
    /// Will panic if serialisation fails.
    #[allow(dead_code)]
    pub(crate) fn to_xml(&self) -> String {
        serde_xml_rs::to_string(&self).expect("impossible to fail to serialize")
    }
}

#[derive(Debug, Clone, PartialEq, serde::Serialize, serde::Deserialize)]
#[cfg_attr(feature = "conversion", derive(frunk::LabelledGeneric))]
pub struct ExtensionClassImpl {
    #[serde(rename = "_class")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub _class: Option<String>,

    #[serde(rename = "_links")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub _links: Option<models::ExtensionClassImpllinks>,

    #[serde(rename = "classes")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub classes: Option<Vec<String>>,

}

impl ExtensionClassImpl {
    pub fn new() -> ExtensionClassImpl {
        ExtensionClassImpl {
            _class: None,
            _links: None,
            classes: None,
        }
    }
}

/// Converts the ExtensionClassImpl value to the Query Parameters representation (style=form, explode=false)
/// specified in https://swagger.io/docs/specification/serialization/
/// Should be implemented in a serde serializer
impl std::string::ToString for ExtensionClassImpl {
    fn to_string(&self) -> String {
        let mut params: Vec<String> = vec![];

        if let Some(ref _class) = self._class {
            params.push("_class".to_string());
            params.push(_class.to_string());
        }

        // Skipping _links in query parameter serialization


        if let Some(ref classes) = self.classes {
            params.push("classes".to_string());
            params.push(classes.iter().map(|x| x.to_string()).collect::<Vec<_>>().join(",").to_string());
        }

        params.join(",").to_string()
    }
}

/// Converts Query Parameters representation (style=form, explode=false) to a ExtensionClassImpl value
/// as specified in https://swagger.io/docs/specification/serialization/
/// Should be implemented in a serde deserializer
impl std::str::FromStr for ExtensionClassImpl {
    type Err = String;

    fn from_str(s: &str) -> std::result::Result<Self, Self::Err> {
        #[derive(Default)]
        // An intermediate representation of the struct to use for parsing.
        struct IntermediateRep {
            pub _class: Vec<String>,
            pub _links: Vec<models::ExtensionClassImpllinks>,
            pub classes: Vec<Vec<String>>,
        }

        let mut intermediate_rep = IntermediateRep::default();

        // Parse into intermediate representation
        let mut string_iter = s.split(',').into_iter();
        let mut key_result = string_iter.next();

        while key_result.is_some() {
            let val = match string_iter.next() {
                Some(x) => x,
                None => return std::result::Result::Err("Missing value while parsing ExtensionClassImpl".to_string())
            };

            if let Some(key) = key_result {
                match key {
                    "_class" => intermediate_rep._class.push(<String as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "_links" => intermediate_rep._links.push(<models::ExtensionClassImpllinks as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "classes" => return std::result::Result::Err("Parsing a container in this style is not supported in ExtensionClassImpl".to_string()),
                    _ => return std::result::Result::Err("Unexpected key while parsing ExtensionClassImpl".to_string())
                }
            }

            // Get the next key
            key_result = string_iter.next();
        }

        // Use the intermediate representation to return the struct
        std::result::Result::Ok(ExtensionClassImpl {
            _class: intermediate_rep._class.into_iter().next(),
            _links: intermediate_rep._links.into_iter().next(),
            classes: intermediate_rep.classes.into_iter().next(),
        })
    }
}

// Methods for converting between header::IntoHeaderValue<ExtensionClassImpl> and hyper::header::HeaderValue

#[cfg(any(feature = "client", feature = "server"))]
impl std::convert::TryFrom<header::IntoHeaderValue<ExtensionClassImpl>> for hyper::header::HeaderValue {
    type Error = String;

    fn try_from(hdr_value: header::IntoHeaderValue<ExtensionClassImpl>) -> std::result::Result<Self, Self::Error> {
        let hdr_value = hdr_value.to_string();
        match hyper::header::HeaderValue::from_str(&hdr_value) {
             std::result::Result::Ok(value) => std::result::Result::Ok(value),
             std::result::Result::Err(e) => std::result::Result::Err(
                 format!("Invalid header value for ExtensionClassImpl - value: {} is invalid {}",
                     hdr_value, e))
        }
    }
}

#[cfg(any(feature = "client", feature = "server"))]
impl std::convert::TryFrom<hyper::header::HeaderValue> for header::IntoHeaderValue<ExtensionClassImpl> {
    type Error = String;

    fn try_from(hdr_value: hyper::header::HeaderValue) -> std::result::Result<Self, Self::Error> {
        match hdr_value.to_str() {
             std::result::Result::Ok(value) => {
                    match <ExtensionClassImpl as std::str::FromStr>::from_str(value) {
                        std::result::Result::Ok(value) => std::result::Result::Ok(header::IntoHeaderValue(value)),
                        std::result::Result::Err(err) => std::result::Result::Err(
                            format!("Unable to convert header value '{}' into ExtensionClassImpl - {}",
                                value, err))
                    }
             },
             std::result::Result::Err(e) => std::result::Result::Err(
                 format!("Unable to convert header: {:?} to string: {}",
                     hdr_value, e))
        }
    }
}


impl ExtensionClassImpl {
    /// Helper function to allow us to convert this model to an XML string.
    /// Will panic if serialisation fails.
    #[allow(dead_code)]
    pub(crate) fn to_xml(&self) -> String {
        serde_xml_rs::to_string(&self).expect("impossible to fail to serialize")
    }
}

#[derive(Debug, Clone, PartialEq, serde::Serialize, serde::Deserialize)]
#[cfg_attr(feature = "conversion", derive(frunk::LabelledGeneric))]
pub struct ExtensionClassImpllinks {
    #[serde(rename = "self")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub self_: Option<models::Link>,

    #[serde(rename = "_class")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub _class: Option<String>,

}

impl ExtensionClassImpllinks {
    pub fn new() -> ExtensionClassImpllinks {
        ExtensionClassImpllinks {
            self_: None,
            _class: None,
        }
    }
}

/// Converts the ExtensionClassImpllinks value to the Query Parameters representation (style=form, explode=false)
/// specified in https://swagger.io/docs/specification/serialization/
/// Should be implemented in a serde serializer
impl std::string::ToString for ExtensionClassImpllinks {
    fn to_string(&self) -> String {
        let mut params: Vec<String> = vec![];
        // Skipping self in query parameter serialization


        if let Some(ref _class) = self._class {
            params.push("_class".to_string());
            params.push(_class.to_string());
        }

        params.join(",").to_string()
    }
}

/// Converts Query Parameters representation (style=form, explode=false) to a ExtensionClassImpllinks value
/// as specified in https://swagger.io/docs/specification/serialization/
/// Should be implemented in a serde deserializer
impl std::str::FromStr for ExtensionClassImpllinks {
    type Err = String;

    fn from_str(s: &str) -> std::result::Result<Self, Self::Err> {
        #[derive(Default)]
        // An intermediate representation of the struct to use for parsing.
        struct IntermediateRep {
            pub self_: Vec<models::Link>,
            pub _class: Vec<String>,
        }

        let mut intermediate_rep = IntermediateRep::default();

        // Parse into intermediate representation
        let mut string_iter = s.split(',').into_iter();
        let mut key_result = string_iter.next();

        while key_result.is_some() {
            let val = match string_iter.next() {
                Some(x) => x,
                None => return std::result::Result::Err("Missing value while parsing ExtensionClassImpllinks".to_string())
            };

            if let Some(key) = key_result {
                match key {
                    "self" => intermediate_rep.self_.push(<models::Link as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "_class" => intermediate_rep._class.push(<String as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    _ => return std::result::Result::Err("Unexpected key while parsing ExtensionClassImpllinks".to_string())
                }
            }

            // Get the next key
            key_result = string_iter.next();
        }

        // Use the intermediate representation to return the struct
        std::result::Result::Ok(ExtensionClassImpllinks {
            self_: intermediate_rep.self_.into_iter().next(),
            _class: intermediate_rep._class.into_iter().next(),
        })
    }
}

// Methods for converting between header::IntoHeaderValue<ExtensionClassImpllinks> and hyper::header::HeaderValue

#[cfg(any(feature = "client", feature = "server"))]
impl std::convert::TryFrom<header::IntoHeaderValue<ExtensionClassImpllinks>> for hyper::header::HeaderValue {
    type Error = String;

    fn try_from(hdr_value: header::IntoHeaderValue<ExtensionClassImpllinks>) -> std::result::Result<Self, Self::Error> {
        let hdr_value = hdr_value.to_string();
        match hyper::header::HeaderValue::from_str(&hdr_value) {
             std::result::Result::Ok(value) => std::result::Result::Ok(value),
             std::result::Result::Err(e) => std::result::Result::Err(
                 format!("Invalid header value for ExtensionClassImpllinks - value: {} is invalid {}",
                     hdr_value, e))
        }
    }
}

#[cfg(any(feature = "client", feature = "server"))]
impl std::convert::TryFrom<hyper::header::HeaderValue> for header::IntoHeaderValue<ExtensionClassImpllinks> {
    type Error = String;

    fn try_from(hdr_value: hyper::header::HeaderValue) -> std::result::Result<Self, Self::Error> {
        match hdr_value.to_str() {
             std::result::Result::Ok(value) => {
                    match <ExtensionClassImpllinks as std::str::FromStr>::from_str(value) {
                        std::result::Result::Ok(value) => std::result::Result::Ok(header::IntoHeaderValue(value)),
                        std::result::Result::Err(err) => std::result::Result::Err(
                            format!("Unable to convert header value '{}' into ExtensionClassImpllinks - {}",
                                value, err))
                    }
             },
             std::result::Result::Err(e) => std::result::Result::Err(
                 format!("Unable to convert header: {:?} to string: {}",
                     hdr_value, e))
        }
    }
}


impl ExtensionClassImpllinks {
    /// Helper function to allow us to convert this model to an XML string.
    /// Will panic if serialisation fails.
    #[allow(dead_code)]
    pub(crate) fn to_xml(&self) -> String {
        serde_xml_rs::to_string(&self).expect("impossible to fail to serialize")
    }
}

#[derive(Debug, Clone, PartialEq, serde::Serialize, serde::Deserialize)]
#[cfg_attr(feature = "conversion", derive(frunk::LabelledGeneric))]
pub struct FavoriteImpl {
    #[serde(rename = "_class")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub _class: Option<String>,

    #[serde(rename = "_links")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub _links: Option<models::FavoriteImpllinks>,

    #[serde(rename = "item")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub item: Option<models::PipelineImpl>,

}

impl FavoriteImpl {
    pub fn new() -> FavoriteImpl {
        FavoriteImpl {
            _class: None,
            _links: None,
            item: None,
        }
    }
}

/// Converts the FavoriteImpl value to the Query Parameters representation (style=form, explode=false)
/// specified in https://swagger.io/docs/specification/serialization/
/// Should be implemented in a serde serializer
impl std::string::ToString for FavoriteImpl {
    fn to_string(&self) -> String {
        let mut params: Vec<String> = vec![];

        if let Some(ref _class) = self._class {
            params.push("_class".to_string());
            params.push(_class.to_string());
        }

        // Skipping _links in query parameter serialization

        // Skipping item in query parameter serialization

        params.join(",").to_string()
    }
}

/// Converts Query Parameters representation (style=form, explode=false) to a FavoriteImpl value
/// as specified in https://swagger.io/docs/specification/serialization/
/// Should be implemented in a serde deserializer
impl std::str::FromStr for FavoriteImpl {
    type Err = String;

    fn from_str(s: &str) -> std::result::Result<Self, Self::Err> {
        #[derive(Default)]
        // An intermediate representation of the struct to use for parsing.
        struct IntermediateRep {
            pub _class: Vec<String>,
            pub _links: Vec<models::FavoriteImpllinks>,
            pub item: Vec<models::PipelineImpl>,
        }

        let mut intermediate_rep = IntermediateRep::default();

        // Parse into intermediate representation
        let mut string_iter = s.split(',').into_iter();
        let mut key_result = string_iter.next();

        while key_result.is_some() {
            let val = match string_iter.next() {
                Some(x) => x,
                None => return std::result::Result::Err("Missing value while parsing FavoriteImpl".to_string())
            };

            if let Some(key) = key_result {
                match key {
                    "_class" => intermediate_rep._class.push(<String as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "_links" => intermediate_rep._links.push(<models::FavoriteImpllinks as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "item" => intermediate_rep.item.push(<models::PipelineImpl as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    _ => return std::result::Result::Err("Unexpected key while parsing FavoriteImpl".to_string())
                }
            }

            // Get the next key
            key_result = string_iter.next();
        }

        // Use the intermediate representation to return the struct
        std::result::Result::Ok(FavoriteImpl {
            _class: intermediate_rep._class.into_iter().next(),
            _links: intermediate_rep._links.into_iter().next(),
            item: intermediate_rep.item.into_iter().next(),
        })
    }
}

// Methods for converting between header::IntoHeaderValue<FavoriteImpl> and hyper::header::HeaderValue

#[cfg(any(feature = "client", feature = "server"))]
impl std::convert::TryFrom<header::IntoHeaderValue<FavoriteImpl>> for hyper::header::HeaderValue {
    type Error = String;

    fn try_from(hdr_value: header::IntoHeaderValue<FavoriteImpl>) -> std::result::Result<Self, Self::Error> {
        let hdr_value = hdr_value.to_string();
        match hyper::header::HeaderValue::from_str(&hdr_value) {
             std::result::Result::Ok(value) => std::result::Result::Ok(value),
             std::result::Result::Err(e) => std::result::Result::Err(
                 format!("Invalid header value for FavoriteImpl - value: {} is invalid {}",
                     hdr_value, e))
        }
    }
}

#[cfg(any(feature = "client", feature = "server"))]
impl std::convert::TryFrom<hyper::header::HeaderValue> for header::IntoHeaderValue<FavoriteImpl> {
    type Error = String;

    fn try_from(hdr_value: hyper::header::HeaderValue) -> std::result::Result<Self, Self::Error> {
        match hdr_value.to_str() {
             std::result::Result::Ok(value) => {
                    match <FavoriteImpl as std::str::FromStr>::from_str(value) {
                        std::result::Result::Ok(value) => std::result::Result::Ok(header::IntoHeaderValue(value)),
                        std::result::Result::Err(err) => std::result::Result::Err(
                            format!("Unable to convert header value '{}' into FavoriteImpl - {}",
                                value, err))
                    }
             },
             std::result::Result::Err(e) => std::result::Result::Err(
                 format!("Unable to convert header: {:?} to string: {}",
                     hdr_value, e))
        }
    }
}


impl FavoriteImpl {
    /// Helper function to allow us to convert this model to an XML string.
    /// Will panic if serialisation fails.
    #[allow(dead_code)]
    pub(crate) fn to_xml(&self) -> String {
        serde_xml_rs::to_string(&self).expect("impossible to fail to serialize")
    }
}

#[derive(Debug, Clone, PartialEq, serde::Serialize, serde::Deserialize)]
#[cfg_attr(feature = "conversion", derive(frunk::LabelledGeneric))]
pub struct FavoriteImpllinks {
    #[serde(rename = "self")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub self_: Option<models::Link>,

    #[serde(rename = "_class")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub _class: Option<String>,

}

impl FavoriteImpllinks {
    pub fn new() -> FavoriteImpllinks {
        FavoriteImpllinks {
            self_: None,
            _class: None,
        }
    }
}

/// Converts the FavoriteImpllinks value to the Query Parameters representation (style=form, explode=false)
/// specified in https://swagger.io/docs/specification/serialization/
/// Should be implemented in a serde serializer
impl std::string::ToString for FavoriteImpllinks {
    fn to_string(&self) -> String {
        let mut params: Vec<String> = vec![];
        // Skipping self in query parameter serialization


        if let Some(ref _class) = self._class {
            params.push("_class".to_string());
            params.push(_class.to_string());
        }

        params.join(",").to_string()
    }
}

/// Converts Query Parameters representation (style=form, explode=false) to a FavoriteImpllinks value
/// as specified in https://swagger.io/docs/specification/serialization/
/// Should be implemented in a serde deserializer
impl std::str::FromStr for FavoriteImpllinks {
    type Err = String;

    fn from_str(s: &str) -> std::result::Result<Self, Self::Err> {
        #[derive(Default)]
        // An intermediate representation of the struct to use for parsing.
        struct IntermediateRep {
            pub self_: Vec<models::Link>,
            pub _class: Vec<String>,
        }

        let mut intermediate_rep = IntermediateRep::default();

        // Parse into intermediate representation
        let mut string_iter = s.split(',').into_iter();
        let mut key_result = string_iter.next();

        while key_result.is_some() {
            let val = match string_iter.next() {
                Some(x) => x,
                None => return std::result::Result::Err("Missing value while parsing FavoriteImpllinks".to_string())
            };

            if let Some(key) = key_result {
                match key {
                    "self" => intermediate_rep.self_.push(<models::Link as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "_class" => intermediate_rep._class.push(<String as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    _ => return std::result::Result::Err("Unexpected key while parsing FavoriteImpllinks".to_string())
                }
            }

            // Get the next key
            key_result = string_iter.next();
        }

        // Use the intermediate representation to return the struct
        std::result::Result::Ok(FavoriteImpllinks {
            self_: intermediate_rep.self_.into_iter().next(),
            _class: intermediate_rep._class.into_iter().next(),
        })
    }
}

// Methods for converting between header::IntoHeaderValue<FavoriteImpllinks> and hyper::header::HeaderValue

#[cfg(any(feature = "client", feature = "server"))]
impl std::convert::TryFrom<header::IntoHeaderValue<FavoriteImpllinks>> for hyper::header::HeaderValue {
    type Error = String;

    fn try_from(hdr_value: header::IntoHeaderValue<FavoriteImpllinks>) -> std::result::Result<Self, Self::Error> {
        let hdr_value = hdr_value.to_string();
        match hyper::header::HeaderValue::from_str(&hdr_value) {
             std::result::Result::Ok(value) => std::result::Result::Ok(value),
             std::result::Result::Err(e) => std::result::Result::Err(
                 format!("Invalid header value for FavoriteImpllinks - value: {} is invalid {}",
                     hdr_value, e))
        }
    }
}

#[cfg(any(feature = "client", feature = "server"))]
impl std::convert::TryFrom<hyper::header::HeaderValue> for header::IntoHeaderValue<FavoriteImpllinks> {
    type Error = String;

    fn try_from(hdr_value: hyper::header::HeaderValue) -> std::result::Result<Self, Self::Error> {
        match hdr_value.to_str() {
             std::result::Result::Ok(value) => {
                    match <FavoriteImpllinks as std::str::FromStr>::from_str(value) {
                        std::result::Result::Ok(value) => std::result::Result::Ok(header::IntoHeaderValue(value)),
                        std::result::Result::Err(err) => std::result::Result::Err(
                            format!("Unable to convert header value '{}' into FavoriteImpllinks - {}",
                                value, err))
                    }
             },
             std::result::Result::Err(e) => std::result::Result::Err(
                 format!("Unable to convert header: {:?} to string: {}",
                     hdr_value, e))
        }
    }
}


impl FavoriteImpllinks {
    /// Helper function to allow us to convert this model to an XML string.
    /// Will panic if serialisation fails.
    #[allow(dead_code)]
    pub(crate) fn to_xml(&self) -> String {
        serde_xml_rs::to_string(&self).expect("impossible to fail to serialize")
    }
}

#[derive(Debug, Clone, PartialEq, serde::Serialize, serde::Deserialize)]
#[cfg_attr(feature = "conversion", derive(frunk::LabelledGeneric))]
pub struct FreeStyleBuild {
    #[serde(rename = "_class")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub _class: Option<String>,

    #[serde(rename = "number")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub number: Option<isize>,

    #[serde(rename = "url")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub url: Option<String>,

    #[serde(rename = "actions")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub actions: Option<Vec<models::CauseAction>>,

    #[serde(rename = "building")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub building: Option<bool>,

    #[serde(rename = "description")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub description: Option<String>,

    #[serde(rename = "displayName")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub display_name: Option<String>,

    #[serde(rename = "duration")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub duration: Option<isize>,

    #[serde(rename = "estimatedDuration")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub estimated_duration: Option<isize>,

    #[serde(rename = "executor")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub executor: Option<String>,

    #[serde(rename = "fullDisplayName")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub full_display_name: Option<String>,

    #[serde(rename = "id")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub id: Option<String>,

    #[serde(rename = "keepLog")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub keep_log: Option<bool>,

    #[serde(rename = "queueId")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub queue_id: Option<isize>,

    #[serde(rename = "result")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub result: Option<String>,

    #[serde(rename = "timestamp")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub timestamp: Option<isize>,

    #[serde(rename = "builtOn")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub built_on: Option<String>,

    #[serde(rename = "changeSet")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub change_set: Option<models::EmptyChangeLogSet>,

}

impl FreeStyleBuild {
    pub fn new() -> FreeStyleBuild {
        FreeStyleBuild {
            _class: None,
            number: None,
            url: None,
            actions: None,
            building: None,
            description: None,
            display_name: None,
            duration: None,
            estimated_duration: None,
            executor: None,
            full_display_name: None,
            id: None,
            keep_log: None,
            queue_id: None,
            result: None,
            timestamp: None,
            built_on: None,
            change_set: None,
        }
    }
}

/// Converts the FreeStyleBuild value to the Query Parameters representation (style=form, explode=false)
/// specified in https://swagger.io/docs/specification/serialization/
/// Should be implemented in a serde serializer
impl std::string::ToString for FreeStyleBuild {
    fn to_string(&self) -> String {
        let mut params: Vec<String> = vec![];

        if let Some(ref _class) = self._class {
            params.push("_class".to_string());
            params.push(_class.to_string());
        }


        if let Some(ref number) = self.number {
            params.push("number".to_string());
            params.push(number.to_string());
        }


        if let Some(ref url) = self.url {
            params.push("url".to_string());
            params.push(url.to_string());
        }

        // Skipping actions in query parameter serialization


        if let Some(ref building) = self.building {
            params.push("building".to_string());
            params.push(building.to_string());
        }


        if let Some(ref description) = self.description {
            params.push("description".to_string());
            params.push(description.to_string());
        }


        if let Some(ref display_name) = self.display_name {
            params.push("displayName".to_string());
            params.push(display_name.to_string());
        }


        if let Some(ref duration) = self.duration {
            params.push("duration".to_string());
            params.push(duration.to_string());
        }


        if let Some(ref estimated_duration) = self.estimated_duration {
            params.push("estimatedDuration".to_string());
            params.push(estimated_duration.to_string());
        }


        if let Some(ref executor) = self.executor {
            params.push("executor".to_string());
            params.push(executor.to_string());
        }


        if let Some(ref full_display_name) = self.full_display_name {
            params.push("fullDisplayName".to_string());
            params.push(full_display_name.to_string());
        }


        if let Some(ref id) = self.id {
            params.push("id".to_string());
            params.push(id.to_string());
        }


        if let Some(ref keep_log) = self.keep_log {
            params.push("keepLog".to_string());
            params.push(keep_log.to_string());
        }


        if let Some(ref queue_id) = self.queue_id {
            params.push("queueId".to_string());
            params.push(queue_id.to_string());
        }


        if let Some(ref result) = self.result {
            params.push("result".to_string());
            params.push(result.to_string());
        }


        if let Some(ref timestamp) = self.timestamp {
            params.push("timestamp".to_string());
            params.push(timestamp.to_string());
        }


        if let Some(ref built_on) = self.built_on {
            params.push("builtOn".to_string());
            params.push(built_on.to_string());
        }

        // Skipping changeSet in query parameter serialization

        params.join(",").to_string()
    }
}

/// Converts Query Parameters representation (style=form, explode=false) to a FreeStyleBuild value
/// as specified in https://swagger.io/docs/specification/serialization/
/// Should be implemented in a serde deserializer
impl std::str::FromStr for FreeStyleBuild {
    type Err = String;

    fn from_str(s: &str) -> std::result::Result<Self, Self::Err> {
        #[derive(Default)]
        // An intermediate representation of the struct to use for parsing.
        struct IntermediateRep {
            pub _class: Vec<String>,
            pub number: Vec<isize>,
            pub url: Vec<String>,
            pub actions: Vec<Vec<models::CauseAction>>,
            pub building: Vec<bool>,
            pub description: Vec<String>,
            pub display_name: Vec<String>,
            pub duration: Vec<isize>,
            pub estimated_duration: Vec<isize>,
            pub executor: Vec<String>,
            pub full_display_name: Vec<String>,
            pub id: Vec<String>,
            pub keep_log: Vec<bool>,
            pub queue_id: Vec<isize>,
            pub result: Vec<String>,
            pub timestamp: Vec<isize>,
            pub built_on: Vec<String>,
            pub change_set: Vec<models::EmptyChangeLogSet>,
        }

        let mut intermediate_rep = IntermediateRep::default();

        // Parse into intermediate representation
        let mut string_iter = s.split(',').into_iter();
        let mut key_result = string_iter.next();

        while key_result.is_some() {
            let val = match string_iter.next() {
                Some(x) => x,
                None => return std::result::Result::Err("Missing value while parsing FreeStyleBuild".to_string())
            };

            if let Some(key) = key_result {
                match key {
                    "_class" => intermediate_rep._class.push(<String as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "number" => intermediate_rep.number.push(<isize as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "url" => intermediate_rep.url.push(<String as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "actions" => return std::result::Result::Err("Parsing a container in this style is not supported in FreeStyleBuild".to_string()),
                    "building" => intermediate_rep.building.push(<bool as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "description" => intermediate_rep.description.push(<String as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "displayName" => intermediate_rep.display_name.push(<String as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "duration" => intermediate_rep.duration.push(<isize as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "estimatedDuration" => intermediate_rep.estimated_duration.push(<isize as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "executor" => intermediate_rep.executor.push(<String as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "fullDisplayName" => intermediate_rep.full_display_name.push(<String as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "id" => intermediate_rep.id.push(<String as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "keepLog" => intermediate_rep.keep_log.push(<bool as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "queueId" => intermediate_rep.queue_id.push(<isize as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "result" => intermediate_rep.result.push(<String as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "timestamp" => intermediate_rep.timestamp.push(<isize as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "builtOn" => intermediate_rep.built_on.push(<String as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "changeSet" => intermediate_rep.change_set.push(<models::EmptyChangeLogSet as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    _ => return std::result::Result::Err("Unexpected key while parsing FreeStyleBuild".to_string())
                }
            }

            // Get the next key
            key_result = string_iter.next();
        }

        // Use the intermediate representation to return the struct
        std::result::Result::Ok(FreeStyleBuild {
            _class: intermediate_rep._class.into_iter().next(),
            number: intermediate_rep.number.into_iter().next(),
            url: intermediate_rep.url.into_iter().next(),
            actions: intermediate_rep.actions.into_iter().next(),
            building: intermediate_rep.building.into_iter().next(),
            description: intermediate_rep.description.into_iter().next(),
            display_name: intermediate_rep.display_name.into_iter().next(),
            duration: intermediate_rep.duration.into_iter().next(),
            estimated_duration: intermediate_rep.estimated_duration.into_iter().next(),
            executor: intermediate_rep.executor.into_iter().next(),
            full_display_name: intermediate_rep.full_display_name.into_iter().next(),
            id: intermediate_rep.id.into_iter().next(),
            keep_log: intermediate_rep.keep_log.into_iter().next(),
            queue_id: intermediate_rep.queue_id.into_iter().next(),
            result: intermediate_rep.result.into_iter().next(),
            timestamp: intermediate_rep.timestamp.into_iter().next(),
            built_on: intermediate_rep.built_on.into_iter().next(),
            change_set: intermediate_rep.change_set.into_iter().next(),
        })
    }
}

// Methods for converting between header::IntoHeaderValue<FreeStyleBuild> and hyper::header::HeaderValue

#[cfg(any(feature = "client", feature = "server"))]
impl std::convert::TryFrom<header::IntoHeaderValue<FreeStyleBuild>> for hyper::header::HeaderValue {
    type Error = String;

    fn try_from(hdr_value: header::IntoHeaderValue<FreeStyleBuild>) -> std::result::Result<Self, Self::Error> {
        let hdr_value = hdr_value.to_string();
        match hyper::header::HeaderValue::from_str(&hdr_value) {
             std::result::Result::Ok(value) => std::result::Result::Ok(value),
             std::result::Result::Err(e) => std::result::Result::Err(
                 format!("Invalid header value for FreeStyleBuild - value: {} is invalid {}",
                     hdr_value, e))
        }
    }
}

#[cfg(any(feature = "client", feature = "server"))]
impl std::convert::TryFrom<hyper::header::HeaderValue> for header::IntoHeaderValue<FreeStyleBuild> {
    type Error = String;

    fn try_from(hdr_value: hyper::header::HeaderValue) -> std::result::Result<Self, Self::Error> {
        match hdr_value.to_str() {
             std::result::Result::Ok(value) => {
                    match <FreeStyleBuild as std::str::FromStr>::from_str(value) {
                        std::result::Result::Ok(value) => std::result::Result::Ok(header::IntoHeaderValue(value)),
                        std::result::Result::Err(err) => std::result::Result::Err(
                            format!("Unable to convert header value '{}' into FreeStyleBuild - {}",
                                value, err))
                    }
             },
             std::result::Result::Err(e) => std::result::Result::Err(
                 format!("Unable to convert header: {:?} to string: {}",
                     hdr_value, e))
        }
    }
}


impl FreeStyleBuild {
    /// Helper function to allow us to convert this model to an XML string.
    /// Will panic if serialisation fails.
    #[allow(dead_code)]
    pub(crate) fn to_xml(&self) -> String {
        serde_xml_rs::to_string(&self).expect("impossible to fail to serialize")
    }
}

#[derive(Debug, Clone, PartialEq, serde::Serialize, serde::Deserialize)]
#[cfg_attr(feature = "conversion", derive(frunk::LabelledGeneric))]
pub struct FreeStyleProject {
    #[serde(rename = "_class")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub _class: Option<String>,

    #[serde(rename = "name")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub name: Option<String>,

    #[serde(rename = "url")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub url: Option<String>,

    #[serde(rename = "color")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub color: Option<String>,

    #[serde(rename = "actions")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub actions: Option<Vec<models::FreeStyleProjectactions>>,

    #[serde(rename = "description")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub description: Option<String>,

    #[serde(rename = "displayName")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub display_name: Option<String>,

    #[serde(rename = "displayNameOrNull")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub display_name_or_null: Option<String>,

    #[serde(rename = "fullDisplayName")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub full_display_name: Option<String>,

    #[serde(rename = "fullName")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub full_name: Option<String>,

    #[serde(rename = "buildable")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub buildable: Option<bool>,

    #[serde(rename = "builds")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub builds: Option<Vec<models::FreeStyleBuild>>,

    #[serde(rename = "firstBuild")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub first_build: Option<models::FreeStyleBuild>,

    #[serde(rename = "healthReport")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub health_report: Option<Vec<models::FreeStyleProjecthealthReport>>,

    #[serde(rename = "inQueue")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub in_queue: Option<bool>,

    #[serde(rename = "keepDependencies")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub keep_dependencies: Option<bool>,

    #[serde(rename = "lastBuild")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub last_build: Option<models::FreeStyleBuild>,

    #[serde(rename = "lastCompletedBuild")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub last_completed_build: Option<models::FreeStyleBuild>,

    #[serde(rename = "lastFailedBuild")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub last_failed_build: Option<String>,

    #[serde(rename = "lastStableBuild")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub last_stable_build: Option<models::FreeStyleBuild>,

    #[serde(rename = "lastSuccessfulBuild")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub last_successful_build: Option<models::FreeStyleBuild>,

    #[serde(rename = "lastUnstableBuild")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub last_unstable_build: Option<String>,

    #[serde(rename = "lastUnsuccessfulBuild")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub last_unsuccessful_build: Option<String>,

    #[serde(rename = "nextBuildNumber")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub next_build_number: Option<isize>,

    #[serde(rename = "queueItem")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub queue_item: Option<String>,

    #[serde(rename = "concurrentBuild")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub concurrent_build: Option<bool>,

    #[serde(rename = "scm")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub scm: Option<models::NullScm>,

}

impl FreeStyleProject {
    pub fn new() -> FreeStyleProject {
        FreeStyleProject {
            _class: None,
            name: None,
            url: None,
            color: None,
            actions: None,
            description: None,
            display_name: None,
            display_name_or_null: None,
            full_display_name: None,
            full_name: None,
            buildable: None,
            builds: None,
            first_build: None,
            health_report: None,
            in_queue: None,
            keep_dependencies: None,
            last_build: None,
            last_completed_build: None,
            last_failed_build: None,
            last_stable_build: None,
            last_successful_build: None,
            last_unstable_build: None,
            last_unsuccessful_build: None,
            next_build_number: None,
            queue_item: None,
            concurrent_build: None,
            scm: None,
        }
    }
}

/// Converts the FreeStyleProject value to the Query Parameters representation (style=form, explode=false)
/// specified in https://swagger.io/docs/specification/serialization/
/// Should be implemented in a serde serializer
impl std::string::ToString for FreeStyleProject {
    fn to_string(&self) -> String {
        let mut params: Vec<String> = vec![];

        if let Some(ref _class) = self._class {
            params.push("_class".to_string());
            params.push(_class.to_string());
        }


        if let Some(ref name) = self.name {
            params.push("name".to_string());
            params.push(name.to_string());
        }


        if let Some(ref url) = self.url {
            params.push("url".to_string());
            params.push(url.to_string());
        }


        if let Some(ref color) = self.color {
            params.push("color".to_string());
            params.push(color.to_string());
        }

        // Skipping actions in query parameter serialization


        if let Some(ref description) = self.description {
            params.push("description".to_string());
            params.push(description.to_string());
        }


        if let Some(ref display_name) = self.display_name {
            params.push("displayName".to_string());
            params.push(display_name.to_string());
        }


        if let Some(ref display_name_or_null) = self.display_name_or_null {
            params.push("displayNameOrNull".to_string());
            params.push(display_name_or_null.to_string());
        }


        if let Some(ref full_display_name) = self.full_display_name {
            params.push("fullDisplayName".to_string());
            params.push(full_display_name.to_string());
        }


        if let Some(ref full_name) = self.full_name {
            params.push("fullName".to_string());
            params.push(full_name.to_string());
        }


        if let Some(ref buildable) = self.buildable {
            params.push("buildable".to_string());
            params.push(buildable.to_string());
        }

        // Skipping builds in query parameter serialization

        // Skipping firstBuild in query parameter serialization

        // Skipping healthReport in query parameter serialization


        if let Some(ref in_queue) = self.in_queue {
            params.push("inQueue".to_string());
            params.push(in_queue.to_string());
        }


        if let Some(ref keep_dependencies) = self.keep_dependencies {
            params.push("keepDependencies".to_string());
            params.push(keep_dependencies.to_string());
        }

        // Skipping lastBuild in query parameter serialization

        // Skipping lastCompletedBuild in query parameter serialization


        if let Some(ref last_failed_build) = self.last_failed_build {
            params.push("lastFailedBuild".to_string());
            params.push(last_failed_build.to_string());
        }

        // Skipping lastStableBuild in query parameter serialization

        // Skipping lastSuccessfulBuild in query parameter serialization


        if let Some(ref last_unstable_build) = self.last_unstable_build {
            params.push("lastUnstableBuild".to_string());
            params.push(last_unstable_build.to_string());
        }


        if let Some(ref last_unsuccessful_build) = self.last_unsuccessful_build {
            params.push("lastUnsuccessfulBuild".to_string());
            params.push(last_unsuccessful_build.to_string());
        }


        if let Some(ref next_build_number) = self.next_build_number {
            params.push("nextBuildNumber".to_string());
            params.push(next_build_number.to_string());
        }


        if let Some(ref queue_item) = self.queue_item {
            params.push("queueItem".to_string());
            params.push(queue_item.to_string());
        }


        if let Some(ref concurrent_build) = self.concurrent_build {
            params.push("concurrentBuild".to_string());
            params.push(concurrent_build.to_string());
        }

        // Skipping scm in query parameter serialization

        params.join(",").to_string()
    }
}

/// Converts Query Parameters representation (style=form, explode=false) to a FreeStyleProject value
/// as specified in https://swagger.io/docs/specification/serialization/
/// Should be implemented in a serde deserializer
impl std::str::FromStr for FreeStyleProject {
    type Err = String;

    fn from_str(s: &str) -> std::result::Result<Self, Self::Err> {
        #[derive(Default)]
        // An intermediate representation of the struct to use for parsing.
        struct IntermediateRep {
            pub _class: Vec<String>,
            pub name: Vec<String>,
            pub url: Vec<String>,
            pub color: Vec<String>,
            pub actions: Vec<Vec<models::FreeStyleProjectactions>>,
            pub description: Vec<String>,
            pub display_name: Vec<String>,
            pub display_name_or_null: Vec<String>,
            pub full_display_name: Vec<String>,
            pub full_name: Vec<String>,
            pub buildable: Vec<bool>,
            pub builds: Vec<Vec<models::FreeStyleBuild>>,
            pub first_build: Vec<models::FreeStyleBuild>,
            pub health_report: Vec<Vec<models::FreeStyleProjecthealthReport>>,
            pub in_queue: Vec<bool>,
            pub keep_dependencies: Vec<bool>,
            pub last_build: Vec<models::FreeStyleBuild>,
            pub last_completed_build: Vec<models::FreeStyleBuild>,
            pub last_failed_build: Vec<String>,
            pub last_stable_build: Vec<models::FreeStyleBuild>,
            pub last_successful_build: Vec<models::FreeStyleBuild>,
            pub last_unstable_build: Vec<String>,
            pub last_unsuccessful_build: Vec<String>,
            pub next_build_number: Vec<isize>,
            pub queue_item: Vec<String>,
            pub concurrent_build: Vec<bool>,
            pub scm: Vec<models::NullScm>,
        }

        let mut intermediate_rep = IntermediateRep::default();

        // Parse into intermediate representation
        let mut string_iter = s.split(',').into_iter();
        let mut key_result = string_iter.next();

        while key_result.is_some() {
            let val = match string_iter.next() {
                Some(x) => x,
                None => return std::result::Result::Err("Missing value while parsing FreeStyleProject".to_string())
            };

            if let Some(key) = key_result {
                match key {
                    "_class" => intermediate_rep._class.push(<String as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "name" => intermediate_rep.name.push(<String as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "url" => intermediate_rep.url.push(<String as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "color" => intermediate_rep.color.push(<String as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "actions" => return std::result::Result::Err("Parsing a container in this style is not supported in FreeStyleProject".to_string()),
                    "description" => intermediate_rep.description.push(<String as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "displayName" => intermediate_rep.display_name.push(<String as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "displayNameOrNull" => intermediate_rep.display_name_or_null.push(<String as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "fullDisplayName" => intermediate_rep.full_display_name.push(<String as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "fullName" => intermediate_rep.full_name.push(<String as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "buildable" => intermediate_rep.buildable.push(<bool as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "builds" => return std::result::Result::Err("Parsing a container in this style is not supported in FreeStyleProject".to_string()),
                    "firstBuild" => intermediate_rep.first_build.push(<models::FreeStyleBuild as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "healthReport" => return std::result::Result::Err("Parsing a container in this style is not supported in FreeStyleProject".to_string()),
                    "inQueue" => intermediate_rep.in_queue.push(<bool as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "keepDependencies" => intermediate_rep.keep_dependencies.push(<bool as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "lastBuild" => intermediate_rep.last_build.push(<models::FreeStyleBuild as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "lastCompletedBuild" => intermediate_rep.last_completed_build.push(<models::FreeStyleBuild as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "lastFailedBuild" => intermediate_rep.last_failed_build.push(<String as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "lastStableBuild" => intermediate_rep.last_stable_build.push(<models::FreeStyleBuild as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "lastSuccessfulBuild" => intermediate_rep.last_successful_build.push(<models::FreeStyleBuild as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "lastUnstableBuild" => intermediate_rep.last_unstable_build.push(<String as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "lastUnsuccessfulBuild" => intermediate_rep.last_unsuccessful_build.push(<String as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "nextBuildNumber" => intermediate_rep.next_build_number.push(<isize as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "queueItem" => intermediate_rep.queue_item.push(<String as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "concurrentBuild" => intermediate_rep.concurrent_build.push(<bool as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "scm" => intermediate_rep.scm.push(<models::NullScm as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    _ => return std::result::Result::Err("Unexpected key while parsing FreeStyleProject".to_string())
                }
            }

            // Get the next key
            key_result = string_iter.next();
        }

        // Use the intermediate representation to return the struct
        std::result::Result::Ok(FreeStyleProject {
            _class: intermediate_rep._class.into_iter().next(),
            name: intermediate_rep.name.into_iter().next(),
            url: intermediate_rep.url.into_iter().next(),
            color: intermediate_rep.color.into_iter().next(),
            actions: intermediate_rep.actions.into_iter().next(),
            description: intermediate_rep.description.into_iter().next(),
            display_name: intermediate_rep.display_name.into_iter().next(),
            display_name_or_null: intermediate_rep.display_name_or_null.into_iter().next(),
            full_display_name: intermediate_rep.full_display_name.into_iter().next(),
            full_name: intermediate_rep.full_name.into_iter().next(),
            buildable: intermediate_rep.buildable.into_iter().next(),
            builds: intermediate_rep.builds.into_iter().next(),
            first_build: intermediate_rep.first_build.into_iter().next(),
            health_report: intermediate_rep.health_report.into_iter().next(),
            in_queue: intermediate_rep.in_queue.into_iter().next(),
            keep_dependencies: intermediate_rep.keep_dependencies.into_iter().next(),
            last_build: intermediate_rep.last_build.into_iter().next(),
            last_completed_build: intermediate_rep.last_completed_build.into_iter().next(),
            last_failed_build: intermediate_rep.last_failed_build.into_iter().next(),
            last_stable_build: intermediate_rep.last_stable_build.into_iter().next(),
            last_successful_build: intermediate_rep.last_successful_build.into_iter().next(),
            last_unstable_build: intermediate_rep.last_unstable_build.into_iter().next(),
            last_unsuccessful_build: intermediate_rep.last_unsuccessful_build.into_iter().next(),
            next_build_number: intermediate_rep.next_build_number.into_iter().next(),
            queue_item: intermediate_rep.queue_item.into_iter().next(),
            concurrent_build: intermediate_rep.concurrent_build.into_iter().next(),
            scm: intermediate_rep.scm.into_iter().next(),
        })
    }
}

// Methods for converting between header::IntoHeaderValue<FreeStyleProject> and hyper::header::HeaderValue

#[cfg(any(feature = "client", feature = "server"))]
impl std::convert::TryFrom<header::IntoHeaderValue<FreeStyleProject>> for hyper::header::HeaderValue {
    type Error = String;

    fn try_from(hdr_value: header::IntoHeaderValue<FreeStyleProject>) -> std::result::Result<Self, Self::Error> {
        let hdr_value = hdr_value.to_string();
        match hyper::header::HeaderValue::from_str(&hdr_value) {
             std::result::Result::Ok(value) => std::result::Result::Ok(value),
             std::result::Result::Err(e) => std::result::Result::Err(
                 format!("Invalid header value for FreeStyleProject - value: {} is invalid {}",
                     hdr_value, e))
        }
    }
}

#[cfg(any(feature = "client", feature = "server"))]
impl std::convert::TryFrom<hyper::header::HeaderValue> for header::IntoHeaderValue<FreeStyleProject> {
    type Error = String;

    fn try_from(hdr_value: hyper::header::HeaderValue) -> std::result::Result<Self, Self::Error> {
        match hdr_value.to_str() {
             std::result::Result::Ok(value) => {
                    match <FreeStyleProject as std::str::FromStr>::from_str(value) {
                        std::result::Result::Ok(value) => std::result::Result::Ok(header::IntoHeaderValue(value)),
                        std::result::Result::Err(err) => std::result::Result::Err(
                            format!("Unable to convert header value '{}' into FreeStyleProject - {}",
                                value, err))
                    }
             },
             std::result::Result::Err(e) => std::result::Result::Err(
                 format!("Unable to convert header: {:?} to string: {}",
                     hdr_value, e))
        }
    }
}


impl FreeStyleProject {
    /// Helper function to allow us to convert this model to an XML string.
    /// Will panic if serialisation fails.
    #[allow(dead_code)]
    pub(crate) fn to_xml(&self) -> String {
        serde_xml_rs::to_string(&self).expect("impossible to fail to serialize")
    }
}

#[derive(Debug, Clone, PartialEq, serde::Serialize, serde::Deserialize)]
#[cfg_attr(feature = "conversion", derive(frunk::LabelledGeneric))]
pub struct FreeStyleProjectactions {
    #[serde(rename = "_class")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub _class: Option<String>,

}

impl FreeStyleProjectactions {
    pub fn new() -> FreeStyleProjectactions {
        FreeStyleProjectactions {
            _class: None,
        }
    }
}

/// Converts the FreeStyleProjectactions value to the Query Parameters representation (style=form, explode=false)
/// specified in https://swagger.io/docs/specification/serialization/
/// Should be implemented in a serde serializer
impl std::string::ToString for FreeStyleProjectactions {
    fn to_string(&self) -> String {
        let mut params: Vec<String> = vec![];

        if let Some(ref _class) = self._class {
            params.push("_class".to_string());
            params.push(_class.to_string());
        }

        params.join(",").to_string()
    }
}

/// Converts Query Parameters representation (style=form, explode=false) to a FreeStyleProjectactions value
/// as specified in https://swagger.io/docs/specification/serialization/
/// Should be implemented in a serde deserializer
impl std::str::FromStr for FreeStyleProjectactions {
    type Err = String;

    fn from_str(s: &str) -> std::result::Result<Self, Self::Err> {
        #[derive(Default)]
        // An intermediate representation of the struct to use for parsing.
        struct IntermediateRep {
            pub _class: Vec<String>,
        }

        let mut intermediate_rep = IntermediateRep::default();

        // Parse into intermediate representation
        let mut string_iter = s.split(',').into_iter();
        let mut key_result = string_iter.next();

        while key_result.is_some() {
            let val = match string_iter.next() {
                Some(x) => x,
                None => return std::result::Result::Err("Missing value while parsing FreeStyleProjectactions".to_string())
            };

            if let Some(key) = key_result {
                match key {
                    "_class" => intermediate_rep._class.push(<String as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    _ => return std::result::Result::Err("Unexpected key while parsing FreeStyleProjectactions".to_string())
                }
            }

            // Get the next key
            key_result = string_iter.next();
        }

        // Use the intermediate representation to return the struct
        std::result::Result::Ok(FreeStyleProjectactions {
            _class: intermediate_rep._class.into_iter().next(),
        })
    }
}

// Methods for converting between header::IntoHeaderValue<FreeStyleProjectactions> and hyper::header::HeaderValue

#[cfg(any(feature = "client", feature = "server"))]
impl std::convert::TryFrom<header::IntoHeaderValue<FreeStyleProjectactions>> for hyper::header::HeaderValue {
    type Error = String;

    fn try_from(hdr_value: header::IntoHeaderValue<FreeStyleProjectactions>) -> std::result::Result<Self, Self::Error> {
        let hdr_value = hdr_value.to_string();
        match hyper::header::HeaderValue::from_str(&hdr_value) {
             std::result::Result::Ok(value) => std::result::Result::Ok(value),
             std::result::Result::Err(e) => std::result::Result::Err(
                 format!("Invalid header value for FreeStyleProjectactions - value: {} is invalid {}",
                     hdr_value, e))
        }
    }
}

#[cfg(any(feature = "client", feature = "server"))]
impl std::convert::TryFrom<hyper::header::HeaderValue> for header::IntoHeaderValue<FreeStyleProjectactions> {
    type Error = String;

    fn try_from(hdr_value: hyper::header::HeaderValue) -> std::result::Result<Self, Self::Error> {
        match hdr_value.to_str() {
             std::result::Result::Ok(value) => {
                    match <FreeStyleProjectactions as std::str::FromStr>::from_str(value) {
                        std::result::Result::Ok(value) => std::result::Result::Ok(header::IntoHeaderValue(value)),
                        std::result::Result::Err(err) => std::result::Result::Err(
                            format!("Unable to convert header value '{}' into FreeStyleProjectactions - {}",
                                value, err))
                    }
             },
             std::result::Result::Err(e) => std::result::Result::Err(
                 format!("Unable to convert header: {:?} to string: {}",
                     hdr_value, e))
        }
    }
}


impl FreeStyleProjectactions {
    /// Helper function to allow us to convert this model to an XML string.
    /// Will panic if serialisation fails.
    #[allow(dead_code)]
    pub(crate) fn to_xml(&self) -> String {
        serde_xml_rs::to_string(&self).expect("impossible to fail to serialize")
    }
}

#[derive(Debug, Clone, PartialEq, serde::Serialize, serde::Deserialize)]
#[cfg_attr(feature = "conversion", derive(frunk::LabelledGeneric))]
pub struct FreeStyleProjecthealthReport {
    #[serde(rename = "description")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub description: Option<String>,

    #[serde(rename = "iconClassName")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub icon_class_name: Option<String>,

    #[serde(rename = "iconUrl")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub icon_url: Option<String>,

    #[serde(rename = "score")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub score: Option<isize>,

    #[serde(rename = "_class")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub _class: Option<String>,

}

impl FreeStyleProjecthealthReport {
    pub fn new() -> FreeStyleProjecthealthReport {
        FreeStyleProjecthealthReport {
            description: None,
            icon_class_name: None,
            icon_url: None,
            score: None,
            _class: None,
        }
    }
}

/// Converts the FreeStyleProjecthealthReport value to the Query Parameters representation (style=form, explode=false)
/// specified in https://swagger.io/docs/specification/serialization/
/// Should be implemented in a serde serializer
impl std::string::ToString for FreeStyleProjecthealthReport {
    fn to_string(&self) -> String {
        let mut params: Vec<String> = vec![];

        if let Some(ref description) = self.description {
            params.push("description".to_string());
            params.push(description.to_string());
        }


        if let Some(ref icon_class_name) = self.icon_class_name {
            params.push("iconClassName".to_string());
            params.push(icon_class_name.to_string());
        }


        if let Some(ref icon_url) = self.icon_url {
            params.push("iconUrl".to_string());
            params.push(icon_url.to_string());
        }


        if let Some(ref score) = self.score {
            params.push("score".to_string());
            params.push(score.to_string());
        }


        if let Some(ref _class) = self._class {
            params.push("_class".to_string());
            params.push(_class.to_string());
        }

        params.join(",").to_string()
    }
}

/// Converts Query Parameters representation (style=form, explode=false) to a FreeStyleProjecthealthReport value
/// as specified in https://swagger.io/docs/specification/serialization/
/// Should be implemented in a serde deserializer
impl std::str::FromStr for FreeStyleProjecthealthReport {
    type Err = String;

    fn from_str(s: &str) -> std::result::Result<Self, Self::Err> {
        #[derive(Default)]
        // An intermediate representation of the struct to use for parsing.
        struct IntermediateRep {
            pub description: Vec<String>,
            pub icon_class_name: Vec<String>,
            pub icon_url: Vec<String>,
            pub score: Vec<isize>,
            pub _class: Vec<String>,
        }

        let mut intermediate_rep = IntermediateRep::default();

        // Parse into intermediate representation
        let mut string_iter = s.split(',').into_iter();
        let mut key_result = string_iter.next();

        while key_result.is_some() {
            let val = match string_iter.next() {
                Some(x) => x,
                None => return std::result::Result::Err("Missing value while parsing FreeStyleProjecthealthReport".to_string())
            };

            if let Some(key) = key_result {
                match key {
                    "description" => intermediate_rep.description.push(<String as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "iconClassName" => intermediate_rep.icon_class_name.push(<String as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "iconUrl" => intermediate_rep.icon_url.push(<String as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "score" => intermediate_rep.score.push(<isize as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "_class" => intermediate_rep._class.push(<String as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    _ => return std::result::Result::Err("Unexpected key while parsing FreeStyleProjecthealthReport".to_string())
                }
            }

            // Get the next key
            key_result = string_iter.next();
        }

        // Use the intermediate representation to return the struct
        std::result::Result::Ok(FreeStyleProjecthealthReport {
            description: intermediate_rep.description.into_iter().next(),
            icon_class_name: intermediate_rep.icon_class_name.into_iter().next(),
            icon_url: intermediate_rep.icon_url.into_iter().next(),
            score: intermediate_rep.score.into_iter().next(),
            _class: intermediate_rep._class.into_iter().next(),
        })
    }
}

// Methods for converting between header::IntoHeaderValue<FreeStyleProjecthealthReport> and hyper::header::HeaderValue

#[cfg(any(feature = "client", feature = "server"))]
impl std::convert::TryFrom<header::IntoHeaderValue<FreeStyleProjecthealthReport>> for hyper::header::HeaderValue {
    type Error = String;

    fn try_from(hdr_value: header::IntoHeaderValue<FreeStyleProjecthealthReport>) -> std::result::Result<Self, Self::Error> {
        let hdr_value = hdr_value.to_string();
        match hyper::header::HeaderValue::from_str(&hdr_value) {
             std::result::Result::Ok(value) => std::result::Result::Ok(value),
             std::result::Result::Err(e) => std::result::Result::Err(
                 format!("Invalid header value for FreeStyleProjecthealthReport - value: {} is invalid {}",
                     hdr_value, e))
        }
    }
}

#[cfg(any(feature = "client", feature = "server"))]
impl std::convert::TryFrom<hyper::header::HeaderValue> for header::IntoHeaderValue<FreeStyleProjecthealthReport> {
    type Error = String;

    fn try_from(hdr_value: hyper::header::HeaderValue) -> std::result::Result<Self, Self::Error> {
        match hdr_value.to_str() {
             std::result::Result::Ok(value) => {
                    match <FreeStyleProjecthealthReport as std::str::FromStr>::from_str(value) {
                        std::result::Result::Ok(value) => std::result::Result::Ok(header::IntoHeaderValue(value)),
                        std::result::Result::Err(err) => std::result::Result::Err(
                            format!("Unable to convert header value '{}' into FreeStyleProjecthealthReport - {}",
                                value, err))
                    }
             },
             std::result::Result::Err(e) => std::result::Result::Err(
                 format!("Unable to convert header: {:?} to string: {}",
                     hdr_value, e))
        }
    }
}


impl FreeStyleProjecthealthReport {
    /// Helper function to allow us to convert this model to an XML string.
    /// Will panic if serialisation fails.
    #[allow(dead_code)]
    pub(crate) fn to_xml(&self) -> String {
        serde_xml_rs::to_string(&self).expect("impossible to fail to serialize")
    }
}

#[derive(Debug, Clone, PartialEq, serde::Serialize, serde::Deserialize)]
#[cfg_attr(feature = "conversion", derive(frunk::LabelledGeneric))]
pub struct GenericResource {
    #[serde(rename = "_class")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub _class: Option<String>,

    #[serde(rename = "displayName")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub display_name: Option<String>,

    #[serde(rename = "durationInMillis")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub duration_in_millis: Option<isize>,

    #[serde(rename = "id")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub id: Option<String>,

    #[serde(rename = "result")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub result: Option<String>,

    #[serde(rename = "startTime")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub start_time: Option<String>,

}

impl GenericResource {
    pub fn new() -> GenericResource {
        GenericResource {
            _class: None,
            display_name: None,
            duration_in_millis: None,
            id: None,
            result: None,
            start_time: None,
        }
    }
}

/// Converts the GenericResource value to the Query Parameters representation (style=form, explode=false)
/// specified in https://swagger.io/docs/specification/serialization/
/// Should be implemented in a serde serializer
impl std::string::ToString for GenericResource {
    fn to_string(&self) -> String {
        let mut params: Vec<String> = vec![];

        if let Some(ref _class) = self._class {
            params.push("_class".to_string());
            params.push(_class.to_string());
        }


        if let Some(ref display_name) = self.display_name {
            params.push("displayName".to_string());
            params.push(display_name.to_string());
        }


        if let Some(ref duration_in_millis) = self.duration_in_millis {
            params.push("durationInMillis".to_string());
            params.push(duration_in_millis.to_string());
        }


        if let Some(ref id) = self.id {
            params.push("id".to_string());
            params.push(id.to_string());
        }


        if let Some(ref result) = self.result {
            params.push("result".to_string());
            params.push(result.to_string());
        }


        if let Some(ref start_time) = self.start_time {
            params.push("startTime".to_string());
            params.push(start_time.to_string());
        }

        params.join(",").to_string()
    }
}

/// Converts Query Parameters representation (style=form, explode=false) to a GenericResource value
/// as specified in https://swagger.io/docs/specification/serialization/
/// Should be implemented in a serde deserializer
impl std::str::FromStr for GenericResource {
    type Err = String;

    fn from_str(s: &str) -> std::result::Result<Self, Self::Err> {
        #[derive(Default)]
        // An intermediate representation of the struct to use for parsing.
        struct IntermediateRep {
            pub _class: Vec<String>,
            pub display_name: Vec<String>,
            pub duration_in_millis: Vec<isize>,
            pub id: Vec<String>,
            pub result: Vec<String>,
            pub start_time: Vec<String>,
        }

        let mut intermediate_rep = IntermediateRep::default();

        // Parse into intermediate representation
        let mut string_iter = s.split(',').into_iter();
        let mut key_result = string_iter.next();

        while key_result.is_some() {
            let val = match string_iter.next() {
                Some(x) => x,
                None => return std::result::Result::Err("Missing value while parsing GenericResource".to_string())
            };

            if let Some(key) = key_result {
                match key {
                    "_class" => intermediate_rep._class.push(<String as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "displayName" => intermediate_rep.display_name.push(<String as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "durationInMillis" => intermediate_rep.duration_in_millis.push(<isize as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "id" => intermediate_rep.id.push(<String as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "result" => intermediate_rep.result.push(<String as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "startTime" => intermediate_rep.start_time.push(<String as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    _ => return std::result::Result::Err("Unexpected key while parsing GenericResource".to_string())
                }
            }

            // Get the next key
            key_result = string_iter.next();
        }

        // Use the intermediate representation to return the struct
        std::result::Result::Ok(GenericResource {
            _class: intermediate_rep._class.into_iter().next(),
            display_name: intermediate_rep.display_name.into_iter().next(),
            duration_in_millis: intermediate_rep.duration_in_millis.into_iter().next(),
            id: intermediate_rep.id.into_iter().next(),
            result: intermediate_rep.result.into_iter().next(),
            start_time: intermediate_rep.start_time.into_iter().next(),
        })
    }
}

// Methods for converting between header::IntoHeaderValue<GenericResource> and hyper::header::HeaderValue

#[cfg(any(feature = "client", feature = "server"))]
impl std::convert::TryFrom<header::IntoHeaderValue<GenericResource>> for hyper::header::HeaderValue {
    type Error = String;

    fn try_from(hdr_value: header::IntoHeaderValue<GenericResource>) -> std::result::Result<Self, Self::Error> {
        let hdr_value = hdr_value.to_string();
        match hyper::header::HeaderValue::from_str(&hdr_value) {
             std::result::Result::Ok(value) => std::result::Result::Ok(value),
             std::result::Result::Err(e) => std::result::Result::Err(
                 format!("Invalid header value for GenericResource - value: {} is invalid {}",
                     hdr_value, e))
        }
    }
}

#[cfg(any(feature = "client", feature = "server"))]
impl std::convert::TryFrom<hyper::header::HeaderValue> for header::IntoHeaderValue<GenericResource> {
    type Error = String;

    fn try_from(hdr_value: hyper::header::HeaderValue) -> std::result::Result<Self, Self::Error> {
        match hdr_value.to_str() {
             std::result::Result::Ok(value) => {
                    match <GenericResource as std::str::FromStr>::from_str(value) {
                        std::result::Result::Ok(value) => std::result::Result::Ok(header::IntoHeaderValue(value)),
                        std::result::Result::Err(err) => std::result::Result::Err(
                            format!("Unable to convert header value '{}' into GenericResource - {}",
                                value, err))
                    }
             },
             std::result::Result::Err(e) => std::result::Result::Err(
                 format!("Unable to convert header: {:?} to string: {}",
                     hdr_value, e))
        }
    }
}


impl GenericResource {
    /// Helper function to allow us to convert this model to an XML string.
    /// Will panic if serialisation fails.
    #[allow(dead_code)]
    pub(crate) fn to_xml(&self) -> String {
        serde_xml_rs::to_string(&self).expect("impossible to fail to serialize")
    }
}

#[derive(Debug, Clone, PartialEq, serde::Serialize, serde::Deserialize)]
#[cfg_attr(feature = "conversion", derive(frunk::LabelledGeneric))]
pub struct GithubContent {
    #[serde(rename = "name")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub name: Option<String>,

    #[serde(rename = "sha")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub sha: Option<String>,

    #[serde(rename = "_class")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub _class: Option<String>,

    #[serde(rename = "repo")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub repo: Option<String>,

    #[serde(rename = "size")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub size: Option<isize>,

    #[serde(rename = "owner")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub owner: Option<String>,

    #[serde(rename = "path")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub path: Option<String>,

    #[serde(rename = "base64Data")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub base64_data: Option<String>,

}

impl GithubContent {
    pub fn new() -> GithubContent {
        GithubContent {
            name: None,
            sha: None,
            _class: None,
            repo: None,
            size: None,
            owner: None,
            path: None,
            base64_data: None,
        }
    }
}

/// Converts the GithubContent value to the Query Parameters representation (style=form, explode=false)
/// specified in https://swagger.io/docs/specification/serialization/
/// Should be implemented in a serde serializer
impl std::string::ToString for GithubContent {
    fn to_string(&self) -> String {
        let mut params: Vec<String> = vec![];

        if let Some(ref name) = self.name {
            params.push("name".to_string());
            params.push(name.to_string());
        }


        if let Some(ref sha) = self.sha {
            params.push("sha".to_string());
            params.push(sha.to_string());
        }


        if let Some(ref _class) = self._class {
            params.push("_class".to_string());
            params.push(_class.to_string());
        }


        if let Some(ref repo) = self.repo {
            params.push("repo".to_string());
            params.push(repo.to_string());
        }


        if let Some(ref size) = self.size {
            params.push("size".to_string());
            params.push(size.to_string());
        }


        if let Some(ref owner) = self.owner {
            params.push("owner".to_string());
            params.push(owner.to_string());
        }


        if let Some(ref path) = self.path {
            params.push("path".to_string());
            params.push(path.to_string());
        }


        if let Some(ref base64_data) = self.base64_data {
            params.push("base64Data".to_string());
            params.push(base64_data.to_string());
        }

        params.join(",").to_string()
    }
}

/// Converts Query Parameters representation (style=form, explode=false) to a GithubContent value
/// as specified in https://swagger.io/docs/specification/serialization/
/// Should be implemented in a serde deserializer
impl std::str::FromStr for GithubContent {
    type Err = String;

    fn from_str(s: &str) -> std::result::Result<Self, Self::Err> {
        #[derive(Default)]
        // An intermediate representation of the struct to use for parsing.
        struct IntermediateRep {
            pub name: Vec<String>,
            pub sha: Vec<String>,
            pub _class: Vec<String>,
            pub repo: Vec<String>,
            pub size: Vec<isize>,
            pub owner: Vec<String>,
            pub path: Vec<String>,
            pub base64_data: Vec<String>,
        }

        let mut intermediate_rep = IntermediateRep::default();

        // Parse into intermediate representation
        let mut string_iter = s.split(',').into_iter();
        let mut key_result = string_iter.next();

        while key_result.is_some() {
            let val = match string_iter.next() {
                Some(x) => x,
                None => return std::result::Result::Err("Missing value while parsing GithubContent".to_string())
            };

            if let Some(key) = key_result {
                match key {
                    "name" => intermediate_rep.name.push(<String as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "sha" => intermediate_rep.sha.push(<String as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "_class" => intermediate_rep._class.push(<String as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "repo" => intermediate_rep.repo.push(<String as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "size" => intermediate_rep.size.push(<isize as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "owner" => intermediate_rep.owner.push(<String as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "path" => intermediate_rep.path.push(<String as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "base64Data" => intermediate_rep.base64_data.push(<String as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    _ => return std::result::Result::Err("Unexpected key while parsing GithubContent".to_string())
                }
            }

            // Get the next key
            key_result = string_iter.next();
        }

        // Use the intermediate representation to return the struct
        std::result::Result::Ok(GithubContent {
            name: intermediate_rep.name.into_iter().next(),
            sha: intermediate_rep.sha.into_iter().next(),
            _class: intermediate_rep._class.into_iter().next(),
            repo: intermediate_rep.repo.into_iter().next(),
            size: intermediate_rep.size.into_iter().next(),
            owner: intermediate_rep.owner.into_iter().next(),
            path: intermediate_rep.path.into_iter().next(),
            base64_data: intermediate_rep.base64_data.into_iter().next(),
        })
    }
}

// Methods for converting between header::IntoHeaderValue<GithubContent> and hyper::header::HeaderValue

#[cfg(any(feature = "client", feature = "server"))]
impl std::convert::TryFrom<header::IntoHeaderValue<GithubContent>> for hyper::header::HeaderValue {
    type Error = String;

    fn try_from(hdr_value: header::IntoHeaderValue<GithubContent>) -> std::result::Result<Self, Self::Error> {
        let hdr_value = hdr_value.to_string();
        match hyper::header::HeaderValue::from_str(&hdr_value) {
             std::result::Result::Ok(value) => std::result::Result::Ok(value),
             std::result::Result::Err(e) => std::result::Result::Err(
                 format!("Invalid header value for GithubContent - value: {} is invalid {}",
                     hdr_value, e))
        }
    }
}

#[cfg(any(feature = "client", feature = "server"))]
impl std::convert::TryFrom<hyper::header::HeaderValue> for header::IntoHeaderValue<GithubContent> {
    type Error = String;

    fn try_from(hdr_value: hyper::header::HeaderValue) -> std::result::Result<Self, Self::Error> {
        match hdr_value.to_str() {
             std::result::Result::Ok(value) => {
                    match <GithubContent as std::str::FromStr>::from_str(value) {
                        std::result::Result::Ok(value) => std::result::Result::Ok(header::IntoHeaderValue(value)),
                        std::result::Result::Err(err) => std::result::Result::Err(
                            format!("Unable to convert header value '{}' into GithubContent - {}",
                                value, err))
                    }
             },
             std::result::Result::Err(e) => std::result::Result::Err(
                 format!("Unable to convert header: {:?} to string: {}",
                     hdr_value, e))
        }
    }
}


impl GithubContent {
    /// Helper function to allow us to convert this model to an XML string.
    /// Will panic if serialisation fails.
    #[allow(dead_code)]
    pub(crate) fn to_xml(&self) -> String {
        serde_xml_rs::to_string(&self).expect("impossible to fail to serialize")
    }
}

#[derive(Debug, Clone, PartialEq, serde::Serialize, serde::Deserialize)]
#[cfg_attr(feature = "conversion", derive(frunk::LabelledGeneric))]
pub struct GithubFile {
    #[serde(rename = "content")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub content: Option<models::GithubContent>,

    #[serde(rename = "_class")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub _class: Option<String>,

}

impl GithubFile {
    pub fn new() -> GithubFile {
        GithubFile {
            content: None,
            _class: None,
        }
    }
}

/// Converts the GithubFile value to the Query Parameters representation (style=form, explode=false)
/// specified in https://swagger.io/docs/specification/serialization/
/// Should be implemented in a serde serializer
impl std::string::ToString for GithubFile {
    fn to_string(&self) -> String {
        let mut params: Vec<String> = vec![];
        // Skipping content in query parameter serialization


        if let Some(ref _class) = self._class {
            params.push("_class".to_string());
            params.push(_class.to_string());
        }

        params.join(",").to_string()
    }
}

/// Converts Query Parameters representation (style=form, explode=false) to a GithubFile value
/// as specified in https://swagger.io/docs/specification/serialization/
/// Should be implemented in a serde deserializer
impl std::str::FromStr for GithubFile {
    type Err = String;

    fn from_str(s: &str) -> std::result::Result<Self, Self::Err> {
        #[derive(Default)]
        // An intermediate representation of the struct to use for parsing.
        struct IntermediateRep {
            pub content: Vec<models::GithubContent>,
            pub _class: Vec<String>,
        }

        let mut intermediate_rep = IntermediateRep::default();

        // Parse into intermediate representation
        let mut string_iter = s.split(',').into_iter();
        let mut key_result = string_iter.next();

        while key_result.is_some() {
            let val = match string_iter.next() {
                Some(x) => x,
                None => return std::result::Result::Err("Missing value while parsing GithubFile".to_string())
            };

            if let Some(key) = key_result {
                match key {
                    "content" => intermediate_rep.content.push(<models::GithubContent as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "_class" => intermediate_rep._class.push(<String as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    _ => return std::result::Result::Err("Unexpected key while parsing GithubFile".to_string())
                }
            }

            // Get the next key
            key_result = string_iter.next();
        }

        // Use the intermediate representation to return the struct
        std::result::Result::Ok(GithubFile {
            content: intermediate_rep.content.into_iter().next(),
            _class: intermediate_rep._class.into_iter().next(),
        })
    }
}

// Methods for converting between header::IntoHeaderValue<GithubFile> and hyper::header::HeaderValue

#[cfg(any(feature = "client", feature = "server"))]
impl std::convert::TryFrom<header::IntoHeaderValue<GithubFile>> for hyper::header::HeaderValue {
    type Error = String;

    fn try_from(hdr_value: header::IntoHeaderValue<GithubFile>) -> std::result::Result<Self, Self::Error> {
        let hdr_value = hdr_value.to_string();
        match hyper::header::HeaderValue::from_str(&hdr_value) {
             std::result::Result::Ok(value) => std::result::Result::Ok(value),
             std::result::Result::Err(e) => std::result::Result::Err(
                 format!("Invalid header value for GithubFile - value: {} is invalid {}",
                     hdr_value, e))
        }
    }
}

#[cfg(any(feature = "client", feature = "server"))]
impl std::convert::TryFrom<hyper::header::HeaderValue> for header::IntoHeaderValue<GithubFile> {
    type Error = String;

    fn try_from(hdr_value: hyper::header::HeaderValue) -> std::result::Result<Self, Self::Error> {
        match hdr_value.to_str() {
             std::result::Result::Ok(value) => {
                    match <GithubFile as std::str::FromStr>::from_str(value) {
                        std::result::Result::Ok(value) => std::result::Result::Ok(header::IntoHeaderValue(value)),
                        std::result::Result::Err(err) => std::result::Result::Err(
                            format!("Unable to convert header value '{}' into GithubFile - {}",
                                value, err))
                    }
             },
             std::result::Result::Err(e) => std::result::Result::Err(
                 format!("Unable to convert header: {:?} to string: {}",
                     hdr_value, e))
        }
    }
}


impl GithubFile {
    /// Helper function to allow us to convert this model to an XML string.
    /// Will panic if serialisation fails.
    #[allow(dead_code)]
    pub(crate) fn to_xml(&self) -> String {
        serde_xml_rs::to_string(&self).expect("impossible to fail to serialize")
    }
}

#[derive(Debug, Clone, PartialEq, serde::Serialize, serde::Deserialize)]
#[cfg_attr(feature = "conversion", derive(frunk::LabelledGeneric))]
pub struct GithubOrganization {
    #[serde(rename = "_class")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub _class: Option<String>,

    #[serde(rename = "_links")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub _links: Option<models::GithubOrganizationlinks>,

    #[serde(rename = "jenkinsOrganizationPipeline")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub jenkins_organization_pipeline: Option<bool>,

    #[serde(rename = "name")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub name: Option<String>,

}

impl GithubOrganization {
    pub fn new() -> GithubOrganization {
        GithubOrganization {
            _class: None,
            _links: None,
            jenkins_organization_pipeline: None,
            name: None,
        }
    }
}

/// Converts the GithubOrganization value to the Query Parameters representation (style=form, explode=false)
/// specified in https://swagger.io/docs/specification/serialization/
/// Should be implemented in a serde serializer
impl std::string::ToString for GithubOrganization {
    fn to_string(&self) -> String {
        let mut params: Vec<String> = vec![];

        if let Some(ref _class) = self._class {
            params.push("_class".to_string());
            params.push(_class.to_string());
        }

        // Skipping _links in query parameter serialization


        if let Some(ref jenkins_organization_pipeline) = self.jenkins_organization_pipeline {
            params.push("jenkinsOrganizationPipeline".to_string());
            params.push(jenkins_organization_pipeline.to_string());
        }


        if let Some(ref name) = self.name {
            params.push("name".to_string());
            params.push(name.to_string());
        }

        params.join(",").to_string()
    }
}

/// Converts Query Parameters representation (style=form, explode=false) to a GithubOrganization value
/// as specified in https://swagger.io/docs/specification/serialization/
/// Should be implemented in a serde deserializer
impl std::str::FromStr for GithubOrganization {
    type Err = String;

    fn from_str(s: &str) -> std::result::Result<Self, Self::Err> {
        #[derive(Default)]
        // An intermediate representation of the struct to use for parsing.
        struct IntermediateRep {
            pub _class: Vec<String>,
            pub _links: Vec<models::GithubOrganizationlinks>,
            pub jenkins_organization_pipeline: Vec<bool>,
            pub name: Vec<String>,
        }

        let mut intermediate_rep = IntermediateRep::default();

        // Parse into intermediate representation
        let mut string_iter = s.split(',').into_iter();
        let mut key_result = string_iter.next();

        while key_result.is_some() {
            let val = match string_iter.next() {
                Some(x) => x,
                None => return std::result::Result::Err("Missing value while parsing GithubOrganization".to_string())
            };

            if let Some(key) = key_result {
                match key {
                    "_class" => intermediate_rep._class.push(<String as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "_links" => intermediate_rep._links.push(<models::GithubOrganizationlinks as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "jenkinsOrganizationPipeline" => intermediate_rep.jenkins_organization_pipeline.push(<bool as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "name" => intermediate_rep.name.push(<String as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    _ => return std::result::Result::Err("Unexpected key while parsing GithubOrganization".to_string())
                }
            }

            // Get the next key
            key_result = string_iter.next();
        }

        // Use the intermediate representation to return the struct
        std::result::Result::Ok(GithubOrganization {
            _class: intermediate_rep._class.into_iter().next(),
            _links: intermediate_rep._links.into_iter().next(),
            jenkins_organization_pipeline: intermediate_rep.jenkins_organization_pipeline.into_iter().next(),
            name: intermediate_rep.name.into_iter().next(),
        })
    }
}

// Methods for converting between header::IntoHeaderValue<GithubOrganization> and hyper::header::HeaderValue

#[cfg(any(feature = "client", feature = "server"))]
impl std::convert::TryFrom<header::IntoHeaderValue<GithubOrganization>> for hyper::header::HeaderValue {
    type Error = String;

    fn try_from(hdr_value: header::IntoHeaderValue<GithubOrganization>) -> std::result::Result<Self, Self::Error> {
        let hdr_value = hdr_value.to_string();
        match hyper::header::HeaderValue::from_str(&hdr_value) {
             std::result::Result::Ok(value) => std::result::Result::Ok(value),
             std::result::Result::Err(e) => std::result::Result::Err(
                 format!("Invalid header value for GithubOrganization - value: {} is invalid {}",
                     hdr_value, e))
        }
    }
}

#[cfg(any(feature = "client", feature = "server"))]
impl std::convert::TryFrom<hyper::header::HeaderValue> for header::IntoHeaderValue<GithubOrganization> {
    type Error = String;

    fn try_from(hdr_value: hyper::header::HeaderValue) -> std::result::Result<Self, Self::Error> {
        match hdr_value.to_str() {
             std::result::Result::Ok(value) => {
                    match <GithubOrganization as std::str::FromStr>::from_str(value) {
                        std::result::Result::Ok(value) => std::result::Result::Ok(header::IntoHeaderValue(value)),
                        std::result::Result::Err(err) => std::result::Result::Err(
                            format!("Unable to convert header value '{}' into GithubOrganization - {}",
                                value, err))
                    }
             },
             std::result::Result::Err(e) => std::result::Result::Err(
                 format!("Unable to convert header: {:?} to string: {}",
                     hdr_value, e))
        }
    }
}


impl GithubOrganization {
    /// Helper function to allow us to convert this model to an XML string.
    /// Will panic if serialisation fails.
    #[allow(dead_code)]
    pub(crate) fn to_xml(&self) -> String {
        serde_xml_rs::to_string(&self).expect("impossible to fail to serialize")
    }
}

#[derive(Debug, Clone, PartialEq, serde::Serialize, serde::Deserialize)]
#[cfg_attr(feature = "conversion", derive(frunk::LabelledGeneric))]
pub struct GithubOrganizationlinks {
    #[serde(rename = "repositories")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub repositories: Option<models::Link>,

    #[serde(rename = "self")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub self_: Option<models::Link>,

    #[serde(rename = "_class")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub _class: Option<String>,

}

impl GithubOrganizationlinks {
    pub fn new() -> GithubOrganizationlinks {
        GithubOrganizationlinks {
            repositories: None,
            self_: None,
            _class: None,
        }
    }
}

/// Converts the GithubOrganizationlinks value to the Query Parameters representation (style=form, explode=false)
/// specified in https://swagger.io/docs/specification/serialization/
/// Should be implemented in a serde serializer
impl std::string::ToString for GithubOrganizationlinks {
    fn to_string(&self) -> String {
        let mut params: Vec<String> = vec![];
        // Skipping repositories in query parameter serialization

        // Skipping self in query parameter serialization


        if let Some(ref _class) = self._class {
            params.push("_class".to_string());
            params.push(_class.to_string());
        }

        params.join(",").to_string()
    }
}

/// Converts Query Parameters representation (style=form, explode=false) to a GithubOrganizationlinks value
/// as specified in https://swagger.io/docs/specification/serialization/
/// Should be implemented in a serde deserializer
impl std::str::FromStr for GithubOrganizationlinks {
    type Err = String;

    fn from_str(s: &str) -> std::result::Result<Self, Self::Err> {
        #[derive(Default)]
        // An intermediate representation of the struct to use for parsing.
        struct IntermediateRep {
            pub repositories: Vec<models::Link>,
            pub self_: Vec<models::Link>,
            pub _class: Vec<String>,
        }

        let mut intermediate_rep = IntermediateRep::default();

        // Parse into intermediate representation
        let mut string_iter = s.split(',').into_iter();
        let mut key_result = string_iter.next();

        while key_result.is_some() {
            let val = match string_iter.next() {
                Some(x) => x,
                None => return std::result::Result::Err("Missing value while parsing GithubOrganizationlinks".to_string())
            };

            if let Some(key) = key_result {
                match key {
                    "repositories" => intermediate_rep.repositories.push(<models::Link as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "self" => intermediate_rep.self_.push(<models::Link as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "_class" => intermediate_rep._class.push(<String as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    _ => return std::result::Result::Err("Unexpected key while parsing GithubOrganizationlinks".to_string())
                }
            }

            // Get the next key
            key_result = string_iter.next();
        }

        // Use the intermediate representation to return the struct
        std::result::Result::Ok(GithubOrganizationlinks {
            repositories: intermediate_rep.repositories.into_iter().next(),
            self_: intermediate_rep.self_.into_iter().next(),
            _class: intermediate_rep._class.into_iter().next(),
        })
    }
}

// Methods for converting between header::IntoHeaderValue<GithubOrganizationlinks> and hyper::header::HeaderValue

#[cfg(any(feature = "client", feature = "server"))]
impl std::convert::TryFrom<header::IntoHeaderValue<GithubOrganizationlinks>> for hyper::header::HeaderValue {
    type Error = String;

    fn try_from(hdr_value: header::IntoHeaderValue<GithubOrganizationlinks>) -> std::result::Result<Self, Self::Error> {
        let hdr_value = hdr_value.to_string();
        match hyper::header::HeaderValue::from_str(&hdr_value) {
             std::result::Result::Ok(value) => std::result::Result::Ok(value),
             std::result::Result::Err(e) => std::result::Result::Err(
                 format!("Invalid header value for GithubOrganizationlinks - value: {} is invalid {}",
                     hdr_value, e))
        }
    }
}

#[cfg(any(feature = "client", feature = "server"))]
impl std::convert::TryFrom<hyper::header::HeaderValue> for header::IntoHeaderValue<GithubOrganizationlinks> {
    type Error = String;

    fn try_from(hdr_value: hyper::header::HeaderValue) -> std::result::Result<Self, Self::Error> {
        match hdr_value.to_str() {
             std::result::Result::Ok(value) => {
                    match <GithubOrganizationlinks as std::str::FromStr>::from_str(value) {
                        std::result::Result::Ok(value) => std::result::Result::Ok(header::IntoHeaderValue(value)),
                        std::result::Result::Err(err) => std::result::Result::Err(
                            format!("Unable to convert header value '{}' into GithubOrganizationlinks - {}",
                                value, err))
                    }
             },
             std::result::Result::Err(e) => std::result::Result::Err(
                 format!("Unable to convert header: {:?} to string: {}",
                     hdr_value, e))
        }
    }
}


impl GithubOrganizationlinks {
    /// Helper function to allow us to convert this model to an XML string.
    /// Will panic if serialisation fails.
    #[allow(dead_code)]
    pub(crate) fn to_xml(&self) -> String {
        serde_xml_rs::to_string(&self).expect("impossible to fail to serialize")
    }
}

#[derive(Debug, Clone, PartialEq, serde::Serialize, serde::Deserialize)]
#[cfg_attr(feature = "conversion", derive(frunk::LabelledGeneric))]
pub struct GithubRepositories {
    #[serde(rename = "_class")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub _class: Option<String>,

    #[serde(rename = "_links")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub _links: Option<models::GithubRepositorieslinks>,

    #[serde(rename = "items")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub items: Option<Vec<models::GithubRepository>>,

    #[serde(rename = "lastPage")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub last_page: Option<isize>,

    #[serde(rename = "nextPage")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub next_page: Option<isize>,

    #[serde(rename = "pageSize")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub page_size: Option<isize>,

}

impl GithubRepositories {
    pub fn new() -> GithubRepositories {
        GithubRepositories {
            _class: None,
            _links: None,
            items: None,
            last_page: None,
            next_page: None,
            page_size: None,
        }
    }
}

/// Converts the GithubRepositories value to the Query Parameters representation (style=form, explode=false)
/// specified in https://swagger.io/docs/specification/serialization/
/// Should be implemented in a serde serializer
impl std::string::ToString for GithubRepositories {
    fn to_string(&self) -> String {
        let mut params: Vec<String> = vec![];

        if let Some(ref _class) = self._class {
            params.push("_class".to_string());
            params.push(_class.to_string());
        }

        // Skipping _links in query parameter serialization

        // Skipping items in query parameter serialization


        if let Some(ref last_page) = self.last_page {
            params.push("lastPage".to_string());
            params.push(last_page.to_string());
        }


        if let Some(ref next_page) = self.next_page {
            params.push("nextPage".to_string());
            params.push(next_page.to_string());
        }


        if let Some(ref page_size) = self.page_size {
            params.push("pageSize".to_string());
            params.push(page_size.to_string());
        }

        params.join(",").to_string()
    }
}

/// Converts Query Parameters representation (style=form, explode=false) to a GithubRepositories value
/// as specified in https://swagger.io/docs/specification/serialization/
/// Should be implemented in a serde deserializer
impl std::str::FromStr for GithubRepositories {
    type Err = String;

    fn from_str(s: &str) -> std::result::Result<Self, Self::Err> {
        #[derive(Default)]
        // An intermediate representation of the struct to use for parsing.
        struct IntermediateRep {
            pub _class: Vec<String>,
            pub _links: Vec<models::GithubRepositorieslinks>,
            pub items: Vec<Vec<models::GithubRepository>>,
            pub last_page: Vec<isize>,
            pub next_page: Vec<isize>,
            pub page_size: Vec<isize>,
        }

        let mut intermediate_rep = IntermediateRep::default();

        // Parse into intermediate representation
        let mut string_iter = s.split(',').into_iter();
        let mut key_result = string_iter.next();

        while key_result.is_some() {
            let val = match string_iter.next() {
                Some(x) => x,
                None => return std::result::Result::Err("Missing value while parsing GithubRepositories".to_string())
            };

            if let Some(key) = key_result {
                match key {
                    "_class" => intermediate_rep._class.push(<String as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "_links" => intermediate_rep._links.push(<models::GithubRepositorieslinks as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "items" => return std::result::Result::Err("Parsing a container in this style is not supported in GithubRepositories".to_string()),
                    "lastPage" => intermediate_rep.last_page.push(<isize as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "nextPage" => intermediate_rep.next_page.push(<isize as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "pageSize" => intermediate_rep.page_size.push(<isize as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    _ => return std::result::Result::Err("Unexpected key while parsing GithubRepositories".to_string())
                }
            }

            // Get the next key
            key_result = string_iter.next();
        }

        // Use the intermediate representation to return the struct
        std::result::Result::Ok(GithubRepositories {
            _class: intermediate_rep._class.into_iter().next(),
            _links: intermediate_rep._links.into_iter().next(),
            items: intermediate_rep.items.into_iter().next(),
            last_page: intermediate_rep.last_page.into_iter().next(),
            next_page: intermediate_rep.next_page.into_iter().next(),
            page_size: intermediate_rep.page_size.into_iter().next(),
        })
    }
}

// Methods for converting between header::IntoHeaderValue<GithubRepositories> and hyper::header::HeaderValue

#[cfg(any(feature = "client", feature = "server"))]
impl std::convert::TryFrom<header::IntoHeaderValue<GithubRepositories>> for hyper::header::HeaderValue {
    type Error = String;

    fn try_from(hdr_value: header::IntoHeaderValue<GithubRepositories>) -> std::result::Result<Self, Self::Error> {
        let hdr_value = hdr_value.to_string();
        match hyper::header::HeaderValue::from_str(&hdr_value) {
             std::result::Result::Ok(value) => std::result::Result::Ok(value),
             std::result::Result::Err(e) => std::result::Result::Err(
                 format!("Invalid header value for GithubRepositories - value: {} is invalid {}",
                     hdr_value, e))
        }
    }
}

#[cfg(any(feature = "client", feature = "server"))]
impl std::convert::TryFrom<hyper::header::HeaderValue> for header::IntoHeaderValue<GithubRepositories> {
    type Error = String;

    fn try_from(hdr_value: hyper::header::HeaderValue) -> std::result::Result<Self, Self::Error> {
        match hdr_value.to_str() {
             std::result::Result::Ok(value) => {
                    match <GithubRepositories as std::str::FromStr>::from_str(value) {
                        std::result::Result::Ok(value) => std::result::Result::Ok(header::IntoHeaderValue(value)),
                        std::result::Result::Err(err) => std::result::Result::Err(
                            format!("Unable to convert header value '{}' into GithubRepositories - {}",
                                value, err))
                    }
             },
             std::result::Result::Err(e) => std::result::Result::Err(
                 format!("Unable to convert header: {:?} to string: {}",
                     hdr_value, e))
        }
    }
}


impl GithubRepositories {
    /// Helper function to allow us to convert this model to an XML string.
    /// Will panic if serialisation fails.
    #[allow(dead_code)]
    pub(crate) fn to_xml(&self) -> String {
        serde_xml_rs::to_string(&self).expect("impossible to fail to serialize")
    }
}

#[derive(Debug, Clone, PartialEq, serde::Serialize, serde::Deserialize)]
#[cfg_attr(feature = "conversion", derive(frunk::LabelledGeneric))]
pub struct GithubRepositorieslinks {
    #[serde(rename = "self")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub self_: Option<models::Link>,

    #[serde(rename = "_class")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub _class: Option<String>,

}

impl GithubRepositorieslinks {
    pub fn new() -> GithubRepositorieslinks {
        GithubRepositorieslinks {
            self_: None,
            _class: None,
        }
    }
}

/// Converts the GithubRepositorieslinks value to the Query Parameters representation (style=form, explode=false)
/// specified in https://swagger.io/docs/specification/serialization/
/// Should be implemented in a serde serializer
impl std::string::ToString for GithubRepositorieslinks {
    fn to_string(&self) -> String {
        let mut params: Vec<String> = vec![];
        // Skipping self in query parameter serialization


        if let Some(ref _class) = self._class {
            params.push("_class".to_string());
            params.push(_class.to_string());
        }

        params.join(",").to_string()
    }
}

/// Converts Query Parameters representation (style=form, explode=false) to a GithubRepositorieslinks value
/// as specified in https://swagger.io/docs/specification/serialization/
/// Should be implemented in a serde deserializer
impl std::str::FromStr for GithubRepositorieslinks {
    type Err = String;

    fn from_str(s: &str) -> std::result::Result<Self, Self::Err> {
        #[derive(Default)]
        // An intermediate representation of the struct to use for parsing.
        struct IntermediateRep {
            pub self_: Vec<models::Link>,
            pub _class: Vec<String>,
        }

        let mut intermediate_rep = IntermediateRep::default();

        // Parse into intermediate representation
        let mut string_iter = s.split(',').into_iter();
        let mut key_result = string_iter.next();

        while key_result.is_some() {
            let val = match string_iter.next() {
                Some(x) => x,
                None => return std::result::Result::Err("Missing value while parsing GithubRepositorieslinks".to_string())
            };

            if let Some(key) = key_result {
                match key {
                    "self" => intermediate_rep.self_.push(<models::Link as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "_class" => intermediate_rep._class.push(<String as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    _ => return std::result::Result::Err("Unexpected key while parsing GithubRepositorieslinks".to_string())
                }
            }

            // Get the next key
            key_result = string_iter.next();
        }

        // Use the intermediate representation to return the struct
        std::result::Result::Ok(GithubRepositorieslinks {
            self_: intermediate_rep.self_.into_iter().next(),
            _class: intermediate_rep._class.into_iter().next(),
        })
    }
}

// Methods for converting between header::IntoHeaderValue<GithubRepositorieslinks> and hyper::header::HeaderValue

#[cfg(any(feature = "client", feature = "server"))]
impl std::convert::TryFrom<header::IntoHeaderValue<GithubRepositorieslinks>> for hyper::header::HeaderValue {
    type Error = String;

    fn try_from(hdr_value: header::IntoHeaderValue<GithubRepositorieslinks>) -> std::result::Result<Self, Self::Error> {
        let hdr_value = hdr_value.to_string();
        match hyper::header::HeaderValue::from_str(&hdr_value) {
             std::result::Result::Ok(value) => std::result::Result::Ok(value),
             std::result::Result::Err(e) => std::result::Result::Err(
                 format!("Invalid header value for GithubRepositorieslinks - value: {} is invalid {}",
                     hdr_value, e))
        }
    }
}

#[cfg(any(feature = "client", feature = "server"))]
impl std::convert::TryFrom<hyper::header::HeaderValue> for header::IntoHeaderValue<GithubRepositorieslinks> {
    type Error = String;

    fn try_from(hdr_value: hyper::header::HeaderValue) -> std::result::Result<Self, Self::Error> {
        match hdr_value.to_str() {
             std::result::Result::Ok(value) => {
                    match <GithubRepositorieslinks as std::str::FromStr>::from_str(value) {
                        std::result::Result::Ok(value) => std::result::Result::Ok(header::IntoHeaderValue(value)),
                        std::result::Result::Err(err) => std::result::Result::Err(
                            format!("Unable to convert header value '{}' into GithubRepositorieslinks - {}",
                                value, err))
                    }
             },
             std::result::Result::Err(e) => std::result::Result::Err(
                 format!("Unable to convert header: {:?} to string: {}",
                     hdr_value, e))
        }
    }
}


impl GithubRepositorieslinks {
    /// Helper function to allow us to convert this model to an XML string.
    /// Will panic if serialisation fails.
    #[allow(dead_code)]
    pub(crate) fn to_xml(&self) -> String {
        serde_xml_rs::to_string(&self).expect("impossible to fail to serialize")
    }
}

#[derive(Debug, Clone, PartialEq, serde::Serialize, serde::Deserialize)]
#[cfg_attr(feature = "conversion", derive(frunk::LabelledGeneric))]
pub struct GithubRepository {
    #[serde(rename = "_class")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub _class: Option<String>,

    #[serde(rename = "_links")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub _links: Option<models::GithubRepositorylinks>,

    #[serde(rename = "defaultBranch")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub default_branch: Option<String>,

    #[serde(rename = "description")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub description: Option<String>,

    #[serde(rename = "name")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub name: Option<String>,

    #[serde(rename = "permissions")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub permissions: Option<models::GithubRepositorypermissions>,

    #[serde(rename = "private")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub private: Option<bool>,

    #[serde(rename = "fullName")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub full_name: Option<String>,

}

impl GithubRepository {
    pub fn new() -> GithubRepository {
        GithubRepository {
            _class: None,
            _links: None,
            default_branch: None,
            description: None,
            name: None,
            permissions: None,
            private: None,
            full_name: None,
        }
    }
}

/// Converts the GithubRepository value to the Query Parameters representation (style=form, explode=false)
/// specified in https://swagger.io/docs/specification/serialization/
/// Should be implemented in a serde serializer
impl std::string::ToString for GithubRepository {
    fn to_string(&self) -> String {
        let mut params: Vec<String> = vec![];

        if let Some(ref _class) = self._class {
            params.push("_class".to_string());
            params.push(_class.to_string());
        }

        // Skipping _links in query parameter serialization


        if let Some(ref default_branch) = self.default_branch {
            params.push("defaultBranch".to_string());
            params.push(default_branch.to_string());
        }


        if let Some(ref description) = self.description {
            params.push("description".to_string());
            params.push(description.to_string());
        }


        if let Some(ref name) = self.name {
            params.push("name".to_string());
            params.push(name.to_string());
        }

        // Skipping permissions in query parameter serialization


        if let Some(ref private) = self.private {
            params.push("private".to_string());
            params.push(private.to_string());
        }


        if let Some(ref full_name) = self.full_name {
            params.push("fullName".to_string());
            params.push(full_name.to_string());
        }

        params.join(",").to_string()
    }
}

/// Converts Query Parameters representation (style=form, explode=false) to a GithubRepository value
/// as specified in https://swagger.io/docs/specification/serialization/
/// Should be implemented in a serde deserializer
impl std::str::FromStr for GithubRepository {
    type Err = String;

    fn from_str(s: &str) -> std::result::Result<Self, Self::Err> {
        #[derive(Default)]
        // An intermediate representation of the struct to use for parsing.
        struct IntermediateRep {
            pub _class: Vec<String>,
            pub _links: Vec<models::GithubRepositorylinks>,
            pub default_branch: Vec<String>,
            pub description: Vec<String>,
            pub name: Vec<String>,
            pub permissions: Vec<models::GithubRepositorypermissions>,
            pub private: Vec<bool>,
            pub full_name: Vec<String>,
        }

        let mut intermediate_rep = IntermediateRep::default();

        // Parse into intermediate representation
        let mut string_iter = s.split(',').into_iter();
        let mut key_result = string_iter.next();

        while key_result.is_some() {
            let val = match string_iter.next() {
                Some(x) => x,
                None => return std::result::Result::Err("Missing value while parsing GithubRepository".to_string())
            };

            if let Some(key) = key_result {
                match key {
                    "_class" => intermediate_rep._class.push(<String as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "_links" => intermediate_rep._links.push(<models::GithubRepositorylinks as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "defaultBranch" => intermediate_rep.default_branch.push(<String as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "description" => intermediate_rep.description.push(<String as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "name" => intermediate_rep.name.push(<String as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "permissions" => intermediate_rep.permissions.push(<models::GithubRepositorypermissions as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "private" => intermediate_rep.private.push(<bool as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "fullName" => intermediate_rep.full_name.push(<String as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    _ => return std::result::Result::Err("Unexpected key while parsing GithubRepository".to_string())
                }
            }

            // Get the next key
            key_result = string_iter.next();
        }

        // Use the intermediate representation to return the struct
        std::result::Result::Ok(GithubRepository {
            _class: intermediate_rep._class.into_iter().next(),
            _links: intermediate_rep._links.into_iter().next(),
            default_branch: intermediate_rep.default_branch.into_iter().next(),
            description: intermediate_rep.description.into_iter().next(),
            name: intermediate_rep.name.into_iter().next(),
            permissions: intermediate_rep.permissions.into_iter().next(),
            private: intermediate_rep.private.into_iter().next(),
            full_name: intermediate_rep.full_name.into_iter().next(),
        })
    }
}

// Methods for converting between header::IntoHeaderValue<GithubRepository> and hyper::header::HeaderValue

#[cfg(any(feature = "client", feature = "server"))]
impl std::convert::TryFrom<header::IntoHeaderValue<GithubRepository>> for hyper::header::HeaderValue {
    type Error = String;

    fn try_from(hdr_value: header::IntoHeaderValue<GithubRepository>) -> std::result::Result<Self, Self::Error> {
        let hdr_value = hdr_value.to_string();
        match hyper::header::HeaderValue::from_str(&hdr_value) {
             std::result::Result::Ok(value) => std::result::Result::Ok(value),
             std::result::Result::Err(e) => std::result::Result::Err(
                 format!("Invalid header value for GithubRepository - value: {} is invalid {}",
                     hdr_value, e))
        }
    }
}

#[cfg(any(feature = "client", feature = "server"))]
impl std::convert::TryFrom<hyper::header::HeaderValue> for header::IntoHeaderValue<GithubRepository> {
    type Error = String;

    fn try_from(hdr_value: hyper::header::HeaderValue) -> std::result::Result<Self, Self::Error> {
        match hdr_value.to_str() {
             std::result::Result::Ok(value) => {
                    match <GithubRepository as std::str::FromStr>::from_str(value) {
                        std::result::Result::Ok(value) => std::result::Result::Ok(header::IntoHeaderValue(value)),
                        std::result::Result::Err(err) => std::result::Result::Err(
                            format!("Unable to convert header value '{}' into GithubRepository - {}",
                                value, err))
                    }
             },
             std::result::Result::Err(e) => std::result::Result::Err(
                 format!("Unable to convert header: {:?} to string: {}",
                     hdr_value, e))
        }
    }
}


impl GithubRepository {
    /// Helper function to allow us to convert this model to an XML string.
    /// Will panic if serialisation fails.
    #[allow(dead_code)]
    pub(crate) fn to_xml(&self) -> String {
        serde_xml_rs::to_string(&self).expect("impossible to fail to serialize")
    }
}

#[derive(Debug, Clone, PartialEq, serde::Serialize, serde::Deserialize)]
#[cfg_attr(feature = "conversion", derive(frunk::LabelledGeneric))]
pub struct GithubRepositorylinks {
    #[serde(rename = "self")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub self_: Option<models::Link>,

    #[serde(rename = "_class")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub _class: Option<String>,

}

impl GithubRepositorylinks {
    pub fn new() -> GithubRepositorylinks {
        GithubRepositorylinks {
            self_: None,
            _class: None,
        }
    }
}

/// Converts the GithubRepositorylinks value to the Query Parameters representation (style=form, explode=false)
/// specified in https://swagger.io/docs/specification/serialization/
/// Should be implemented in a serde serializer
impl std::string::ToString for GithubRepositorylinks {
    fn to_string(&self) -> String {
        let mut params: Vec<String> = vec![];
        // Skipping self in query parameter serialization


        if let Some(ref _class) = self._class {
            params.push("_class".to_string());
            params.push(_class.to_string());
        }

        params.join(",").to_string()
    }
}

/// Converts Query Parameters representation (style=form, explode=false) to a GithubRepositorylinks value
/// as specified in https://swagger.io/docs/specification/serialization/
/// Should be implemented in a serde deserializer
impl std::str::FromStr for GithubRepositorylinks {
    type Err = String;

    fn from_str(s: &str) -> std::result::Result<Self, Self::Err> {
        #[derive(Default)]
        // An intermediate representation of the struct to use for parsing.
        struct IntermediateRep {
            pub self_: Vec<models::Link>,
            pub _class: Vec<String>,
        }

        let mut intermediate_rep = IntermediateRep::default();

        // Parse into intermediate representation
        let mut string_iter = s.split(',').into_iter();
        let mut key_result = string_iter.next();

        while key_result.is_some() {
            let val = match string_iter.next() {
                Some(x) => x,
                None => return std::result::Result::Err("Missing value while parsing GithubRepositorylinks".to_string())
            };

            if let Some(key) = key_result {
                match key {
                    "self" => intermediate_rep.self_.push(<models::Link as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "_class" => intermediate_rep._class.push(<String as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    _ => return std::result::Result::Err("Unexpected key while parsing GithubRepositorylinks".to_string())
                }
            }

            // Get the next key
            key_result = string_iter.next();
        }

        // Use the intermediate representation to return the struct
        std::result::Result::Ok(GithubRepositorylinks {
            self_: intermediate_rep.self_.into_iter().next(),
            _class: intermediate_rep._class.into_iter().next(),
        })
    }
}

// Methods for converting between header::IntoHeaderValue<GithubRepositorylinks> and hyper::header::HeaderValue

#[cfg(any(feature = "client", feature = "server"))]
impl std::convert::TryFrom<header::IntoHeaderValue<GithubRepositorylinks>> for hyper::header::HeaderValue {
    type Error = String;

    fn try_from(hdr_value: header::IntoHeaderValue<GithubRepositorylinks>) -> std::result::Result<Self, Self::Error> {
        let hdr_value = hdr_value.to_string();
        match hyper::header::HeaderValue::from_str(&hdr_value) {
             std::result::Result::Ok(value) => std::result::Result::Ok(value),
             std::result::Result::Err(e) => std::result::Result::Err(
                 format!("Invalid header value for GithubRepositorylinks - value: {} is invalid {}",
                     hdr_value, e))
        }
    }
}

#[cfg(any(feature = "client", feature = "server"))]
impl std::convert::TryFrom<hyper::header::HeaderValue> for header::IntoHeaderValue<GithubRepositorylinks> {
    type Error = String;

    fn try_from(hdr_value: hyper::header::HeaderValue) -> std::result::Result<Self, Self::Error> {
        match hdr_value.to_str() {
             std::result::Result::Ok(value) => {
                    match <GithubRepositorylinks as std::str::FromStr>::from_str(value) {
                        std::result::Result::Ok(value) => std::result::Result::Ok(header::IntoHeaderValue(value)),
                        std::result::Result::Err(err) => std::result::Result::Err(
                            format!("Unable to convert header value '{}' into GithubRepositorylinks - {}",
                                value, err))
                    }
             },
             std::result::Result::Err(e) => std::result::Result::Err(
                 format!("Unable to convert header: {:?} to string: {}",
                     hdr_value, e))
        }
    }
}


impl GithubRepositorylinks {
    /// Helper function to allow us to convert this model to an XML string.
    /// Will panic if serialisation fails.
    #[allow(dead_code)]
    pub(crate) fn to_xml(&self) -> String {
        serde_xml_rs::to_string(&self).expect("impossible to fail to serialize")
    }
}

#[derive(Debug, Clone, PartialEq, serde::Serialize, serde::Deserialize)]
#[cfg_attr(feature = "conversion", derive(frunk::LabelledGeneric))]
pub struct GithubRepositorypermissions {
    #[serde(rename = "admin")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub admin: Option<bool>,

    #[serde(rename = "push")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub push: Option<bool>,

    #[serde(rename = "pull")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub pull: Option<bool>,

    #[serde(rename = "_class")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub _class: Option<String>,

}

impl GithubRepositorypermissions {
    pub fn new() -> GithubRepositorypermissions {
        GithubRepositorypermissions {
            admin: None,
            push: None,
            pull: None,
            _class: None,
        }
    }
}

/// Converts the GithubRepositorypermissions value to the Query Parameters representation (style=form, explode=false)
/// specified in https://swagger.io/docs/specification/serialization/
/// Should be implemented in a serde serializer
impl std::string::ToString for GithubRepositorypermissions {
    fn to_string(&self) -> String {
        let mut params: Vec<String> = vec![];

        if let Some(ref admin) = self.admin {
            params.push("admin".to_string());
            params.push(admin.to_string());
        }


        if let Some(ref push) = self.push {
            params.push("push".to_string());
            params.push(push.to_string());
        }


        if let Some(ref pull) = self.pull {
            params.push("pull".to_string());
            params.push(pull.to_string());
        }


        if let Some(ref _class) = self._class {
            params.push("_class".to_string());
            params.push(_class.to_string());
        }

        params.join(",").to_string()
    }
}

/// Converts Query Parameters representation (style=form, explode=false) to a GithubRepositorypermissions value
/// as specified in https://swagger.io/docs/specification/serialization/
/// Should be implemented in a serde deserializer
impl std::str::FromStr for GithubRepositorypermissions {
    type Err = String;

    fn from_str(s: &str) -> std::result::Result<Self, Self::Err> {
        #[derive(Default)]
        // An intermediate representation of the struct to use for parsing.
        struct IntermediateRep {
            pub admin: Vec<bool>,
            pub push: Vec<bool>,
            pub pull: Vec<bool>,
            pub _class: Vec<String>,
        }

        let mut intermediate_rep = IntermediateRep::default();

        // Parse into intermediate representation
        let mut string_iter = s.split(',').into_iter();
        let mut key_result = string_iter.next();

        while key_result.is_some() {
            let val = match string_iter.next() {
                Some(x) => x,
                None => return std::result::Result::Err("Missing value while parsing GithubRepositorypermissions".to_string())
            };

            if let Some(key) = key_result {
                match key {
                    "admin" => intermediate_rep.admin.push(<bool as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "push" => intermediate_rep.push.push(<bool as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "pull" => intermediate_rep.pull.push(<bool as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "_class" => intermediate_rep._class.push(<String as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    _ => return std::result::Result::Err("Unexpected key while parsing GithubRepositorypermissions".to_string())
                }
            }

            // Get the next key
            key_result = string_iter.next();
        }

        // Use the intermediate representation to return the struct
        std::result::Result::Ok(GithubRepositorypermissions {
            admin: intermediate_rep.admin.into_iter().next(),
            push: intermediate_rep.push.into_iter().next(),
            pull: intermediate_rep.pull.into_iter().next(),
            _class: intermediate_rep._class.into_iter().next(),
        })
    }
}

// Methods for converting between header::IntoHeaderValue<GithubRepositorypermissions> and hyper::header::HeaderValue

#[cfg(any(feature = "client", feature = "server"))]
impl std::convert::TryFrom<header::IntoHeaderValue<GithubRepositorypermissions>> for hyper::header::HeaderValue {
    type Error = String;

    fn try_from(hdr_value: header::IntoHeaderValue<GithubRepositorypermissions>) -> std::result::Result<Self, Self::Error> {
        let hdr_value = hdr_value.to_string();
        match hyper::header::HeaderValue::from_str(&hdr_value) {
             std::result::Result::Ok(value) => std::result::Result::Ok(value),
             std::result::Result::Err(e) => std::result::Result::Err(
                 format!("Invalid header value for GithubRepositorypermissions - value: {} is invalid {}",
                     hdr_value, e))
        }
    }
}

#[cfg(any(feature = "client", feature = "server"))]
impl std::convert::TryFrom<hyper::header::HeaderValue> for header::IntoHeaderValue<GithubRepositorypermissions> {
    type Error = String;

    fn try_from(hdr_value: hyper::header::HeaderValue) -> std::result::Result<Self, Self::Error> {
        match hdr_value.to_str() {
             std::result::Result::Ok(value) => {
                    match <GithubRepositorypermissions as std::str::FromStr>::from_str(value) {
                        std::result::Result::Ok(value) => std::result::Result::Ok(header::IntoHeaderValue(value)),
                        std::result::Result::Err(err) => std::result::Result::Err(
                            format!("Unable to convert header value '{}' into GithubRepositorypermissions - {}",
                                value, err))
                    }
             },
             std::result::Result::Err(e) => std::result::Result::Err(
                 format!("Unable to convert header: {:?} to string: {}",
                     hdr_value, e))
        }
    }
}


impl GithubRepositorypermissions {
    /// Helper function to allow us to convert this model to an XML string.
    /// Will panic if serialisation fails.
    #[allow(dead_code)]
    pub(crate) fn to_xml(&self) -> String {
        serde_xml_rs::to_string(&self).expect("impossible to fail to serialize")
    }
}

#[derive(Debug, Clone, PartialEq, serde::Serialize, serde::Deserialize)]
#[cfg_attr(feature = "conversion", derive(frunk::LabelledGeneric))]
pub struct GithubRespositoryContainer {
    #[serde(rename = "_class")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub _class: Option<String>,

    #[serde(rename = "_links")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub _links: Option<models::GithubRespositoryContainerlinks>,

    #[serde(rename = "repositories")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub repositories: Option<models::GithubRepositories>,

}

impl GithubRespositoryContainer {
    pub fn new() -> GithubRespositoryContainer {
        GithubRespositoryContainer {
            _class: None,
            _links: None,
            repositories: None,
        }
    }
}

/// Converts the GithubRespositoryContainer value to the Query Parameters representation (style=form, explode=false)
/// specified in https://swagger.io/docs/specification/serialization/
/// Should be implemented in a serde serializer
impl std::string::ToString for GithubRespositoryContainer {
    fn to_string(&self) -> String {
        let mut params: Vec<String> = vec![];

        if let Some(ref _class) = self._class {
            params.push("_class".to_string());
            params.push(_class.to_string());
        }

        // Skipping _links in query parameter serialization

        // Skipping repositories in query parameter serialization

        params.join(",").to_string()
    }
}

/// Converts Query Parameters representation (style=form, explode=false) to a GithubRespositoryContainer value
/// as specified in https://swagger.io/docs/specification/serialization/
/// Should be implemented in a serde deserializer
impl std::str::FromStr for GithubRespositoryContainer {
    type Err = String;

    fn from_str(s: &str) -> std::result::Result<Self, Self::Err> {
        #[derive(Default)]
        // An intermediate representation of the struct to use for parsing.
        struct IntermediateRep {
            pub _class: Vec<String>,
            pub _links: Vec<models::GithubRespositoryContainerlinks>,
            pub repositories: Vec<models::GithubRepositories>,
        }

        let mut intermediate_rep = IntermediateRep::default();

        // Parse into intermediate representation
        let mut string_iter = s.split(',').into_iter();
        let mut key_result = string_iter.next();

        while key_result.is_some() {
            let val = match string_iter.next() {
                Some(x) => x,
                None => return std::result::Result::Err("Missing value while parsing GithubRespositoryContainer".to_string())
            };

            if let Some(key) = key_result {
                match key {
                    "_class" => intermediate_rep._class.push(<String as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "_links" => intermediate_rep._links.push(<models::GithubRespositoryContainerlinks as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "repositories" => intermediate_rep.repositories.push(<models::GithubRepositories as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    _ => return std::result::Result::Err("Unexpected key while parsing GithubRespositoryContainer".to_string())
                }
            }

            // Get the next key
            key_result = string_iter.next();
        }

        // Use the intermediate representation to return the struct
        std::result::Result::Ok(GithubRespositoryContainer {
            _class: intermediate_rep._class.into_iter().next(),
            _links: intermediate_rep._links.into_iter().next(),
            repositories: intermediate_rep.repositories.into_iter().next(),
        })
    }
}

// Methods for converting between header::IntoHeaderValue<GithubRespositoryContainer> and hyper::header::HeaderValue

#[cfg(any(feature = "client", feature = "server"))]
impl std::convert::TryFrom<header::IntoHeaderValue<GithubRespositoryContainer>> for hyper::header::HeaderValue {
    type Error = String;

    fn try_from(hdr_value: header::IntoHeaderValue<GithubRespositoryContainer>) -> std::result::Result<Self, Self::Error> {
        let hdr_value = hdr_value.to_string();
        match hyper::header::HeaderValue::from_str(&hdr_value) {
             std::result::Result::Ok(value) => std::result::Result::Ok(value),
             std::result::Result::Err(e) => std::result::Result::Err(
                 format!("Invalid header value for GithubRespositoryContainer - value: {} is invalid {}",
                     hdr_value, e))
        }
    }
}

#[cfg(any(feature = "client", feature = "server"))]
impl std::convert::TryFrom<hyper::header::HeaderValue> for header::IntoHeaderValue<GithubRespositoryContainer> {
    type Error = String;

    fn try_from(hdr_value: hyper::header::HeaderValue) -> std::result::Result<Self, Self::Error> {
        match hdr_value.to_str() {
             std::result::Result::Ok(value) => {
                    match <GithubRespositoryContainer as std::str::FromStr>::from_str(value) {
                        std::result::Result::Ok(value) => std::result::Result::Ok(header::IntoHeaderValue(value)),
                        std::result::Result::Err(err) => std::result::Result::Err(
                            format!("Unable to convert header value '{}' into GithubRespositoryContainer - {}",
                                value, err))
                    }
             },
             std::result::Result::Err(e) => std::result::Result::Err(
                 format!("Unable to convert header: {:?} to string: {}",
                     hdr_value, e))
        }
    }
}


impl GithubRespositoryContainer {
    /// Helper function to allow us to convert this model to an XML string.
    /// Will panic if serialisation fails.
    #[allow(dead_code)]
    pub(crate) fn to_xml(&self) -> String {
        serde_xml_rs::to_string(&self).expect("impossible to fail to serialize")
    }
}

#[derive(Debug, Clone, PartialEq, serde::Serialize, serde::Deserialize)]
#[cfg_attr(feature = "conversion", derive(frunk::LabelledGeneric))]
pub struct GithubRespositoryContainerlinks {
    #[serde(rename = "self")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub self_: Option<models::Link>,

    #[serde(rename = "_class")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub _class: Option<String>,

}

impl GithubRespositoryContainerlinks {
    pub fn new() -> GithubRespositoryContainerlinks {
        GithubRespositoryContainerlinks {
            self_: None,
            _class: None,
        }
    }
}

/// Converts the GithubRespositoryContainerlinks value to the Query Parameters representation (style=form, explode=false)
/// specified in https://swagger.io/docs/specification/serialization/
/// Should be implemented in a serde serializer
impl std::string::ToString for GithubRespositoryContainerlinks {
    fn to_string(&self) -> String {
        let mut params: Vec<String> = vec![];
        // Skipping self in query parameter serialization


        if let Some(ref _class) = self._class {
            params.push("_class".to_string());
            params.push(_class.to_string());
        }

        params.join(",").to_string()
    }
}

/// Converts Query Parameters representation (style=form, explode=false) to a GithubRespositoryContainerlinks value
/// as specified in https://swagger.io/docs/specification/serialization/
/// Should be implemented in a serde deserializer
impl std::str::FromStr for GithubRespositoryContainerlinks {
    type Err = String;

    fn from_str(s: &str) -> std::result::Result<Self, Self::Err> {
        #[derive(Default)]
        // An intermediate representation of the struct to use for parsing.
        struct IntermediateRep {
            pub self_: Vec<models::Link>,
            pub _class: Vec<String>,
        }

        let mut intermediate_rep = IntermediateRep::default();

        // Parse into intermediate representation
        let mut string_iter = s.split(',').into_iter();
        let mut key_result = string_iter.next();

        while key_result.is_some() {
            let val = match string_iter.next() {
                Some(x) => x,
                None => return std::result::Result::Err("Missing value while parsing GithubRespositoryContainerlinks".to_string())
            };

            if let Some(key) = key_result {
                match key {
                    "self" => intermediate_rep.self_.push(<models::Link as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "_class" => intermediate_rep._class.push(<String as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    _ => return std::result::Result::Err("Unexpected key while parsing GithubRespositoryContainerlinks".to_string())
                }
            }

            // Get the next key
            key_result = string_iter.next();
        }

        // Use the intermediate representation to return the struct
        std::result::Result::Ok(GithubRespositoryContainerlinks {
            self_: intermediate_rep.self_.into_iter().next(),
            _class: intermediate_rep._class.into_iter().next(),
        })
    }
}

// Methods for converting between header::IntoHeaderValue<GithubRespositoryContainerlinks> and hyper::header::HeaderValue

#[cfg(any(feature = "client", feature = "server"))]
impl std::convert::TryFrom<header::IntoHeaderValue<GithubRespositoryContainerlinks>> for hyper::header::HeaderValue {
    type Error = String;

    fn try_from(hdr_value: header::IntoHeaderValue<GithubRespositoryContainerlinks>) -> std::result::Result<Self, Self::Error> {
        let hdr_value = hdr_value.to_string();
        match hyper::header::HeaderValue::from_str(&hdr_value) {
             std::result::Result::Ok(value) => std::result::Result::Ok(value),
             std::result::Result::Err(e) => std::result::Result::Err(
                 format!("Invalid header value for GithubRespositoryContainerlinks - value: {} is invalid {}",
                     hdr_value, e))
        }
    }
}

#[cfg(any(feature = "client", feature = "server"))]
impl std::convert::TryFrom<hyper::header::HeaderValue> for header::IntoHeaderValue<GithubRespositoryContainerlinks> {
    type Error = String;

    fn try_from(hdr_value: hyper::header::HeaderValue) -> std::result::Result<Self, Self::Error> {
        match hdr_value.to_str() {
             std::result::Result::Ok(value) => {
                    match <GithubRespositoryContainerlinks as std::str::FromStr>::from_str(value) {
                        std::result::Result::Ok(value) => std::result::Result::Ok(header::IntoHeaderValue(value)),
                        std::result::Result::Err(err) => std::result::Result::Err(
                            format!("Unable to convert header value '{}' into GithubRespositoryContainerlinks - {}",
                                value, err))
                    }
             },
             std::result::Result::Err(e) => std::result::Result::Err(
                 format!("Unable to convert header: {:?} to string: {}",
                     hdr_value, e))
        }
    }
}


impl GithubRespositoryContainerlinks {
    /// Helper function to allow us to convert this model to an XML string.
    /// Will panic if serialisation fails.
    #[allow(dead_code)]
    pub(crate) fn to_xml(&self) -> String {
        serde_xml_rs::to_string(&self).expect("impossible to fail to serialize")
    }
}

#[derive(Debug, Clone, PartialEq, serde::Serialize, serde::Deserialize)]
#[cfg_attr(feature = "conversion", derive(frunk::LabelledGeneric))]
pub struct GithubScm {
    #[serde(rename = "_class")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub _class: Option<String>,

    #[serde(rename = "_links")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub _links: Option<models::GithubScmlinks>,

    #[serde(rename = "credentialId")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub credential_id: Option<String>,

    #[serde(rename = "id")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub id: Option<String>,

    #[serde(rename = "uri")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub uri: Option<String>,

}

impl GithubScm {
    pub fn new() -> GithubScm {
        GithubScm {
            _class: None,
            _links: None,
            credential_id: None,
            id: None,
            uri: None,
        }
    }
}

/// Converts the GithubScm value to the Query Parameters representation (style=form, explode=false)
/// specified in https://swagger.io/docs/specification/serialization/
/// Should be implemented in a serde serializer
impl std::string::ToString for GithubScm {
    fn to_string(&self) -> String {
        let mut params: Vec<String> = vec![];

        if let Some(ref _class) = self._class {
            params.push("_class".to_string());
            params.push(_class.to_string());
        }

        // Skipping _links in query parameter serialization


        if let Some(ref credential_id) = self.credential_id {
            params.push("credentialId".to_string());
            params.push(credential_id.to_string());
        }


        if let Some(ref id) = self.id {
            params.push("id".to_string());
            params.push(id.to_string());
        }


        if let Some(ref uri) = self.uri {
            params.push("uri".to_string());
            params.push(uri.to_string());
        }

        params.join(",").to_string()
    }
}

/// Converts Query Parameters representation (style=form, explode=false) to a GithubScm value
/// as specified in https://swagger.io/docs/specification/serialization/
/// Should be implemented in a serde deserializer
impl std::str::FromStr for GithubScm {
    type Err = String;

    fn from_str(s: &str) -> std::result::Result<Self, Self::Err> {
        #[derive(Default)]
        // An intermediate representation of the struct to use for parsing.
        struct IntermediateRep {
            pub _class: Vec<String>,
            pub _links: Vec<models::GithubScmlinks>,
            pub credential_id: Vec<String>,
            pub id: Vec<String>,
            pub uri: Vec<String>,
        }

        let mut intermediate_rep = IntermediateRep::default();

        // Parse into intermediate representation
        let mut string_iter = s.split(',').into_iter();
        let mut key_result = string_iter.next();

        while key_result.is_some() {
            let val = match string_iter.next() {
                Some(x) => x,
                None => return std::result::Result::Err("Missing value while parsing GithubScm".to_string())
            };

            if let Some(key) = key_result {
                match key {
                    "_class" => intermediate_rep._class.push(<String as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "_links" => intermediate_rep._links.push(<models::GithubScmlinks as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "credentialId" => intermediate_rep.credential_id.push(<String as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "id" => intermediate_rep.id.push(<String as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "uri" => intermediate_rep.uri.push(<String as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    _ => return std::result::Result::Err("Unexpected key while parsing GithubScm".to_string())
                }
            }

            // Get the next key
            key_result = string_iter.next();
        }

        // Use the intermediate representation to return the struct
        std::result::Result::Ok(GithubScm {
            _class: intermediate_rep._class.into_iter().next(),
            _links: intermediate_rep._links.into_iter().next(),
            credential_id: intermediate_rep.credential_id.into_iter().next(),
            id: intermediate_rep.id.into_iter().next(),
            uri: intermediate_rep.uri.into_iter().next(),
        })
    }
}

// Methods for converting between header::IntoHeaderValue<GithubScm> and hyper::header::HeaderValue

#[cfg(any(feature = "client", feature = "server"))]
impl std::convert::TryFrom<header::IntoHeaderValue<GithubScm>> for hyper::header::HeaderValue {
    type Error = String;

    fn try_from(hdr_value: header::IntoHeaderValue<GithubScm>) -> std::result::Result<Self, Self::Error> {
        let hdr_value = hdr_value.to_string();
        match hyper::header::HeaderValue::from_str(&hdr_value) {
             std::result::Result::Ok(value) => std::result::Result::Ok(value),
             std::result::Result::Err(e) => std::result::Result::Err(
                 format!("Invalid header value for GithubScm - value: {} is invalid {}",
                     hdr_value, e))
        }
    }
}

#[cfg(any(feature = "client", feature = "server"))]
impl std::convert::TryFrom<hyper::header::HeaderValue> for header::IntoHeaderValue<GithubScm> {
    type Error = String;

    fn try_from(hdr_value: hyper::header::HeaderValue) -> std::result::Result<Self, Self::Error> {
        match hdr_value.to_str() {
             std::result::Result::Ok(value) => {
                    match <GithubScm as std::str::FromStr>::from_str(value) {
                        std::result::Result::Ok(value) => std::result::Result::Ok(header::IntoHeaderValue(value)),
                        std::result::Result::Err(err) => std::result::Result::Err(
                            format!("Unable to convert header value '{}' into GithubScm - {}",
                                value, err))
                    }
             },
             std::result::Result::Err(e) => std::result::Result::Err(
                 format!("Unable to convert header: {:?} to string: {}",
                     hdr_value, e))
        }
    }
}


impl GithubScm {
    /// Helper function to allow us to convert this model to an XML string.
    /// Will panic if serialisation fails.
    #[allow(dead_code)]
    pub(crate) fn to_xml(&self) -> String {
        serde_xml_rs::to_string(&self).expect("impossible to fail to serialize")
    }
}

#[derive(Debug, Clone, PartialEq, serde::Serialize, serde::Deserialize)]
#[cfg_attr(feature = "conversion", derive(frunk::LabelledGeneric))]
pub struct GithubScmlinks {
    #[serde(rename = "self")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub self_: Option<models::Link>,

    #[serde(rename = "_class")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub _class: Option<String>,

}

impl GithubScmlinks {
    pub fn new() -> GithubScmlinks {
        GithubScmlinks {
            self_: None,
            _class: None,
        }
    }
}

/// Converts the GithubScmlinks value to the Query Parameters representation (style=form, explode=false)
/// specified in https://swagger.io/docs/specification/serialization/
/// Should be implemented in a serde serializer
impl std::string::ToString for GithubScmlinks {
    fn to_string(&self) -> String {
        let mut params: Vec<String> = vec![];
        // Skipping self in query parameter serialization


        if let Some(ref _class) = self._class {
            params.push("_class".to_string());
            params.push(_class.to_string());
        }

        params.join(",").to_string()
    }
}

/// Converts Query Parameters representation (style=form, explode=false) to a GithubScmlinks value
/// as specified in https://swagger.io/docs/specification/serialization/
/// Should be implemented in a serde deserializer
impl std::str::FromStr for GithubScmlinks {
    type Err = String;

    fn from_str(s: &str) -> std::result::Result<Self, Self::Err> {
        #[derive(Default)]
        // An intermediate representation of the struct to use for parsing.
        struct IntermediateRep {
            pub self_: Vec<models::Link>,
            pub _class: Vec<String>,
        }

        let mut intermediate_rep = IntermediateRep::default();

        // Parse into intermediate representation
        let mut string_iter = s.split(',').into_iter();
        let mut key_result = string_iter.next();

        while key_result.is_some() {
            let val = match string_iter.next() {
                Some(x) => x,
                None => return std::result::Result::Err("Missing value while parsing GithubScmlinks".to_string())
            };

            if let Some(key) = key_result {
                match key {
                    "self" => intermediate_rep.self_.push(<models::Link as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "_class" => intermediate_rep._class.push(<String as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    _ => return std::result::Result::Err("Unexpected key while parsing GithubScmlinks".to_string())
                }
            }

            // Get the next key
            key_result = string_iter.next();
        }

        // Use the intermediate representation to return the struct
        std::result::Result::Ok(GithubScmlinks {
            self_: intermediate_rep.self_.into_iter().next(),
            _class: intermediate_rep._class.into_iter().next(),
        })
    }
}

// Methods for converting between header::IntoHeaderValue<GithubScmlinks> and hyper::header::HeaderValue

#[cfg(any(feature = "client", feature = "server"))]
impl std::convert::TryFrom<header::IntoHeaderValue<GithubScmlinks>> for hyper::header::HeaderValue {
    type Error = String;

    fn try_from(hdr_value: header::IntoHeaderValue<GithubScmlinks>) -> std::result::Result<Self, Self::Error> {
        let hdr_value = hdr_value.to_string();
        match hyper::header::HeaderValue::from_str(&hdr_value) {
             std::result::Result::Ok(value) => std::result::Result::Ok(value),
             std::result::Result::Err(e) => std::result::Result::Err(
                 format!("Invalid header value for GithubScmlinks - value: {} is invalid {}",
                     hdr_value, e))
        }
    }
}

#[cfg(any(feature = "client", feature = "server"))]
impl std::convert::TryFrom<hyper::header::HeaderValue> for header::IntoHeaderValue<GithubScmlinks> {
    type Error = String;

    fn try_from(hdr_value: hyper::header::HeaderValue) -> std::result::Result<Self, Self::Error> {
        match hdr_value.to_str() {
             std::result::Result::Ok(value) => {
                    match <GithubScmlinks as std::str::FromStr>::from_str(value) {
                        std::result::Result::Ok(value) => std::result::Result::Ok(header::IntoHeaderValue(value)),
                        std::result::Result::Err(err) => std::result::Result::Err(
                            format!("Unable to convert header value '{}' into GithubScmlinks - {}",
                                value, err))
                    }
             },
             std::result::Result::Err(e) => std::result::Result::Err(
                 format!("Unable to convert header: {:?} to string: {}",
                     hdr_value, e))
        }
    }
}


impl GithubScmlinks {
    /// Helper function to allow us to convert this model to an XML string.
    /// Will panic if serialisation fails.
    #[allow(dead_code)]
    pub(crate) fn to_xml(&self) -> String {
        serde_xml_rs::to_string(&self).expect("impossible to fail to serialize")
    }
}

#[derive(Debug, Clone, PartialEq, serde::Serialize, serde::Deserialize)]
#[cfg_attr(feature = "conversion", derive(frunk::LabelledGeneric))]
pub struct Hudson {
    #[serde(rename = "_class")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub _class: Option<String>,

    #[serde(rename = "assignedLabels")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub assigned_labels: Option<Vec<models::HudsonassignedLabels>>,

    #[serde(rename = "mode")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub mode: Option<String>,

    #[serde(rename = "nodeDescription")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub node_description: Option<String>,

    #[serde(rename = "nodeName")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub node_name: Option<String>,

    #[serde(rename = "numExecutors")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub num_executors: Option<isize>,

    #[serde(rename = "description")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub description: Option<String>,

    #[serde(rename = "jobs")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub jobs: Option<Vec<models::FreeStyleProject>>,

    #[serde(rename = "primaryView")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub primary_view: Option<models::AllView>,

    #[serde(rename = "quietingDown")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub quieting_down: Option<bool>,

    #[serde(rename = "slaveAgentPort")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub slave_agent_port: Option<isize>,

    #[serde(rename = "unlabeledLoad")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub unlabeled_load: Option<models::UnlabeledLoadStatistics>,

    #[serde(rename = "useCrumbs")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub use_crumbs: Option<bool>,

    #[serde(rename = "useSecurity")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub use_security: Option<bool>,

    #[serde(rename = "views")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub views: Option<Vec<models::AllView>>,

}

impl Hudson {
    pub fn new() -> Hudson {
        Hudson {
            _class: None,
            assigned_labels: None,
            mode: None,
            node_description: None,
            node_name: None,
            num_executors: None,
            description: None,
            jobs: None,
            primary_view: None,
            quieting_down: None,
            slave_agent_port: None,
            unlabeled_load: None,
            use_crumbs: None,
            use_security: None,
            views: None,
        }
    }
}

/// Converts the Hudson value to the Query Parameters representation (style=form, explode=false)
/// specified in https://swagger.io/docs/specification/serialization/
/// Should be implemented in a serde serializer
impl std::string::ToString for Hudson {
    fn to_string(&self) -> String {
        let mut params: Vec<String> = vec![];

        if let Some(ref _class) = self._class {
            params.push("_class".to_string());
            params.push(_class.to_string());
        }

        // Skipping assignedLabels in query parameter serialization


        if let Some(ref mode) = self.mode {
            params.push("mode".to_string());
            params.push(mode.to_string());
        }


        if let Some(ref node_description) = self.node_description {
            params.push("nodeDescription".to_string());
            params.push(node_description.to_string());
        }


        if let Some(ref node_name) = self.node_name {
            params.push("nodeName".to_string());
            params.push(node_name.to_string());
        }


        if let Some(ref num_executors) = self.num_executors {
            params.push("numExecutors".to_string());
            params.push(num_executors.to_string());
        }


        if let Some(ref description) = self.description {
            params.push("description".to_string());
            params.push(description.to_string());
        }

        // Skipping jobs in query parameter serialization

        // Skipping primaryView in query parameter serialization


        if let Some(ref quieting_down) = self.quieting_down {
            params.push("quietingDown".to_string());
            params.push(quieting_down.to_string());
        }


        if let Some(ref slave_agent_port) = self.slave_agent_port {
            params.push("slaveAgentPort".to_string());
            params.push(slave_agent_port.to_string());
        }

        // Skipping unlabeledLoad in query parameter serialization


        if let Some(ref use_crumbs) = self.use_crumbs {
            params.push("useCrumbs".to_string());
            params.push(use_crumbs.to_string());
        }


        if let Some(ref use_security) = self.use_security {
            params.push("useSecurity".to_string());
            params.push(use_security.to_string());
        }

        // Skipping views in query parameter serialization

        params.join(",").to_string()
    }
}

/// Converts Query Parameters representation (style=form, explode=false) to a Hudson value
/// as specified in https://swagger.io/docs/specification/serialization/
/// Should be implemented in a serde deserializer
impl std::str::FromStr for Hudson {
    type Err = String;

    fn from_str(s: &str) -> std::result::Result<Self, Self::Err> {
        #[derive(Default)]
        // An intermediate representation of the struct to use for parsing.
        struct IntermediateRep {
            pub _class: Vec<String>,
            pub assigned_labels: Vec<Vec<models::HudsonassignedLabels>>,
            pub mode: Vec<String>,
            pub node_description: Vec<String>,
            pub node_name: Vec<String>,
            pub num_executors: Vec<isize>,
            pub description: Vec<String>,
            pub jobs: Vec<Vec<models::FreeStyleProject>>,
            pub primary_view: Vec<models::AllView>,
            pub quieting_down: Vec<bool>,
            pub slave_agent_port: Vec<isize>,
            pub unlabeled_load: Vec<models::UnlabeledLoadStatistics>,
            pub use_crumbs: Vec<bool>,
            pub use_security: Vec<bool>,
            pub views: Vec<Vec<models::AllView>>,
        }

        let mut intermediate_rep = IntermediateRep::default();

        // Parse into intermediate representation
        let mut string_iter = s.split(',').into_iter();
        let mut key_result = string_iter.next();

        while key_result.is_some() {
            let val = match string_iter.next() {
                Some(x) => x,
                None => return std::result::Result::Err("Missing value while parsing Hudson".to_string())
            };

            if let Some(key) = key_result {
                match key {
                    "_class" => intermediate_rep._class.push(<String as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "assignedLabels" => return std::result::Result::Err("Parsing a container in this style is not supported in Hudson".to_string()),
                    "mode" => intermediate_rep.mode.push(<String as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "nodeDescription" => intermediate_rep.node_description.push(<String as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "nodeName" => intermediate_rep.node_name.push(<String as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "numExecutors" => intermediate_rep.num_executors.push(<isize as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "description" => intermediate_rep.description.push(<String as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "jobs" => return std::result::Result::Err("Parsing a container in this style is not supported in Hudson".to_string()),
                    "primaryView" => intermediate_rep.primary_view.push(<models::AllView as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "quietingDown" => intermediate_rep.quieting_down.push(<bool as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "slaveAgentPort" => intermediate_rep.slave_agent_port.push(<isize as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "unlabeledLoad" => intermediate_rep.unlabeled_load.push(<models::UnlabeledLoadStatistics as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "useCrumbs" => intermediate_rep.use_crumbs.push(<bool as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "useSecurity" => intermediate_rep.use_security.push(<bool as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "views" => return std::result::Result::Err("Parsing a container in this style is not supported in Hudson".to_string()),
                    _ => return std::result::Result::Err("Unexpected key while parsing Hudson".to_string())
                }
            }

            // Get the next key
            key_result = string_iter.next();
        }

        // Use the intermediate representation to return the struct
        std::result::Result::Ok(Hudson {
            _class: intermediate_rep._class.into_iter().next(),
            assigned_labels: intermediate_rep.assigned_labels.into_iter().next(),
            mode: intermediate_rep.mode.into_iter().next(),
            node_description: intermediate_rep.node_description.into_iter().next(),
            node_name: intermediate_rep.node_name.into_iter().next(),
            num_executors: intermediate_rep.num_executors.into_iter().next(),
            description: intermediate_rep.description.into_iter().next(),
            jobs: intermediate_rep.jobs.into_iter().next(),
            primary_view: intermediate_rep.primary_view.into_iter().next(),
            quieting_down: intermediate_rep.quieting_down.into_iter().next(),
            slave_agent_port: intermediate_rep.slave_agent_port.into_iter().next(),
            unlabeled_load: intermediate_rep.unlabeled_load.into_iter().next(),
            use_crumbs: intermediate_rep.use_crumbs.into_iter().next(),
            use_security: intermediate_rep.use_security.into_iter().next(),
            views: intermediate_rep.views.into_iter().next(),
        })
    }
}

// Methods for converting between header::IntoHeaderValue<Hudson> and hyper::header::HeaderValue

#[cfg(any(feature = "client", feature = "server"))]
impl std::convert::TryFrom<header::IntoHeaderValue<Hudson>> for hyper::header::HeaderValue {
    type Error = String;

    fn try_from(hdr_value: header::IntoHeaderValue<Hudson>) -> std::result::Result<Self, Self::Error> {
        let hdr_value = hdr_value.to_string();
        match hyper::header::HeaderValue::from_str(&hdr_value) {
             std::result::Result::Ok(value) => std::result::Result::Ok(value),
             std::result::Result::Err(e) => std::result::Result::Err(
                 format!("Invalid header value for Hudson - value: {} is invalid {}",
                     hdr_value, e))
        }
    }
}

#[cfg(any(feature = "client", feature = "server"))]
impl std::convert::TryFrom<hyper::header::HeaderValue> for header::IntoHeaderValue<Hudson> {
    type Error = String;

    fn try_from(hdr_value: hyper::header::HeaderValue) -> std::result::Result<Self, Self::Error> {
        match hdr_value.to_str() {
             std::result::Result::Ok(value) => {
                    match <Hudson as std::str::FromStr>::from_str(value) {
                        std::result::Result::Ok(value) => std::result::Result::Ok(header::IntoHeaderValue(value)),
                        std::result::Result::Err(err) => std::result::Result::Err(
                            format!("Unable to convert header value '{}' into Hudson - {}",
                                value, err))
                    }
             },
             std::result::Result::Err(e) => std::result::Result::Err(
                 format!("Unable to convert header: {:?} to string: {}",
                     hdr_value, e))
        }
    }
}


impl Hudson {
    /// Helper function to allow us to convert this model to an XML string.
    /// Will panic if serialisation fails.
    #[allow(dead_code)]
    pub(crate) fn to_xml(&self) -> String {
        serde_xml_rs::to_string(&self).expect("impossible to fail to serialize")
    }
}

#[derive(Debug, Clone, PartialEq, serde::Serialize, serde::Deserialize)]
#[cfg_attr(feature = "conversion", derive(frunk::LabelledGeneric))]
pub struct HudsonMasterComputer {
    #[serde(rename = "_class")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub _class: Option<String>,

    #[serde(rename = "displayName")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub display_name: Option<String>,

    #[serde(rename = "executors")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub executors: Option<Vec<models::HudsonMasterComputerexecutors>>,

    #[serde(rename = "icon")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub icon: Option<String>,

    #[serde(rename = "iconClassName")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub icon_class_name: Option<String>,

    #[serde(rename = "idle")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub idle: Option<bool>,

    #[serde(rename = "jnlpAgent")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub jnlp_agent: Option<bool>,

    #[serde(rename = "launchSupported")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub launch_supported: Option<bool>,

    #[serde(rename = "loadStatistics")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub load_statistics: Option<models::Label1>,

    #[serde(rename = "manualLaunchAllowed")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub manual_launch_allowed: Option<bool>,

    #[serde(rename = "monitorData")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub monitor_data: Option<models::HudsonMasterComputermonitorData>,

    #[serde(rename = "numExecutors")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub num_executors: Option<isize>,

    #[serde(rename = "offline")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub offline: Option<bool>,

    #[serde(rename = "offlineCause")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub offline_cause: Option<String>,

    #[serde(rename = "offlineCauseReason")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub offline_cause_reason: Option<String>,

    #[serde(rename = "temporarilyOffline")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub temporarily_offline: Option<bool>,

}

impl HudsonMasterComputer {
    pub fn new() -> HudsonMasterComputer {
        HudsonMasterComputer {
            _class: None,
            display_name: None,
            executors: None,
            icon: None,
            icon_class_name: None,
            idle: None,
            jnlp_agent: None,
            launch_supported: None,
            load_statistics: None,
            manual_launch_allowed: None,
            monitor_data: None,
            num_executors: None,
            offline: None,
            offline_cause: None,
            offline_cause_reason: None,
            temporarily_offline: None,
        }
    }
}

/// Converts the HudsonMasterComputer value to the Query Parameters representation (style=form, explode=false)
/// specified in https://swagger.io/docs/specification/serialization/
/// Should be implemented in a serde serializer
impl std::string::ToString for HudsonMasterComputer {
    fn to_string(&self) -> String {
        let mut params: Vec<String> = vec![];

        if let Some(ref _class) = self._class {
            params.push("_class".to_string());
            params.push(_class.to_string());
        }


        if let Some(ref display_name) = self.display_name {
            params.push("displayName".to_string());
            params.push(display_name.to_string());
        }

        // Skipping executors in query parameter serialization


        if let Some(ref icon) = self.icon {
            params.push("icon".to_string());
            params.push(icon.to_string());
        }


        if let Some(ref icon_class_name) = self.icon_class_name {
            params.push("iconClassName".to_string());
            params.push(icon_class_name.to_string());
        }


        if let Some(ref idle) = self.idle {
            params.push("idle".to_string());
            params.push(idle.to_string());
        }


        if let Some(ref jnlp_agent) = self.jnlp_agent {
            params.push("jnlpAgent".to_string());
            params.push(jnlp_agent.to_string());
        }


        if let Some(ref launch_supported) = self.launch_supported {
            params.push("launchSupported".to_string());
            params.push(launch_supported.to_string());
        }

        // Skipping loadStatistics in query parameter serialization


        if let Some(ref manual_launch_allowed) = self.manual_launch_allowed {
            params.push("manualLaunchAllowed".to_string());
            params.push(manual_launch_allowed.to_string());
        }

        // Skipping monitorData in query parameter serialization


        if let Some(ref num_executors) = self.num_executors {
            params.push("numExecutors".to_string());
            params.push(num_executors.to_string());
        }


        if let Some(ref offline) = self.offline {
            params.push("offline".to_string());
            params.push(offline.to_string());
        }


        if let Some(ref offline_cause) = self.offline_cause {
            params.push("offlineCause".to_string());
            params.push(offline_cause.to_string());
        }


        if let Some(ref offline_cause_reason) = self.offline_cause_reason {
            params.push("offlineCauseReason".to_string());
            params.push(offline_cause_reason.to_string());
        }


        if let Some(ref temporarily_offline) = self.temporarily_offline {
            params.push("temporarilyOffline".to_string());
            params.push(temporarily_offline.to_string());
        }

        params.join(",").to_string()
    }
}

/// Converts Query Parameters representation (style=form, explode=false) to a HudsonMasterComputer value
/// as specified in https://swagger.io/docs/specification/serialization/
/// Should be implemented in a serde deserializer
impl std::str::FromStr for HudsonMasterComputer {
    type Err = String;

    fn from_str(s: &str) -> std::result::Result<Self, Self::Err> {
        #[derive(Default)]
        // An intermediate representation of the struct to use for parsing.
        struct IntermediateRep {
            pub _class: Vec<String>,
            pub display_name: Vec<String>,
            pub executors: Vec<Vec<models::HudsonMasterComputerexecutors>>,
            pub icon: Vec<String>,
            pub icon_class_name: Vec<String>,
            pub idle: Vec<bool>,
            pub jnlp_agent: Vec<bool>,
            pub launch_supported: Vec<bool>,
            pub load_statistics: Vec<models::Label1>,
            pub manual_launch_allowed: Vec<bool>,
            pub monitor_data: Vec<models::HudsonMasterComputermonitorData>,
            pub num_executors: Vec<isize>,
            pub offline: Vec<bool>,
            pub offline_cause: Vec<String>,
            pub offline_cause_reason: Vec<String>,
            pub temporarily_offline: Vec<bool>,
        }

        let mut intermediate_rep = IntermediateRep::default();

        // Parse into intermediate representation
        let mut string_iter = s.split(',').into_iter();
        let mut key_result = string_iter.next();

        while key_result.is_some() {
            let val = match string_iter.next() {
                Some(x) => x,
                None => return std::result::Result::Err("Missing value while parsing HudsonMasterComputer".to_string())
            };

            if let Some(key) = key_result {
                match key {
                    "_class" => intermediate_rep._class.push(<String as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "displayName" => intermediate_rep.display_name.push(<String as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "executors" => return std::result::Result::Err("Parsing a container in this style is not supported in HudsonMasterComputer".to_string()),
                    "icon" => intermediate_rep.icon.push(<String as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "iconClassName" => intermediate_rep.icon_class_name.push(<String as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "idle" => intermediate_rep.idle.push(<bool as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "jnlpAgent" => intermediate_rep.jnlp_agent.push(<bool as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "launchSupported" => intermediate_rep.launch_supported.push(<bool as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "loadStatistics" => intermediate_rep.load_statistics.push(<models::Label1 as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "manualLaunchAllowed" => intermediate_rep.manual_launch_allowed.push(<bool as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "monitorData" => intermediate_rep.monitor_data.push(<models::HudsonMasterComputermonitorData as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "numExecutors" => intermediate_rep.num_executors.push(<isize as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "offline" => intermediate_rep.offline.push(<bool as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "offlineCause" => intermediate_rep.offline_cause.push(<String as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "offlineCauseReason" => intermediate_rep.offline_cause_reason.push(<String as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "temporarilyOffline" => intermediate_rep.temporarily_offline.push(<bool as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    _ => return std::result::Result::Err("Unexpected key while parsing HudsonMasterComputer".to_string())
                }
            }

            // Get the next key
            key_result = string_iter.next();
        }

        // Use the intermediate representation to return the struct
        std::result::Result::Ok(HudsonMasterComputer {
            _class: intermediate_rep._class.into_iter().next(),
            display_name: intermediate_rep.display_name.into_iter().next(),
            executors: intermediate_rep.executors.into_iter().next(),
            icon: intermediate_rep.icon.into_iter().next(),
            icon_class_name: intermediate_rep.icon_class_name.into_iter().next(),
            idle: intermediate_rep.idle.into_iter().next(),
            jnlp_agent: intermediate_rep.jnlp_agent.into_iter().next(),
            launch_supported: intermediate_rep.launch_supported.into_iter().next(),
            load_statistics: intermediate_rep.load_statistics.into_iter().next(),
            manual_launch_allowed: intermediate_rep.manual_launch_allowed.into_iter().next(),
            monitor_data: intermediate_rep.monitor_data.into_iter().next(),
            num_executors: intermediate_rep.num_executors.into_iter().next(),
            offline: intermediate_rep.offline.into_iter().next(),
            offline_cause: intermediate_rep.offline_cause.into_iter().next(),
            offline_cause_reason: intermediate_rep.offline_cause_reason.into_iter().next(),
            temporarily_offline: intermediate_rep.temporarily_offline.into_iter().next(),
        })
    }
}

// Methods for converting between header::IntoHeaderValue<HudsonMasterComputer> and hyper::header::HeaderValue

#[cfg(any(feature = "client", feature = "server"))]
impl std::convert::TryFrom<header::IntoHeaderValue<HudsonMasterComputer>> for hyper::header::HeaderValue {
    type Error = String;

    fn try_from(hdr_value: header::IntoHeaderValue<HudsonMasterComputer>) -> std::result::Result<Self, Self::Error> {
        let hdr_value = hdr_value.to_string();
        match hyper::header::HeaderValue::from_str(&hdr_value) {
             std::result::Result::Ok(value) => std::result::Result::Ok(value),
             std::result::Result::Err(e) => std::result::Result::Err(
                 format!("Invalid header value for HudsonMasterComputer - value: {} is invalid {}",
                     hdr_value, e))
        }
    }
}

#[cfg(any(feature = "client", feature = "server"))]
impl std::convert::TryFrom<hyper::header::HeaderValue> for header::IntoHeaderValue<HudsonMasterComputer> {
    type Error = String;

    fn try_from(hdr_value: hyper::header::HeaderValue) -> std::result::Result<Self, Self::Error> {
        match hdr_value.to_str() {
             std::result::Result::Ok(value) => {
                    match <HudsonMasterComputer as std::str::FromStr>::from_str(value) {
                        std::result::Result::Ok(value) => std::result::Result::Ok(header::IntoHeaderValue(value)),
                        std::result::Result::Err(err) => std::result::Result::Err(
                            format!("Unable to convert header value '{}' into HudsonMasterComputer - {}",
                                value, err))
                    }
             },
             std::result::Result::Err(e) => std::result::Result::Err(
                 format!("Unable to convert header: {:?} to string: {}",
                     hdr_value, e))
        }
    }
}


impl HudsonMasterComputer {
    /// Helper function to allow us to convert this model to an XML string.
    /// Will panic if serialisation fails.
    #[allow(dead_code)]
    pub(crate) fn to_xml(&self) -> String {
        serde_xml_rs::to_string(&self).expect("impossible to fail to serialize")
    }
}

#[derive(Debug, Clone, PartialEq, serde::Serialize, serde::Deserialize)]
#[cfg_attr(feature = "conversion", derive(frunk::LabelledGeneric))]
pub struct HudsonMasterComputerexecutors {
    #[serde(rename = "currentExecutable")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub current_executable: Option<models::FreeStyleBuild>,

    #[serde(rename = "idle")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub idle: Option<bool>,

    #[serde(rename = "likelyStuck")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub likely_stuck: Option<bool>,

    #[serde(rename = "number")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub number: Option<isize>,

    #[serde(rename = "progress")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub progress: Option<isize>,

    #[serde(rename = "_class")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub _class: Option<String>,

}

impl HudsonMasterComputerexecutors {
    pub fn new() -> HudsonMasterComputerexecutors {
        HudsonMasterComputerexecutors {
            current_executable: None,
            idle: None,
            likely_stuck: None,
            number: None,
            progress: None,
            _class: None,
        }
    }
}

/// Converts the HudsonMasterComputerexecutors value to the Query Parameters representation (style=form, explode=false)
/// specified in https://swagger.io/docs/specification/serialization/
/// Should be implemented in a serde serializer
impl std::string::ToString for HudsonMasterComputerexecutors {
    fn to_string(&self) -> String {
        let mut params: Vec<String> = vec![];
        // Skipping currentExecutable in query parameter serialization


        if let Some(ref idle) = self.idle {
            params.push("idle".to_string());
            params.push(idle.to_string());
        }


        if let Some(ref likely_stuck) = self.likely_stuck {
            params.push("likelyStuck".to_string());
            params.push(likely_stuck.to_string());
        }


        if let Some(ref number) = self.number {
            params.push("number".to_string());
            params.push(number.to_string());
        }


        if let Some(ref progress) = self.progress {
            params.push("progress".to_string());
            params.push(progress.to_string());
        }


        if let Some(ref _class) = self._class {
            params.push("_class".to_string());
            params.push(_class.to_string());
        }

        params.join(",").to_string()
    }
}

/// Converts Query Parameters representation (style=form, explode=false) to a HudsonMasterComputerexecutors value
/// as specified in https://swagger.io/docs/specification/serialization/
/// Should be implemented in a serde deserializer
impl std::str::FromStr for HudsonMasterComputerexecutors {
    type Err = String;

    fn from_str(s: &str) -> std::result::Result<Self, Self::Err> {
        #[derive(Default)]
        // An intermediate representation of the struct to use for parsing.
        struct IntermediateRep {
            pub current_executable: Vec<models::FreeStyleBuild>,
            pub idle: Vec<bool>,
            pub likely_stuck: Vec<bool>,
            pub number: Vec<isize>,
            pub progress: Vec<isize>,
            pub _class: Vec<String>,
        }

        let mut intermediate_rep = IntermediateRep::default();

        // Parse into intermediate representation
        let mut string_iter = s.split(',').into_iter();
        let mut key_result = string_iter.next();

        while key_result.is_some() {
            let val = match string_iter.next() {
                Some(x) => x,
                None => return std::result::Result::Err("Missing value while parsing HudsonMasterComputerexecutors".to_string())
            };

            if let Some(key) = key_result {
                match key {
                    "currentExecutable" => intermediate_rep.current_executable.push(<models::FreeStyleBuild as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "idle" => intermediate_rep.idle.push(<bool as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "likelyStuck" => intermediate_rep.likely_stuck.push(<bool as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "number" => intermediate_rep.number.push(<isize as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "progress" => intermediate_rep.progress.push(<isize as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "_class" => intermediate_rep._class.push(<String as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    _ => return std::result::Result::Err("Unexpected key while parsing HudsonMasterComputerexecutors".to_string())
                }
            }

            // Get the next key
            key_result = string_iter.next();
        }

        // Use the intermediate representation to return the struct
        std::result::Result::Ok(HudsonMasterComputerexecutors {
            current_executable: intermediate_rep.current_executable.into_iter().next(),
            idle: intermediate_rep.idle.into_iter().next(),
            likely_stuck: intermediate_rep.likely_stuck.into_iter().next(),
            number: intermediate_rep.number.into_iter().next(),
            progress: intermediate_rep.progress.into_iter().next(),
            _class: intermediate_rep._class.into_iter().next(),
        })
    }
}

// Methods for converting between header::IntoHeaderValue<HudsonMasterComputerexecutors> and hyper::header::HeaderValue

#[cfg(any(feature = "client", feature = "server"))]
impl std::convert::TryFrom<header::IntoHeaderValue<HudsonMasterComputerexecutors>> for hyper::header::HeaderValue {
    type Error = String;

    fn try_from(hdr_value: header::IntoHeaderValue<HudsonMasterComputerexecutors>) -> std::result::Result<Self, Self::Error> {
        let hdr_value = hdr_value.to_string();
        match hyper::header::HeaderValue::from_str(&hdr_value) {
             std::result::Result::Ok(value) => std::result::Result::Ok(value),
             std::result::Result::Err(e) => std::result::Result::Err(
                 format!("Invalid header value for HudsonMasterComputerexecutors - value: {} is invalid {}",
                     hdr_value, e))
        }
    }
}

#[cfg(any(feature = "client", feature = "server"))]
impl std::convert::TryFrom<hyper::header::HeaderValue> for header::IntoHeaderValue<HudsonMasterComputerexecutors> {
    type Error = String;

    fn try_from(hdr_value: hyper::header::HeaderValue) -> std::result::Result<Self, Self::Error> {
        match hdr_value.to_str() {
             std::result::Result::Ok(value) => {
                    match <HudsonMasterComputerexecutors as std::str::FromStr>::from_str(value) {
                        std::result::Result::Ok(value) => std::result::Result::Ok(header::IntoHeaderValue(value)),
                        std::result::Result::Err(err) => std::result::Result::Err(
                            format!("Unable to convert header value '{}' into HudsonMasterComputerexecutors - {}",
                                value, err))
                    }
             },
             std::result::Result::Err(e) => std::result::Result::Err(
                 format!("Unable to convert header: {:?} to string: {}",
                     hdr_value, e))
        }
    }
}


impl HudsonMasterComputerexecutors {
    /// Helper function to allow us to convert this model to an XML string.
    /// Will panic if serialisation fails.
    #[allow(dead_code)]
    pub(crate) fn to_xml(&self) -> String {
        serde_xml_rs::to_string(&self).expect("impossible to fail to serialize")
    }
}

#[derive(Debug, Clone, PartialEq, serde::Serialize, serde::Deserialize)]
#[cfg_attr(feature = "conversion", derive(frunk::LabelledGeneric))]
pub struct HudsonMasterComputermonitorData {
    #[serde(rename = "hudson.node_monitors.SwapSpaceMonitor")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub hudson_node_monitors_swap_space_monitor: Option<models::SwapSpaceMonitorMemoryUsage2>,

    #[serde(rename = "hudson.node_monitors.TemporarySpaceMonitor")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub hudson_node_monitors_temporary_space_monitor: Option<models::DiskSpaceMonitorDescriptorDiskSpace>,

    #[serde(rename = "hudson.node_monitors.DiskSpaceMonitor")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub hudson_node_monitors_disk_space_monitor: Option<models::DiskSpaceMonitorDescriptorDiskSpace>,

    #[serde(rename = "hudson.node_monitors.ArchitectureMonitor")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub hudson_node_monitors_architecture_monitor: Option<String>,

    #[serde(rename = "hudson.node_monitors.ResponseTimeMonitor")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub hudson_node_monitors_response_time_monitor: Option<models::ResponseTimeMonitorData>,

    #[serde(rename = "hudson.node_monitors.ClockMonitor")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub hudson_node_monitors_clock_monitor: Option<models::ClockDifference>,

    #[serde(rename = "_class")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub _class: Option<String>,

}

impl HudsonMasterComputermonitorData {
    pub fn new() -> HudsonMasterComputermonitorData {
        HudsonMasterComputermonitorData {
            hudson_node_monitors_swap_space_monitor: None,
            hudson_node_monitors_temporary_space_monitor: None,
            hudson_node_monitors_disk_space_monitor: None,
            hudson_node_monitors_architecture_monitor: None,
            hudson_node_monitors_response_time_monitor: None,
            hudson_node_monitors_clock_monitor: None,
            _class: None,
        }
    }
}

/// Converts the HudsonMasterComputermonitorData value to the Query Parameters representation (style=form, explode=false)
/// specified in https://swagger.io/docs/specification/serialization/
/// Should be implemented in a serde serializer
impl std::string::ToString for HudsonMasterComputermonitorData {
    fn to_string(&self) -> String {
        let mut params: Vec<String> = vec![];
        // Skipping hudson.node_monitors.SwapSpaceMonitor in query parameter serialization

        // Skipping hudson.node_monitors.TemporarySpaceMonitor in query parameter serialization

        // Skipping hudson.node_monitors.DiskSpaceMonitor in query parameter serialization


        if let Some(ref hudson_node_monitors_architecture_monitor) = self.hudson_node_monitors_architecture_monitor {
            params.push("hudson.node_monitors.ArchitectureMonitor".to_string());
            params.push(hudson_node_monitors_architecture_monitor.to_string());
        }

        // Skipping hudson.node_monitors.ResponseTimeMonitor in query parameter serialization

        // Skipping hudson.node_monitors.ClockMonitor in query parameter serialization


        if let Some(ref _class) = self._class {
            params.push("_class".to_string());
            params.push(_class.to_string());
        }

        params.join(",").to_string()
    }
}

/// Converts Query Parameters representation (style=form, explode=false) to a HudsonMasterComputermonitorData value
/// as specified in https://swagger.io/docs/specification/serialization/
/// Should be implemented in a serde deserializer
impl std::str::FromStr for HudsonMasterComputermonitorData {
    type Err = String;

    fn from_str(s: &str) -> std::result::Result<Self, Self::Err> {
        #[derive(Default)]
        // An intermediate representation of the struct to use for parsing.
        struct IntermediateRep {
            pub hudson_node_monitors_swap_space_monitor: Vec<models::SwapSpaceMonitorMemoryUsage2>,
            pub hudson_node_monitors_temporary_space_monitor: Vec<models::DiskSpaceMonitorDescriptorDiskSpace>,
            pub hudson_node_monitors_disk_space_monitor: Vec<models::DiskSpaceMonitorDescriptorDiskSpace>,
            pub hudson_node_monitors_architecture_monitor: Vec<String>,
            pub hudson_node_monitors_response_time_monitor: Vec<models::ResponseTimeMonitorData>,
            pub hudson_node_monitors_clock_monitor: Vec<models::ClockDifference>,
            pub _class: Vec<String>,
        }

        let mut intermediate_rep = IntermediateRep::default();

        // Parse into intermediate representation
        let mut string_iter = s.split(',').into_iter();
        let mut key_result = string_iter.next();

        while key_result.is_some() {
            let val = match string_iter.next() {
                Some(x) => x,
                None => return std::result::Result::Err("Missing value while parsing HudsonMasterComputermonitorData".to_string())
            };

            if let Some(key) = key_result {
                match key {
                    "hudson.node_monitors.SwapSpaceMonitor" => intermediate_rep.hudson_node_monitors_swap_space_monitor.push(<models::SwapSpaceMonitorMemoryUsage2 as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "hudson.node_monitors.TemporarySpaceMonitor" => intermediate_rep.hudson_node_monitors_temporary_space_monitor.push(<models::DiskSpaceMonitorDescriptorDiskSpace as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "hudson.node_monitors.DiskSpaceMonitor" => intermediate_rep.hudson_node_monitors_disk_space_monitor.push(<models::DiskSpaceMonitorDescriptorDiskSpace as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "hudson.node_monitors.ArchitectureMonitor" => intermediate_rep.hudson_node_monitors_architecture_monitor.push(<String as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "hudson.node_monitors.ResponseTimeMonitor" => intermediate_rep.hudson_node_monitors_response_time_monitor.push(<models::ResponseTimeMonitorData as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "hudson.node_monitors.ClockMonitor" => intermediate_rep.hudson_node_monitors_clock_monitor.push(<models::ClockDifference as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "_class" => intermediate_rep._class.push(<String as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    _ => return std::result::Result::Err("Unexpected key while parsing HudsonMasterComputermonitorData".to_string())
                }
            }

            // Get the next key
            key_result = string_iter.next();
        }

        // Use the intermediate representation to return the struct
        std::result::Result::Ok(HudsonMasterComputermonitorData {
            hudson_node_monitors_swap_space_monitor: intermediate_rep.hudson_node_monitors_swap_space_monitor.into_iter().next(),
            hudson_node_monitors_temporary_space_monitor: intermediate_rep.hudson_node_monitors_temporary_space_monitor.into_iter().next(),
            hudson_node_monitors_disk_space_monitor: intermediate_rep.hudson_node_monitors_disk_space_monitor.into_iter().next(),
            hudson_node_monitors_architecture_monitor: intermediate_rep.hudson_node_monitors_architecture_monitor.into_iter().next(),
            hudson_node_monitors_response_time_monitor: intermediate_rep.hudson_node_monitors_response_time_monitor.into_iter().next(),
            hudson_node_monitors_clock_monitor: intermediate_rep.hudson_node_monitors_clock_monitor.into_iter().next(),
            _class: intermediate_rep._class.into_iter().next(),
        })
    }
}

// Methods for converting between header::IntoHeaderValue<HudsonMasterComputermonitorData> and hyper::header::HeaderValue

#[cfg(any(feature = "client", feature = "server"))]
impl std::convert::TryFrom<header::IntoHeaderValue<HudsonMasterComputermonitorData>> for hyper::header::HeaderValue {
    type Error = String;

    fn try_from(hdr_value: header::IntoHeaderValue<HudsonMasterComputermonitorData>) -> std::result::Result<Self, Self::Error> {
        let hdr_value = hdr_value.to_string();
        match hyper::header::HeaderValue::from_str(&hdr_value) {
             std::result::Result::Ok(value) => std::result::Result::Ok(value),
             std::result::Result::Err(e) => std::result::Result::Err(
                 format!("Invalid header value for HudsonMasterComputermonitorData - value: {} is invalid {}",
                     hdr_value, e))
        }
    }
}

#[cfg(any(feature = "client", feature = "server"))]
impl std::convert::TryFrom<hyper::header::HeaderValue> for header::IntoHeaderValue<HudsonMasterComputermonitorData> {
    type Error = String;

    fn try_from(hdr_value: hyper::header::HeaderValue) -> std::result::Result<Self, Self::Error> {
        match hdr_value.to_str() {
             std::result::Result::Ok(value) => {
                    match <HudsonMasterComputermonitorData as std::str::FromStr>::from_str(value) {
                        std::result::Result::Ok(value) => std::result::Result::Ok(header::IntoHeaderValue(value)),
                        std::result::Result::Err(err) => std::result::Result::Err(
                            format!("Unable to convert header value '{}' into HudsonMasterComputermonitorData - {}",
                                value, err))
                    }
             },
             std::result::Result::Err(e) => std::result::Result::Err(
                 format!("Unable to convert header: {:?} to string: {}",
                     hdr_value, e))
        }
    }
}


impl HudsonMasterComputermonitorData {
    /// Helper function to allow us to convert this model to an XML string.
    /// Will panic if serialisation fails.
    #[allow(dead_code)]
    pub(crate) fn to_xml(&self) -> String {
        serde_xml_rs::to_string(&self).expect("impossible to fail to serialize")
    }
}

#[derive(Debug, Clone, PartialEq, serde::Serialize, serde::Deserialize)]
#[cfg_attr(feature = "conversion", derive(frunk::LabelledGeneric))]
pub struct HudsonassignedLabels {
    #[serde(rename = "_class")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub _class: Option<String>,

}

impl HudsonassignedLabels {
    pub fn new() -> HudsonassignedLabels {
        HudsonassignedLabels {
            _class: None,
        }
    }
}

/// Converts the HudsonassignedLabels value to the Query Parameters representation (style=form, explode=false)
/// specified in https://swagger.io/docs/specification/serialization/
/// Should be implemented in a serde serializer
impl std::string::ToString for HudsonassignedLabels {
    fn to_string(&self) -> String {
        let mut params: Vec<String> = vec![];

        if let Some(ref _class) = self._class {
            params.push("_class".to_string());
            params.push(_class.to_string());
        }

        params.join(",").to_string()
    }
}

/// Converts Query Parameters representation (style=form, explode=false) to a HudsonassignedLabels value
/// as specified in https://swagger.io/docs/specification/serialization/
/// Should be implemented in a serde deserializer
impl std::str::FromStr for HudsonassignedLabels {
    type Err = String;

    fn from_str(s: &str) -> std::result::Result<Self, Self::Err> {
        #[derive(Default)]
        // An intermediate representation of the struct to use for parsing.
        struct IntermediateRep {
            pub _class: Vec<String>,
        }

        let mut intermediate_rep = IntermediateRep::default();

        // Parse into intermediate representation
        let mut string_iter = s.split(',').into_iter();
        let mut key_result = string_iter.next();

        while key_result.is_some() {
            let val = match string_iter.next() {
                Some(x) => x,
                None => return std::result::Result::Err("Missing value while parsing HudsonassignedLabels".to_string())
            };

            if let Some(key) = key_result {
                match key {
                    "_class" => intermediate_rep._class.push(<String as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    _ => return std::result::Result::Err("Unexpected key while parsing HudsonassignedLabels".to_string())
                }
            }

            // Get the next key
            key_result = string_iter.next();
        }

        // Use the intermediate representation to return the struct
        std::result::Result::Ok(HudsonassignedLabels {
            _class: intermediate_rep._class.into_iter().next(),
        })
    }
}

// Methods for converting between header::IntoHeaderValue<HudsonassignedLabels> and hyper::header::HeaderValue

#[cfg(any(feature = "client", feature = "server"))]
impl std::convert::TryFrom<header::IntoHeaderValue<HudsonassignedLabels>> for hyper::header::HeaderValue {
    type Error = String;

    fn try_from(hdr_value: header::IntoHeaderValue<HudsonassignedLabels>) -> std::result::Result<Self, Self::Error> {
        let hdr_value = hdr_value.to_string();
        match hyper::header::HeaderValue::from_str(&hdr_value) {
             std::result::Result::Ok(value) => std::result::Result::Ok(value),
             std::result::Result::Err(e) => std::result::Result::Err(
                 format!("Invalid header value for HudsonassignedLabels - value: {} is invalid {}",
                     hdr_value, e))
        }
    }
}

#[cfg(any(feature = "client", feature = "server"))]
impl std::convert::TryFrom<hyper::header::HeaderValue> for header::IntoHeaderValue<HudsonassignedLabels> {
    type Error = String;

    fn try_from(hdr_value: hyper::header::HeaderValue) -> std::result::Result<Self, Self::Error> {
        match hdr_value.to_str() {
             std::result::Result::Ok(value) => {
                    match <HudsonassignedLabels as std::str::FromStr>::from_str(value) {
                        std::result::Result::Ok(value) => std::result::Result::Ok(header::IntoHeaderValue(value)),
                        std::result::Result::Err(err) => std::result::Result::Err(
                            format!("Unable to convert header value '{}' into HudsonassignedLabels - {}",
                                value, err))
                    }
             },
             std::result::Result::Err(e) => std::result::Result::Err(
                 format!("Unable to convert header: {:?} to string: {}",
                     hdr_value, e))
        }
    }
}


impl HudsonassignedLabels {
    /// Helper function to allow us to convert this model to an XML string.
    /// Will panic if serialisation fails.
    #[allow(dead_code)]
    pub(crate) fn to_xml(&self) -> String {
        serde_xml_rs::to_string(&self).expect("impossible to fail to serialize")
    }
}

#[derive(Debug, Clone, PartialEq, serde::Serialize, serde::Deserialize)]
#[cfg_attr(feature = "conversion", derive(frunk::LabelledGeneric))]
pub struct InputStepImpl {
    #[serde(rename = "_class")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub _class: Option<String>,

    #[serde(rename = "_links")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub _links: Option<models::InputStepImpllinks>,

    #[serde(rename = "id")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub id: Option<String>,

    #[serde(rename = "message")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub message: Option<String>,

    #[serde(rename = "ok")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub ok: Option<String>,

    #[serde(rename = "parameters")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub parameters: Option<Vec<models::StringParameterDefinition>>,

    #[serde(rename = "submitter")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub submitter: Option<String>,

}

impl InputStepImpl {
    pub fn new() -> InputStepImpl {
        InputStepImpl {
            _class: None,
            _links: None,
            id: None,
            message: None,
            ok: None,
            parameters: None,
            submitter: None,
        }
    }
}

/// Converts the InputStepImpl value to the Query Parameters representation (style=form, explode=false)
/// specified in https://swagger.io/docs/specification/serialization/
/// Should be implemented in a serde serializer
impl std::string::ToString for InputStepImpl {
    fn to_string(&self) -> String {
        let mut params: Vec<String> = vec![];

        if let Some(ref _class) = self._class {
            params.push("_class".to_string());
            params.push(_class.to_string());
        }

        // Skipping _links in query parameter serialization


        if let Some(ref id) = self.id {
            params.push("id".to_string());
            params.push(id.to_string());
        }


        if let Some(ref message) = self.message {
            params.push("message".to_string());
            params.push(message.to_string());
        }


        if let Some(ref ok) = self.ok {
            params.push("ok".to_string());
            params.push(ok.to_string());
        }

        // Skipping parameters in query parameter serialization


        if let Some(ref submitter) = self.submitter {
            params.push("submitter".to_string());
            params.push(submitter.to_string());
        }

        params.join(",").to_string()
    }
}

/// Converts Query Parameters representation (style=form, explode=false) to a InputStepImpl value
/// as specified in https://swagger.io/docs/specification/serialization/
/// Should be implemented in a serde deserializer
impl std::str::FromStr for InputStepImpl {
    type Err = String;

    fn from_str(s: &str) -> std::result::Result<Self, Self::Err> {
        #[derive(Default)]
        // An intermediate representation of the struct to use for parsing.
        struct IntermediateRep {
            pub _class: Vec<String>,
            pub _links: Vec<models::InputStepImpllinks>,
            pub id: Vec<String>,
            pub message: Vec<String>,
            pub ok: Vec<String>,
            pub parameters: Vec<Vec<models::StringParameterDefinition>>,
            pub submitter: Vec<String>,
        }

        let mut intermediate_rep = IntermediateRep::default();

        // Parse into intermediate representation
        let mut string_iter = s.split(',').into_iter();
        let mut key_result = string_iter.next();

        while key_result.is_some() {
            let val = match string_iter.next() {
                Some(x) => x,
                None => return std::result::Result::Err("Missing value while parsing InputStepImpl".to_string())
            };

            if let Some(key) = key_result {
                match key {
                    "_class" => intermediate_rep._class.push(<String as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "_links" => intermediate_rep._links.push(<models::InputStepImpllinks as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "id" => intermediate_rep.id.push(<String as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "message" => intermediate_rep.message.push(<String as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "ok" => intermediate_rep.ok.push(<String as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "parameters" => return std::result::Result::Err("Parsing a container in this style is not supported in InputStepImpl".to_string()),
                    "submitter" => intermediate_rep.submitter.push(<String as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    _ => return std::result::Result::Err("Unexpected key while parsing InputStepImpl".to_string())
                }
            }

            // Get the next key
            key_result = string_iter.next();
        }

        // Use the intermediate representation to return the struct
        std::result::Result::Ok(InputStepImpl {
            _class: intermediate_rep._class.into_iter().next(),
            _links: intermediate_rep._links.into_iter().next(),
            id: intermediate_rep.id.into_iter().next(),
            message: intermediate_rep.message.into_iter().next(),
            ok: intermediate_rep.ok.into_iter().next(),
            parameters: intermediate_rep.parameters.into_iter().next(),
            submitter: intermediate_rep.submitter.into_iter().next(),
        })
    }
}

// Methods for converting between header::IntoHeaderValue<InputStepImpl> and hyper::header::HeaderValue

#[cfg(any(feature = "client", feature = "server"))]
impl std::convert::TryFrom<header::IntoHeaderValue<InputStepImpl>> for hyper::header::HeaderValue {
    type Error = String;

    fn try_from(hdr_value: header::IntoHeaderValue<InputStepImpl>) -> std::result::Result<Self, Self::Error> {
        let hdr_value = hdr_value.to_string();
        match hyper::header::HeaderValue::from_str(&hdr_value) {
             std::result::Result::Ok(value) => std::result::Result::Ok(value),
             std::result::Result::Err(e) => std::result::Result::Err(
                 format!("Invalid header value for InputStepImpl - value: {} is invalid {}",
                     hdr_value, e))
        }
    }
}

#[cfg(any(feature = "client", feature = "server"))]
impl std::convert::TryFrom<hyper::header::HeaderValue> for header::IntoHeaderValue<InputStepImpl> {
    type Error = String;

    fn try_from(hdr_value: hyper::header::HeaderValue) -> std::result::Result<Self, Self::Error> {
        match hdr_value.to_str() {
             std::result::Result::Ok(value) => {
                    match <InputStepImpl as std::str::FromStr>::from_str(value) {
                        std::result::Result::Ok(value) => std::result::Result::Ok(header::IntoHeaderValue(value)),
                        std::result::Result::Err(err) => std::result::Result::Err(
                            format!("Unable to convert header value '{}' into InputStepImpl - {}",
                                value, err))
                    }
             },
             std::result::Result::Err(e) => std::result::Result::Err(
                 format!("Unable to convert header: {:?} to string: {}",
                     hdr_value, e))
        }
    }
}


impl InputStepImpl {
    /// Helper function to allow us to convert this model to an XML string.
    /// Will panic if serialisation fails.
    #[allow(dead_code)]
    pub(crate) fn to_xml(&self) -> String {
        serde_xml_rs::to_string(&self).expect("impossible to fail to serialize")
    }
}

#[derive(Debug, Clone, PartialEq, serde::Serialize, serde::Deserialize)]
#[cfg_attr(feature = "conversion", derive(frunk::LabelledGeneric))]
pub struct InputStepImpllinks {
    #[serde(rename = "self")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub self_: Option<models::Link>,

    #[serde(rename = "_class")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub _class: Option<String>,

}

impl InputStepImpllinks {
    pub fn new() -> InputStepImpllinks {
        InputStepImpllinks {
            self_: None,
            _class: None,
        }
    }
}

/// Converts the InputStepImpllinks value to the Query Parameters representation (style=form, explode=false)
/// specified in https://swagger.io/docs/specification/serialization/
/// Should be implemented in a serde serializer
impl std::string::ToString for InputStepImpllinks {
    fn to_string(&self) -> String {
        let mut params: Vec<String> = vec![];
        // Skipping self in query parameter serialization


        if let Some(ref _class) = self._class {
            params.push("_class".to_string());
            params.push(_class.to_string());
        }

        params.join(",").to_string()
    }
}

/// Converts Query Parameters representation (style=form, explode=false) to a InputStepImpllinks value
/// as specified in https://swagger.io/docs/specification/serialization/
/// Should be implemented in a serde deserializer
impl std::str::FromStr for InputStepImpllinks {
    type Err = String;

    fn from_str(s: &str) -> std::result::Result<Self, Self::Err> {
        #[derive(Default)]
        // An intermediate representation of the struct to use for parsing.
        struct IntermediateRep {
            pub self_: Vec<models::Link>,
            pub _class: Vec<String>,
        }

        let mut intermediate_rep = IntermediateRep::default();

        // Parse into intermediate representation
        let mut string_iter = s.split(',').into_iter();
        let mut key_result = string_iter.next();

        while key_result.is_some() {
            let val = match string_iter.next() {
                Some(x) => x,
                None => return std::result::Result::Err("Missing value while parsing InputStepImpllinks".to_string())
            };

            if let Some(key) = key_result {
                match key {
                    "self" => intermediate_rep.self_.push(<models::Link as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "_class" => intermediate_rep._class.push(<String as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    _ => return std::result::Result::Err("Unexpected key while parsing InputStepImpllinks".to_string())
                }
            }

            // Get the next key
            key_result = string_iter.next();
        }

        // Use the intermediate representation to return the struct
        std::result::Result::Ok(InputStepImpllinks {
            self_: intermediate_rep.self_.into_iter().next(),
            _class: intermediate_rep._class.into_iter().next(),
        })
    }
}

// Methods for converting between header::IntoHeaderValue<InputStepImpllinks> and hyper::header::HeaderValue

#[cfg(any(feature = "client", feature = "server"))]
impl std::convert::TryFrom<header::IntoHeaderValue<InputStepImpllinks>> for hyper::header::HeaderValue {
    type Error = String;

    fn try_from(hdr_value: header::IntoHeaderValue<InputStepImpllinks>) -> std::result::Result<Self, Self::Error> {
        let hdr_value = hdr_value.to_string();
        match hyper::header::HeaderValue::from_str(&hdr_value) {
             std::result::Result::Ok(value) => std::result::Result::Ok(value),
             std::result::Result::Err(e) => std::result::Result::Err(
                 format!("Invalid header value for InputStepImpllinks - value: {} is invalid {}",
                     hdr_value, e))
        }
    }
}

#[cfg(any(feature = "client", feature = "server"))]
impl std::convert::TryFrom<hyper::header::HeaderValue> for header::IntoHeaderValue<InputStepImpllinks> {
    type Error = String;

    fn try_from(hdr_value: hyper::header::HeaderValue) -> std::result::Result<Self, Self::Error> {
        match hdr_value.to_str() {
             std::result::Result::Ok(value) => {
                    match <InputStepImpllinks as std::str::FromStr>::from_str(value) {
                        std::result::Result::Ok(value) => std::result::Result::Ok(header::IntoHeaderValue(value)),
                        std::result::Result::Err(err) => std::result::Result::Err(
                            format!("Unable to convert header value '{}' into InputStepImpllinks - {}",
                                value, err))
                    }
             },
             std::result::Result::Err(e) => std::result::Result::Err(
                 format!("Unable to convert header: {:?} to string: {}",
                     hdr_value, e))
        }
    }
}


impl InputStepImpllinks {
    /// Helper function to allow us to convert this model to an XML string.
    /// Will panic if serialisation fails.
    #[allow(dead_code)]
    pub(crate) fn to_xml(&self) -> String {
        serde_xml_rs::to_string(&self).expect("impossible to fail to serialize")
    }
}

#[derive(Debug, Clone, PartialEq, serde::Serialize, serde::Deserialize)]
#[cfg_attr(feature = "conversion", derive(frunk::LabelledGeneric))]
pub struct Label1 {
    #[serde(rename = "_class")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub _class: Option<String>,

}

impl Label1 {
    pub fn new() -> Label1 {
        Label1 {
            _class: None,
        }
    }
}

/// Converts the Label1 value to the Query Parameters representation (style=form, explode=false)
/// specified in https://swagger.io/docs/specification/serialization/
/// Should be implemented in a serde serializer
impl std::string::ToString for Label1 {
    fn to_string(&self) -> String {
        let mut params: Vec<String> = vec![];

        if let Some(ref _class) = self._class {
            params.push("_class".to_string());
            params.push(_class.to_string());
        }

        params.join(",").to_string()
    }
}

/// Converts Query Parameters representation (style=form, explode=false) to a Label1 value
/// as specified in https://swagger.io/docs/specification/serialization/
/// Should be implemented in a serde deserializer
impl std::str::FromStr for Label1 {
    type Err = String;

    fn from_str(s: &str) -> std::result::Result<Self, Self::Err> {
        #[derive(Default)]
        // An intermediate representation of the struct to use for parsing.
        struct IntermediateRep {
            pub _class: Vec<String>,
        }

        let mut intermediate_rep = IntermediateRep::default();

        // Parse into intermediate representation
        let mut string_iter = s.split(',').into_iter();
        let mut key_result = string_iter.next();

        while key_result.is_some() {
            let val = match string_iter.next() {
                Some(x) => x,
                None => return std::result::Result::Err("Missing value while parsing Label1".to_string())
            };

            if let Some(key) = key_result {
                match key {
                    "_class" => intermediate_rep._class.push(<String as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    _ => return std::result::Result::Err("Unexpected key while parsing Label1".to_string())
                }
            }

            // Get the next key
            key_result = string_iter.next();
        }

        // Use the intermediate representation to return the struct
        std::result::Result::Ok(Label1 {
            _class: intermediate_rep._class.into_iter().next(),
        })
    }
}

// Methods for converting between header::IntoHeaderValue<Label1> and hyper::header::HeaderValue

#[cfg(any(feature = "client", feature = "server"))]
impl std::convert::TryFrom<header::IntoHeaderValue<Label1>> for hyper::header::HeaderValue {
    type Error = String;

    fn try_from(hdr_value: header::IntoHeaderValue<Label1>) -> std::result::Result<Self, Self::Error> {
        let hdr_value = hdr_value.to_string();
        match hyper::header::HeaderValue::from_str(&hdr_value) {
             std::result::Result::Ok(value) => std::result::Result::Ok(value),
             std::result::Result::Err(e) => std::result::Result::Err(
                 format!("Invalid header value for Label1 - value: {} is invalid {}",
                     hdr_value, e))
        }
    }
}

#[cfg(any(feature = "client", feature = "server"))]
impl std::convert::TryFrom<hyper::header::HeaderValue> for header::IntoHeaderValue<Label1> {
    type Error = String;

    fn try_from(hdr_value: hyper::header::HeaderValue) -> std::result::Result<Self, Self::Error> {
        match hdr_value.to_str() {
             std::result::Result::Ok(value) => {
                    match <Label1 as std::str::FromStr>::from_str(value) {
                        std::result::Result::Ok(value) => std::result::Result::Ok(header::IntoHeaderValue(value)),
                        std::result::Result::Err(err) => std::result::Result::Err(
                            format!("Unable to convert header value '{}' into Label1 - {}",
                                value, err))
                    }
             },
             std::result::Result::Err(e) => std::result::Result::Err(
                 format!("Unable to convert header: {:?} to string: {}",
                     hdr_value, e))
        }
    }
}


impl Label1 {
    /// Helper function to allow us to convert this model to an XML string.
    /// Will panic if serialisation fails.
    #[allow(dead_code)]
    pub(crate) fn to_xml(&self) -> String {
        serde_xml_rs::to_string(&self).expect("impossible to fail to serialize")
    }
}

#[derive(Debug, Clone, PartialEq, serde::Serialize, serde::Deserialize)]
#[cfg_attr(feature = "conversion", derive(frunk::LabelledGeneric))]
pub struct Link {
    #[serde(rename = "_class")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub _class: Option<String>,

    #[serde(rename = "href")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub href: Option<String>,

}

impl Link {
    pub fn new() -> Link {
        Link {
            _class: None,
            href: None,
        }
    }
}

/// Converts the Link value to the Query Parameters representation (style=form, explode=false)
/// specified in https://swagger.io/docs/specification/serialization/
/// Should be implemented in a serde serializer
impl std::string::ToString for Link {
    fn to_string(&self) -> String {
        let mut params: Vec<String> = vec![];

        if let Some(ref _class) = self._class {
            params.push("_class".to_string());
            params.push(_class.to_string());
        }


        if let Some(ref href) = self.href {
            params.push("href".to_string());
            params.push(href.to_string());
        }

        params.join(",").to_string()
    }
}

/// Converts Query Parameters representation (style=form, explode=false) to a Link value
/// as specified in https://swagger.io/docs/specification/serialization/
/// Should be implemented in a serde deserializer
impl std::str::FromStr for Link {
    type Err = String;

    fn from_str(s: &str) -> std::result::Result<Self, Self::Err> {
        #[derive(Default)]
        // An intermediate representation of the struct to use for parsing.
        struct IntermediateRep {
            pub _class: Vec<String>,
            pub href: Vec<String>,
        }

        let mut intermediate_rep = IntermediateRep::default();

        // Parse into intermediate representation
        let mut string_iter = s.split(',').into_iter();
        let mut key_result = string_iter.next();

        while key_result.is_some() {
            let val = match string_iter.next() {
                Some(x) => x,
                None => return std::result::Result::Err("Missing value while parsing Link".to_string())
            };

            if let Some(key) = key_result {
                match key {
                    "_class" => intermediate_rep._class.push(<String as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "href" => intermediate_rep.href.push(<String as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    _ => return std::result::Result::Err("Unexpected key while parsing Link".to_string())
                }
            }

            // Get the next key
            key_result = string_iter.next();
        }

        // Use the intermediate representation to return the struct
        std::result::Result::Ok(Link {
            _class: intermediate_rep._class.into_iter().next(),
            href: intermediate_rep.href.into_iter().next(),
        })
    }
}

// Methods for converting between header::IntoHeaderValue<Link> and hyper::header::HeaderValue

#[cfg(any(feature = "client", feature = "server"))]
impl std::convert::TryFrom<header::IntoHeaderValue<Link>> for hyper::header::HeaderValue {
    type Error = String;

    fn try_from(hdr_value: header::IntoHeaderValue<Link>) -> std::result::Result<Self, Self::Error> {
        let hdr_value = hdr_value.to_string();
        match hyper::header::HeaderValue::from_str(&hdr_value) {
             std::result::Result::Ok(value) => std::result::Result::Ok(value),
             std::result::Result::Err(e) => std::result::Result::Err(
                 format!("Invalid header value for Link - value: {} is invalid {}",
                     hdr_value, e))
        }
    }
}

#[cfg(any(feature = "client", feature = "server"))]
impl std::convert::TryFrom<hyper::header::HeaderValue> for header::IntoHeaderValue<Link> {
    type Error = String;

    fn try_from(hdr_value: hyper::header::HeaderValue) -> std::result::Result<Self, Self::Error> {
        match hdr_value.to_str() {
             std::result::Result::Ok(value) => {
                    match <Link as std::str::FromStr>::from_str(value) {
                        std::result::Result::Ok(value) => std::result::Result::Ok(header::IntoHeaderValue(value)),
                        std::result::Result::Err(err) => std::result::Result::Err(
                            format!("Unable to convert header value '{}' into Link - {}",
                                value, err))
                    }
             },
             std::result::Result::Err(e) => std::result::Result::Err(
                 format!("Unable to convert header: {:?} to string: {}",
                     hdr_value, e))
        }
    }
}


impl Link {
    /// Helper function to allow us to convert this model to an XML string.
    /// Will panic if serialisation fails.
    #[allow(dead_code)]
    pub(crate) fn to_xml(&self) -> String {
        serde_xml_rs::to_string(&self).expect("impossible to fail to serialize")
    }
}

#[derive(Debug, Clone, PartialEq, serde::Serialize, serde::Deserialize)]
#[cfg_attr(feature = "conversion", derive(frunk::LabelledGeneric))]
pub struct ListView {
    #[serde(rename = "_class")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub _class: Option<String>,

    #[serde(rename = "description")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub description: Option<String>,

    #[serde(rename = "jobs")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub jobs: Option<Vec<models::FreeStyleProject>>,

    #[serde(rename = "name")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub name: Option<String>,

    #[serde(rename = "url")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub url: Option<String>,

}

impl ListView {
    pub fn new() -> ListView {
        ListView {
            _class: None,
            description: None,
            jobs: None,
            name: None,
            url: None,
        }
    }
}

/// Converts the ListView value to the Query Parameters representation (style=form, explode=false)
/// specified in https://swagger.io/docs/specification/serialization/
/// Should be implemented in a serde serializer
impl std::string::ToString for ListView {
    fn to_string(&self) -> String {
        let mut params: Vec<String> = vec![];

        if let Some(ref _class) = self._class {
            params.push("_class".to_string());
            params.push(_class.to_string());
        }


        if let Some(ref description) = self.description {
            params.push("description".to_string());
            params.push(description.to_string());
        }

        // Skipping jobs in query parameter serialization


        if let Some(ref name) = self.name {
            params.push("name".to_string());
            params.push(name.to_string());
        }


        if let Some(ref url) = self.url {
            params.push("url".to_string());
            params.push(url.to_string());
        }

        params.join(",").to_string()
    }
}

/// Converts Query Parameters representation (style=form, explode=false) to a ListView value
/// as specified in https://swagger.io/docs/specification/serialization/
/// Should be implemented in a serde deserializer
impl std::str::FromStr for ListView {
    type Err = String;

    fn from_str(s: &str) -> std::result::Result<Self, Self::Err> {
        #[derive(Default)]
        // An intermediate representation of the struct to use for parsing.
        struct IntermediateRep {
            pub _class: Vec<String>,
            pub description: Vec<String>,
            pub jobs: Vec<Vec<models::FreeStyleProject>>,
            pub name: Vec<String>,
            pub url: Vec<String>,
        }

        let mut intermediate_rep = IntermediateRep::default();

        // Parse into intermediate representation
        let mut string_iter = s.split(',').into_iter();
        let mut key_result = string_iter.next();

        while key_result.is_some() {
            let val = match string_iter.next() {
                Some(x) => x,
                None => return std::result::Result::Err("Missing value while parsing ListView".to_string())
            };

            if let Some(key) = key_result {
                match key {
                    "_class" => intermediate_rep._class.push(<String as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "description" => intermediate_rep.description.push(<String as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "jobs" => return std::result::Result::Err("Parsing a container in this style is not supported in ListView".to_string()),
                    "name" => intermediate_rep.name.push(<String as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "url" => intermediate_rep.url.push(<String as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    _ => return std::result::Result::Err("Unexpected key while parsing ListView".to_string())
                }
            }

            // Get the next key
            key_result = string_iter.next();
        }

        // Use the intermediate representation to return the struct
        std::result::Result::Ok(ListView {
            _class: intermediate_rep._class.into_iter().next(),
            description: intermediate_rep.description.into_iter().next(),
            jobs: intermediate_rep.jobs.into_iter().next(),
            name: intermediate_rep.name.into_iter().next(),
            url: intermediate_rep.url.into_iter().next(),
        })
    }
}

// Methods for converting between header::IntoHeaderValue<ListView> and hyper::header::HeaderValue

#[cfg(any(feature = "client", feature = "server"))]
impl std::convert::TryFrom<header::IntoHeaderValue<ListView>> for hyper::header::HeaderValue {
    type Error = String;

    fn try_from(hdr_value: header::IntoHeaderValue<ListView>) -> std::result::Result<Self, Self::Error> {
        let hdr_value = hdr_value.to_string();
        match hyper::header::HeaderValue::from_str(&hdr_value) {
             std::result::Result::Ok(value) => std::result::Result::Ok(value),
             std::result::Result::Err(e) => std::result::Result::Err(
                 format!("Invalid header value for ListView - value: {} is invalid {}",
                     hdr_value, e))
        }
    }
}

#[cfg(any(feature = "client", feature = "server"))]
impl std::convert::TryFrom<hyper::header::HeaderValue> for header::IntoHeaderValue<ListView> {
    type Error = String;

    fn try_from(hdr_value: hyper::header::HeaderValue) -> std::result::Result<Self, Self::Error> {
        match hdr_value.to_str() {
             std::result::Result::Ok(value) => {
                    match <ListView as std::str::FromStr>::from_str(value) {
                        std::result::Result::Ok(value) => std::result::Result::Ok(header::IntoHeaderValue(value)),
                        std::result::Result::Err(err) => std::result::Result::Err(
                            format!("Unable to convert header value '{}' into ListView - {}",
                                value, err))
                    }
             },
             std::result::Result::Err(e) => std::result::Result::Err(
                 format!("Unable to convert header: {:?} to string: {}",
                     hdr_value, e))
        }
    }
}


impl ListView {
    /// Helper function to allow us to convert this model to an XML string.
    /// Will panic if serialisation fails.
    #[allow(dead_code)]
    pub(crate) fn to_xml(&self) -> String {
        serde_xml_rs::to_string(&self).expect("impossible to fail to serialize")
    }
}

#[derive(Debug, Clone, PartialEq, serde::Serialize, serde::Deserialize)]
#[cfg_attr(feature = "conversion", derive(frunk::LabelledGeneric))]
pub struct MultibranchPipeline {
    #[serde(rename = "displayName")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub display_name: Option<String>,

    #[serde(rename = "estimatedDurationInMillis")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub estimated_duration_in_millis: Option<isize>,

    #[serde(rename = "latestRun")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub latest_run: Option<String>,

    #[serde(rename = "name")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub name: Option<String>,

    #[serde(rename = "organization")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub organization: Option<String>,

    #[serde(rename = "weatherScore")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub weather_score: Option<isize>,

    #[serde(rename = "branchNames")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub branch_names: Option<Vec<String>>,

    #[serde(rename = "numberOfFailingBranches")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub number_of_failing_branches: Option<isize>,

    #[serde(rename = "numberOfFailingPullRequests")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub number_of_failing_pull_requests: Option<isize>,

    #[serde(rename = "numberOfSuccessfulBranches")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub number_of_successful_branches: Option<isize>,

    #[serde(rename = "numberOfSuccessfulPullRequests")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub number_of_successful_pull_requests: Option<isize>,

    #[serde(rename = "totalNumberOfBranches")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub total_number_of_branches: Option<isize>,

    #[serde(rename = "totalNumberOfPullRequests")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub total_number_of_pull_requests: Option<isize>,

    #[serde(rename = "_class")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub _class: Option<String>,

}

impl MultibranchPipeline {
    pub fn new() -> MultibranchPipeline {
        MultibranchPipeline {
            display_name: None,
            estimated_duration_in_millis: None,
            latest_run: None,
            name: None,
            organization: None,
            weather_score: None,
            branch_names: None,
            number_of_failing_branches: None,
            number_of_failing_pull_requests: None,
            number_of_successful_branches: None,
            number_of_successful_pull_requests: None,
            total_number_of_branches: None,
            total_number_of_pull_requests: None,
            _class: None,
        }
    }
}

/// Converts the MultibranchPipeline value to the Query Parameters representation (style=form, explode=false)
/// specified in https://swagger.io/docs/specification/serialization/
/// Should be implemented in a serde serializer
impl std::string::ToString for MultibranchPipeline {
    fn to_string(&self) -> String {
        let mut params: Vec<String> = vec![];

        if let Some(ref display_name) = self.display_name {
            params.push("displayName".to_string());
            params.push(display_name.to_string());
        }


        if let Some(ref estimated_duration_in_millis) = self.estimated_duration_in_millis {
            params.push("estimatedDurationInMillis".to_string());
            params.push(estimated_duration_in_millis.to_string());
        }


        if let Some(ref latest_run) = self.latest_run {
            params.push("latestRun".to_string());
            params.push(latest_run.to_string());
        }


        if let Some(ref name) = self.name {
            params.push("name".to_string());
            params.push(name.to_string());
        }


        if let Some(ref organization) = self.organization {
            params.push("organization".to_string());
            params.push(organization.to_string());
        }


        if let Some(ref weather_score) = self.weather_score {
            params.push("weatherScore".to_string());
            params.push(weather_score.to_string());
        }


        if let Some(ref branch_names) = self.branch_names {
            params.push("branchNames".to_string());
            params.push(branch_names.iter().map(|x| x.to_string()).collect::<Vec<_>>().join(",").to_string());
        }


        if let Some(ref number_of_failing_branches) = self.number_of_failing_branches {
            params.push("numberOfFailingBranches".to_string());
            params.push(number_of_failing_branches.to_string());
        }


        if let Some(ref number_of_failing_pull_requests) = self.number_of_failing_pull_requests {
            params.push("numberOfFailingPullRequests".to_string());
            params.push(number_of_failing_pull_requests.to_string());
        }


        if let Some(ref number_of_successful_branches) = self.number_of_successful_branches {
            params.push("numberOfSuccessfulBranches".to_string());
            params.push(number_of_successful_branches.to_string());
        }


        if let Some(ref number_of_successful_pull_requests) = self.number_of_successful_pull_requests {
            params.push("numberOfSuccessfulPullRequests".to_string());
            params.push(number_of_successful_pull_requests.to_string());
        }


        if let Some(ref total_number_of_branches) = self.total_number_of_branches {
            params.push("totalNumberOfBranches".to_string());
            params.push(total_number_of_branches.to_string());
        }


        if let Some(ref total_number_of_pull_requests) = self.total_number_of_pull_requests {
            params.push("totalNumberOfPullRequests".to_string());
            params.push(total_number_of_pull_requests.to_string());
        }


        if let Some(ref _class) = self._class {
            params.push("_class".to_string());
            params.push(_class.to_string());
        }

        params.join(",").to_string()
    }
}

/// Converts Query Parameters representation (style=form, explode=false) to a MultibranchPipeline value
/// as specified in https://swagger.io/docs/specification/serialization/
/// Should be implemented in a serde deserializer
impl std::str::FromStr for MultibranchPipeline {
    type Err = String;

    fn from_str(s: &str) -> std::result::Result<Self, Self::Err> {
        #[derive(Default)]
        // An intermediate representation of the struct to use for parsing.
        struct IntermediateRep {
            pub display_name: Vec<String>,
            pub estimated_duration_in_millis: Vec<isize>,
            pub latest_run: Vec<String>,
            pub name: Vec<String>,
            pub organization: Vec<String>,
            pub weather_score: Vec<isize>,
            pub branch_names: Vec<Vec<String>>,
            pub number_of_failing_branches: Vec<isize>,
            pub number_of_failing_pull_requests: Vec<isize>,
            pub number_of_successful_branches: Vec<isize>,
            pub number_of_successful_pull_requests: Vec<isize>,
            pub total_number_of_branches: Vec<isize>,
            pub total_number_of_pull_requests: Vec<isize>,
            pub _class: Vec<String>,
        }

        let mut intermediate_rep = IntermediateRep::default();

        // Parse into intermediate representation
        let mut string_iter = s.split(',').into_iter();
        let mut key_result = string_iter.next();

        while key_result.is_some() {
            let val = match string_iter.next() {
                Some(x) => x,
                None => return std::result::Result::Err("Missing value while parsing MultibranchPipeline".to_string())
            };

            if let Some(key) = key_result {
                match key {
                    "displayName" => intermediate_rep.display_name.push(<String as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "estimatedDurationInMillis" => intermediate_rep.estimated_duration_in_millis.push(<isize as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "latestRun" => intermediate_rep.latest_run.push(<String as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "name" => intermediate_rep.name.push(<String as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "organization" => intermediate_rep.organization.push(<String as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "weatherScore" => intermediate_rep.weather_score.push(<isize as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "branchNames" => return std::result::Result::Err("Parsing a container in this style is not supported in MultibranchPipeline".to_string()),
                    "numberOfFailingBranches" => intermediate_rep.number_of_failing_branches.push(<isize as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "numberOfFailingPullRequests" => intermediate_rep.number_of_failing_pull_requests.push(<isize as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "numberOfSuccessfulBranches" => intermediate_rep.number_of_successful_branches.push(<isize as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "numberOfSuccessfulPullRequests" => intermediate_rep.number_of_successful_pull_requests.push(<isize as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "totalNumberOfBranches" => intermediate_rep.total_number_of_branches.push(<isize as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "totalNumberOfPullRequests" => intermediate_rep.total_number_of_pull_requests.push(<isize as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "_class" => intermediate_rep._class.push(<String as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    _ => return std::result::Result::Err("Unexpected key while parsing MultibranchPipeline".to_string())
                }
            }

            // Get the next key
            key_result = string_iter.next();
        }

        // Use the intermediate representation to return the struct
        std::result::Result::Ok(MultibranchPipeline {
            display_name: intermediate_rep.display_name.into_iter().next(),
            estimated_duration_in_millis: intermediate_rep.estimated_duration_in_millis.into_iter().next(),
            latest_run: intermediate_rep.latest_run.into_iter().next(),
            name: intermediate_rep.name.into_iter().next(),
            organization: intermediate_rep.organization.into_iter().next(),
            weather_score: intermediate_rep.weather_score.into_iter().next(),
            branch_names: intermediate_rep.branch_names.into_iter().next(),
            number_of_failing_branches: intermediate_rep.number_of_failing_branches.into_iter().next(),
            number_of_failing_pull_requests: intermediate_rep.number_of_failing_pull_requests.into_iter().next(),
            number_of_successful_branches: intermediate_rep.number_of_successful_branches.into_iter().next(),
            number_of_successful_pull_requests: intermediate_rep.number_of_successful_pull_requests.into_iter().next(),
            total_number_of_branches: intermediate_rep.total_number_of_branches.into_iter().next(),
            total_number_of_pull_requests: intermediate_rep.total_number_of_pull_requests.into_iter().next(),
            _class: intermediate_rep._class.into_iter().next(),
        })
    }
}

// Methods for converting between header::IntoHeaderValue<MultibranchPipeline> and hyper::header::HeaderValue

#[cfg(any(feature = "client", feature = "server"))]
impl std::convert::TryFrom<header::IntoHeaderValue<MultibranchPipeline>> for hyper::header::HeaderValue {
    type Error = String;

    fn try_from(hdr_value: header::IntoHeaderValue<MultibranchPipeline>) -> std::result::Result<Self, Self::Error> {
        let hdr_value = hdr_value.to_string();
        match hyper::header::HeaderValue::from_str(&hdr_value) {
             std::result::Result::Ok(value) => std::result::Result::Ok(value),
             std::result::Result::Err(e) => std::result::Result::Err(
                 format!("Invalid header value for MultibranchPipeline - value: {} is invalid {}",
                     hdr_value, e))
        }
    }
}

#[cfg(any(feature = "client", feature = "server"))]
impl std::convert::TryFrom<hyper::header::HeaderValue> for header::IntoHeaderValue<MultibranchPipeline> {
    type Error = String;

    fn try_from(hdr_value: hyper::header::HeaderValue) -> std::result::Result<Self, Self::Error> {
        match hdr_value.to_str() {
             std::result::Result::Ok(value) => {
                    match <MultibranchPipeline as std::str::FromStr>::from_str(value) {
                        std::result::Result::Ok(value) => std::result::Result::Ok(header::IntoHeaderValue(value)),
                        std::result::Result::Err(err) => std::result::Result::Err(
                            format!("Unable to convert header value '{}' into MultibranchPipeline - {}",
                                value, err))
                    }
             },
             std::result::Result::Err(e) => std::result::Result::Err(
                 format!("Unable to convert header: {:?} to string: {}",
                     hdr_value, e))
        }
    }
}


impl MultibranchPipeline {
    /// Helper function to allow us to convert this model to an XML string.
    /// Will panic if serialisation fails.
    #[allow(dead_code)]
    pub(crate) fn to_xml(&self) -> String {
        serde_xml_rs::to_string(&self).expect("impossible to fail to serialize")
    }
}

#[derive(Debug, Clone, PartialEq, serde::Serialize, serde::Deserialize)]
#[cfg_attr(feature = "conversion", derive(frunk::LabelledGeneric))]
pub struct NullScm {
    #[serde(rename = "_class")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub _class: Option<String>,

}

impl NullScm {
    pub fn new() -> NullScm {
        NullScm {
            _class: None,
        }
    }
}

/// Converts the NullScm value to the Query Parameters representation (style=form, explode=false)
/// specified in https://swagger.io/docs/specification/serialization/
/// Should be implemented in a serde serializer
impl std::string::ToString for NullScm {
    fn to_string(&self) -> String {
        let mut params: Vec<String> = vec![];

        if let Some(ref _class) = self._class {
            params.push("_class".to_string());
            params.push(_class.to_string());
        }

        params.join(",").to_string()
    }
}

/// Converts Query Parameters representation (style=form, explode=false) to a NullScm value
/// as specified in https://swagger.io/docs/specification/serialization/
/// Should be implemented in a serde deserializer
impl std::str::FromStr for NullScm {
    type Err = String;

    fn from_str(s: &str) -> std::result::Result<Self, Self::Err> {
        #[derive(Default)]
        // An intermediate representation of the struct to use for parsing.
        struct IntermediateRep {
            pub _class: Vec<String>,
        }

        let mut intermediate_rep = IntermediateRep::default();

        // Parse into intermediate representation
        let mut string_iter = s.split(',').into_iter();
        let mut key_result = string_iter.next();

        while key_result.is_some() {
            let val = match string_iter.next() {
                Some(x) => x,
                None => return std::result::Result::Err("Missing value while parsing NullScm".to_string())
            };

            if let Some(key) = key_result {
                match key {
                    "_class" => intermediate_rep._class.push(<String as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    _ => return std::result::Result::Err("Unexpected key while parsing NullScm".to_string())
                }
            }

            // Get the next key
            key_result = string_iter.next();
        }

        // Use the intermediate representation to return the struct
        std::result::Result::Ok(NullScm {
            _class: intermediate_rep._class.into_iter().next(),
        })
    }
}

// Methods for converting between header::IntoHeaderValue<NullScm> and hyper::header::HeaderValue

#[cfg(any(feature = "client", feature = "server"))]
impl std::convert::TryFrom<header::IntoHeaderValue<NullScm>> for hyper::header::HeaderValue {
    type Error = String;

    fn try_from(hdr_value: header::IntoHeaderValue<NullScm>) -> std::result::Result<Self, Self::Error> {
        let hdr_value = hdr_value.to_string();
        match hyper::header::HeaderValue::from_str(&hdr_value) {
             std::result::Result::Ok(value) => std::result::Result::Ok(value),
             std::result::Result::Err(e) => std::result::Result::Err(
                 format!("Invalid header value for NullScm - value: {} is invalid {}",
                     hdr_value, e))
        }
    }
}

#[cfg(any(feature = "client", feature = "server"))]
impl std::convert::TryFrom<hyper::header::HeaderValue> for header::IntoHeaderValue<NullScm> {
    type Error = String;

    fn try_from(hdr_value: hyper::header::HeaderValue) -> std::result::Result<Self, Self::Error> {
        match hdr_value.to_str() {
             std::result::Result::Ok(value) => {
                    match <NullScm as std::str::FromStr>::from_str(value) {
                        std::result::Result::Ok(value) => std::result::Result::Ok(header::IntoHeaderValue(value)),
                        std::result::Result::Err(err) => std::result::Result::Err(
                            format!("Unable to convert header value '{}' into NullScm - {}",
                                value, err))
                    }
             },
             std::result::Result::Err(e) => std::result::Result::Err(
                 format!("Unable to convert header: {:?} to string: {}",
                     hdr_value, e))
        }
    }
}


impl NullScm {
    /// Helper function to allow us to convert this model to an XML string.
    /// Will panic if serialisation fails.
    #[allow(dead_code)]
    pub(crate) fn to_xml(&self) -> String {
        serde_xml_rs::to_string(&self).expect("impossible to fail to serialize")
    }
}

#[derive(Debug, Clone, PartialEq, serde::Serialize, serde::Deserialize)]
#[cfg_attr(feature = "conversion", derive(frunk::LabelledGeneric))]
pub struct Organisation {
    #[serde(rename = "_class")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub _class: Option<String>,

    #[serde(rename = "name")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub name: Option<String>,

}

impl Organisation {
    pub fn new() -> Organisation {
        Organisation {
            _class: None,
            name: None,
        }
    }
}

/// Converts the Organisation value to the Query Parameters representation (style=form, explode=false)
/// specified in https://swagger.io/docs/specification/serialization/
/// Should be implemented in a serde serializer
impl std::string::ToString for Organisation {
    fn to_string(&self) -> String {
        let mut params: Vec<String> = vec![];

        if let Some(ref _class) = self._class {
            params.push("_class".to_string());
            params.push(_class.to_string());
        }


        if let Some(ref name) = self.name {
            params.push("name".to_string());
            params.push(name.to_string());
        }

        params.join(",").to_string()
    }
}

/// Converts Query Parameters representation (style=form, explode=false) to a Organisation value
/// as specified in https://swagger.io/docs/specification/serialization/
/// Should be implemented in a serde deserializer
impl std::str::FromStr for Organisation {
    type Err = String;

    fn from_str(s: &str) -> std::result::Result<Self, Self::Err> {
        #[derive(Default)]
        // An intermediate representation of the struct to use for parsing.
        struct IntermediateRep {
            pub _class: Vec<String>,
            pub name: Vec<String>,
        }

        let mut intermediate_rep = IntermediateRep::default();

        // Parse into intermediate representation
        let mut string_iter = s.split(',').into_iter();
        let mut key_result = string_iter.next();

        while key_result.is_some() {
            let val = match string_iter.next() {
                Some(x) => x,
                None => return std::result::Result::Err("Missing value while parsing Organisation".to_string())
            };

            if let Some(key) = key_result {
                match key {
                    "_class" => intermediate_rep._class.push(<String as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "name" => intermediate_rep.name.push(<String as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    _ => return std::result::Result::Err("Unexpected key while parsing Organisation".to_string())
                }
            }

            // Get the next key
            key_result = string_iter.next();
        }

        // Use the intermediate representation to return the struct
        std::result::Result::Ok(Organisation {
            _class: intermediate_rep._class.into_iter().next(),
            name: intermediate_rep.name.into_iter().next(),
        })
    }
}

// Methods for converting between header::IntoHeaderValue<Organisation> and hyper::header::HeaderValue

#[cfg(any(feature = "client", feature = "server"))]
impl std::convert::TryFrom<header::IntoHeaderValue<Organisation>> for hyper::header::HeaderValue {
    type Error = String;

    fn try_from(hdr_value: header::IntoHeaderValue<Organisation>) -> std::result::Result<Self, Self::Error> {
        let hdr_value = hdr_value.to_string();
        match hyper::header::HeaderValue::from_str(&hdr_value) {
             std::result::Result::Ok(value) => std::result::Result::Ok(value),
             std::result::Result::Err(e) => std::result::Result::Err(
                 format!("Invalid header value for Organisation - value: {} is invalid {}",
                     hdr_value, e))
        }
    }
}

#[cfg(any(feature = "client", feature = "server"))]
impl std::convert::TryFrom<hyper::header::HeaderValue> for header::IntoHeaderValue<Organisation> {
    type Error = String;

    fn try_from(hdr_value: hyper::header::HeaderValue) -> std::result::Result<Self, Self::Error> {
        match hdr_value.to_str() {
             std::result::Result::Ok(value) => {
                    match <Organisation as std::str::FromStr>::from_str(value) {
                        std::result::Result::Ok(value) => std::result::Result::Ok(header::IntoHeaderValue(value)),
                        std::result::Result::Err(err) => std::result::Result::Err(
                            format!("Unable to convert header value '{}' into Organisation - {}",
                                value, err))
                    }
             },
             std::result::Result::Err(e) => std::result::Result::Err(
                 format!("Unable to convert header: {:?} to string: {}",
                     hdr_value, e))
        }
    }
}


impl Organisation {
    /// Helper function to allow us to convert this model to an XML string.
    /// Will panic if serialisation fails.
    #[allow(dead_code)]
    pub(crate) fn to_xml(&self) -> String {
        serde_xml_rs::to_string(&self).expect("impossible to fail to serialize")
    }
}

#[derive(Debug, Clone, PartialEq, serde::Serialize, serde::Deserialize)]
#[cfg_attr(feature = "conversion", derive(frunk::LabelledGeneric))]
pub struct Pipeline {
    #[serde(rename = "_class")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub _class: Option<String>,

    #[serde(rename = "organization")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub organization: Option<String>,

    #[serde(rename = "name")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub name: Option<String>,

    #[serde(rename = "displayName")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub display_name: Option<String>,

    #[serde(rename = "fullName")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub full_name: Option<String>,

    #[serde(rename = "weatherScore")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub weather_score: Option<isize>,

    #[serde(rename = "estimatedDurationInMillis")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub estimated_duration_in_millis: Option<isize>,

    #[serde(rename = "latestRun")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub latest_run: Option<models::PipelinelatestRun>,

}

impl Pipeline {
    pub fn new() -> Pipeline {
        Pipeline {
            _class: None,
            organization: None,
            name: None,
            display_name: None,
            full_name: None,
            weather_score: None,
            estimated_duration_in_millis: None,
            latest_run: None,
        }
    }
}

/// Converts the Pipeline value to the Query Parameters representation (style=form, explode=false)
/// specified in https://swagger.io/docs/specification/serialization/
/// Should be implemented in a serde serializer
impl std::string::ToString for Pipeline {
    fn to_string(&self) -> String {
        let mut params: Vec<String> = vec![];

        if let Some(ref _class) = self._class {
            params.push("_class".to_string());
            params.push(_class.to_string());
        }


        if let Some(ref organization) = self.organization {
            params.push("organization".to_string());
            params.push(organization.to_string());
        }


        if let Some(ref name) = self.name {
            params.push("name".to_string());
            params.push(name.to_string());
        }


        if let Some(ref display_name) = self.display_name {
            params.push("displayName".to_string());
            params.push(display_name.to_string());
        }


        if let Some(ref full_name) = self.full_name {
            params.push("fullName".to_string());
            params.push(full_name.to_string());
        }


        if let Some(ref weather_score) = self.weather_score {
            params.push("weatherScore".to_string());
            params.push(weather_score.to_string());
        }


        if let Some(ref estimated_duration_in_millis) = self.estimated_duration_in_millis {
            params.push("estimatedDurationInMillis".to_string());
            params.push(estimated_duration_in_millis.to_string());
        }

        // Skipping latestRun in query parameter serialization

        params.join(",").to_string()
    }
}

/// Converts Query Parameters representation (style=form, explode=false) to a Pipeline value
/// as specified in https://swagger.io/docs/specification/serialization/
/// Should be implemented in a serde deserializer
impl std::str::FromStr for Pipeline {
    type Err = String;

    fn from_str(s: &str) -> std::result::Result<Self, Self::Err> {
        #[derive(Default)]
        // An intermediate representation of the struct to use for parsing.
        struct IntermediateRep {
            pub _class: Vec<String>,
            pub organization: Vec<String>,
            pub name: Vec<String>,
            pub display_name: Vec<String>,
            pub full_name: Vec<String>,
            pub weather_score: Vec<isize>,
            pub estimated_duration_in_millis: Vec<isize>,
            pub latest_run: Vec<models::PipelinelatestRun>,
        }

        let mut intermediate_rep = IntermediateRep::default();

        // Parse into intermediate representation
        let mut string_iter = s.split(',').into_iter();
        let mut key_result = string_iter.next();

        while key_result.is_some() {
            let val = match string_iter.next() {
                Some(x) => x,
                None => return std::result::Result::Err("Missing value while parsing Pipeline".to_string())
            };

            if let Some(key) = key_result {
                match key {
                    "_class" => intermediate_rep._class.push(<String as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "organization" => intermediate_rep.organization.push(<String as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "name" => intermediate_rep.name.push(<String as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "displayName" => intermediate_rep.display_name.push(<String as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "fullName" => intermediate_rep.full_name.push(<String as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "weatherScore" => intermediate_rep.weather_score.push(<isize as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "estimatedDurationInMillis" => intermediate_rep.estimated_duration_in_millis.push(<isize as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "latestRun" => intermediate_rep.latest_run.push(<models::PipelinelatestRun as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    _ => return std::result::Result::Err("Unexpected key while parsing Pipeline".to_string())
                }
            }

            // Get the next key
            key_result = string_iter.next();
        }

        // Use the intermediate representation to return the struct
        std::result::Result::Ok(Pipeline {
            _class: intermediate_rep._class.into_iter().next(),
            organization: intermediate_rep.organization.into_iter().next(),
            name: intermediate_rep.name.into_iter().next(),
            display_name: intermediate_rep.display_name.into_iter().next(),
            full_name: intermediate_rep.full_name.into_iter().next(),
            weather_score: intermediate_rep.weather_score.into_iter().next(),
            estimated_duration_in_millis: intermediate_rep.estimated_duration_in_millis.into_iter().next(),
            latest_run: intermediate_rep.latest_run.into_iter().next(),
        })
    }
}

// Methods for converting between header::IntoHeaderValue<Pipeline> and hyper::header::HeaderValue

#[cfg(any(feature = "client", feature = "server"))]
impl std::convert::TryFrom<header::IntoHeaderValue<Pipeline>> for hyper::header::HeaderValue {
    type Error = String;

    fn try_from(hdr_value: header::IntoHeaderValue<Pipeline>) -> std::result::Result<Self, Self::Error> {
        let hdr_value = hdr_value.to_string();
        match hyper::header::HeaderValue::from_str(&hdr_value) {
             std::result::Result::Ok(value) => std::result::Result::Ok(value),
             std::result::Result::Err(e) => std::result::Result::Err(
                 format!("Invalid header value for Pipeline - value: {} is invalid {}",
                     hdr_value, e))
        }
    }
}

#[cfg(any(feature = "client", feature = "server"))]
impl std::convert::TryFrom<hyper::header::HeaderValue> for header::IntoHeaderValue<Pipeline> {
    type Error = String;

    fn try_from(hdr_value: hyper::header::HeaderValue) -> std::result::Result<Self, Self::Error> {
        match hdr_value.to_str() {
             std::result::Result::Ok(value) => {
                    match <Pipeline as std::str::FromStr>::from_str(value) {
                        std::result::Result::Ok(value) => std::result::Result::Ok(header::IntoHeaderValue(value)),
                        std::result::Result::Err(err) => std::result::Result::Err(
                            format!("Unable to convert header value '{}' into Pipeline - {}",
                                value, err))
                    }
             },
             std::result::Result::Err(e) => std::result::Result::Err(
                 format!("Unable to convert header: {:?} to string: {}",
                     hdr_value, e))
        }
    }
}


impl Pipeline {
    /// Helper function to allow us to convert this model to an XML string.
    /// Will panic if serialisation fails.
    #[allow(dead_code)]
    pub(crate) fn to_xml(&self) -> String {
        serde_xml_rs::to_string(&self).expect("impossible to fail to serialize")
    }
}

#[derive(Debug, Clone, PartialEq, serde::Serialize, serde::Deserialize)]
#[cfg_attr(feature = "conversion", derive(frunk::LabelledGeneric))]
pub struct PipelineActivity {
    #[serde(rename = "_class")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub _class: Option<String>,

    #[serde(rename = "artifacts")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub artifacts: Option<Vec<models::PipelineActivityartifacts>>,

    #[serde(rename = "durationInMillis")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub duration_in_millis: Option<isize>,

    #[serde(rename = "estimatedDurationInMillis")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub estimated_duration_in_millis: Option<isize>,

    #[serde(rename = "enQueueTime")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub en_queue_time: Option<String>,

    #[serde(rename = "endTime")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub end_time: Option<String>,

    #[serde(rename = "id")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub id: Option<String>,

    #[serde(rename = "organization")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub organization: Option<String>,

    #[serde(rename = "pipeline")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub pipeline: Option<String>,

    #[serde(rename = "result")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub result: Option<String>,

    #[serde(rename = "runSummary")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub run_summary: Option<String>,

    #[serde(rename = "startTime")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub start_time: Option<String>,

    #[serde(rename = "state")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub state: Option<String>,

    #[serde(rename = "type")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub type_: Option<String>,

    #[serde(rename = "commitId")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub commit_id: Option<String>,

}

impl PipelineActivity {
    pub fn new() -> PipelineActivity {
        PipelineActivity {
            _class: None,
            artifacts: None,
            duration_in_millis: None,
            estimated_duration_in_millis: None,
            en_queue_time: None,
            end_time: None,
            id: None,
            organization: None,
            pipeline: None,
            result: None,
            run_summary: None,
            start_time: None,
            state: None,
            type_: None,
            commit_id: None,
        }
    }
}

/// Converts the PipelineActivity value to the Query Parameters representation (style=form, explode=false)
/// specified in https://swagger.io/docs/specification/serialization/
/// Should be implemented in a serde serializer
impl std::string::ToString for PipelineActivity {
    fn to_string(&self) -> String {
        let mut params: Vec<String> = vec![];

        if let Some(ref _class) = self._class {
            params.push("_class".to_string());
            params.push(_class.to_string());
        }

        // Skipping artifacts in query parameter serialization


        if let Some(ref duration_in_millis) = self.duration_in_millis {
            params.push("durationInMillis".to_string());
            params.push(duration_in_millis.to_string());
        }


        if let Some(ref estimated_duration_in_millis) = self.estimated_duration_in_millis {
            params.push("estimatedDurationInMillis".to_string());
            params.push(estimated_duration_in_millis.to_string());
        }


        if let Some(ref en_queue_time) = self.en_queue_time {
            params.push("enQueueTime".to_string());
            params.push(en_queue_time.to_string());
        }


        if let Some(ref end_time) = self.end_time {
            params.push("endTime".to_string());
            params.push(end_time.to_string());
        }


        if let Some(ref id) = self.id {
            params.push("id".to_string());
            params.push(id.to_string());
        }


        if let Some(ref organization) = self.organization {
            params.push("organization".to_string());
            params.push(organization.to_string());
        }


        if let Some(ref pipeline) = self.pipeline {
            params.push("pipeline".to_string());
            params.push(pipeline.to_string());
        }


        if let Some(ref result) = self.result {
            params.push("result".to_string());
            params.push(result.to_string());
        }


        if let Some(ref run_summary) = self.run_summary {
            params.push("runSummary".to_string());
            params.push(run_summary.to_string());
        }


        if let Some(ref start_time) = self.start_time {
            params.push("startTime".to_string());
            params.push(start_time.to_string());
        }


        if let Some(ref state) = self.state {
            params.push("state".to_string());
            params.push(state.to_string());
        }


        if let Some(ref type_) = self.type_ {
            params.push("type".to_string());
            params.push(type_.to_string());
        }


        if let Some(ref commit_id) = self.commit_id {
            params.push("commitId".to_string());
            params.push(commit_id.to_string());
        }

        params.join(",").to_string()
    }
}

/// Converts Query Parameters representation (style=form, explode=false) to a PipelineActivity value
/// as specified in https://swagger.io/docs/specification/serialization/
/// Should be implemented in a serde deserializer
impl std::str::FromStr for PipelineActivity {
    type Err = String;

    fn from_str(s: &str) -> std::result::Result<Self, Self::Err> {
        #[derive(Default)]
        // An intermediate representation of the struct to use for parsing.
        struct IntermediateRep {
            pub _class: Vec<String>,
            pub artifacts: Vec<Vec<models::PipelineActivityartifacts>>,
            pub duration_in_millis: Vec<isize>,
            pub estimated_duration_in_millis: Vec<isize>,
            pub en_queue_time: Vec<String>,
            pub end_time: Vec<String>,
            pub id: Vec<String>,
            pub organization: Vec<String>,
            pub pipeline: Vec<String>,
            pub result: Vec<String>,
            pub run_summary: Vec<String>,
            pub start_time: Vec<String>,
            pub state: Vec<String>,
            pub type_: Vec<String>,
            pub commit_id: Vec<String>,
        }

        let mut intermediate_rep = IntermediateRep::default();

        // Parse into intermediate representation
        let mut string_iter = s.split(',').into_iter();
        let mut key_result = string_iter.next();

        while key_result.is_some() {
            let val = match string_iter.next() {
                Some(x) => x,
                None => return std::result::Result::Err("Missing value while parsing PipelineActivity".to_string())
            };

            if let Some(key) = key_result {
                match key {
                    "_class" => intermediate_rep._class.push(<String as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "artifacts" => return std::result::Result::Err("Parsing a container in this style is not supported in PipelineActivity".to_string()),
                    "durationInMillis" => intermediate_rep.duration_in_millis.push(<isize as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "estimatedDurationInMillis" => intermediate_rep.estimated_duration_in_millis.push(<isize as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "enQueueTime" => intermediate_rep.en_queue_time.push(<String as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "endTime" => intermediate_rep.end_time.push(<String as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "id" => intermediate_rep.id.push(<String as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "organization" => intermediate_rep.organization.push(<String as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "pipeline" => intermediate_rep.pipeline.push(<String as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "result" => intermediate_rep.result.push(<String as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "runSummary" => intermediate_rep.run_summary.push(<String as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "startTime" => intermediate_rep.start_time.push(<String as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "state" => intermediate_rep.state.push(<String as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "type" => intermediate_rep.type_.push(<String as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "commitId" => intermediate_rep.commit_id.push(<String as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    _ => return std::result::Result::Err("Unexpected key while parsing PipelineActivity".to_string())
                }
            }

            // Get the next key
            key_result = string_iter.next();
        }

        // Use the intermediate representation to return the struct
        std::result::Result::Ok(PipelineActivity {
            _class: intermediate_rep._class.into_iter().next(),
            artifacts: intermediate_rep.artifacts.into_iter().next(),
            duration_in_millis: intermediate_rep.duration_in_millis.into_iter().next(),
            estimated_duration_in_millis: intermediate_rep.estimated_duration_in_millis.into_iter().next(),
            en_queue_time: intermediate_rep.en_queue_time.into_iter().next(),
            end_time: intermediate_rep.end_time.into_iter().next(),
            id: intermediate_rep.id.into_iter().next(),
            organization: intermediate_rep.organization.into_iter().next(),
            pipeline: intermediate_rep.pipeline.into_iter().next(),
            result: intermediate_rep.result.into_iter().next(),
            run_summary: intermediate_rep.run_summary.into_iter().next(),
            start_time: intermediate_rep.start_time.into_iter().next(),
            state: intermediate_rep.state.into_iter().next(),
            type_: intermediate_rep.type_.into_iter().next(),
            commit_id: intermediate_rep.commit_id.into_iter().next(),
        })
    }
}

// Methods for converting between header::IntoHeaderValue<PipelineActivity> and hyper::header::HeaderValue

#[cfg(any(feature = "client", feature = "server"))]
impl std::convert::TryFrom<header::IntoHeaderValue<PipelineActivity>> for hyper::header::HeaderValue {
    type Error = String;

    fn try_from(hdr_value: header::IntoHeaderValue<PipelineActivity>) -> std::result::Result<Self, Self::Error> {
        let hdr_value = hdr_value.to_string();
        match hyper::header::HeaderValue::from_str(&hdr_value) {
             std::result::Result::Ok(value) => std::result::Result::Ok(value),
             std::result::Result::Err(e) => std::result::Result::Err(
                 format!("Invalid header value for PipelineActivity - value: {} is invalid {}",
                     hdr_value, e))
        }
    }
}

#[cfg(any(feature = "client", feature = "server"))]
impl std::convert::TryFrom<hyper::header::HeaderValue> for header::IntoHeaderValue<PipelineActivity> {
    type Error = String;

    fn try_from(hdr_value: hyper::header::HeaderValue) -> std::result::Result<Self, Self::Error> {
        match hdr_value.to_str() {
             std::result::Result::Ok(value) => {
                    match <PipelineActivity as std::str::FromStr>::from_str(value) {
                        std::result::Result::Ok(value) => std::result::Result::Ok(header::IntoHeaderValue(value)),
                        std::result::Result::Err(err) => std::result::Result::Err(
                            format!("Unable to convert header value '{}' into PipelineActivity - {}",
                                value, err))
                    }
             },
             std::result::Result::Err(e) => std::result::Result::Err(
                 format!("Unable to convert header: {:?} to string: {}",
                     hdr_value, e))
        }
    }
}


impl PipelineActivity {
    /// Helper function to allow us to convert this model to an XML string.
    /// Will panic if serialisation fails.
    #[allow(dead_code)]
    pub(crate) fn to_xml(&self) -> String {
        serde_xml_rs::to_string(&self).expect("impossible to fail to serialize")
    }
}

#[derive(Debug, Clone, PartialEq, serde::Serialize, serde::Deserialize)]
#[cfg_attr(feature = "conversion", derive(frunk::LabelledGeneric))]
pub struct PipelineActivityartifacts {
    #[serde(rename = "name")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub name: Option<String>,

    #[serde(rename = "size")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub size: Option<isize>,

    #[serde(rename = "url")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub url: Option<String>,

    #[serde(rename = "_class")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub _class: Option<String>,

}

impl PipelineActivityartifacts {
    pub fn new() -> PipelineActivityartifacts {
        PipelineActivityartifacts {
            name: None,
            size: None,
            url: None,
            _class: None,
        }
    }
}

/// Converts the PipelineActivityartifacts value to the Query Parameters representation (style=form, explode=false)
/// specified in https://swagger.io/docs/specification/serialization/
/// Should be implemented in a serde serializer
impl std::string::ToString for PipelineActivityartifacts {
    fn to_string(&self) -> String {
        let mut params: Vec<String> = vec![];

        if let Some(ref name) = self.name {
            params.push("name".to_string());
            params.push(name.to_string());
        }


        if let Some(ref size) = self.size {
            params.push("size".to_string());
            params.push(size.to_string());
        }


        if let Some(ref url) = self.url {
            params.push("url".to_string());
            params.push(url.to_string());
        }


        if let Some(ref _class) = self._class {
            params.push("_class".to_string());
            params.push(_class.to_string());
        }

        params.join(",").to_string()
    }
}

/// Converts Query Parameters representation (style=form, explode=false) to a PipelineActivityartifacts value
/// as specified in https://swagger.io/docs/specification/serialization/
/// Should be implemented in a serde deserializer
impl std::str::FromStr for PipelineActivityartifacts {
    type Err = String;

    fn from_str(s: &str) -> std::result::Result<Self, Self::Err> {
        #[derive(Default)]
        // An intermediate representation of the struct to use for parsing.
        struct IntermediateRep {
            pub name: Vec<String>,
            pub size: Vec<isize>,
            pub url: Vec<String>,
            pub _class: Vec<String>,
        }

        let mut intermediate_rep = IntermediateRep::default();

        // Parse into intermediate representation
        let mut string_iter = s.split(',').into_iter();
        let mut key_result = string_iter.next();

        while key_result.is_some() {
            let val = match string_iter.next() {
                Some(x) => x,
                None => return std::result::Result::Err("Missing value while parsing PipelineActivityartifacts".to_string())
            };

            if let Some(key) = key_result {
                match key {
                    "name" => intermediate_rep.name.push(<String as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "size" => intermediate_rep.size.push(<isize as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "url" => intermediate_rep.url.push(<String as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "_class" => intermediate_rep._class.push(<String as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    _ => return std::result::Result::Err("Unexpected key while parsing PipelineActivityartifacts".to_string())
                }
            }

            // Get the next key
            key_result = string_iter.next();
        }

        // Use the intermediate representation to return the struct
        std::result::Result::Ok(PipelineActivityartifacts {
            name: intermediate_rep.name.into_iter().next(),
            size: intermediate_rep.size.into_iter().next(),
            url: intermediate_rep.url.into_iter().next(),
            _class: intermediate_rep._class.into_iter().next(),
        })
    }
}

// Methods for converting between header::IntoHeaderValue<PipelineActivityartifacts> and hyper::header::HeaderValue

#[cfg(any(feature = "client", feature = "server"))]
impl std::convert::TryFrom<header::IntoHeaderValue<PipelineActivityartifacts>> for hyper::header::HeaderValue {
    type Error = String;

    fn try_from(hdr_value: header::IntoHeaderValue<PipelineActivityartifacts>) -> std::result::Result<Self, Self::Error> {
        let hdr_value = hdr_value.to_string();
        match hyper::header::HeaderValue::from_str(&hdr_value) {
             std::result::Result::Ok(value) => std::result::Result::Ok(value),
             std::result::Result::Err(e) => std::result::Result::Err(
                 format!("Invalid header value for PipelineActivityartifacts - value: {} is invalid {}",
                     hdr_value, e))
        }
    }
}

#[cfg(any(feature = "client", feature = "server"))]
impl std::convert::TryFrom<hyper::header::HeaderValue> for header::IntoHeaderValue<PipelineActivityartifacts> {
    type Error = String;

    fn try_from(hdr_value: hyper::header::HeaderValue) -> std::result::Result<Self, Self::Error> {
        match hdr_value.to_str() {
             std::result::Result::Ok(value) => {
                    match <PipelineActivityartifacts as std::str::FromStr>::from_str(value) {
                        std::result::Result::Ok(value) => std::result::Result::Ok(header::IntoHeaderValue(value)),
                        std::result::Result::Err(err) => std::result::Result::Err(
                            format!("Unable to convert header value '{}' into PipelineActivityartifacts - {}",
                                value, err))
                    }
             },
             std::result::Result::Err(e) => std::result::Result::Err(
                 format!("Unable to convert header: {:?} to string: {}",
                     hdr_value, e))
        }
    }
}


impl PipelineActivityartifacts {
    /// Helper function to allow us to convert this model to an XML string.
    /// Will panic if serialisation fails.
    #[allow(dead_code)]
    pub(crate) fn to_xml(&self) -> String {
        serde_xml_rs::to_string(&self).expect("impossible to fail to serialize")
    }
}

#[derive(Debug, Clone, PartialEq, serde::Serialize, serde::Deserialize)]
#[cfg_attr(feature = "conversion", derive(frunk::LabelledGeneric))]
pub struct PipelineBranchesitem {
    #[serde(rename = "displayName")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub display_name: Option<String>,

    #[serde(rename = "estimatedDurationInMillis")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub estimated_duration_in_millis: Option<isize>,

    #[serde(rename = "name")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub name: Option<String>,

    #[serde(rename = "weatherScore")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub weather_score: Option<isize>,

    #[serde(rename = "latestRun")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub latest_run: Option<models::PipelineBranchesitemlatestRun>,

    #[serde(rename = "organization")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub organization: Option<String>,

    #[serde(rename = "pullRequest")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub pull_request: Option<models::PipelineBranchesitempullRequest>,

    #[serde(rename = "totalNumberOfPullRequests")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub total_number_of_pull_requests: Option<isize>,

    #[serde(rename = "_class")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub _class: Option<String>,

}

impl PipelineBranchesitem {
    pub fn new() -> PipelineBranchesitem {
        PipelineBranchesitem {
            display_name: None,
            estimated_duration_in_millis: None,
            name: None,
            weather_score: None,
            latest_run: None,
            organization: None,
            pull_request: None,
            total_number_of_pull_requests: None,
            _class: None,
        }
    }
}

/// Converts the PipelineBranchesitem value to the Query Parameters representation (style=form, explode=false)
/// specified in https://swagger.io/docs/specification/serialization/
/// Should be implemented in a serde serializer
impl std::string::ToString for PipelineBranchesitem {
    fn to_string(&self) -> String {
        let mut params: Vec<String> = vec![];

        if let Some(ref display_name) = self.display_name {
            params.push("displayName".to_string());
            params.push(display_name.to_string());
        }


        if let Some(ref estimated_duration_in_millis) = self.estimated_duration_in_millis {
            params.push("estimatedDurationInMillis".to_string());
            params.push(estimated_duration_in_millis.to_string());
        }


        if let Some(ref name) = self.name {
            params.push("name".to_string());
            params.push(name.to_string());
        }


        if let Some(ref weather_score) = self.weather_score {
            params.push("weatherScore".to_string());
            params.push(weather_score.to_string());
        }

        // Skipping latestRun in query parameter serialization


        if let Some(ref organization) = self.organization {
            params.push("organization".to_string());
            params.push(organization.to_string());
        }

        // Skipping pullRequest in query parameter serialization


        if let Some(ref total_number_of_pull_requests) = self.total_number_of_pull_requests {
            params.push("totalNumberOfPullRequests".to_string());
            params.push(total_number_of_pull_requests.to_string());
        }


        if let Some(ref _class) = self._class {
            params.push("_class".to_string());
            params.push(_class.to_string());
        }

        params.join(",").to_string()
    }
}

/// Converts Query Parameters representation (style=form, explode=false) to a PipelineBranchesitem value
/// as specified in https://swagger.io/docs/specification/serialization/
/// Should be implemented in a serde deserializer
impl std::str::FromStr for PipelineBranchesitem {
    type Err = String;

    fn from_str(s: &str) -> std::result::Result<Self, Self::Err> {
        #[derive(Default)]
        // An intermediate representation of the struct to use for parsing.
        struct IntermediateRep {
            pub display_name: Vec<String>,
            pub estimated_duration_in_millis: Vec<isize>,
            pub name: Vec<String>,
            pub weather_score: Vec<isize>,
            pub latest_run: Vec<models::PipelineBranchesitemlatestRun>,
            pub organization: Vec<String>,
            pub pull_request: Vec<models::PipelineBranchesitempullRequest>,
            pub total_number_of_pull_requests: Vec<isize>,
            pub _class: Vec<String>,
        }

        let mut intermediate_rep = IntermediateRep::default();

        // Parse into intermediate representation
        let mut string_iter = s.split(',').into_iter();
        let mut key_result = string_iter.next();

        while key_result.is_some() {
            let val = match string_iter.next() {
                Some(x) => x,
                None => return std::result::Result::Err("Missing value while parsing PipelineBranchesitem".to_string())
            };

            if let Some(key) = key_result {
                match key {
                    "displayName" => intermediate_rep.display_name.push(<String as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "estimatedDurationInMillis" => intermediate_rep.estimated_duration_in_millis.push(<isize as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "name" => intermediate_rep.name.push(<String as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "weatherScore" => intermediate_rep.weather_score.push(<isize as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "latestRun" => intermediate_rep.latest_run.push(<models::PipelineBranchesitemlatestRun as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "organization" => intermediate_rep.organization.push(<String as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "pullRequest" => intermediate_rep.pull_request.push(<models::PipelineBranchesitempullRequest as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "totalNumberOfPullRequests" => intermediate_rep.total_number_of_pull_requests.push(<isize as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "_class" => intermediate_rep._class.push(<String as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    _ => return std::result::Result::Err("Unexpected key while parsing PipelineBranchesitem".to_string())
                }
            }

            // Get the next key
            key_result = string_iter.next();
        }

        // Use the intermediate representation to return the struct
        std::result::Result::Ok(PipelineBranchesitem {
            display_name: intermediate_rep.display_name.into_iter().next(),
            estimated_duration_in_millis: intermediate_rep.estimated_duration_in_millis.into_iter().next(),
            name: intermediate_rep.name.into_iter().next(),
            weather_score: intermediate_rep.weather_score.into_iter().next(),
            latest_run: intermediate_rep.latest_run.into_iter().next(),
            organization: intermediate_rep.organization.into_iter().next(),
            pull_request: intermediate_rep.pull_request.into_iter().next(),
            total_number_of_pull_requests: intermediate_rep.total_number_of_pull_requests.into_iter().next(),
            _class: intermediate_rep._class.into_iter().next(),
        })
    }
}

// Methods for converting between header::IntoHeaderValue<PipelineBranchesitem> and hyper::header::HeaderValue

#[cfg(any(feature = "client", feature = "server"))]
impl std::convert::TryFrom<header::IntoHeaderValue<PipelineBranchesitem>> for hyper::header::HeaderValue {
    type Error = String;

    fn try_from(hdr_value: header::IntoHeaderValue<PipelineBranchesitem>) -> std::result::Result<Self, Self::Error> {
        let hdr_value = hdr_value.to_string();
        match hyper::header::HeaderValue::from_str(&hdr_value) {
             std::result::Result::Ok(value) => std::result::Result::Ok(value),
             std::result::Result::Err(e) => std::result::Result::Err(
                 format!("Invalid header value for PipelineBranchesitem - value: {} is invalid {}",
                     hdr_value, e))
        }
    }
}

#[cfg(any(feature = "client", feature = "server"))]
impl std::convert::TryFrom<hyper::header::HeaderValue> for header::IntoHeaderValue<PipelineBranchesitem> {
    type Error = String;

    fn try_from(hdr_value: hyper::header::HeaderValue) -> std::result::Result<Self, Self::Error> {
        match hdr_value.to_str() {
             std::result::Result::Ok(value) => {
                    match <PipelineBranchesitem as std::str::FromStr>::from_str(value) {
                        std::result::Result::Ok(value) => std::result::Result::Ok(header::IntoHeaderValue(value)),
                        std::result::Result::Err(err) => std::result::Result::Err(
                            format!("Unable to convert header value '{}' into PipelineBranchesitem - {}",
                                value, err))
                    }
             },
             std::result::Result::Err(e) => std::result::Result::Err(
                 format!("Unable to convert header: {:?} to string: {}",
                     hdr_value, e))
        }
    }
}


impl PipelineBranchesitem {
    /// Helper function to allow us to convert this model to an XML string.
    /// Will panic if serialisation fails.
    #[allow(dead_code)]
    pub(crate) fn to_xml(&self) -> String {
        serde_xml_rs::to_string(&self).expect("impossible to fail to serialize")
    }
}

#[derive(Debug, Clone, PartialEq, serde::Serialize, serde::Deserialize)]
#[cfg_attr(feature = "conversion", derive(frunk::LabelledGeneric))]
pub struct PipelineBranchesitemlatestRun {
    #[serde(rename = "durationInMillis")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub duration_in_millis: Option<isize>,

    #[serde(rename = "estimatedDurationInMillis")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub estimated_duration_in_millis: Option<isize>,

    #[serde(rename = "enQueueTime")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub en_queue_time: Option<String>,

    #[serde(rename = "endTime")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub end_time: Option<String>,

    #[serde(rename = "id")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub id: Option<String>,

    #[serde(rename = "organization")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub organization: Option<String>,

    #[serde(rename = "pipeline")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub pipeline: Option<String>,

    #[serde(rename = "result")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub result: Option<String>,

    #[serde(rename = "runSummary")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub run_summary: Option<String>,

    #[serde(rename = "startTime")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub start_time: Option<String>,

    #[serde(rename = "state")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub state: Option<String>,

    #[serde(rename = "type")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub type_: Option<String>,

    #[serde(rename = "commitId")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub commit_id: Option<String>,

    #[serde(rename = "_class")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub _class: Option<String>,

}

impl PipelineBranchesitemlatestRun {
    pub fn new() -> PipelineBranchesitemlatestRun {
        PipelineBranchesitemlatestRun {
            duration_in_millis: None,
            estimated_duration_in_millis: None,
            en_queue_time: None,
            end_time: None,
            id: None,
            organization: None,
            pipeline: None,
            result: None,
            run_summary: None,
            start_time: None,
            state: None,
            type_: None,
            commit_id: None,
            _class: None,
        }
    }
}

/// Converts the PipelineBranchesitemlatestRun value to the Query Parameters representation (style=form, explode=false)
/// specified in https://swagger.io/docs/specification/serialization/
/// Should be implemented in a serde serializer
impl std::string::ToString for PipelineBranchesitemlatestRun {
    fn to_string(&self) -> String {
        let mut params: Vec<String> = vec![];

        if let Some(ref duration_in_millis) = self.duration_in_millis {
            params.push("durationInMillis".to_string());
            params.push(duration_in_millis.to_string());
        }


        if let Some(ref estimated_duration_in_millis) = self.estimated_duration_in_millis {
            params.push("estimatedDurationInMillis".to_string());
            params.push(estimated_duration_in_millis.to_string());
        }


        if let Some(ref en_queue_time) = self.en_queue_time {
            params.push("enQueueTime".to_string());
            params.push(en_queue_time.to_string());
        }


        if let Some(ref end_time) = self.end_time {
            params.push("endTime".to_string());
            params.push(end_time.to_string());
        }


        if let Some(ref id) = self.id {
            params.push("id".to_string());
            params.push(id.to_string());
        }


        if let Some(ref organization) = self.organization {
            params.push("organization".to_string());
            params.push(organization.to_string());
        }


        if let Some(ref pipeline) = self.pipeline {
            params.push("pipeline".to_string());
            params.push(pipeline.to_string());
        }


        if let Some(ref result) = self.result {
            params.push("result".to_string());
            params.push(result.to_string());
        }


        if let Some(ref run_summary) = self.run_summary {
            params.push("runSummary".to_string());
            params.push(run_summary.to_string());
        }


        if let Some(ref start_time) = self.start_time {
            params.push("startTime".to_string());
            params.push(start_time.to_string());
        }


        if let Some(ref state) = self.state {
            params.push("state".to_string());
            params.push(state.to_string());
        }


        if let Some(ref type_) = self.type_ {
            params.push("type".to_string());
            params.push(type_.to_string());
        }


        if let Some(ref commit_id) = self.commit_id {
            params.push("commitId".to_string());
            params.push(commit_id.to_string());
        }


        if let Some(ref _class) = self._class {
            params.push("_class".to_string());
            params.push(_class.to_string());
        }

        params.join(",").to_string()
    }
}

/// Converts Query Parameters representation (style=form, explode=false) to a PipelineBranchesitemlatestRun value
/// as specified in https://swagger.io/docs/specification/serialization/
/// Should be implemented in a serde deserializer
impl std::str::FromStr for PipelineBranchesitemlatestRun {
    type Err = String;

    fn from_str(s: &str) -> std::result::Result<Self, Self::Err> {
        #[derive(Default)]
        // An intermediate representation of the struct to use for parsing.
        struct IntermediateRep {
            pub duration_in_millis: Vec<isize>,
            pub estimated_duration_in_millis: Vec<isize>,
            pub en_queue_time: Vec<String>,
            pub end_time: Vec<String>,
            pub id: Vec<String>,
            pub organization: Vec<String>,
            pub pipeline: Vec<String>,
            pub result: Vec<String>,
            pub run_summary: Vec<String>,
            pub start_time: Vec<String>,
            pub state: Vec<String>,
            pub type_: Vec<String>,
            pub commit_id: Vec<String>,
            pub _class: Vec<String>,
        }

        let mut intermediate_rep = IntermediateRep::default();

        // Parse into intermediate representation
        let mut string_iter = s.split(',').into_iter();
        let mut key_result = string_iter.next();

        while key_result.is_some() {
            let val = match string_iter.next() {
                Some(x) => x,
                None => return std::result::Result::Err("Missing value while parsing PipelineBranchesitemlatestRun".to_string())
            };

            if let Some(key) = key_result {
                match key {
                    "durationInMillis" => intermediate_rep.duration_in_millis.push(<isize as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "estimatedDurationInMillis" => intermediate_rep.estimated_duration_in_millis.push(<isize as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "enQueueTime" => intermediate_rep.en_queue_time.push(<String as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "endTime" => intermediate_rep.end_time.push(<String as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "id" => intermediate_rep.id.push(<String as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "organization" => intermediate_rep.organization.push(<String as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "pipeline" => intermediate_rep.pipeline.push(<String as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "result" => intermediate_rep.result.push(<String as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "runSummary" => intermediate_rep.run_summary.push(<String as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "startTime" => intermediate_rep.start_time.push(<String as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "state" => intermediate_rep.state.push(<String as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "type" => intermediate_rep.type_.push(<String as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "commitId" => intermediate_rep.commit_id.push(<String as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "_class" => intermediate_rep._class.push(<String as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    _ => return std::result::Result::Err("Unexpected key while parsing PipelineBranchesitemlatestRun".to_string())
                }
            }

            // Get the next key
            key_result = string_iter.next();
        }

        // Use the intermediate representation to return the struct
        std::result::Result::Ok(PipelineBranchesitemlatestRun {
            duration_in_millis: intermediate_rep.duration_in_millis.into_iter().next(),
            estimated_duration_in_millis: intermediate_rep.estimated_duration_in_millis.into_iter().next(),
            en_queue_time: intermediate_rep.en_queue_time.into_iter().next(),
            end_time: intermediate_rep.end_time.into_iter().next(),
            id: intermediate_rep.id.into_iter().next(),
            organization: intermediate_rep.organization.into_iter().next(),
            pipeline: intermediate_rep.pipeline.into_iter().next(),
            result: intermediate_rep.result.into_iter().next(),
            run_summary: intermediate_rep.run_summary.into_iter().next(),
            start_time: intermediate_rep.start_time.into_iter().next(),
            state: intermediate_rep.state.into_iter().next(),
            type_: intermediate_rep.type_.into_iter().next(),
            commit_id: intermediate_rep.commit_id.into_iter().next(),
            _class: intermediate_rep._class.into_iter().next(),
        })
    }
}

// Methods for converting between header::IntoHeaderValue<PipelineBranchesitemlatestRun> and hyper::header::HeaderValue

#[cfg(any(feature = "client", feature = "server"))]
impl std::convert::TryFrom<header::IntoHeaderValue<PipelineBranchesitemlatestRun>> for hyper::header::HeaderValue {
    type Error = String;

    fn try_from(hdr_value: header::IntoHeaderValue<PipelineBranchesitemlatestRun>) -> std::result::Result<Self, Self::Error> {
        let hdr_value = hdr_value.to_string();
        match hyper::header::HeaderValue::from_str(&hdr_value) {
             std::result::Result::Ok(value) => std::result::Result::Ok(value),
             std::result::Result::Err(e) => std::result::Result::Err(
                 format!("Invalid header value for PipelineBranchesitemlatestRun - value: {} is invalid {}",
                     hdr_value, e))
        }
    }
}

#[cfg(any(feature = "client", feature = "server"))]
impl std::convert::TryFrom<hyper::header::HeaderValue> for header::IntoHeaderValue<PipelineBranchesitemlatestRun> {
    type Error = String;

    fn try_from(hdr_value: hyper::header::HeaderValue) -> std::result::Result<Self, Self::Error> {
        match hdr_value.to_str() {
             std::result::Result::Ok(value) => {
                    match <PipelineBranchesitemlatestRun as std::str::FromStr>::from_str(value) {
                        std::result::Result::Ok(value) => std::result::Result::Ok(header::IntoHeaderValue(value)),
                        std::result::Result::Err(err) => std::result::Result::Err(
                            format!("Unable to convert header value '{}' into PipelineBranchesitemlatestRun - {}",
                                value, err))
                    }
             },
             std::result::Result::Err(e) => std::result::Result::Err(
                 format!("Unable to convert header: {:?} to string: {}",
                     hdr_value, e))
        }
    }
}


impl PipelineBranchesitemlatestRun {
    /// Helper function to allow us to convert this model to an XML string.
    /// Will panic if serialisation fails.
    #[allow(dead_code)]
    pub(crate) fn to_xml(&self) -> String {
        serde_xml_rs::to_string(&self).expect("impossible to fail to serialize")
    }
}

#[derive(Debug, Clone, PartialEq, serde::Serialize, serde::Deserialize)]
#[cfg_attr(feature = "conversion", derive(frunk::LabelledGeneric))]
pub struct PipelineBranchesitempullRequest {
    #[serde(rename = "_links")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub _links: Option<models::PipelineBranchesitempullRequestlinks>,

    #[serde(rename = "author")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub author: Option<String>,

    #[serde(rename = "id")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub id: Option<String>,

    #[serde(rename = "title")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub title: Option<String>,

    #[serde(rename = "url")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub url: Option<String>,

    #[serde(rename = "_class")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub _class: Option<String>,

}

impl PipelineBranchesitempullRequest {
    pub fn new() -> PipelineBranchesitempullRequest {
        PipelineBranchesitempullRequest {
            _links: None,
            author: None,
            id: None,
            title: None,
            url: None,
            _class: None,
        }
    }
}

/// Converts the PipelineBranchesitempullRequest value to the Query Parameters representation (style=form, explode=false)
/// specified in https://swagger.io/docs/specification/serialization/
/// Should be implemented in a serde serializer
impl std::string::ToString for PipelineBranchesitempullRequest {
    fn to_string(&self) -> String {
        let mut params: Vec<String> = vec![];
        // Skipping _links in query parameter serialization


        if let Some(ref author) = self.author {
            params.push("author".to_string());
            params.push(author.to_string());
        }


        if let Some(ref id) = self.id {
            params.push("id".to_string());
            params.push(id.to_string());
        }


        if let Some(ref title) = self.title {
            params.push("title".to_string());
            params.push(title.to_string());
        }


        if let Some(ref url) = self.url {
            params.push("url".to_string());
            params.push(url.to_string());
        }


        if let Some(ref _class) = self._class {
            params.push("_class".to_string());
            params.push(_class.to_string());
        }

        params.join(",").to_string()
    }
}

/// Converts Query Parameters representation (style=form, explode=false) to a PipelineBranchesitempullRequest value
/// as specified in https://swagger.io/docs/specification/serialization/
/// Should be implemented in a serde deserializer
impl std::str::FromStr for PipelineBranchesitempullRequest {
    type Err = String;

    fn from_str(s: &str) -> std::result::Result<Self, Self::Err> {
        #[derive(Default)]
        // An intermediate representation of the struct to use for parsing.
        struct IntermediateRep {
            pub _links: Vec<models::PipelineBranchesitempullRequestlinks>,
            pub author: Vec<String>,
            pub id: Vec<String>,
            pub title: Vec<String>,
            pub url: Vec<String>,
            pub _class: Vec<String>,
        }

        let mut intermediate_rep = IntermediateRep::default();

        // Parse into intermediate representation
        let mut string_iter = s.split(',').into_iter();
        let mut key_result = string_iter.next();

        while key_result.is_some() {
            let val = match string_iter.next() {
                Some(x) => x,
                None => return std::result::Result::Err("Missing value while parsing PipelineBranchesitempullRequest".to_string())
            };

            if let Some(key) = key_result {
                match key {
                    "_links" => intermediate_rep._links.push(<models::PipelineBranchesitempullRequestlinks as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "author" => intermediate_rep.author.push(<String as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "id" => intermediate_rep.id.push(<String as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "title" => intermediate_rep.title.push(<String as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "url" => intermediate_rep.url.push(<String as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "_class" => intermediate_rep._class.push(<String as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    _ => return std::result::Result::Err("Unexpected key while parsing PipelineBranchesitempullRequest".to_string())
                }
            }

            // Get the next key
            key_result = string_iter.next();
        }

        // Use the intermediate representation to return the struct
        std::result::Result::Ok(PipelineBranchesitempullRequest {
            _links: intermediate_rep._links.into_iter().next(),
            author: intermediate_rep.author.into_iter().next(),
            id: intermediate_rep.id.into_iter().next(),
            title: intermediate_rep.title.into_iter().next(),
            url: intermediate_rep.url.into_iter().next(),
            _class: intermediate_rep._class.into_iter().next(),
        })
    }
}

// Methods for converting between header::IntoHeaderValue<PipelineBranchesitempullRequest> and hyper::header::HeaderValue

#[cfg(any(feature = "client", feature = "server"))]
impl std::convert::TryFrom<header::IntoHeaderValue<PipelineBranchesitempullRequest>> for hyper::header::HeaderValue {
    type Error = String;

    fn try_from(hdr_value: header::IntoHeaderValue<PipelineBranchesitempullRequest>) -> std::result::Result<Self, Self::Error> {
        let hdr_value = hdr_value.to_string();
        match hyper::header::HeaderValue::from_str(&hdr_value) {
             std::result::Result::Ok(value) => std::result::Result::Ok(value),
             std::result::Result::Err(e) => std::result::Result::Err(
                 format!("Invalid header value for PipelineBranchesitempullRequest - value: {} is invalid {}",
                     hdr_value, e))
        }
    }
}

#[cfg(any(feature = "client", feature = "server"))]
impl std::convert::TryFrom<hyper::header::HeaderValue> for header::IntoHeaderValue<PipelineBranchesitempullRequest> {
    type Error = String;

    fn try_from(hdr_value: hyper::header::HeaderValue) -> std::result::Result<Self, Self::Error> {
        match hdr_value.to_str() {
             std::result::Result::Ok(value) => {
                    match <PipelineBranchesitempullRequest as std::str::FromStr>::from_str(value) {
                        std::result::Result::Ok(value) => std::result::Result::Ok(header::IntoHeaderValue(value)),
                        std::result::Result::Err(err) => std::result::Result::Err(
                            format!("Unable to convert header value '{}' into PipelineBranchesitempullRequest - {}",
                                value, err))
                    }
             },
             std::result::Result::Err(e) => std::result::Result::Err(
                 format!("Unable to convert header: {:?} to string: {}",
                     hdr_value, e))
        }
    }
}


impl PipelineBranchesitempullRequest {
    /// Helper function to allow us to convert this model to an XML string.
    /// Will panic if serialisation fails.
    #[allow(dead_code)]
    pub(crate) fn to_xml(&self) -> String {
        serde_xml_rs::to_string(&self).expect("impossible to fail to serialize")
    }
}

#[derive(Debug, Clone, PartialEq, serde::Serialize, serde::Deserialize)]
#[cfg_attr(feature = "conversion", derive(frunk::LabelledGeneric))]
pub struct PipelineBranchesitempullRequestlinks {
    #[serde(rename = "self")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub self_: Option<String>,

    #[serde(rename = "_class")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub _class: Option<String>,

}

impl PipelineBranchesitempullRequestlinks {
    pub fn new() -> PipelineBranchesitempullRequestlinks {
        PipelineBranchesitempullRequestlinks {
            self_: None,
            _class: None,
        }
    }
}

/// Converts the PipelineBranchesitempullRequestlinks value to the Query Parameters representation (style=form, explode=false)
/// specified in https://swagger.io/docs/specification/serialization/
/// Should be implemented in a serde serializer
impl std::string::ToString for PipelineBranchesitempullRequestlinks {
    fn to_string(&self) -> String {
        let mut params: Vec<String> = vec![];

        if let Some(ref self_) = self.self_ {
            params.push("self".to_string());
            params.push(self_.to_string());
        }


        if let Some(ref _class) = self._class {
            params.push("_class".to_string());
            params.push(_class.to_string());
        }

        params.join(",").to_string()
    }
}

/// Converts Query Parameters representation (style=form, explode=false) to a PipelineBranchesitempullRequestlinks value
/// as specified in https://swagger.io/docs/specification/serialization/
/// Should be implemented in a serde deserializer
impl std::str::FromStr for PipelineBranchesitempullRequestlinks {
    type Err = String;

    fn from_str(s: &str) -> std::result::Result<Self, Self::Err> {
        #[derive(Default)]
        // An intermediate representation of the struct to use for parsing.
        struct IntermediateRep {
            pub self_: Vec<String>,
            pub _class: Vec<String>,
        }

        let mut intermediate_rep = IntermediateRep::default();

        // Parse into intermediate representation
        let mut string_iter = s.split(',').into_iter();
        let mut key_result = string_iter.next();

        while key_result.is_some() {
            let val = match string_iter.next() {
                Some(x) => x,
                None => return std::result::Result::Err("Missing value while parsing PipelineBranchesitempullRequestlinks".to_string())
            };

            if let Some(key) = key_result {
                match key {
                    "self" => intermediate_rep.self_.push(<String as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "_class" => intermediate_rep._class.push(<String as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    _ => return std::result::Result::Err("Unexpected key while parsing PipelineBranchesitempullRequestlinks".to_string())
                }
            }

            // Get the next key
            key_result = string_iter.next();
        }

        // Use the intermediate representation to return the struct
        std::result::Result::Ok(PipelineBranchesitempullRequestlinks {
            self_: intermediate_rep.self_.into_iter().next(),
            _class: intermediate_rep._class.into_iter().next(),
        })
    }
}

// Methods for converting between header::IntoHeaderValue<PipelineBranchesitempullRequestlinks> and hyper::header::HeaderValue

#[cfg(any(feature = "client", feature = "server"))]
impl std::convert::TryFrom<header::IntoHeaderValue<PipelineBranchesitempullRequestlinks>> for hyper::header::HeaderValue {
    type Error = String;

    fn try_from(hdr_value: header::IntoHeaderValue<PipelineBranchesitempullRequestlinks>) -> std::result::Result<Self, Self::Error> {
        let hdr_value = hdr_value.to_string();
        match hyper::header::HeaderValue::from_str(&hdr_value) {
             std::result::Result::Ok(value) => std::result::Result::Ok(value),
             std::result::Result::Err(e) => std::result::Result::Err(
                 format!("Invalid header value for PipelineBranchesitempullRequestlinks - value: {} is invalid {}",
                     hdr_value, e))
        }
    }
}

#[cfg(any(feature = "client", feature = "server"))]
impl std::convert::TryFrom<hyper::header::HeaderValue> for header::IntoHeaderValue<PipelineBranchesitempullRequestlinks> {
    type Error = String;

    fn try_from(hdr_value: hyper::header::HeaderValue) -> std::result::Result<Self, Self::Error> {
        match hdr_value.to_str() {
             std::result::Result::Ok(value) => {
                    match <PipelineBranchesitempullRequestlinks as std::str::FromStr>::from_str(value) {
                        std::result::Result::Ok(value) => std::result::Result::Ok(header::IntoHeaderValue(value)),
                        std::result::Result::Err(err) => std::result::Result::Err(
                            format!("Unable to convert header value '{}' into PipelineBranchesitempullRequestlinks - {}",
                                value, err))
                    }
             },
             std::result::Result::Err(e) => std::result::Result::Err(
                 format!("Unable to convert header: {:?} to string: {}",
                     hdr_value, e))
        }
    }
}


impl PipelineBranchesitempullRequestlinks {
    /// Helper function to allow us to convert this model to an XML string.
    /// Will panic if serialisation fails.
    #[allow(dead_code)]
    pub(crate) fn to_xml(&self) -> String {
        serde_xml_rs::to_string(&self).expect("impossible to fail to serialize")
    }
}

#[derive(Debug, Clone, PartialEq, serde::Serialize, serde::Deserialize)]
#[cfg_attr(feature = "conversion", derive(frunk::LabelledGeneric))]
pub struct PipelineFolderImpl {
    #[serde(rename = "_class")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub _class: Option<String>,

    #[serde(rename = "displayName")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub display_name: Option<String>,

    #[serde(rename = "fullName")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub full_name: Option<String>,

    #[serde(rename = "name")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub name: Option<String>,

    #[serde(rename = "organization")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub organization: Option<String>,

    #[serde(rename = "numberOfFolders")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub number_of_folders: Option<isize>,

    #[serde(rename = "numberOfPipelines")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub number_of_pipelines: Option<isize>,

}

impl PipelineFolderImpl {
    pub fn new() -> PipelineFolderImpl {
        PipelineFolderImpl {
            _class: None,
            display_name: None,
            full_name: None,
            name: None,
            organization: None,
            number_of_folders: None,
            number_of_pipelines: None,
        }
    }
}

/// Converts the PipelineFolderImpl value to the Query Parameters representation (style=form, explode=false)
/// specified in https://swagger.io/docs/specification/serialization/
/// Should be implemented in a serde serializer
impl std::string::ToString for PipelineFolderImpl {
    fn to_string(&self) -> String {
        let mut params: Vec<String> = vec![];

        if let Some(ref _class) = self._class {
            params.push("_class".to_string());
            params.push(_class.to_string());
        }


        if let Some(ref display_name) = self.display_name {
            params.push("displayName".to_string());
            params.push(display_name.to_string());
        }


        if let Some(ref full_name) = self.full_name {
            params.push("fullName".to_string());
            params.push(full_name.to_string());
        }


        if let Some(ref name) = self.name {
            params.push("name".to_string());
            params.push(name.to_string());
        }


        if let Some(ref organization) = self.organization {
            params.push("organization".to_string());
            params.push(organization.to_string());
        }


        if let Some(ref number_of_folders) = self.number_of_folders {
            params.push("numberOfFolders".to_string());
            params.push(number_of_folders.to_string());
        }


        if let Some(ref number_of_pipelines) = self.number_of_pipelines {
            params.push("numberOfPipelines".to_string());
            params.push(number_of_pipelines.to_string());
        }

        params.join(",").to_string()
    }
}

/// Converts Query Parameters representation (style=form, explode=false) to a PipelineFolderImpl value
/// as specified in https://swagger.io/docs/specification/serialization/
/// Should be implemented in a serde deserializer
impl std::str::FromStr for PipelineFolderImpl {
    type Err = String;

    fn from_str(s: &str) -> std::result::Result<Self, Self::Err> {
        #[derive(Default)]
        // An intermediate representation of the struct to use for parsing.
        struct IntermediateRep {
            pub _class: Vec<String>,
            pub display_name: Vec<String>,
            pub full_name: Vec<String>,
            pub name: Vec<String>,
            pub organization: Vec<String>,
            pub number_of_folders: Vec<isize>,
            pub number_of_pipelines: Vec<isize>,
        }

        let mut intermediate_rep = IntermediateRep::default();

        // Parse into intermediate representation
        let mut string_iter = s.split(',').into_iter();
        let mut key_result = string_iter.next();

        while key_result.is_some() {
            let val = match string_iter.next() {
                Some(x) => x,
                None => return std::result::Result::Err("Missing value while parsing PipelineFolderImpl".to_string())
            };

            if let Some(key) = key_result {
                match key {
                    "_class" => intermediate_rep._class.push(<String as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "displayName" => intermediate_rep.display_name.push(<String as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "fullName" => intermediate_rep.full_name.push(<String as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "name" => intermediate_rep.name.push(<String as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "organization" => intermediate_rep.organization.push(<String as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "numberOfFolders" => intermediate_rep.number_of_folders.push(<isize as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "numberOfPipelines" => intermediate_rep.number_of_pipelines.push(<isize as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    _ => return std::result::Result::Err("Unexpected key while parsing PipelineFolderImpl".to_string())
                }
            }

            // Get the next key
            key_result = string_iter.next();
        }

        // Use the intermediate representation to return the struct
        std::result::Result::Ok(PipelineFolderImpl {
            _class: intermediate_rep._class.into_iter().next(),
            display_name: intermediate_rep.display_name.into_iter().next(),
            full_name: intermediate_rep.full_name.into_iter().next(),
            name: intermediate_rep.name.into_iter().next(),
            organization: intermediate_rep.organization.into_iter().next(),
            number_of_folders: intermediate_rep.number_of_folders.into_iter().next(),
            number_of_pipelines: intermediate_rep.number_of_pipelines.into_iter().next(),
        })
    }
}

// Methods for converting between header::IntoHeaderValue<PipelineFolderImpl> and hyper::header::HeaderValue

#[cfg(any(feature = "client", feature = "server"))]
impl std::convert::TryFrom<header::IntoHeaderValue<PipelineFolderImpl>> for hyper::header::HeaderValue {
    type Error = String;

    fn try_from(hdr_value: header::IntoHeaderValue<PipelineFolderImpl>) -> std::result::Result<Self, Self::Error> {
        let hdr_value = hdr_value.to_string();
        match hyper::header::HeaderValue::from_str(&hdr_value) {
             std::result::Result::Ok(value) => std::result::Result::Ok(value),
             std::result::Result::Err(e) => std::result::Result::Err(
                 format!("Invalid header value for PipelineFolderImpl - value: {} is invalid {}",
                     hdr_value, e))
        }
    }
}

#[cfg(any(feature = "client", feature = "server"))]
impl std::convert::TryFrom<hyper::header::HeaderValue> for header::IntoHeaderValue<PipelineFolderImpl> {
    type Error = String;

    fn try_from(hdr_value: hyper::header::HeaderValue) -> std::result::Result<Self, Self::Error> {
        match hdr_value.to_str() {
             std::result::Result::Ok(value) => {
                    match <PipelineFolderImpl as std::str::FromStr>::from_str(value) {
                        std::result::Result::Ok(value) => std::result::Result::Ok(header::IntoHeaderValue(value)),
                        std::result::Result::Err(err) => std::result::Result::Err(
                            format!("Unable to convert header value '{}' into PipelineFolderImpl - {}",
                                value, err))
                    }
             },
             std::result::Result::Err(e) => std::result::Result::Err(
                 format!("Unable to convert header: {:?} to string: {}",
                     hdr_value, e))
        }
    }
}


impl PipelineFolderImpl {
    /// Helper function to allow us to convert this model to an XML string.
    /// Will panic if serialisation fails.
    #[allow(dead_code)]
    pub(crate) fn to_xml(&self) -> String {
        serde_xml_rs::to_string(&self).expect("impossible to fail to serialize")
    }
}

#[derive(Debug, Clone, PartialEq, serde::Serialize, serde::Deserialize)]
#[cfg_attr(feature = "conversion", derive(frunk::LabelledGeneric))]
pub struct PipelineImpl {
    #[serde(rename = "_class")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub _class: Option<String>,

    #[serde(rename = "displayName")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub display_name: Option<String>,

    #[serde(rename = "estimatedDurationInMillis")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub estimated_duration_in_millis: Option<isize>,

    #[serde(rename = "fullName")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub full_name: Option<String>,

    #[serde(rename = "latestRun")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub latest_run: Option<String>,

    #[serde(rename = "name")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub name: Option<String>,

    #[serde(rename = "organization")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub organization: Option<String>,

    #[serde(rename = "weatherScore")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub weather_score: Option<isize>,

    #[serde(rename = "_links")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub _links: Option<models::PipelineImpllinks>,

}

impl PipelineImpl {
    pub fn new() -> PipelineImpl {
        PipelineImpl {
            _class: None,
            display_name: None,
            estimated_duration_in_millis: None,
            full_name: None,
            latest_run: None,
            name: None,
            organization: None,
            weather_score: None,
            _links: None,
        }
    }
}

/// Converts the PipelineImpl value to the Query Parameters representation (style=form, explode=false)
/// specified in https://swagger.io/docs/specification/serialization/
/// Should be implemented in a serde serializer
impl std::string::ToString for PipelineImpl {
    fn to_string(&self) -> String {
        let mut params: Vec<String> = vec![];

        if let Some(ref _class) = self._class {
            params.push("_class".to_string());
            params.push(_class.to_string());
        }


        if let Some(ref display_name) = self.display_name {
            params.push("displayName".to_string());
            params.push(display_name.to_string());
        }


        if let Some(ref estimated_duration_in_millis) = self.estimated_duration_in_millis {
            params.push("estimatedDurationInMillis".to_string());
            params.push(estimated_duration_in_millis.to_string());
        }


        if let Some(ref full_name) = self.full_name {
            params.push("fullName".to_string());
            params.push(full_name.to_string());
        }


        if let Some(ref latest_run) = self.latest_run {
            params.push("latestRun".to_string());
            params.push(latest_run.to_string());
        }


        if let Some(ref name) = self.name {
            params.push("name".to_string());
            params.push(name.to_string());
        }


        if let Some(ref organization) = self.organization {
            params.push("organization".to_string());
            params.push(organization.to_string());
        }


        if let Some(ref weather_score) = self.weather_score {
            params.push("weatherScore".to_string());
            params.push(weather_score.to_string());
        }

        // Skipping _links in query parameter serialization

        params.join(",").to_string()
    }
}

/// Converts Query Parameters representation (style=form, explode=false) to a PipelineImpl value
/// as specified in https://swagger.io/docs/specification/serialization/
/// Should be implemented in a serde deserializer
impl std::str::FromStr for PipelineImpl {
    type Err = String;

    fn from_str(s: &str) -> std::result::Result<Self, Self::Err> {
        #[derive(Default)]
        // An intermediate representation of the struct to use for parsing.
        struct IntermediateRep {
            pub _class: Vec<String>,
            pub display_name: Vec<String>,
            pub estimated_duration_in_millis: Vec<isize>,
            pub full_name: Vec<String>,
            pub latest_run: Vec<String>,
            pub name: Vec<String>,
            pub organization: Vec<String>,
            pub weather_score: Vec<isize>,
            pub _links: Vec<models::PipelineImpllinks>,
        }

        let mut intermediate_rep = IntermediateRep::default();

        // Parse into intermediate representation
        let mut string_iter = s.split(',').into_iter();
        let mut key_result = string_iter.next();

        while key_result.is_some() {
            let val = match string_iter.next() {
                Some(x) => x,
                None => return std::result::Result::Err("Missing value while parsing PipelineImpl".to_string())
            };

            if let Some(key) = key_result {
                match key {
                    "_class" => intermediate_rep._class.push(<String as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "displayName" => intermediate_rep.display_name.push(<String as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "estimatedDurationInMillis" => intermediate_rep.estimated_duration_in_millis.push(<isize as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "fullName" => intermediate_rep.full_name.push(<String as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "latestRun" => intermediate_rep.latest_run.push(<String as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "name" => intermediate_rep.name.push(<String as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "organization" => intermediate_rep.organization.push(<String as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "weatherScore" => intermediate_rep.weather_score.push(<isize as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "_links" => intermediate_rep._links.push(<models::PipelineImpllinks as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    _ => return std::result::Result::Err("Unexpected key while parsing PipelineImpl".to_string())
                }
            }

            // Get the next key
            key_result = string_iter.next();
        }

        // Use the intermediate representation to return the struct
        std::result::Result::Ok(PipelineImpl {
            _class: intermediate_rep._class.into_iter().next(),
            display_name: intermediate_rep.display_name.into_iter().next(),
            estimated_duration_in_millis: intermediate_rep.estimated_duration_in_millis.into_iter().next(),
            full_name: intermediate_rep.full_name.into_iter().next(),
            latest_run: intermediate_rep.latest_run.into_iter().next(),
            name: intermediate_rep.name.into_iter().next(),
            organization: intermediate_rep.organization.into_iter().next(),
            weather_score: intermediate_rep.weather_score.into_iter().next(),
            _links: intermediate_rep._links.into_iter().next(),
        })
    }
}

// Methods for converting between header::IntoHeaderValue<PipelineImpl> and hyper::header::HeaderValue

#[cfg(any(feature = "client", feature = "server"))]
impl std::convert::TryFrom<header::IntoHeaderValue<PipelineImpl>> for hyper::header::HeaderValue {
    type Error = String;

    fn try_from(hdr_value: header::IntoHeaderValue<PipelineImpl>) -> std::result::Result<Self, Self::Error> {
        let hdr_value = hdr_value.to_string();
        match hyper::header::HeaderValue::from_str(&hdr_value) {
             std::result::Result::Ok(value) => std::result::Result::Ok(value),
             std::result::Result::Err(e) => std::result::Result::Err(
                 format!("Invalid header value for PipelineImpl - value: {} is invalid {}",
                     hdr_value, e))
        }
    }
}

#[cfg(any(feature = "client", feature = "server"))]
impl std::convert::TryFrom<hyper::header::HeaderValue> for header::IntoHeaderValue<PipelineImpl> {
    type Error = String;

    fn try_from(hdr_value: hyper::header::HeaderValue) -> std::result::Result<Self, Self::Error> {
        match hdr_value.to_str() {
             std::result::Result::Ok(value) => {
                    match <PipelineImpl as std::str::FromStr>::from_str(value) {
                        std::result::Result::Ok(value) => std::result::Result::Ok(header::IntoHeaderValue(value)),
                        std::result::Result::Err(err) => std::result::Result::Err(
                            format!("Unable to convert header value '{}' into PipelineImpl - {}",
                                value, err))
                    }
             },
             std::result::Result::Err(e) => std::result::Result::Err(
                 format!("Unable to convert header: {:?} to string: {}",
                     hdr_value, e))
        }
    }
}


impl PipelineImpl {
    /// Helper function to allow us to convert this model to an XML string.
    /// Will panic if serialisation fails.
    #[allow(dead_code)]
    pub(crate) fn to_xml(&self) -> String {
        serde_xml_rs::to_string(&self).expect("impossible to fail to serialize")
    }
}

#[derive(Debug, Clone, PartialEq, serde::Serialize, serde::Deserialize)]
#[cfg_attr(feature = "conversion", derive(frunk::LabelledGeneric))]
pub struct PipelineImpllinks {
    #[serde(rename = "runs")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub runs: Option<models::Link>,

    #[serde(rename = "self")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub self_: Option<models::Link>,

    #[serde(rename = "queue")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub queue: Option<models::Link>,

    #[serde(rename = "actions")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub actions: Option<models::Link>,

    #[serde(rename = "_class")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub _class: Option<String>,

}

impl PipelineImpllinks {
    pub fn new() -> PipelineImpllinks {
        PipelineImpllinks {
            runs: None,
            self_: None,
            queue: None,
            actions: None,
            _class: None,
        }
    }
}

/// Converts the PipelineImpllinks value to the Query Parameters representation (style=form, explode=false)
/// specified in https://swagger.io/docs/specification/serialization/
/// Should be implemented in a serde serializer
impl std::string::ToString for PipelineImpllinks {
    fn to_string(&self) -> String {
        let mut params: Vec<String> = vec![];
        // Skipping runs in query parameter serialization

        // Skipping self in query parameter serialization

        // Skipping queue in query parameter serialization

        // Skipping actions in query parameter serialization


        if let Some(ref _class) = self._class {
            params.push("_class".to_string());
            params.push(_class.to_string());
        }

        params.join(",").to_string()
    }
}

/// Converts Query Parameters representation (style=form, explode=false) to a PipelineImpllinks value
/// as specified in https://swagger.io/docs/specification/serialization/
/// Should be implemented in a serde deserializer
impl std::str::FromStr for PipelineImpllinks {
    type Err = String;

    fn from_str(s: &str) -> std::result::Result<Self, Self::Err> {
        #[derive(Default)]
        // An intermediate representation of the struct to use for parsing.
        struct IntermediateRep {
            pub runs: Vec<models::Link>,
            pub self_: Vec<models::Link>,
            pub queue: Vec<models::Link>,
            pub actions: Vec<models::Link>,
            pub _class: Vec<String>,
        }

        let mut intermediate_rep = IntermediateRep::default();

        // Parse into intermediate representation
        let mut string_iter = s.split(',').into_iter();
        let mut key_result = string_iter.next();

        while key_result.is_some() {
            let val = match string_iter.next() {
                Some(x) => x,
                None => return std::result::Result::Err("Missing value while parsing PipelineImpllinks".to_string())
            };

            if let Some(key) = key_result {
                match key {
                    "runs" => intermediate_rep.runs.push(<models::Link as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "self" => intermediate_rep.self_.push(<models::Link as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "queue" => intermediate_rep.queue.push(<models::Link as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "actions" => intermediate_rep.actions.push(<models::Link as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "_class" => intermediate_rep._class.push(<String as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    _ => return std::result::Result::Err("Unexpected key while parsing PipelineImpllinks".to_string())
                }
            }

            // Get the next key
            key_result = string_iter.next();
        }

        // Use the intermediate representation to return the struct
        std::result::Result::Ok(PipelineImpllinks {
            runs: intermediate_rep.runs.into_iter().next(),
            self_: intermediate_rep.self_.into_iter().next(),
            queue: intermediate_rep.queue.into_iter().next(),
            actions: intermediate_rep.actions.into_iter().next(),
            _class: intermediate_rep._class.into_iter().next(),
        })
    }
}

// Methods for converting between header::IntoHeaderValue<PipelineImpllinks> and hyper::header::HeaderValue

#[cfg(any(feature = "client", feature = "server"))]
impl std::convert::TryFrom<header::IntoHeaderValue<PipelineImpllinks>> for hyper::header::HeaderValue {
    type Error = String;

    fn try_from(hdr_value: header::IntoHeaderValue<PipelineImpllinks>) -> std::result::Result<Self, Self::Error> {
        let hdr_value = hdr_value.to_string();
        match hyper::header::HeaderValue::from_str(&hdr_value) {
             std::result::Result::Ok(value) => std::result::Result::Ok(value),
             std::result::Result::Err(e) => std::result::Result::Err(
                 format!("Invalid header value for PipelineImpllinks - value: {} is invalid {}",
                     hdr_value, e))
        }
    }
}

#[cfg(any(feature = "client", feature = "server"))]
impl std::convert::TryFrom<hyper::header::HeaderValue> for header::IntoHeaderValue<PipelineImpllinks> {
    type Error = String;

    fn try_from(hdr_value: hyper::header::HeaderValue) -> std::result::Result<Self, Self::Error> {
        match hdr_value.to_str() {
             std::result::Result::Ok(value) => {
                    match <PipelineImpllinks as std::str::FromStr>::from_str(value) {
                        std::result::Result::Ok(value) => std::result::Result::Ok(header::IntoHeaderValue(value)),
                        std::result::Result::Err(err) => std::result::Result::Err(
                            format!("Unable to convert header value '{}' into PipelineImpllinks - {}",
                                value, err))
                    }
             },
             std::result::Result::Err(e) => std::result::Result::Err(
                 format!("Unable to convert header: {:?} to string: {}",
                     hdr_value, e))
        }
    }
}


impl PipelineImpllinks {
    /// Helper function to allow us to convert this model to an XML string.
    /// Will panic if serialisation fails.
    #[allow(dead_code)]
    pub(crate) fn to_xml(&self) -> String {
        serde_xml_rs::to_string(&self).expect("impossible to fail to serialize")
    }
}

#[derive(Debug, Clone, PartialEq, serde::Serialize, serde::Deserialize)]
#[cfg_attr(feature = "conversion", derive(frunk::LabelledGeneric))]
pub struct PipelineRun {
    #[serde(rename = "_class")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub _class: Option<String>,

    #[serde(rename = "artifacts")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub artifacts: Option<Vec<models::PipelineRunartifacts>>,

    #[serde(rename = "durationInMillis")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub duration_in_millis: Option<isize>,

    #[serde(rename = "estimatedDurationInMillis")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub estimated_duration_in_millis: Option<isize>,

    #[serde(rename = "enQueueTime")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub en_queue_time: Option<String>,

    #[serde(rename = "endTime")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub end_time: Option<String>,

    #[serde(rename = "id")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub id: Option<String>,

    #[serde(rename = "organization")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub organization: Option<String>,

    #[serde(rename = "pipeline")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub pipeline: Option<String>,

    #[serde(rename = "result")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub result: Option<String>,

    #[serde(rename = "runSummary")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub run_summary: Option<String>,

    #[serde(rename = "startTime")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub start_time: Option<String>,

    #[serde(rename = "state")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub state: Option<String>,

    #[serde(rename = "type")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub type_: Option<String>,

    #[serde(rename = "commitId")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub commit_id: Option<String>,

}

impl PipelineRun {
    pub fn new() -> PipelineRun {
        PipelineRun {
            _class: None,
            artifacts: None,
            duration_in_millis: None,
            estimated_duration_in_millis: None,
            en_queue_time: None,
            end_time: None,
            id: None,
            organization: None,
            pipeline: None,
            result: None,
            run_summary: None,
            start_time: None,
            state: None,
            type_: None,
            commit_id: None,
        }
    }
}

/// Converts the PipelineRun value to the Query Parameters representation (style=form, explode=false)
/// specified in https://swagger.io/docs/specification/serialization/
/// Should be implemented in a serde serializer
impl std::string::ToString for PipelineRun {
    fn to_string(&self) -> String {
        let mut params: Vec<String> = vec![];

        if let Some(ref _class) = self._class {
            params.push("_class".to_string());
            params.push(_class.to_string());
        }

        // Skipping artifacts in query parameter serialization


        if let Some(ref duration_in_millis) = self.duration_in_millis {
            params.push("durationInMillis".to_string());
            params.push(duration_in_millis.to_string());
        }


        if let Some(ref estimated_duration_in_millis) = self.estimated_duration_in_millis {
            params.push("estimatedDurationInMillis".to_string());
            params.push(estimated_duration_in_millis.to_string());
        }


        if let Some(ref en_queue_time) = self.en_queue_time {
            params.push("enQueueTime".to_string());
            params.push(en_queue_time.to_string());
        }


        if let Some(ref end_time) = self.end_time {
            params.push("endTime".to_string());
            params.push(end_time.to_string());
        }


        if let Some(ref id) = self.id {
            params.push("id".to_string());
            params.push(id.to_string());
        }


        if let Some(ref organization) = self.organization {
            params.push("organization".to_string());
            params.push(organization.to_string());
        }


        if let Some(ref pipeline) = self.pipeline {
            params.push("pipeline".to_string());
            params.push(pipeline.to_string());
        }


        if let Some(ref result) = self.result {
            params.push("result".to_string());
            params.push(result.to_string());
        }


        if let Some(ref run_summary) = self.run_summary {
            params.push("runSummary".to_string());
            params.push(run_summary.to_string());
        }


        if let Some(ref start_time) = self.start_time {
            params.push("startTime".to_string());
            params.push(start_time.to_string());
        }


        if let Some(ref state) = self.state {
            params.push("state".to_string());
            params.push(state.to_string());
        }


        if let Some(ref type_) = self.type_ {
            params.push("type".to_string());
            params.push(type_.to_string());
        }


        if let Some(ref commit_id) = self.commit_id {
            params.push("commitId".to_string());
            params.push(commit_id.to_string());
        }

        params.join(",").to_string()
    }
}

/// Converts Query Parameters representation (style=form, explode=false) to a PipelineRun value
/// as specified in https://swagger.io/docs/specification/serialization/
/// Should be implemented in a serde deserializer
impl std::str::FromStr for PipelineRun {
    type Err = String;

    fn from_str(s: &str) -> std::result::Result<Self, Self::Err> {
        #[derive(Default)]
        // An intermediate representation of the struct to use for parsing.
        struct IntermediateRep {
            pub _class: Vec<String>,
            pub artifacts: Vec<Vec<models::PipelineRunartifacts>>,
            pub duration_in_millis: Vec<isize>,
            pub estimated_duration_in_millis: Vec<isize>,
            pub en_queue_time: Vec<String>,
            pub end_time: Vec<String>,
            pub id: Vec<String>,
            pub organization: Vec<String>,
            pub pipeline: Vec<String>,
            pub result: Vec<String>,
            pub run_summary: Vec<String>,
            pub start_time: Vec<String>,
            pub state: Vec<String>,
            pub type_: Vec<String>,
            pub commit_id: Vec<String>,
        }

        let mut intermediate_rep = IntermediateRep::default();

        // Parse into intermediate representation
        let mut string_iter = s.split(',').into_iter();
        let mut key_result = string_iter.next();

        while key_result.is_some() {
            let val = match string_iter.next() {
                Some(x) => x,
                None => return std::result::Result::Err("Missing value while parsing PipelineRun".to_string())
            };

            if let Some(key) = key_result {
                match key {
                    "_class" => intermediate_rep._class.push(<String as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "artifacts" => return std::result::Result::Err("Parsing a container in this style is not supported in PipelineRun".to_string()),
                    "durationInMillis" => intermediate_rep.duration_in_millis.push(<isize as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "estimatedDurationInMillis" => intermediate_rep.estimated_duration_in_millis.push(<isize as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "enQueueTime" => intermediate_rep.en_queue_time.push(<String as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "endTime" => intermediate_rep.end_time.push(<String as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "id" => intermediate_rep.id.push(<String as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "organization" => intermediate_rep.organization.push(<String as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "pipeline" => intermediate_rep.pipeline.push(<String as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "result" => intermediate_rep.result.push(<String as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "runSummary" => intermediate_rep.run_summary.push(<String as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "startTime" => intermediate_rep.start_time.push(<String as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "state" => intermediate_rep.state.push(<String as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "type" => intermediate_rep.type_.push(<String as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "commitId" => intermediate_rep.commit_id.push(<String as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    _ => return std::result::Result::Err("Unexpected key while parsing PipelineRun".to_string())
                }
            }

            // Get the next key
            key_result = string_iter.next();
        }

        // Use the intermediate representation to return the struct
        std::result::Result::Ok(PipelineRun {
            _class: intermediate_rep._class.into_iter().next(),
            artifacts: intermediate_rep.artifacts.into_iter().next(),
            duration_in_millis: intermediate_rep.duration_in_millis.into_iter().next(),
            estimated_duration_in_millis: intermediate_rep.estimated_duration_in_millis.into_iter().next(),
            en_queue_time: intermediate_rep.en_queue_time.into_iter().next(),
            end_time: intermediate_rep.end_time.into_iter().next(),
            id: intermediate_rep.id.into_iter().next(),
            organization: intermediate_rep.organization.into_iter().next(),
            pipeline: intermediate_rep.pipeline.into_iter().next(),
            result: intermediate_rep.result.into_iter().next(),
            run_summary: intermediate_rep.run_summary.into_iter().next(),
            start_time: intermediate_rep.start_time.into_iter().next(),
            state: intermediate_rep.state.into_iter().next(),
            type_: intermediate_rep.type_.into_iter().next(),
            commit_id: intermediate_rep.commit_id.into_iter().next(),
        })
    }
}

// Methods for converting between header::IntoHeaderValue<PipelineRun> and hyper::header::HeaderValue

#[cfg(any(feature = "client", feature = "server"))]
impl std::convert::TryFrom<header::IntoHeaderValue<PipelineRun>> for hyper::header::HeaderValue {
    type Error = String;

    fn try_from(hdr_value: header::IntoHeaderValue<PipelineRun>) -> std::result::Result<Self, Self::Error> {
        let hdr_value = hdr_value.to_string();
        match hyper::header::HeaderValue::from_str(&hdr_value) {
             std::result::Result::Ok(value) => std::result::Result::Ok(value),
             std::result::Result::Err(e) => std::result::Result::Err(
                 format!("Invalid header value for PipelineRun - value: {} is invalid {}",
                     hdr_value, e))
        }
    }
}

#[cfg(any(feature = "client", feature = "server"))]
impl std::convert::TryFrom<hyper::header::HeaderValue> for header::IntoHeaderValue<PipelineRun> {
    type Error = String;

    fn try_from(hdr_value: hyper::header::HeaderValue) -> std::result::Result<Self, Self::Error> {
        match hdr_value.to_str() {
             std::result::Result::Ok(value) => {
                    match <PipelineRun as std::str::FromStr>::from_str(value) {
                        std::result::Result::Ok(value) => std::result::Result::Ok(header::IntoHeaderValue(value)),
                        std::result::Result::Err(err) => std::result::Result::Err(
                            format!("Unable to convert header value '{}' into PipelineRun - {}",
                                value, err))
                    }
             },
             std::result::Result::Err(e) => std::result::Result::Err(
                 format!("Unable to convert header: {:?} to string: {}",
                     hdr_value, e))
        }
    }
}


impl PipelineRun {
    /// Helper function to allow us to convert this model to an XML string.
    /// Will panic if serialisation fails.
    #[allow(dead_code)]
    pub(crate) fn to_xml(&self) -> String {
        serde_xml_rs::to_string(&self).expect("impossible to fail to serialize")
    }
}

#[derive(Debug, Clone, PartialEq, serde::Serialize, serde::Deserialize)]
#[cfg_attr(feature = "conversion", derive(frunk::LabelledGeneric))]
pub struct PipelineRunImpl {
    #[serde(rename = "_class")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub _class: Option<String>,

    #[serde(rename = "_links")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub _links: Option<models::PipelineRunImpllinks>,

    #[serde(rename = "durationInMillis")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub duration_in_millis: Option<isize>,

    #[serde(rename = "enQueueTime")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub en_queue_time: Option<String>,

    #[serde(rename = "endTime")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub end_time: Option<String>,

    #[serde(rename = "estimatedDurationInMillis")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub estimated_duration_in_millis: Option<isize>,

    #[serde(rename = "id")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub id: Option<String>,

    #[serde(rename = "organization")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub organization: Option<String>,

    #[serde(rename = "pipeline")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub pipeline: Option<String>,

    #[serde(rename = "result")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub result: Option<String>,

    #[serde(rename = "runSummary")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub run_summary: Option<String>,

    #[serde(rename = "startTime")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub start_time: Option<String>,

    #[serde(rename = "state")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub state: Option<String>,

    #[serde(rename = "type")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub type_: Option<String>,

    #[serde(rename = "commitId")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub commit_id: Option<String>,

}

impl PipelineRunImpl {
    pub fn new() -> PipelineRunImpl {
        PipelineRunImpl {
            _class: None,
            _links: None,
            duration_in_millis: None,
            en_queue_time: None,
            end_time: None,
            estimated_duration_in_millis: None,
            id: None,
            organization: None,
            pipeline: None,
            result: None,
            run_summary: None,
            start_time: None,
            state: None,
            type_: None,
            commit_id: None,
        }
    }
}

/// Converts the PipelineRunImpl value to the Query Parameters representation (style=form, explode=false)
/// specified in https://swagger.io/docs/specification/serialization/
/// Should be implemented in a serde serializer
impl std::string::ToString for PipelineRunImpl {
    fn to_string(&self) -> String {
        let mut params: Vec<String> = vec![];

        if let Some(ref _class) = self._class {
            params.push("_class".to_string());
            params.push(_class.to_string());
        }

        // Skipping _links in query parameter serialization


        if let Some(ref duration_in_millis) = self.duration_in_millis {
            params.push("durationInMillis".to_string());
            params.push(duration_in_millis.to_string());
        }


        if let Some(ref en_queue_time) = self.en_queue_time {
            params.push("enQueueTime".to_string());
            params.push(en_queue_time.to_string());
        }


        if let Some(ref end_time) = self.end_time {
            params.push("endTime".to_string());
            params.push(end_time.to_string());
        }


        if let Some(ref estimated_duration_in_millis) = self.estimated_duration_in_millis {
            params.push("estimatedDurationInMillis".to_string());
            params.push(estimated_duration_in_millis.to_string());
        }


        if let Some(ref id) = self.id {
            params.push("id".to_string());
            params.push(id.to_string());
        }


        if let Some(ref organization) = self.organization {
            params.push("organization".to_string());
            params.push(organization.to_string());
        }


        if let Some(ref pipeline) = self.pipeline {
            params.push("pipeline".to_string());
            params.push(pipeline.to_string());
        }


        if let Some(ref result) = self.result {
            params.push("result".to_string());
            params.push(result.to_string());
        }


        if let Some(ref run_summary) = self.run_summary {
            params.push("runSummary".to_string());
            params.push(run_summary.to_string());
        }


        if let Some(ref start_time) = self.start_time {
            params.push("startTime".to_string());
            params.push(start_time.to_string());
        }


        if let Some(ref state) = self.state {
            params.push("state".to_string());
            params.push(state.to_string());
        }


        if let Some(ref type_) = self.type_ {
            params.push("type".to_string());
            params.push(type_.to_string());
        }


        if let Some(ref commit_id) = self.commit_id {
            params.push("commitId".to_string());
            params.push(commit_id.to_string());
        }

        params.join(",").to_string()
    }
}

/// Converts Query Parameters representation (style=form, explode=false) to a PipelineRunImpl value
/// as specified in https://swagger.io/docs/specification/serialization/
/// Should be implemented in a serde deserializer
impl std::str::FromStr for PipelineRunImpl {
    type Err = String;

    fn from_str(s: &str) -> std::result::Result<Self, Self::Err> {
        #[derive(Default)]
        // An intermediate representation of the struct to use for parsing.
        struct IntermediateRep {
            pub _class: Vec<String>,
            pub _links: Vec<models::PipelineRunImpllinks>,
            pub duration_in_millis: Vec<isize>,
            pub en_queue_time: Vec<String>,
            pub end_time: Vec<String>,
            pub estimated_duration_in_millis: Vec<isize>,
            pub id: Vec<String>,
            pub organization: Vec<String>,
            pub pipeline: Vec<String>,
            pub result: Vec<String>,
            pub run_summary: Vec<String>,
            pub start_time: Vec<String>,
            pub state: Vec<String>,
            pub type_: Vec<String>,
            pub commit_id: Vec<String>,
        }

        let mut intermediate_rep = IntermediateRep::default();

        // Parse into intermediate representation
        let mut string_iter = s.split(',').into_iter();
        let mut key_result = string_iter.next();

        while key_result.is_some() {
            let val = match string_iter.next() {
                Some(x) => x,
                None => return std::result::Result::Err("Missing value while parsing PipelineRunImpl".to_string())
            };

            if let Some(key) = key_result {
                match key {
                    "_class" => intermediate_rep._class.push(<String as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "_links" => intermediate_rep._links.push(<models::PipelineRunImpllinks as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "durationInMillis" => intermediate_rep.duration_in_millis.push(<isize as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "enQueueTime" => intermediate_rep.en_queue_time.push(<String as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "endTime" => intermediate_rep.end_time.push(<String as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "estimatedDurationInMillis" => intermediate_rep.estimated_duration_in_millis.push(<isize as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "id" => intermediate_rep.id.push(<String as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "organization" => intermediate_rep.organization.push(<String as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "pipeline" => intermediate_rep.pipeline.push(<String as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "result" => intermediate_rep.result.push(<String as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "runSummary" => intermediate_rep.run_summary.push(<String as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "startTime" => intermediate_rep.start_time.push(<String as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "state" => intermediate_rep.state.push(<String as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "type" => intermediate_rep.type_.push(<String as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "commitId" => intermediate_rep.commit_id.push(<String as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    _ => return std::result::Result::Err("Unexpected key while parsing PipelineRunImpl".to_string())
                }
            }

            // Get the next key
            key_result = string_iter.next();
        }

        // Use the intermediate representation to return the struct
        std::result::Result::Ok(PipelineRunImpl {
            _class: intermediate_rep._class.into_iter().next(),
            _links: intermediate_rep._links.into_iter().next(),
            duration_in_millis: intermediate_rep.duration_in_millis.into_iter().next(),
            en_queue_time: intermediate_rep.en_queue_time.into_iter().next(),
            end_time: intermediate_rep.end_time.into_iter().next(),
            estimated_duration_in_millis: intermediate_rep.estimated_duration_in_millis.into_iter().next(),
            id: intermediate_rep.id.into_iter().next(),
            organization: intermediate_rep.organization.into_iter().next(),
            pipeline: intermediate_rep.pipeline.into_iter().next(),
            result: intermediate_rep.result.into_iter().next(),
            run_summary: intermediate_rep.run_summary.into_iter().next(),
            start_time: intermediate_rep.start_time.into_iter().next(),
            state: intermediate_rep.state.into_iter().next(),
            type_: intermediate_rep.type_.into_iter().next(),
            commit_id: intermediate_rep.commit_id.into_iter().next(),
        })
    }
}

// Methods for converting between header::IntoHeaderValue<PipelineRunImpl> and hyper::header::HeaderValue

#[cfg(any(feature = "client", feature = "server"))]
impl std::convert::TryFrom<header::IntoHeaderValue<PipelineRunImpl>> for hyper::header::HeaderValue {
    type Error = String;

    fn try_from(hdr_value: header::IntoHeaderValue<PipelineRunImpl>) -> std::result::Result<Self, Self::Error> {
        let hdr_value = hdr_value.to_string();
        match hyper::header::HeaderValue::from_str(&hdr_value) {
             std::result::Result::Ok(value) => std::result::Result::Ok(value),
             std::result::Result::Err(e) => std::result::Result::Err(
                 format!("Invalid header value for PipelineRunImpl - value: {} is invalid {}",
                     hdr_value, e))
        }
    }
}

#[cfg(any(feature = "client", feature = "server"))]
impl std::convert::TryFrom<hyper::header::HeaderValue> for header::IntoHeaderValue<PipelineRunImpl> {
    type Error = String;

    fn try_from(hdr_value: hyper::header::HeaderValue) -> std::result::Result<Self, Self::Error> {
        match hdr_value.to_str() {
             std::result::Result::Ok(value) => {
                    match <PipelineRunImpl as std::str::FromStr>::from_str(value) {
                        std::result::Result::Ok(value) => std::result::Result::Ok(header::IntoHeaderValue(value)),
                        std::result::Result::Err(err) => std::result::Result::Err(
                            format!("Unable to convert header value '{}' into PipelineRunImpl - {}",
                                value, err))
                    }
             },
             std::result::Result::Err(e) => std::result::Result::Err(
                 format!("Unable to convert header: {:?} to string: {}",
                     hdr_value, e))
        }
    }
}


impl PipelineRunImpl {
    /// Helper function to allow us to convert this model to an XML string.
    /// Will panic if serialisation fails.
    #[allow(dead_code)]
    pub(crate) fn to_xml(&self) -> String {
        serde_xml_rs::to_string(&self).expect("impossible to fail to serialize")
    }
}

#[derive(Debug, Clone, PartialEq, serde::Serialize, serde::Deserialize)]
#[cfg_attr(feature = "conversion", derive(frunk::LabelledGeneric))]
pub struct PipelineRunImpllinks {
    #[serde(rename = "nodes")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub nodes: Option<models::Link>,

    #[serde(rename = "log")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub log: Option<models::Link>,

    #[serde(rename = "self")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub self_: Option<models::Link>,

    #[serde(rename = "actions")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub actions: Option<models::Link>,

    #[serde(rename = "steps")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub steps: Option<models::Link>,

    #[serde(rename = "_class")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub _class: Option<String>,

}

impl PipelineRunImpllinks {
    pub fn new() -> PipelineRunImpllinks {
        PipelineRunImpllinks {
            nodes: None,
            log: None,
            self_: None,
            actions: None,
            steps: None,
            _class: None,
        }
    }
}

/// Converts the PipelineRunImpllinks value to the Query Parameters representation (style=form, explode=false)
/// specified in https://swagger.io/docs/specification/serialization/
/// Should be implemented in a serde serializer
impl std::string::ToString for PipelineRunImpllinks {
    fn to_string(&self) -> String {
        let mut params: Vec<String> = vec![];
        // Skipping nodes in query parameter serialization

        // Skipping log in query parameter serialization

        // Skipping self in query parameter serialization

        // Skipping actions in query parameter serialization

        // Skipping steps in query parameter serialization


        if let Some(ref _class) = self._class {
            params.push("_class".to_string());
            params.push(_class.to_string());
        }

        params.join(",").to_string()
    }
}

/// Converts Query Parameters representation (style=form, explode=false) to a PipelineRunImpllinks value
/// as specified in https://swagger.io/docs/specification/serialization/
/// Should be implemented in a serde deserializer
impl std::str::FromStr for PipelineRunImpllinks {
    type Err = String;

    fn from_str(s: &str) -> std::result::Result<Self, Self::Err> {
        #[derive(Default)]
        // An intermediate representation of the struct to use for parsing.
        struct IntermediateRep {
            pub nodes: Vec<models::Link>,
            pub log: Vec<models::Link>,
            pub self_: Vec<models::Link>,
            pub actions: Vec<models::Link>,
            pub steps: Vec<models::Link>,
            pub _class: Vec<String>,
        }

        let mut intermediate_rep = IntermediateRep::default();

        // Parse into intermediate representation
        let mut string_iter = s.split(',').into_iter();
        let mut key_result = string_iter.next();

        while key_result.is_some() {
            let val = match string_iter.next() {
                Some(x) => x,
                None => return std::result::Result::Err("Missing value while parsing PipelineRunImpllinks".to_string())
            };

            if let Some(key) = key_result {
                match key {
                    "nodes" => intermediate_rep.nodes.push(<models::Link as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "log" => intermediate_rep.log.push(<models::Link as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "self" => intermediate_rep.self_.push(<models::Link as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "actions" => intermediate_rep.actions.push(<models::Link as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "steps" => intermediate_rep.steps.push(<models::Link as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "_class" => intermediate_rep._class.push(<String as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    _ => return std::result::Result::Err("Unexpected key while parsing PipelineRunImpllinks".to_string())
                }
            }

            // Get the next key
            key_result = string_iter.next();
        }

        // Use the intermediate representation to return the struct
        std::result::Result::Ok(PipelineRunImpllinks {
            nodes: intermediate_rep.nodes.into_iter().next(),
            log: intermediate_rep.log.into_iter().next(),
            self_: intermediate_rep.self_.into_iter().next(),
            actions: intermediate_rep.actions.into_iter().next(),
            steps: intermediate_rep.steps.into_iter().next(),
            _class: intermediate_rep._class.into_iter().next(),
        })
    }
}

// Methods for converting between header::IntoHeaderValue<PipelineRunImpllinks> and hyper::header::HeaderValue

#[cfg(any(feature = "client", feature = "server"))]
impl std::convert::TryFrom<header::IntoHeaderValue<PipelineRunImpllinks>> for hyper::header::HeaderValue {
    type Error = String;

    fn try_from(hdr_value: header::IntoHeaderValue<PipelineRunImpllinks>) -> std::result::Result<Self, Self::Error> {
        let hdr_value = hdr_value.to_string();
        match hyper::header::HeaderValue::from_str(&hdr_value) {
             std::result::Result::Ok(value) => std::result::Result::Ok(value),
             std::result::Result::Err(e) => std::result::Result::Err(
                 format!("Invalid header value for PipelineRunImpllinks - value: {} is invalid {}",
                     hdr_value, e))
        }
    }
}

#[cfg(any(feature = "client", feature = "server"))]
impl std::convert::TryFrom<hyper::header::HeaderValue> for header::IntoHeaderValue<PipelineRunImpllinks> {
    type Error = String;

    fn try_from(hdr_value: hyper::header::HeaderValue) -> std::result::Result<Self, Self::Error> {
        match hdr_value.to_str() {
             std::result::Result::Ok(value) => {
                    match <PipelineRunImpllinks as std::str::FromStr>::from_str(value) {
                        std::result::Result::Ok(value) => std::result::Result::Ok(header::IntoHeaderValue(value)),
                        std::result::Result::Err(err) => std::result::Result::Err(
                            format!("Unable to convert header value '{}' into PipelineRunImpllinks - {}",
                                value, err))
                    }
             },
             std::result::Result::Err(e) => std::result::Result::Err(
                 format!("Unable to convert header: {:?} to string: {}",
                     hdr_value, e))
        }
    }
}


impl PipelineRunImpllinks {
    /// Helper function to allow us to convert this model to an XML string.
    /// Will panic if serialisation fails.
    #[allow(dead_code)]
    pub(crate) fn to_xml(&self) -> String {
        serde_xml_rs::to_string(&self).expect("impossible to fail to serialize")
    }
}

#[derive(Debug, Clone, PartialEq, serde::Serialize, serde::Deserialize)]
#[cfg_attr(feature = "conversion", derive(frunk::LabelledGeneric))]
pub struct PipelineRunNode {
    #[serde(rename = "_class")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub _class: Option<String>,

    #[serde(rename = "displayName")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub display_name: Option<String>,

    #[serde(rename = "durationInMillis")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub duration_in_millis: Option<isize>,

    #[serde(rename = "edges")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub edges: Option<Vec<models::PipelineRunNodeedges>>,

    #[serde(rename = "id")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub id: Option<String>,

    #[serde(rename = "result")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub result: Option<String>,

    #[serde(rename = "startTime")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub start_time: Option<String>,

    #[serde(rename = "state")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub state: Option<String>,

}

impl PipelineRunNode {
    pub fn new() -> PipelineRunNode {
        PipelineRunNode {
            _class: None,
            display_name: None,
            duration_in_millis: None,
            edges: None,
            id: None,
            result: None,
            start_time: None,
            state: None,
        }
    }
}

/// Converts the PipelineRunNode value to the Query Parameters representation (style=form, explode=false)
/// specified in https://swagger.io/docs/specification/serialization/
/// Should be implemented in a serde serializer
impl std::string::ToString for PipelineRunNode {
    fn to_string(&self) -> String {
        let mut params: Vec<String> = vec![];

        if let Some(ref _class) = self._class {
            params.push("_class".to_string());
            params.push(_class.to_string());
        }


        if let Some(ref display_name) = self.display_name {
            params.push("displayName".to_string());
            params.push(display_name.to_string());
        }


        if let Some(ref duration_in_millis) = self.duration_in_millis {
            params.push("durationInMillis".to_string());
            params.push(duration_in_millis.to_string());
        }

        // Skipping edges in query parameter serialization


        if let Some(ref id) = self.id {
            params.push("id".to_string());
            params.push(id.to_string());
        }


        if let Some(ref result) = self.result {
            params.push("result".to_string());
            params.push(result.to_string());
        }


        if let Some(ref start_time) = self.start_time {
            params.push("startTime".to_string());
            params.push(start_time.to_string());
        }


        if let Some(ref state) = self.state {
            params.push("state".to_string());
            params.push(state.to_string());
        }

        params.join(",").to_string()
    }
}

/// Converts Query Parameters representation (style=form, explode=false) to a PipelineRunNode value
/// as specified in https://swagger.io/docs/specification/serialization/
/// Should be implemented in a serde deserializer
impl std::str::FromStr for PipelineRunNode {
    type Err = String;

    fn from_str(s: &str) -> std::result::Result<Self, Self::Err> {
        #[derive(Default)]
        // An intermediate representation of the struct to use for parsing.
        struct IntermediateRep {
            pub _class: Vec<String>,
            pub display_name: Vec<String>,
            pub duration_in_millis: Vec<isize>,
            pub edges: Vec<Vec<models::PipelineRunNodeedges>>,
            pub id: Vec<String>,
            pub result: Vec<String>,
            pub start_time: Vec<String>,
            pub state: Vec<String>,
        }

        let mut intermediate_rep = IntermediateRep::default();

        // Parse into intermediate representation
        let mut string_iter = s.split(',').into_iter();
        let mut key_result = string_iter.next();

        while key_result.is_some() {
            let val = match string_iter.next() {
                Some(x) => x,
                None => return std::result::Result::Err("Missing value while parsing PipelineRunNode".to_string())
            };

            if let Some(key) = key_result {
                match key {
                    "_class" => intermediate_rep._class.push(<String as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "displayName" => intermediate_rep.display_name.push(<String as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "durationInMillis" => intermediate_rep.duration_in_millis.push(<isize as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "edges" => return std::result::Result::Err("Parsing a container in this style is not supported in PipelineRunNode".to_string()),
                    "id" => intermediate_rep.id.push(<String as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "result" => intermediate_rep.result.push(<String as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "startTime" => intermediate_rep.start_time.push(<String as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "state" => intermediate_rep.state.push(<String as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    _ => return std::result::Result::Err("Unexpected key while parsing PipelineRunNode".to_string())
                }
            }

            // Get the next key
            key_result = string_iter.next();
        }

        // Use the intermediate representation to return the struct
        std::result::Result::Ok(PipelineRunNode {
            _class: intermediate_rep._class.into_iter().next(),
            display_name: intermediate_rep.display_name.into_iter().next(),
            duration_in_millis: intermediate_rep.duration_in_millis.into_iter().next(),
            edges: intermediate_rep.edges.into_iter().next(),
            id: intermediate_rep.id.into_iter().next(),
            result: intermediate_rep.result.into_iter().next(),
            start_time: intermediate_rep.start_time.into_iter().next(),
            state: intermediate_rep.state.into_iter().next(),
        })
    }
}

// Methods for converting between header::IntoHeaderValue<PipelineRunNode> and hyper::header::HeaderValue

#[cfg(any(feature = "client", feature = "server"))]
impl std::convert::TryFrom<header::IntoHeaderValue<PipelineRunNode>> for hyper::header::HeaderValue {
    type Error = String;

    fn try_from(hdr_value: header::IntoHeaderValue<PipelineRunNode>) -> std::result::Result<Self, Self::Error> {
        let hdr_value = hdr_value.to_string();
        match hyper::header::HeaderValue::from_str(&hdr_value) {
             std::result::Result::Ok(value) => std::result::Result::Ok(value),
             std::result::Result::Err(e) => std::result::Result::Err(
                 format!("Invalid header value for PipelineRunNode - value: {} is invalid {}",
                     hdr_value, e))
        }
    }
}

#[cfg(any(feature = "client", feature = "server"))]
impl std::convert::TryFrom<hyper::header::HeaderValue> for header::IntoHeaderValue<PipelineRunNode> {
    type Error = String;

    fn try_from(hdr_value: hyper::header::HeaderValue) -> std::result::Result<Self, Self::Error> {
        match hdr_value.to_str() {
             std::result::Result::Ok(value) => {
                    match <PipelineRunNode as std::str::FromStr>::from_str(value) {
                        std::result::Result::Ok(value) => std::result::Result::Ok(header::IntoHeaderValue(value)),
                        std::result::Result::Err(err) => std::result::Result::Err(
                            format!("Unable to convert header value '{}' into PipelineRunNode - {}",
                                value, err))
                    }
             },
             std::result::Result::Err(e) => std::result::Result::Err(
                 format!("Unable to convert header: {:?} to string: {}",
                     hdr_value, e))
        }
    }
}


impl PipelineRunNode {
    /// Helper function to allow us to convert this model to an XML string.
    /// Will panic if serialisation fails.
    #[allow(dead_code)]
    pub(crate) fn to_xml(&self) -> String {
        serde_xml_rs::to_string(&self).expect("impossible to fail to serialize")
    }
}

#[derive(Debug, Clone, PartialEq, serde::Serialize, serde::Deserialize)]
#[cfg_attr(feature = "conversion", derive(frunk::LabelledGeneric))]
pub struct PipelineRunNodeedges {
    #[serde(rename = "id")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub id: Option<String>,

    #[serde(rename = "_class")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub _class: Option<String>,

}

impl PipelineRunNodeedges {
    pub fn new() -> PipelineRunNodeedges {
        PipelineRunNodeedges {
            id: None,
            _class: None,
        }
    }
}

/// Converts the PipelineRunNodeedges value to the Query Parameters representation (style=form, explode=false)
/// specified in https://swagger.io/docs/specification/serialization/
/// Should be implemented in a serde serializer
impl std::string::ToString for PipelineRunNodeedges {
    fn to_string(&self) -> String {
        let mut params: Vec<String> = vec![];

        if let Some(ref id) = self.id {
            params.push("id".to_string());
            params.push(id.to_string());
        }


        if let Some(ref _class) = self._class {
            params.push("_class".to_string());
            params.push(_class.to_string());
        }

        params.join(",").to_string()
    }
}

/// Converts Query Parameters representation (style=form, explode=false) to a PipelineRunNodeedges value
/// as specified in https://swagger.io/docs/specification/serialization/
/// Should be implemented in a serde deserializer
impl std::str::FromStr for PipelineRunNodeedges {
    type Err = String;

    fn from_str(s: &str) -> std::result::Result<Self, Self::Err> {
        #[derive(Default)]
        // An intermediate representation of the struct to use for parsing.
        struct IntermediateRep {
            pub id: Vec<String>,
            pub _class: Vec<String>,
        }

        let mut intermediate_rep = IntermediateRep::default();

        // Parse into intermediate representation
        let mut string_iter = s.split(',').into_iter();
        let mut key_result = string_iter.next();

        while key_result.is_some() {
            let val = match string_iter.next() {
                Some(x) => x,
                None => return std::result::Result::Err("Missing value while parsing PipelineRunNodeedges".to_string())
            };

            if let Some(key) = key_result {
                match key {
                    "id" => intermediate_rep.id.push(<String as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "_class" => intermediate_rep._class.push(<String as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    _ => return std::result::Result::Err("Unexpected key while parsing PipelineRunNodeedges".to_string())
                }
            }

            // Get the next key
            key_result = string_iter.next();
        }

        // Use the intermediate representation to return the struct
        std::result::Result::Ok(PipelineRunNodeedges {
            id: intermediate_rep.id.into_iter().next(),
            _class: intermediate_rep._class.into_iter().next(),
        })
    }
}

// Methods for converting between header::IntoHeaderValue<PipelineRunNodeedges> and hyper::header::HeaderValue

#[cfg(any(feature = "client", feature = "server"))]
impl std::convert::TryFrom<header::IntoHeaderValue<PipelineRunNodeedges>> for hyper::header::HeaderValue {
    type Error = String;

    fn try_from(hdr_value: header::IntoHeaderValue<PipelineRunNodeedges>) -> std::result::Result<Self, Self::Error> {
        let hdr_value = hdr_value.to_string();
        match hyper::header::HeaderValue::from_str(&hdr_value) {
             std::result::Result::Ok(value) => std::result::Result::Ok(value),
             std::result::Result::Err(e) => std::result::Result::Err(
                 format!("Invalid header value for PipelineRunNodeedges - value: {} is invalid {}",
                     hdr_value, e))
        }
    }
}

#[cfg(any(feature = "client", feature = "server"))]
impl std::convert::TryFrom<hyper::header::HeaderValue> for header::IntoHeaderValue<PipelineRunNodeedges> {
    type Error = String;

    fn try_from(hdr_value: hyper::header::HeaderValue) -> std::result::Result<Self, Self::Error> {
        match hdr_value.to_str() {
             std::result::Result::Ok(value) => {
                    match <PipelineRunNodeedges as std::str::FromStr>::from_str(value) {
                        std::result::Result::Ok(value) => std::result::Result::Ok(header::IntoHeaderValue(value)),
                        std::result::Result::Err(err) => std::result::Result::Err(
                            format!("Unable to convert header value '{}' into PipelineRunNodeedges - {}",
                                value, err))
                    }
             },
             std::result::Result::Err(e) => std::result::Result::Err(
                 format!("Unable to convert header: {:?} to string: {}",
                     hdr_value, e))
        }
    }
}


impl PipelineRunNodeedges {
    /// Helper function to allow us to convert this model to an XML string.
    /// Will panic if serialisation fails.
    #[allow(dead_code)]
    pub(crate) fn to_xml(&self) -> String {
        serde_xml_rs::to_string(&self).expect("impossible to fail to serialize")
    }
}

#[derive(Debug, Clone, PartialEq, serde::Serialize, serde::Deserialize)]
#[cfg_attr(feature = "conversion", derive(frunk::LabelledGeneric))]
pub struct PipelineRunartifacts {
    #[serde(rename = "name")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub name: Option<String>,

    #[serde(rename = "size")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub size: Option<isize>,

    #[serde(rename = "url")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub url: Option<String>,

    #[serde(rename = "_class")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub _class: Option<String>,

}

impl PipelineRunartifacts {
    pub fn new() -> PipelineRunartifacts {
        PipelineRunartifacts {
            name: None,
            size: None,
            url: None,
            _class: None,
        }
    }
}

/// Converts the PipelineRunartifacts value to the Query Parameters representation (style=form, explode=false)
/// specified in https://swagger.io/docs/specification/serialization/
/// Should be implemented in a serde serializer
impl std::string::ToString for PipelineRunartifacts {
    fn to_string(&self) -> String {
        let mut params: Vec<String> = vec![];

        if let Some(ref name) = self.name {
            params.push("name".to_string());
            params.push(name.to_string());
        }


        if let Some(ref size) = self.size {
            params.push("size".to_string());
            params.push(size.to_string());
        }


        if let Some(ref url) = self.url {
            params.push("url".to_string());
            params.push(url.to_string());
        }


        if let Some(ref _class) = self._class {
            params.push("_class".to_string());
            params.push(_class.to_string());
        }

        params.join(",").to_string()
    }
}

/// Converts Query Parameters representation (style=form, explode=false) to a PipelineRunartifacts value
/// as specified in https://swagger.io/docs/specification/serialization/
/// Should be implemented in a serde deserializer
impl std::str::FromStr for PipelineRunartifacts {
    type Err = String;

    fn from_str(s: &str) -> std::result::Result<Self, Self::Err> {
        #[derive(Default)]
        // An intermediate representation of the struct to use for parsing.
        struct IntermediateRep {
            pub name: Vec<String>,
            pub size: Vec<isize>,
            pub url: Vec<String>,
            pub _class: Vec<String>,
        }

        let mut intermediate_rep = IntermediateRep::default();

        // Parse into intermediate representation
        let mut string_iter = s.split(',').into_iter();
        let mut key_result = string_iter.next();

        while key_result.is_some() {
            let val = match string_iter.next() {
                Some(x) => x,
                None => return std::result::Result::Err("Missing value while parsing PipelineRunartifacts".to_string())
            };

            if let Some(key) = key_result {
                match key {
                    "name" => intermediate_rep.name.push(<String as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "size" => intermediate_rep.size.push(<isize as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "url" => intermediate_rep.url.push(<String as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "_class" => intermediate_rep._class.push(<String as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    _ => return std::result::Result::Err("Unexpected key while parsing PipelineRunartifacts".to_string())
                }
            }

            // Get the next key
            key_result = string_iter.next();
        }

        // Use the intermediate representation to return the struct
        std::result::Result::Ok(PipelineRunartifacts {
            name: intermediate_rep.name.into_iter().next(),
            size: intermediate_rep.size.into_iter().next(),
            url: intermediate_rep.url.into_iter().next(),
            _class: intermediate_rep._class.into_iter().next(),
        })
    }
}

// Methods for converting between header::IntoHeaderValue<PipelineRunartifacts> and hyper::header::HeaderValue

#[cfg(any(feature = "client", feature = "server"))]
impl std::convert::TryFrom<header::IntoHeaderValue<PipelineRunartifacts>> for hyper::header::HeaderValue {
    type Error = String;

    fn try_from(hdr_value: header::IntoHeaderValue<PipelineRunartifacts>) -> std::result::Result<Self, Self::Error> {
        let hdr_value = hdr_value.to_string();
        match hyper::header::HeaderValue::from_str(&hdr_value) {
             std::result::Result::Ok(value) => std::result::Result::Ok(value),
             std::result::Result::Err(e) => std::result::Result::Err(
                 format!("Invalid header value for PipelineRunartifacts - value: {} is invalid {}",
                     hdr_value, e))
        }
    }
}

#[cfg(any(feature = "client", feature = "server"))]
impl std::convert::TryFrom<hyper::header::HeaderValue> for header::IntoHeaderValue<PipelineRunartifacts> {
    type Error = String;

    fn try_from(hdr_value: hyper::header::HeaderValue) -> std::result::Result<Self, Self::Error> {
        match hdr_value.to_str() {
             std::result::Result::Ok(value) => {
                    match <PipelineRunartifacts as std::str::FromStr>::from_str(value) {
                        std::result::Result::Ok(value) => std::result::Result::Ok(header::IntoHeaderValue(value)),
                        std::result::Result::Err(err) => std::result::Result::Err(
                            format!("Unable to convert header value '{}' into PipelineRunartifacts - {}",
                                value, err))
                    }
             },
             std::result::Result::Err(e) => std::result::Result::Err(
                 format!("Unable to convert header: {:?} to string: {}",
                     hdr_value, e))
        }
    }
}


impl PipelineRunartifacts {
    /// Helper function to allow us to convert this model to an XML string.
    /// Will panic if serialisation fails.
    #[allow(dead_code)]
    pub(crate) fn to_xml(&self) -> String {
        serde_xml_rs::to_string(&self).expect("impossible to fail to serialize")
    }
}

#[derive(Debug, Clone, PartialEq, serde::Serialize, serde::Deserialize)]
#[cfg_attr(feature = "conversion", derive(frunk::LabelledGeneric))]
pub struct PipelineStepImpl {
    #[serde(rename = "_class")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub _class: Option<String>,

    #[serde(rename = "_links")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub _links: Option<models::PipelineStepImpllinks>,

    #[serde(rename = "displayName")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub display_name: Option<String>,

    #[serde(rename = "durationInMillis")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub duration_in_millis: Option<isize>,

    #[serde(rename = "id")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub id: Option<String>,

    #[serde(rename = "input")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub input: Option<models::InputStepImpl>,

    #[serde(rename = "result")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub result: Option<String>,

    #[serde(rename = "startTime")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub start_time: Option<String>,

    #[serde(rename = "state")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub state: Option<String>,

}

impl PipelineStepImpl {
    pub fn new() -> PipelineStepImpl {
        PipelineStepImpl {
            _class: None,
            _links: None,
            display_name: None,
            duration_in_millis: None,
            id: None,
            input: None,
            result: None,
            start_time: None,
            state: None,
        }
    }
}

/// Converts the PipelineStepImpl value to the Query Parameters representation (style=form, explode=false)
/// specified in https://swagger.io/docs/specification/serialization/
/// Should be implemented in a serde serializer
impl std::string::ToString for PipelineStepImpl {
    fn to_string(&self) -> String {
        let mut params: Vec<String> = vec![];

        if let Some(ref _class) = self._class {
            params.push("_class".to_string());
            params.push(_class.to_string());
        }

        // Skipping _links in query parameter serialization


        if let Some(ref display_name) = self.display_name {
            params.push("displayName".to_string());
            params.push(display_name.to_string());
        }


        if let Some(ref duration_in_millis) = self.duration_in_millis {
            params.push("durationInMillis".to_string());
            params.push(duration_in_millis.to_string());
        }


        if let Some(ref id) = self.id {
            params.push("id".to_string());
            params.push(id.to_string());
        }

        // Skipping input in query parameter serialization


        if let Some(ref result) = self.result {
            params.push("result".to_string());
            params.push(result.to_string());
        }


        if let Some(ref start_time) = self.start_time {
            params.push("startTime".to_string());
            params.push(start_time.to_string());
        }


        if let Some(ref state) = self.state {
            params.push("state".to_string());
            params.push(state.to_string());
        }

        params.join(",").to_string()
    }
}

/// Converts Query Parameters representation (style=form, explode=false) to a PipelineStepImpl value
/// as specified in https://swagger.io/docs/specification/serialization/
/// Should be implemented in a serde deserializer
impl std::str::FromStr for PipelineStepImpl {
    type Err = String;

    fn from_str(s: &str) -> std::result::Result<Self, Self::Err> {
        #[derive(Default)]
        // An intermediate representation of the struct to use for parsing.
        struct IntermediateRep {
            pub _class: Vec<String>,
            pub _links: Vec<models::PipelineStepImpllinks>,
            pub display_name: Vec<String>,
            pub duration_in_millis: Vec<isize>,
            pub id: Vec<String>,
            pub input: Vec<models::InputStepImpl>,
            pub result: Vec<String>,
            pub start_time: Vec<String>,
            pub state: Vec<String>,
        }

        let mut intermediate_rep = IntermediateRep::default();

        // Parse into intermediate representation
        let mut string_iter = s.split(',').into_iter();
        let mut key_result = string_iter.next();

        while key_result.is_some() {
            let val = match string_iter.next() {
                Some(x) => x,
                None => return std::result::Result::Err("Missing value while parsing PipelineStepImpl".to_string())
            };

            if let Some(key) = key_result {
                match key {
                    "_class" => intermediate_rep._class.push(<String as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "_links" => intermediate_rep._links.push(<models::PipelineStepImpllinks as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "displayName" => intermediate_rep.display_name.push(<String as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "durationInMillis" => intermediate_rep.duration_in_millis.push(<isize as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "id" => intermediate_rep.id.push(<String as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "input" => intermediate_rep.input.push(<models::InputStepImpl as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "result" => intermediate_rep.result.push(<String as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "startTime" => intermediate_rep.start_time.push(<String as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "state" => intermediate_rep.state.push(<String as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    _ => return std::result::Result::Err("Unexpected key while parsing PipelineStepImpl".to_string())
                }
            }

            // Get the next key
            key_result = string_iter.next();
        }

        // Use the intermediate representation to return the struct
        std::result::Result::Ok(PipelineStepImpl {
            _class: intermediate_rep._class.into_iter().next(),
            _links: intermediate_rep._links.into_iter().next(),
            display_name: intermediate_rep.display_name.into_iter().next(),
            duration_in_millis: intermediate_rep.duration_in_millis.into_iter().next(),
            id: intermediate_rep.id.into_iter().next(),
            input: intermediate_rep.input.into_iter().next(),
            result: intermediate_rep.result.into_iter().next(),
            start_time: intermediate_rep.start_time.into_iter().next(),
            state: intermediate_rep.state.into_iter().next(),
        })
    }
}

// Methods for converting between header::IntoHeaderValue<PipelineStepImpl> and hyper::header::HeaderValue

#[cfg(any(feature = "client", feature = "server"))]
impl std::convert::TryFrom<header::IntoHeaderValue<PipelineStepImpl>> for hyper::header::HeaderValue {
    type Error = String;

    fn try_from(hdr_value: header::IntoHeaderValue<PipelineStepImpl>) -> std::result::Result<Self, Self::Error> {
        let hdr_value = hdr_value.to_string();
        match hyper::header::HeaderValue::from_str(&hdr_value) {
             std::result::Result::Ok(value) => std::result::Result::Ok(value),
             std::result::Result::Err(e) => std::result::Result::Err(
                 format!("Invalid header value for PipelineStepImpl - value: {} is invalid {}",
                     hdr_value, e))
        }
    }
}

#[cfg(any(feature = "client", feature = "server"))]
impl std::convert::TryFrom<hyper::header::HeaderValue> for header::IntoHeaderValue<PipelineStepImpl> {
    type Error = String;

    fn try_from(hdr_value: hyper::header::HeaderValue) -> std::result::Result<Self, Self::Error> {
        match hdr_value.to_str() {
             std::result::Result::Ok(value) => {
                    match <PipelineStepImpl as std::str::FromStr>::from_str(value) {
                        std::result::Result::Ok(value) => std::result::Result::Ok(header::IntoHeaderValue(value)),
                        std::result::Result::Err(err) => std::result::Result::Err(
                            format!("Unable to convert header value '{}' into PipelineStepImpl - {}",
                                value, err))
                    }
             },
             std::result::Result::Err(e) => std::result::Result::Err(
                 format!("Unable to convert header: {:?} to string: {}",
                     hdr_value, e))
        }
    }
}


impl PipelineStepImpl {
    /// Helper function to allow us to convert this model to an XML string.
    /// Will panic if serialisation fails.
    #[allow(dead_code)]
    pub(crate) fn to_xml(&self) -> String {
        serde_xml_rs::to_string(&self).expect("impossible to fail to serialize")
    }
}

#[derive(Debug, Clone, PartialEq, serde::Serialize, serde::Deserialize)]
#[cfg_attr(feature = "conversion", derive(frunk::LabelledGeneric))]
pub struct PipelineStepImpllinks {
    #[serde(rename = "self")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub self_: Option<models::Link>,

    #[serde(rename = "actions")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub actions: Option<models::Link>,

    #[serde(rename = "_class")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub _class: Option<String>,

}

impl PipelineStepImpllinks {
    pub fn new() -> PipelineStepImpllinks {
        PipelineStepImpllinks {
            self_: None,
            actions: None,
            _class: None,
        }
    }
}

/// Converts the PipelineStepImpllinks value to the Query Parameters representation (style=form, explode=false)
/// specified in https://swagger.io/docs/specification/serialization/
/// Should be implemented in a serde serializer
impl std::string::ToString for PipelineStepImpllinks {
    fn to_string(&self) -> String {
        let mut params: Vec<String> = vec![];
        // Skipping self in query parameter serialization

        // Skipping actions in query parameter serialization


        if let Some(ref _class) = self._class {
            params.push("_class".to_string());
            params.push(_class.to_string());
        }

        params.join(",").to_string()
    }
}

/// Converts Query Parameters representation (style=form, explode=false) to a PipelineStepImpllinks value
/// as specified in https://swagger.io/docs/specification/serialization/
/// Should be implemented in a serde deserializer
impl std::str::FromStr for PipelineStepImpllinks {
    type Err = String;

    fn from_str(s: &str) -> std::result::Result<Self, Self::Err> {
        #[derive(Default)]
        // An intermediate representation of the struct to use for parsing.
        struct IntermediateRep {
            pub self_: Vec<models::Link>,
            pub actions: Vec<models::Link>,
            pub _class: Vec<String>,
        }

        let mut intermediate_rep = IntermediateRep::default();

        // Parse into intermediate representation
        let mut string_iter = s.split(',').into_iter();
        let mut key_result = string_iter.next();

        while key_result.is_some() {
            let val = match string_iter.next() {
                Some(x) => x,
                None => return std::result::Result::Err("Missing value while parsing PipelineStepImpllinks".to_string())
            };

            if let Some(key) = key_result {
                match key {
                    "self" => intermediate_rep.self_.push(<models::Link as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "actions" => intermediate_rep.actions.push(<models::Link as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "_class" => intermediate_rep._class.push(<String as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    _ => return std::result::Result::Err("Unexpected key while parsing PipelineStepImpllinks".to_string())
                }
            }

            // Get the next key
            key_result = string_iter.next();
        }

        // Use the intermediate representation to return the struct
        std::result::Result::Ok(PipelineStepImpllinks {
            self_: intermediate_rep.self_.into_iter().next(),
            actions: intermediate_rep.actions.into_iter().next(),
            _class: intermediate_rep._class.into_iter().next(),
        })
    }
}

// Methods for converting between header::IntoHeaderValue<PipelineStepImpllinks> and hyper::header::HeaderValue

#[cfg(any(feature = "client", feature = "server"))]
impl std::convert::TryFrom<header::IntoHeaderValue<PipelineStepImpllinks>> for hyper::header::HeaderValue {
    type Error = String;

    fn try_from(hdr_value: header::IntoHeaderValue<PipelineStepImpllinks>) -> std::result::Result<Self, Self::Error> {
        let hdr_value = hdr_value.to_string();
        match hyper::header::HeaderValue::from_str(&hdr_value) {
             std::result::Result::Ok(value) => std::result::Result::Ok(value),
             std::result::Result::Err(e) => std::result::Result::Err(
                 format!("Invalid header value for PipelineStepImpllinks - value: {} is invalid {}",
                     hdr_value, e))
        }
    }
}

#[cfg(any(feature = "client", feature = "server"))]
impl std::convert::TryFrom<hyper::header::HeaderValue> for header::IntoHeaderValue<PipelineStepImpllinks> {
    type Error = String;

    fn try_from(hdr_value: hyper::header::HeaderValue) -> std::result::Result<Self, Self::Error> {
        match hdr_value.to_str() {
             std::result::Result::Ok(value) => {
                    match <PipelineStepImpllinks as std::str::FromStr>::from_str(value) {
                        std::result::Result::Ok(value) => std::result::Result::Ok(header::IntoHeaderValue(value)),
                        std::result::Result::Err(err) => std::result::Result::Err(
                            format!("Unable to convert header value '{}' into PipelineStepImpllinks - {}",
                                value, err))
                    }
             },
             std::result::Result::Err(e) => std::result::Result::Err(
                 format!("Unable to convert header: {:?} to string: {}",
                     hdr_value, e))
        }
    }
}


impl PipelineStepImpllinks {
    /// Helper function to allow us to convert this model to an XML string.
    /// Will panic if serialisation fails.
    #[allow(dead_code)]
    pub(crate) fn to_xml(&self) -> String {
        serde_xml_rs::to_string(&self).expect("impossible to fail to serialize")
    }
}

#[derive(Debug, Clone, PartialEq, serde::Serialize, serde::Deserialize)]
#[cfg_attr(feature = "conversion", derive(frunk::LabelledGeneric))]
pub struct PipelinelatestRun {
    #[serde(rename = "artifacts")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub artifacts: Option<Vec<models::PipelinelatestRunartifacts>>,

    #[serde(rename = "durationInMillis")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub duration_in_millis: Option<isize>,

    #[serde(rename = "estimatedDurationInMillis")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub estimated_duration_in_millis: Option<isize>,

    #[serde(rename = "enQueueTime")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub en_queue_time: Option<String>,

    #[serde(rename = "endTime")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub end_time: Option<String>,

    #[serde(rename = "id")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub id: Option<String>,

    #[serde(rename = "organization")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub organization: Option<String>,

    #[serde(rename = "pipeline")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub pipeline: Option<String>,

    #[serde(rename = "result")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub result: Option<String>,

    #[serde(rename = "runSummary")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub run_summary: Option<String>,

    #[serde(rename = "startTime")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub start_time: Option<String>,

    #[serde(rename = "state")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub state: Option<String>,

    #[serde(rename = "type")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub type_: Option<String>,

    #[serde(rename = "commitId")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub commit_id: Option<String>,

    #[serde(rename = "_class")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub _class: Option<String>,

}

impl PipelinelatestRun {
    pub fn new() -> PipelinelatestRun {
        PipelinelatestRun {
            artifacts: None,
            duration_in_millis: None,
            estimated_duration_in_millis: None,
            en_queue_time: None,
            end_time: None,
            id: None,
            organization: None,
            pipeline: None,
            result: None,
            run_summary: None,
            start_time: None,
            state: None,
            type_: None,
            commit_id: None,
            _class: None,
        }
    }
}

/// Converts the PipelinelatestRun value to the Query Parameters representation (style=form, explode=false)
/// specified in https://swagger.io/docs/specification/serialization/
/// Should be implemented in a serde serializer
impl std::string::ToString for PipelinelatestRun {
    fn to_string(&self) -> String {
        let mut params: Vec<String> = vec![];
        // Skipping artifacts in query parameter serialization


        if let Some(ref duration_in_millis) = self.duration_in_millis {
            params.push("durationInMillis".to_string());
            params.push(duration_in_millis.to_string());
        }


        if let Some(ref estimated_duration_in_millis) = self.estimated_duration_in_millis {
            params.push("estimatedDurationInMillis".to_string());
            params.push(estimated_duration_in_millis.to_string());
        }


        if let Some(ref en_queue_time) = self.en_queue_time {
            params.push("enQueueTime".to_string());
            params.push(en_queue_time.to_string());
        }


        if let Some(ref end_time) = self.end_time {
            params.push("endTime".to_string());
            params.push(end_time.to_string());
        }


        if let Some(ref id) = self.id {
            params.push("id".to_string());
            params.push(id.to_string());
        }


        if let Some(ref organization) = self.organization {
            params.push("organization".to_string());
            params.push(organization.to_string());
        }


        if let Some(ref pipeline) = self.pipeline {
            params.push("pipeline".to_string());
            params.push(pipeline.to_string());
        }


        if let Some(ref result) = self.result {
            params.push("result".to_string());
            params.push(result.to_string());
        }


        if let Some(ref run_summary) = self.run_summary {
            params.push("runSummary".to_string());
            params.push(run_summary.to_string());
        }


        if let Some(ref start_time) = self.start_time {
            params.push("startTime".to_string());
            params.push(start_time.to_string());
        }


        if let Some(ref state) = self.state {
            params.push("state".to_string());
            params.push(state.to_string());
        }


        if let Some(ref type_) = self.type_ {
            params.push("type".to_string());
            params.push(type_.to_string());
        }


        if let Some(ref commit_id) = self.commit_id {
            params.push("commitId".to_string());
            params.push(commit_id.to_string());
        }


        if let Some(ref _class) = self._class {
            params.push("_class".to_string());
            params.push(_class.to_string());
        }

        params.join(",").to_string()
    }
}

/// Converts Query Parameters representation (style=form, explode=false) to a PipelinelatestRun value
/// as specified in https://swagger.io/docs/specification/serialization/
/// Should be implemented in a serde deserializer
impl std::str::FromStr for PipelinelatestRun {
    type Err = String;

    fn from_str(s: &str) -> std::result::Result<Self, Self::Err> {
        #[derive(Default)]
        // An intermediate representation of the struct to use for parsing.
        struct IntermediateRep {
            pub artifacts: Vec<Vec<models::PipelinelatestRunartifacts>>,
            pub duration_in_millis: Vec<isize>,
            pub estimated_duration_in_millis: Vec<isize>,
            pub en_queue_time: Vec<String>,
            pub end_time: Vec<String>,
            pub id: Vec<String>,
            pub organization: Vec<String>,
            pub pipeline: Vec<String>,
            pub result: Vec<String>,
            pub run_summary: Vec<String>,
            pub start_time: Vec<String>,
            pub state: Vec<String>,
            pub type_: Vec<String>,
            pub commit_id: Vec<String>,
            pub _class: Vec<String>,
        }

        let mut intermediate_rep = IntermediateRep::default();

        // Parse into intermediate representation
        let mut string_iter = s.split(',').into_iter();
        let mut key_result = string_iter.next();

        while key_result.is_some() {
            let val = match string_iter.next() {
                Some(x) => x,
                None => return std::result::Result::Err("Missing value while parsing PipelinelatestRun".to_string())
            };

            if let Some(key) = key_result {
                match key {
                    "artifacts" => return std::result::Result::Err("Parsing a container in this style is not supported in PipelinelatestRun".to_string()),
                    "durationInMillis" => intermediate_rep.duration_in_millis.push(<isize as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "estimatedDurationInMillis" => intermediate_rep.estimated_duration_in_millis.push(<isize as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "enQueueTime" => intermediate_rep.en_queue_time.push(<String as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "endTime" => intermediate_rep.end_time.push(<String as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "id" => intermediate_rep.id.push(<String as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "organization" => intermediate_rep.organization.push(<String as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "pipeline" => intermediate_rep.pipeline.push(<String as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "result" => intermediate_rep.result.push(<String as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "runSummary" => intermediate_rep.run_summary.push(<String as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "startTime" => intermediate_rep.start_time.push(<String as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "state" => intermediate_rep.state.push(<String as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "type" => intermediate_rep.type_.push(<String as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "commitId" => intermediate_rep.commit_id.push(<String as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "_class" => intermediate_rep._class.push(<String as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    _ => return std::result::Result::Err("Unexpected key while parsing PipelinelatestRun".to_string())
                }
            }

            // Get the next key
            key_result = string_iter.next();
        }

        // Use the intermediate representation to return the struct
        std::result::Result::Ok(PipelinelatestRun {
            artifacts: intermediate_rep.artifacts.into_iter().next(),
            duration_in_millis: intermediate_rep.duration_in_millis.into_iter().next(),
            estimated_duration_in_millis: intermediate_rep.estimated_duration_in_millis.into_iter().next(),
            en_queue_time: intermediate_rep.en_queue_time.into_iter().next(),
            end_time: intermediate_rep.end_time.into_iter().next(),
            id: intermediate_rep.id.into_iter().next(),
            organization: intermediate_rep.organization.into_iter().next(),
            pipeline: intermediate_rep.pipeline.into_iter().next(),
            result: intermediate_rep.result.into_iter().next(),
            run_summary: intermediate_rep.run_summary.into_iter().next(),
            start_time: intermediate_rep.start_time.into_iter().next(),
            state: intermediate_rep.state.into_iter().next(),
            type_: intermediate_rep.type_.into_iter().next(),
            commit_id: intermediate_rep.commit_id.into_iter().next(),
            _class: intermediate_rep._class.into_iter().next(),
        })
    }
}

// Methods for converting between header::IntoHeaderValue<PipelinelatestRun> and hyper::header::HeaderValue

#[cfg(any(feature = "client", feature = "server"))]
impl std::convert::TryFrom<header::IntoHeaderValue<PipelinelatestRun>> for hyper::header::HeaderValue {
    type Error = String;

    fn try_from(hdr_value: header::IntoHeaderValue<PipelinelatestRun>) -> std::result::Result<Self, Self::Error> {
        let hdr_value = hdr_value.to_string();
        match hyper::header::HeaderValue::from_str(&hdr_value) {
             std::result::Result::Ok(value) => std::result::Result::Ok(value),
             std::result::Result::Err(e) => std::result::Result::Err(
                 format!("Invalid header value for PipelinelatestRun - value: {} is invalid {}",
                     hdr_value, e))
        }
    }
}

#[cfg(any(feature = "client", feature = "server"))]
impl std::convert::TryFrom<hyper::header::HeaderValue> for header::IntoHeaderValue<PipelinelatestRun> {
    type Error = String;

    fn try_from(hdr_value: hyper::header::HeaderValue) -> std::result::Result<Self, Self::Error> {
        match hdr_value.to_str() {
             std::result::Result::Ok(value) => {
                    match <PipelinelatestRun as std::str::FromStr>::from_str(value) {
                        std::result::Result::Ok(value) => std::result::Result::Ok(header::IntoHeaderValue(value)),
                        std::result::Result::Err(err) => std::result::Result::Err(
                            format!("Unable to convert header value '{}' into PipelinelatestRun - {}",
                                value, err))
                    }
             },
             std::result::Result::Err(e) => std::result::Result::Err(
                 format!("Unable to convert header: {:?} to string: {}",
                     hdr_value, e))
        }
    }
}


impl PipelinelatestRun {
    /// Helper function to allow us to convert this model to an XML string.
    /// Will panic if serialisation fails.
    #[allow(dead_code)]
    pub(crate) fn to_xml(&self) -> String {
        serde_xml_rs::to_string(&self).expect("impossible to fail to serialize")
    }
}

#[derive(Debug, Clone, PartialEq, serde::Serialize, serde::Deserialize)]
#[cfg_attr(feature = "conversion", derive(frunk::LabelledGeneric))]
pub struct PipelinelatestRunartifacts {
    #[serde(rename = "name")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub name: Option<String>,

    #[serde(rename = "size")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub size: Option<isize>,

    #[serde(rename = "url")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub url: Option<String>,

    #[serde(rename = "_class")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub _class: Option<String>,

}

impl PipelinelatestRunartifacts {
    pub fn new() -> PipelinelatestRunartifacts {
        PipelinelatestRunartifacts {
            name: None,
            size: None,
            url: None,
            _class: None,
        }
    }
}

/// Converts the PipelinelatestRunartifacts value to the Query Parameters representation (style=form, explode=false)
/// specified in https://swagger.io/docs/specification/serialization/
/// Should be implemented in a serde serializer
impl std::string::ToString for PipelinelatestRunartifacts {
    fn to_string(&self) -> String {
        let mut params: Vec<String> = vec![];

        if let Some(ref name) = self.name {
            params.push("name".to_string());
            params.push(name.to_string());
        }


        if let Some(ref size) = self.size {
            params.push("size".to_string());
            params.push(size.to_string());
        }


        if let Some(ref url) = self.url {
            params.push("url".to_string());
            params.push(url.to_string());
        }


        if let Some(ref _class) = self._class {
            params.push("_class".to_string());
            params.push(_class.to_string());
        }

        params.join(",").to_string()
    }
}

/// Converts Query Parameters representation (style=form, explode=false) to a PipelinelatestRunartifacts value
/// as specified in https://swagger.io/docs/specification/serialization/
/// Should be implemented in a serde deserializer
impl std::str::FromStr for PipelinelatestRunartifacts {
    type Err = String;

    fn from_str(s: &str) -> std::result::Result<Self, Self::Err> {
        #[derive(Default)]
        // An intermediate representation of the struct to use for parsing.
        struct IntermediateRep {
            pub name: Vec<String>,
            pub size: Vec<isize>,
            pub url: Vec<String>,
            pub _class: Vec<String>,
        }

        let mut intermediate_rep = IntermediateRep::default();

        // Parse into intermediate representation
        let mut string_iter = s.split(',').into_iter();
        let mut key_result = string_iter.next();

        while key_result.is_some() {
            let val = match string_iter.next() {
                Some(x) => x,
                None => return std::result::Result::Err("Missing value while parsing PipelinelatestRunartifacts".to_string())
            };

            if let Some(key) = key_result {
                match key {
                    "name" => intermediate_rep.name.push(<String as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "size" => intermediate_rep.size.push(<isize as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "url" => intermediate_rep.url.push(<String as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "_class" => intermediate_rep._class.push(<String as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    _ => return std::result::Result::Err("Unexpected key while parsing PipelinelatestRunartifacts".to_string())
                }
            }

            // Get the next key
            key_result = string_iter.next();
        }

        // Use the intermediate representation to return the struct
        std::result::Result::Ok(PipelinelatestRunartifacts {
            name: intermediate_rep.name.into_iter().next(),
            size: intermediate_rep.size.into_iter().next(),
            url: intermediate_rep.url.into_iter().next(),
            _class: intermediate_rep._class.into_iter().next(),
        })
    }
}

// Methods for converting between header::IntoHeaderValue<PipelinelatestRunartifacts> and hyper::header::HeaderValue

#[cfg(any(feature = "client", feature = "server"))]
impl std::convert::TryFrom<header::IntoHeaderValue<PipelinelatestRunartifacts>> for hyper::header::HeaderValue {
    type Error = String;

    fn try_from(hdr_value: header::IntoHeaderValue<PipelinelatestRunartifacts>) -> std::result::Result<Self, Self::Error> {
        let hdr_value = hdr_value.to_string();
        match hyper::header::HeaderValue::from_str(&hdr_value) {
             std::result::Result::Ok(value) => std::result::Result::Ok(value),
             std::result::Result::Err(e) => std::result::Result::Err(
                 format!("Invalid header value for PipelinelatestRunartifacts - value: {} is invalid {}",
                     hdr_value, e))
        }
    }
}

#[cfg(any(feature = "client", feature = "server"))]
impl std::convert::TryFrom<hyper::header::HeaderValue> for header::IntoHeaderValue<PipelinelatestRunartifacts> {
    type Error = String;

    fn try_from(hdr_value: hyper::header::HeaderValue) -> std::result::Result<Self, Self::Error> {
        match hdr_value.to_str() {
             std::result::Result::Ok(value) => {
                    match <PipelinelatestRunartifacts as std::str::FromStr>::from_str(value) {
                        std::result::Result::Ok(value) => std::result::Result::Ok(header::IntoHeaderValue(value)),
                        std::result::Result::Err(err) => std::result::Result::Err(
                            format!("Unable to convert header value '{}' into PipelinelatestRunartifacts - {}",
                                value, err))
                    }
             },
             std::result::Result::Err(e) => std::result::Result::Err(
                 format!("Unable to convert header: {:?} to string: {}",
                     hdr_value, e))
        }
    }
}


impl PipelinelatestRunartifacts {
    /// Helper function to allow us to convert this model to an XML string.
    /// Will panic if serialisation fails.
    #[allow(dead_code)]
    pub(crate) fn to_xml(&self) -> String {
        serde_xml_rs::to_string(&self).expect("impossible to fail to serialize")
    }
}

#[derive(Debug, Clone, PartialEq, serde::Serialize, serde::Deserialize)]
#[cfg_attr(feature = "conversion", derive(frunk::LabelledGeneric))]
pub struct Queue {
    #[serde(rename = "_class")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub _class: Option<String>,

    #[serde(rename = "items")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub items: Option<Vec<models::QueueBlockedItem>>,

}

impl Queue {
    pub fn new() -> Queue {
        Queue {
            _class: None,
            items: None,
        }
    }
}

/// Converts the Queue value to the Query Parameters representation (style=form, explode=false)
/// specified in https://swagger.io/docs/specification/serialization/
/// Should be implemented in a serde serializer
impl std::string::ToString for Queue {
    fn to_string(&self) -> String {
        let mut params: Vec<String> = vec![];

        if let Some(ref _class) = self._class {
            params.push("_class".to_string());
            params.push(_class.to_string());
        }

        // Skipping items in query parameter serialization

        params.join(",").to_string()
    }
}

/// Converts Query Parameters representation (style=form, explode=false) to a Queue value
/// as specified in https://swagger.io/docs/specification/serialization/
/// Should be implemented in a serde deserializer
impl std::str::FromStr for Queue {
    type Err = String;

    fn from_str(s: &str) -> std::result::Result<Self, Self::Err> {
        #[derive(Default)]
        // An intermediate representation of the struct to use for parsing.
        struct IntermediateRep {
            pub _class: Vec<String>,
            pub items: Vec<Vec<models::QueueBlockedItem>>,
        }

        let mut intermediate_rep = IntermediateRep::default();

        // Parse into intermediate representation
        let mut string_iter = s.split(',').into_iter();
        let mut key_result = string_iter.next();

        while key_result.is_some() {
            let val = match string_iter.next() {
                Some(x) => x,
                None => return std::result::Result::Err("Missing value while parsing Queue".to_string())
            };

            if let Some(key) = key_result {
                match key {
                    "_class" => intermediate_rep._class.push(<String as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "items" => return std::result::Result::Err("Parsing a container in this style is not supported in Queue".to_string()),
                    _ => return std::result::Result::Err("Unexpected key while parsing Queue".to_string())
                }
            }

            // Get the next key
            key_result = string_iter.next();
        }

        // Use the intermediate representation to return the struct
        std::result::Result::Ok(Queue {
            _class: intermediate_rep._class.into_iter().next(),
            items: intermediate_rep.items.into_iter().next(),
        })
    }
}

// Methods for converting between header::IntoHeaderValue<Queue> and hyper::header::HeaderValue

#[cfg(any(feature = "client", feature = "server"))]
impl std::convert::TryFrom<header::IntoHeaderValue<Queue>> for hyper::header::HeaderValue {
    type Error = String;

    fn try_from(hdr_value: header::IntoHeaderValue<Queue>) -> std::result::Result<Self, Self::Error> {
        let hdr_value = hdr_value.to_string();
        match hyper::header::HeaderValue::from_str(&hdr_value) {
             std::result::Result::Ok(value) => std::result::Result::Ok(value),
             std::result::Result::Err(e) => std::result::Result::Err(
                 format!("Invalid header value for Queue - value: {} is invalid {}",
                     hdr_value, e))
        }
    }
}

#[cfg(any(feature = "client", feature = "server"))]
impl std::convert::TryFrom<hyper::header::HeaderValue> for header::IntoHeaderValue<Queue> {
    type Error = String;

    fn try_from(hdr_value: hyper::header::HeaderValue) -> std::result::Result<Self, Self::Error> {
        match hdr_value.to_str() {
             std::result::Result::Ok(value) => {
                    match <Queue as std::str::FromStr>::from_str(value) {
                        std::result::Result::Ok(value) => std::result::Result::Ok(header::IntoHeaderValue(value)),
                        std::result::Result::Err(err) => std::result::Result::Err(
                            format!("Unable to convert header value '{}' into Queue - {}",
                                value, err))
                    }
             },
             std::result::Result::Err(e) => std::result::Result::Err(
                 format!("Unable to convert header: {:?} to string: {}",
                     hdr_value, e))
        }
    }
}


impl Queue {
    /// Helper function to allow us to convert this model to an XML string.
    /// Will panic if serialisation fails.
    #[allow(dead_code)]
    pub(crate) fn to_xml(&self) -> String {
        serde_xml_rs::to_string(&self).expect("impossible to fail to serialize")
    }
}

#[derive(Debug, Clone, PartialEq, serde::Serialize, serde::Deserialize)]
#[cfg_attr(feature = "conversion", derive(frunk::LabelledGeneric))]
pub struct QueueBlockedItem {
    #[serde(rename = "_class")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub _class: Option<String>,

    #[serde(rename = "actions")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub actions: Option<Vec<models::CauseAction>>,

    #[serde(rename = "blocked")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub blocked: Option<bool>,

    #[serde(rename = "buildable")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub buildable: Option<bool>,

    #[serde(rename = "id")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub id: Option<isize>,

    #[serde(rename = "inQueueSince")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub in_queue_since: Option<isize>,

    #[serde(rename = "params")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub params: Option<String>,

    #[serde(rename = "stuck")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub stuck: Option<bool>,

    #[serde(rename = "task")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub task: Option<models::FreeStyleProject>,

    #[serde(rename = "url")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub url: Option<String>,

    #[serde(rename = "why")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub why: Option<String>,

    #[serde(rename = "buildableStartMilliseconds")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub buildable_start_milliseconds: Option<isize>,

}

impl QueueBlockedItem {
    pub fn new() -> QueueBlockedItem {
        QueueBlockedItem {
            _class: None,
            actions: None,
            blocked: None,
            buildable: None,
            id: None,
            in_queue_since: None,
            params: None,
            stuck: None,
            task: None,
            url: None,
            why: None,
            buildable_start_milliseconds: None,
        }
    }
}

/// Converts the QueueBlockedItem value to the Query Parameters representation (style=form, explode=false)
/// specified in https://swagger.io/docs/specification/serialization/
/// Should be implemented in a serde serializer
impl std::string::ToString for QueueBlockedItem {
    fn to_string(&self) -> String {
        let mut params: Vec<String> = vec![];

        if let Some(ref _class) = self._class {
            params.push("_class".to_string());
            params.push(_class.to_string());
        }

        // Skipping actions in query parameter serialization


        if let Some(ref blocked) = self.blocked {
            params.push("blocked".to_string());
            params.push(blocked.to_string());
        }


        if let Some(ref buildable) = self.buildable {
            params.push("buildable".to_string());
            params.push(buildable.to_string());
        }


        if let Some(ref id) = self.id {
            params.push("id".to_string());
            params.push(id.to_string());
        }


        if let Some(ref in_queue_since) = self.in_queue_since {
            params.push("inQueueSince".to_string());
            params.push(in_queue_since.to_string());
        }


        if let Some(ref params) = self.params {
            params.push("params".to_string());
            params.push(params.to_string());
        }


        if let Some(ref stuck) = self.stuck {
            params.push("stuck".to_string());
            params.push(stuck.to_string());
        }

        // Skipping task in query parameter serialization


        if let Some(ref url) = self.url {
            params.push("url".to_string());
            params.push(url.to_string());
        }


        if let Some(ref why) = self.why {
            params.push("why".to_string());
            params.push(why.to_string());
        }


        if let Some(ref buildable_start_milliseconds) = self.buildable_start_milliseconds {
            params.push("buildableStartMilliseconds".to_string());
            params.push(buildable_start_milliseconds.to_string());
        }

        params.join(",").to_string()
    }
}

/// Converts Query Parameters representation (style=form, explode=false) to a QueueBlockedItem value
/// as specified in https://swagger.io/docs/specification/serialization/
/// Should be implemented in a serde deserializer
impl std::str::FromStr for QueueBlockedItem {
    type Err = String;

    fn from_str(s: &str) -> std::result::Result<Self, Self::Err> {
        #[derive(Default)]
        // An intermediate representation of the struct to use for parsing.
        struct IntermediateRep {
            pub _class: Vec<String>,
            pub actions: Vec<Vec<models::CauseAction>>,
            pub blocked: Vec<bool>,
            pub buildable: Vec<bool>,
            pub id: Vec<isize>,
            pub in_queue_since: Vec<isize>,
            pub params: Vec<String>,
            pub stuck: Vec<bool>,
            pub task: Vec<models::FreeStyleProject>,
            pub url: Vec<String>,
            pub why: Vec<String>,
            pub buildable_start_milliseconds: Vec<isize>,
        }

        let mut intermediate_rep = IntermediateRep::default();

        // Parse into intermediate representation
        let mut string_iter = s.split(',').into_iter();
        let mut key_result = string_iter.next();

        while key_result.is_some() {
            let val = match string_iter.next() {
                Some(x) => x,
                None => return std::result::Result::Err("Missing value while parsing QueueBlockedItem".to_string())
            };

            if let Some(key) = key_result {
                match key {
                    "_class" => intermediate_rep._class.push(<String as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "actions" => return std::result::Result::Err("Parsing a container in this style is not supported in QueueBlockedItem".to_string()),
                    "blocked" => intermediate_rep.blocked.push(<bool as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "buildable" => intermediate_rep.buildable.push(<bool as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "id" => intermediate_rep.id.push(<isize as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "inQueueSince" => intermediate_rep.in_queue_since.push(<isize as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "params" => intermediate_rep.params.push(<String as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "stuck" => intermediate_rep.stuck.push(<bool as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "task" => intermediate_rep.task.push(<models::FreeStyleProject as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "url" => intermediate_rep.url.push(<String as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "why" => intermediate_rep.why.push(<String as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "buildableStartMilliseconds" => intermediate_rep.buildable_start_milliseconds.push(<isize as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    _ => return std::result::Result::Err("Unexpected key while parsing QueueBlockedItem".to_string())
                }
            }

            // Get the next key
            key_result = string_iter.next();
        }

        // Use the intermediate representation to return the struct
        std::result::Result::Ok(QueueBlockedItem {
            _class: intermediate_rep._class.into_iter().next(),
            actions: intermediate_rep.actions.into_iter().next(),
            blocked: intermediate_rep.blocked.into_iter().next(),
            buildable: intermediate_rep.buildable.into_iter().next(),
            id: intermediate_rep.id.into_iter().next(),
            in_queue_since: intermediate_rep.in_queue_since.into_iter().next(),
            params: intermediate_rep.params.into_iter().next(),
            stuck: intermediate_rep.stuck.into_iter().next(),
            task: intermediate_rep.task.into_iter().next(),
            url: intermediate_rep.url.into_iter().next(),
            why: intermediate_rep.why.into_iter().next(),
            buildable_start_milliseconds: intermediate_rep.buildable_start_milliseconds.into_iter().next(),
        })
    }
}

// Methods for converting between header::IntoHeaderValue<QueueBlockedItem> and hyper::header::HeaderValue

#[cfg(any(feature = "client", feature = "server"))]
impl std::convert::TryFrom<header::IntoHeaderValue<QueueBlockedItem>> for hyper::header::HeaderValue {
    type Error = String;

    fn try_from(hdr_value: header::IntoHeaderValue<QueueBlockedItem>) -> std::result::Result<Self, Self::Error> {
        let hdr_value = hdr_value.to_string();
        match hyper::header::HeaderValue::from_str(&hdr_value) {
             std::result::Result::Ok(value) => std::result::Result::Ok(value),
             std::result::Result::Err(e) => std::result::Result::Err(
                 format!("Invalid header value for QueueBlockedItem - value: {} is invalid {}",
                     hdr_value, e))
        }
    }
}

#[cfg(any(feature = "client", feature = "server"))]
impl std::convert::TryFrom<hyper::header::HeaderValue> for header::IntoHeaderValue<QueueBlockedItem> {
    type Error = String;

    fn try_from(hdr_value: hyper::header::HeaderValue) -> std::result::Result<Self, Self::Error> {
        match hdr_value.to_str() {
             std::result::Result::Ok(value) => {
                    match <QueueBlockedItem as std::str::FromStr>::from_str(value) {
                        std::result::Result::Ok(value) => std::result::Result::Ok(header::IntoHeaderValue(value)),
                        std::result::Result::Err(err) => std::result::Result::Err(
                            format!("Unable to convert header value '{}' into QueueBlockedItem - {}",
                                value, err))
                    }
             },
             std::result::Result::Err(e) => std::result::Result::Err(
                 format!("Unable to convert header: {:?} to string: {}",
                     hdr_value, e))
        }
    }
}


impl QueueBlockedItem {
    /// Helper function to allow us to convert this model to an XML string.
    /// Will panic if serialisation fails.
    #[allow(dead_code)]
    pub(crate) fn to_xml(&self) -> String {
        serde_xml_rs::to_string(&self).expect("impossible to fail to serialize")
    }
}

#[derive(Debug, Clone, PartialEq, serde::Serialize, serde::Deserialize)]
#[cfg_attr(feature = "conversion", derive(frunk::LabelledGeneric))]
pub struct QueueItemImpl {
    #[serde(rename = "_class")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub _class: Option<String>,

    #[serde(rename = "expectedBuildNumber")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub expected_build_number: Option<isize>,

    #[serde(rename = "id")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub id: Option<String>,

    #[serde(rename = "pipeline")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub pipeline: Option<String>,

    #[serde(rename = "queuedTime")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub queued_time: Option<isize>,

}

impl QueueItemImpl {
    pub fn new() -> QueueItemImpl {
        QueueItemImpl {
            _class: None,
            expected_build_number: None,
            id: None,
            pipeline: None,
            queued_time: None,
        }
    }
}

/// Converts the QueueItemImpl value to the Query Parameters representation (style=form, explode=false)
/// specified in https://swagger.io/docs/specification/serialization/
/// Should be implemented in a serde serializer
impl std::string::ToString for QueueItemImpl {
    fn to_string(&self) -> String {
        let mut params: Vec<String> = vec![];

        if let Some(ref _class) = self._class {
            params.push("_class".to_string());
            params.push(_class.to_string());
        }


        if let Some(ref expected_build_number) = self.expected_build_number {
            params.push("expectedBuildNumber".to_string());
            params.push(expected_build_number.to_string());
        }


        if let Some(ref id) = self.id {
            params.push("id".to_string());
            params.push(id.to_string());
        }


        if let Some(ref pipeline) = self.pipeline {
            params.push("pipeline".to_string());
            params.push(pipeline.to_string());
        }


        if let Some(ref queued_time) = self.queued_time {
            params.push("queuedTime".to_string());
            params.push(queued_time.to_string());
        }

        params.join(",").to_string()
    }
}

/// Converts Query Parameters representation (style=form, explode=false) to a QueueItemImpl value
/// as specified in https://swagger.io/docs/specification/serialization/
/// Should be implemented in a serde deserializer
impl std::str::FromStr for QueueItemImpl {
    type Err = String;

    fn from_str(s: &str) -> std::result::Result<Self, Self::Err> {
        #[derive(Default)]
        // An intermediate representation of the struct to use for parsing.
        struct IntermediateRep {
            pub _class: Vec<String>,
            pub expected_build_number: Vec<isize>,
            pub id: Vec<String>,
            pub pipeline: Vec<String>,
            pub queued_time: Vec<isize>,
        }

        let mut intermediate_rep = IntermediateRep::default();

        // Parse into intermediate representation
        let mut string_iter = s.split(',').into_iter();
        let mut key_result = string_iter.next();

        while key_result.is_some() {
            let val = match string_iter.next() {
                Some(x) => x,
                None => return std::result::Result::Err("Missing value while parsing QueueItemImpl".to_string())
            };

            if let Some(key) = key_result {
                match key {
                    "_class" => intermediate_rep._class.push(<String as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "expectedBuildNumber" => intermediate_rep.expected_build_number.push(<isize as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "id" => intermediate_rep.id.push(<String as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "pipeline" => intermediate_rep.pipeline.push(<String as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "queuedTime" => intermediate_rep.queued_time.push(<isize as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    _ => return std::result::Result::Err("Unexpected key while parsing QueueItemImpl".to_string())
                }
            }

            // Get the next key
            key_result = string_iter.next();
        }

        // Use the intermediate representation to return the struct
        std::result::Result::Ok(QueueItemImpl {
            _class: intermediate_rep._class.into_iter().next(),
            expected_build_number: intermediate_rep.expected_build_number.into_iter().next(),
            id: intermediate_rep.id.into_iter().next(),
            pipeline: intermediate_rep.pipeline.into_iter().next(),
            queued_time: intermediate_rep.queued_time.into_iter().next(),
        })
    }
}

// Methods for converting between header::IntoHeaderValue<QueueItemImpl> and hyper::header::HeaderValue

#[cfg(any(feature = "client", feature = "server"))]
impl std::convert::TryFrom<header::IntoHeaderValue<QueueItemImpl>> for hyper::header::HeaderValue {
    type Error = String;

    fn try_from(hdr_value: header::IntoHeaderValue<QueueItemImpl>) -> std::result::Result<Self, Self::Error> {
        let hdr_value = hdr_value.to_string();
        match hyper::header::HeaderValue::from_str(&hdr_value) {
             std::result::Result::Ok(value) => std::result::Result::Ok(value),
             std::result::Result::Err(e) => std::result::Result::Err(
                 format!("Invalid header value for QueueItemImpl - value: {} is invalid {}",
                     hdr_value, e))
        }
    }
}

#[cfg(any(feature = "client", feature = "server"))]
impl std::convert::TryFrom<hyper::header::HeaderValue> for header::IntoHeaderValue<QueueItemImpl> {
    type Error = String;

    fn try_from(hdr_value: hyper::header::HeaderValue) -> std::result::Result<Self, Self::Error> {
        match hdr_value.to_str() {
             std::result::Result::Ok(value) => {
                    match <QueueItemImpl as std::str::FromStr>::from_str(value) {
                        std::result::Result::Ok(value) => std::result::Result::Ok(header::IntoHeaderValue(value)),
                        std::result::Result::Err(err) => std::result::Result::Err(
                            format!("Unable to convert header value '{}' into QueueItemImpl - {}",
                                value, err))
                    }
             },
             std::result::Result::Err(e) => std::result::Result::Err(
                 format!("Unable to convert header: {:?} to string: {}",
                     hdr_value, e))
        }
    }
}


impl QueueItemImpl {
    /// Helper function to allow us to convert this model to an XML string.
    /// Will panic if serialisation fails.
    #[allow(dead_code)]
    pub(crate) fn to_xml(&self) -> String {
        serde_xml_rs::to_string(&self).expect("impossible to fail to serialize")
    }
}

#[derive(Debug, Clone, PartialEq, serde::Serialize, serde::Deserialize)]
#[cfg_attr(feature = "conversion", derive(frunk::LabelledGeneric))]
pub struct QueueLeftItem {
    #[serde(rename = "_class")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub _class: Option<String>,

    #[serde(rename = "actions")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub actions: Option<Vec<models::CauseAction>>,

    #[serde(rename = "blocked")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub blocked: Option<bool>,

    #[serde(rename = "buildable")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub buildable: Option<bool>,

    #[serde(rename = "id")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub id: Option<isize>,

    #[serde(rename = "inQueueSince")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub in_queue_since: Option<isize>,

    #[serde(rename = "params")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub params: Option<String>,

    #[serde(rename = "stuck")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub stuck: Option<bool>,

    #[serde(rename = "task")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub task: Option<models::FreeStyleProject>,

    #[serde(rename = "url")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub url: Option<String>,

    #[serde(rename = "why")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub why: Option<String>,

    #[serde(rename = "cancelled")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub cancelled: Option<bool>,

    #[serde(rename = "executable")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub executable: Option<models::FreeStyleBuild>,

}

impl QueueLeftItem {
    pub fn new() -> QueueLeftItem {
        QueueLeftItem {
            _class: None,
            actions: None,
            blocked: None,
            buildable: None,
            id: None,
            in_queue_since: None,
            params: None,
            stuck: None,
            task: None,
            url: None,
            why: None,
            cancelled: None,
            executable: None,
        }
    }
}

/// Converts the QueueLeftItem value to the Query Parameters representation (style=form, explode=false)
/// specified in https://swagger.io/docs/specification/serialization/
/// Should be implemented in a serde serializer
impl std::string::ToString for QueueLeftItem {
    fn to_string(&self) -> String {
        let mut params: Vec<String> = vec![];

        if let Some(ref _class) = self._class {
            params.push("_class".to_string());
            params.push(_class.to_string());
        }

        // Skipping actions in query parameter serialization


        if let Some(ref blocked) = self.blocked {
            params.push("blocked".to_string());
            params.push(blocked.to_string());
        }


        if let Some(ref buildable) = self.buildable {
            params.push("buildable".to_string());
            params.push(buildable.to_string());
        }


        if let Some(ref id) = self.id {
            params.push("id".to_string());
            params.push(id.to_string());
        }


        if let Some(ref in_queue_since) = self.in_queue_since {
            params.push("inQueueSince".to_string());
            params.push(in_queue_since.to_string());
        }


        if let Some(ref params) = self.params {
            params.push("params".to_string());
            params.push(params.to_string());
        }


        if let Some(ref stuck) = self.stuck {
            params.push("stuck".to_string());
            params.push(stuck.to_string());
        }

        // Skipping task in query parameter serialization


        if let Some(ref url) = self.url {
            params.push("url".to_string());
            params.push(url.to_string());
        }


        if let Some(ref why) = self.why {
            params.push("why".to_string());
            params.push(why.to_string());
        }


        if let Some(ref cancelled) = self.cancelled {
            params.push("cancelled".to_string());
            params.push(cancelled.to_string());
        }

        // Skipping executable in query parameter serialization

        params.join(",").to_string()
    }
}

/// Converts Query Parameters representation (style=form, explode=false) to a QueueLeftItem value
/// as specified in https://swagger.io/docs/specification/serialization/
/// Should be implemented in a serde deserializer
impl std::str::FromStr for QueueLeftItem {
    type Err = String;

    fn from_str(s: &str) -> std::result::Result<Self, Self::Err> {
        #[derive(Default)]
        // An intermediate representation of the struct to use for parsing.
        struct IntermediateRep {
            pub _class: Vec<String>,
            pub actions: Vec<Vec<models::CauseAction>>,
            pub blocked: Vec<bool>,
            pub buildable: Vec<bool>,
            pub id: Vec<isize>,
            pub in_queue_since: Vec<isize>,
            pub params: Vec<String>,
            pub stuck: Vec<bool>,
            pub task: Vec<models::FreeStyleProject>,
            pub url: Vec<String>,
            pub why: Vec<String>,
            pub cancelled: Vec<bool>,
            pub executable: Vec<models::FreeStyleBuild>,
        }

        let mut intermediate_rep = IntermediateRep::default();

        // Parse into intermediate representation
        let mut string_iter = s.split(',').into_iter();
        let mut key_result = string_iter.next();

        while key_result.is_some() {
            let val = match string_iter.next() {
                Some(x) => x,
                None => return std::result::Result::Err("Missing value while parsing QueueLeftItem".to_string())
            };

            if let Some(key) = key_result {
                match key {
                    "_class" => intermediate_rep._class.push(<String as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "actions" => return std::result::Result::Err("Parsing a container in this style is not supported in QueueLeftItem".to_string()),
                    "blocked" => intermediate_rep.blocked.push(<bool as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "buildable" => intermediate_rep.buildable.push(<bool as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "id" => intermediate_rep.id.push(<isize as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "inQueueSince" => intermediate_rep.in_queue_since.push(<isize as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "params" => intermediate_rep.params.push(<String as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "stuck" => intermediate_rep.stuck.push(<bool as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "task" => intermediate_rep.task.push(<models::FreeStyleProject as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "url" => intermediate_rep.url.push(<String as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "why" => intermediate_rep.why.push(<String as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "cancelled" => intermediate_rep.cancelled.push(<bool as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "executable" => intermediate_rep.executable.push(<models::FreeStyleBuild as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    _ => return std::result::Result::Err("Unexpected key while parsing QueueLeftItem".to_string())
                }
            }

            // Get the next key
            key_result = string_iter.next();
        }

        // Use the intermediate representation to return the struct
        std::result::Result::Ok(QueueLeftItem {
            _class: intermediate_rep._class.into_iter().next(),
            actions: intermediate_rep.actions.into_iter().next(),
            blocked: intermediate_rep.blocked.into_iter().next(),
            buildable: intermediate_rep.buildable.into_iter().next(),
            id: intermediate_rep.id.into_iter().next(),
            in_queue_since: intermediate_rep.in_queue_since.into_iter().next(),
            params: intermediate_rep.params.into_iter().next(),
            stuck: intermediate_rep.stuck.into_iter().next(),
            task: intermediate_rep.task.into_iter().next(),
            url: intermediate_rep.url.into_iter().next(),
            why: intermediate_rep.why.into_iter().next(),
            cancelled: intermediate_rep.cancelled.into_iter().next(),
            executable: intermediate_rep.executable.into_iter().next(),
        })
    }
}

// Methods for converting between header::IntoHeaderValue<QueueLeftItem> and hyper::header::HeaderValue

#[cfg(any(feature = "client", feature = "server"))]
impl std::convert::TryFrom<header::IntoHeaderValue<QueueLeftItem>> for hyper::header::HeaderValue {
    type Error = String;

    fn try_from(hdr_value: header::IntoHeaderValue<QueueLeftItem>) -> std::result::Result<Self, Self::Error> {
        let hdr_value = hdr_value.to_string();
        match hyper::header::HeaderValue::from_str(&hdr_value) {
             std::result::Result::Ok(value) => std::result::Result::Ok(value),
             std::result::Result::Err(e) => std::result::Result::Err(
                 format!("Invalid header value for QueueLeftItem - value: {} is invalid {}",
                     hdr_value, e))
        }
    }
}

#[cfg(any(feature = "client", feature = "server"))]
impl std::convert::TryFrom<hyper::header::HeaderValue> for header::IntoHeaderValue<QueueLeftItem> {
    type Error = String;

    fn try_from(hdr_value: hyper::header::HeaderValue) -> std::result::Result<Self, Self::Error> {
        match hdr_value.to_str() {
             std::result::Result::Ok(value) => {
                    match <QueueLeftItem as std::str::FromStr>::from_str(value) {
                        std::result::Result::Ok(value) => std::result::Result::Ok(header::IntoHeaderValue(value)),
                        std::result::Result::Err(err) => std::result::Result::Err(
                            format!("Unable to convert header value '{}' into QueueLeftItem - {}",
                                value, err))
                    }
             },
             std::result::Result::Err(e) => std::result::Result::Err(
                 format!("Unable to convert header: {:?} to string: {}",
                     hdr_value, e))
        }
    }
}


impl QueueLeftItem {
    /// Helper function to allow us to convert this model to an XML string.
    /// Will panic if serialisation fails.
    #[allow(dead_code)]
    pub(crate) fn to_xml(&self) -> String {
        serde_xml_rs::to_string(&self).expect("impossible to fail to serialize")
    }
}

#[derive(Debug, Clone, PartialEq, serde::Serialize, serde::Deserialize)]
#[cfg_attr(feature = "conversion", derive(frunk::LabelledGeneric))]
pub struct ResponseTimeMonitorData {
    #[serde(rename = "_class")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub _class: Option<String>,

    #[serde(rename = "timestamp")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub timestamp: Option<isize>,

    #[serde(rename = "average")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub average: Option<isize>,

}

impl ResponseTimeMonitorData {
    pub fn new() -> ResponseTimeMonitorData {
        ResponseTimeMonitorData {
            _class: None,
            timestamp: None,
            average: None,
        }
    }
}

/// Converts the ResponseTimeMonitorData value to the Query Parameters representation (style=form, explode=false)
/// specified in https://swagger.io/docs/specification/serialization/
/// Should be implemented in a serde serializer
impl std::string::ToString for ResponseTimeMonitorData {
    fn to_string(&self) -> String {
        let mut params: Vec<String> = vec![];

        if let Some(ref _class) = self._class {
            params.push("_class".to_string());
            params.push(_class.to_string());
        }


        if let Some(ref timestamp) = self.timestamp {
            params.push("timestamp".to_string());
            params.push(timestamp.to_string());
        }


        if let Some(ref average) = self.average {
            params.push("average".to_string());
            params.push(average.to_string());
        }

        params.join(",").to_string()
    }
}

/// Converts Query Parameters representation (style=form, explode=false) to a ResponseTimeMonitorData value
/// as specified in https://swagger.io/docs/specification/serialization/
/// Should be implemented in a serde deserializer
impl std::str::FromStr for ResponseTimeMonitorData {
    type Err = String;

    fn from_str(s: &str) -> std::result::Result<Self, Self::Err> {
        #[derive(Default)]
        // An intermediate representation of the struct to use for parsing.
        struct IntermediateRep {
            pub _class: Vec<String>,
            pub timestamp: Vec<isize>,
            pub average: Vec<isize>,
        }

        let mut intermediate_rep = IntermediateRep::default();

        // Parse into intermediate representation
        let mut string_iter = s.split(',').into_iter();
        let mut key_result = string_iter.next();

        while key_result.is_some() {
            let val = match string_iter.next() {
                Some(x) => x,
                None => return std::result::Result::Err("Missing value while parsing ResponseTimeMonitorData".to_string())
            };

            if let Some(key) = key_result {
                match key {
                    "_class" => intermediate_rep._class.push(<String as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "timestamp" => intermediate_rep.timestamp.push(<isize as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "average" => intermediate_rep.average.push(<isize as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    _ => return std::result::Result::Err("Unexpected key while parsing ResponseTimeMonitorData".to_string())
                }
            }

            // Get the next key
            key_result = string_iter.next();
        }

        // Use the intermediate representation to return the struct
        std::result::Result::Ok(ResponseTimeMonitorData {
            _class: intermediate_rep._class.into_iter().next(),
            timestamp: intermediate_rep.timestamp.into_iter().next(),
            average: intermediate_rep.average.into_iter().next(),
        })
    }
}

// Methods for converting between header::IntoHeaderValue<ResponseTimeMonitorData> and hyper::header::HeaderValue

#[cfg(any(feature = "client", feature = "server"))]
impl std::convert::TryFrom<header::IntoHeaderValue<ResponseTimeMonitorData>> for hyper::header::HeaderValue {
    type Error = String;

    fn try_from(hdr_value: header::IntoHeaderValue<ResponseTimeMonitorData>) -> std::result::Result<Self, Self::Error> {
        let hdr_value = hdr_value.to_string();
        match hyper::header::HeaderValue::from_str(&hdr_value) {
             std::result::Result::Ok(value) => std::result::Result::Ok(value),
             std::result::Result::Err(e) => std::result::Result::Err(
                 format!("Invalid header value for ResponseTimeMonitorData - value: {} is invalid {}",
                     hdr_value, e))
        }
    }
}

#[cfg(any(feature = "client", feature = "server"))]
impl std::convert::TryFrom<hyper::header::HeaderValue> for header::IntoHeaderValue<ResponseTimeMonitorData> {
    type Error = String;

    fn try_from(hdr_value: hyper::header::HeaderValue) -> std::result::Result<Self, Self::Error> {
        match hdr_value.to_str() {
             std::result::Result::Ok(value) => {
                    match <ResponseTimeMonitorData as std::str::FromStr>::from_str(value) {
                        std::result::Result::Ok(value) => std::result::Result::Ok(header::IntoHeaderValue(value)),
                        std::result::Result::Err(err) => std::result::Result::Err(
                            format!("Unable to convert header value '{}' into ResponseTimeMonitorData - {}",
                                value, err))
                    }
             },
             std::result::Result::Err(e) => std::result::Result::Err(
                 format!("Unable to convert header: {:?} to string: {}",
                     hdr_value, e))
        }
    }
}


impl ResponseTimeMonitorData {
    /// Helper function to allow us to convert this model to an XML string.
    /// Will panic if serialisation fails.
    #[allow(dead_code)]
    pub(crate) fn to_xml(&self) -> String {
        serde_xml_rs::to_string(&self).expect("impossible to fail to serialize")
    }
}

#[derive(Debug, Clone, PartialEq, serde::Serialize, serde::Deserialize)]
#[cfg_attr(feature = "conversion", derive(frunk::LabelledGeneric))]
pub struct StringParameterDefinition {
    #[serde(rename = "_class")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub _class: Option<String>,

    #[serde(rename = "defaultParameterValue")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub default_parameter_value: Option<models::StringParameterValue>,

    #[serde(rename = "description")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub description: Option<String>,

    #[serde(rename = "name")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub name: Option<String>,

    #[serde(rename = "type")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub type_: Option<String>,

}

impl StringParameterDefinition {
    pub fn new() -> StringParameterDefinition {
        StringParameterDefinition {
            _class: None,
            default_parameter_value: None,
            description: None,
            name: None,
            type_: None,
        }
    }
}

/// Converts the StringParameterDefinition value to the Query Parameters representation (style=form, explode=false)
/// specified in https://swagger.io/docs/specification/serialization/
/// Should be implemented in a serde serializer
impl std::string::ToString for StringParameterDefinition {
    fn to_string(&self) -> String {
        let mut params: Vec<String> = vec![];

        if let Some(ref _class) = self._class {
            params.push("_class".to_string());
            params.push(_class.to_string());
        }

        // Skipping defaultParameterValue in query parameter serialization


        if let Some(ref description) = self.description {
            params.push("description".to_string());
            params.push(description.to_string());
        }


        if let Some(ref name) = self.name {
            params.push("name".to_string());
            params.push(name.to_string());
        }


        if let Some(ref type_) = self.type_ {
            params.push("type".to_string());
            params.push(type_.to_string());
        }

        params.join(",").to_string()
    }
}

/// Converts Query Parameters representation (style=form, explode=false) to a StringParameterDefinition value
/// as specified in https://swagger.io/docs/specification/serialization/
/// Should be implemented in a serde deserializer
impl std::str::FromStr for StringParameterDefinition {
    type Err = String;

    fn from_str(s: &str) -> std::result::Result<Self, Self::Err> {
        #[derive(Default)]
        // An intermediate representation of the struct to use for parsing.
        struct IntermediateRep {
            pub _class: Vec<String>,
            pub default_parameter_value: Vec<models::StringParameterValue>,
            pub description: Vec<String>,
            pub name: Vec<String>,
            pub type_: Vec<String>,
        }

        let mut intermediate_rep = IntermediateRep::default();

        // Parse into intermediate representation
        let mut string_iter = s.split(',').into_iter();
        let mut key_result = string_iter.next();

        while key_result.is_some() {
            let val = match string_iter.next() {
                Some(x) => x,
                None => return std::result::Result::Err("Missing value while parsing StringParameterDefinition".to_string())
            };

            if let Some(key) = key_result {
                match key {
                    "_class" => intermediate_rep._class.push(<String as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "defaultParameterValue" => intermediate_rep.default_parameter_value.push(<models::StringParameterValue as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "description" => intermediate_rep.description.push(<String as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "name" => intermediate_rep.name.push(<String as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "type" => intermediate_rep.type_.push(<String as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    _ => return std::result::Result::Err("Unexpected key while parsing StringParameterDefinition".to_string())
                }
            }

            // Get the next key
            key_result = string_iter.next();
        }

        // Use the intermediate representation to return the struct
        std::result::Result::Ok(StringParameterDefinition {
            _class: intermediate_rep._class.into_iter().next(),
            default_parameter_value: intermediate_rep.default_parameter_value.into_iter().next(),
            description: intermediate_rep.description.into_iter().next(),
            name: intermediate_rep.name.into_iter().next(),
            type_: intermediate_rep.type_.into_iter().next(),
        })
    }
}

// Methods for converting between header::IntoHeaderValue<StringParameterDefinition> and hyper::header::HeaderValue

#[cfg(any(feature = "client", feature = "server"))]
impl std::convert::TryFrom<header::IntoHeaderValue<StringParameterDefinition>> for hyper::header::HeaderValue {
    type Error = String;

    fn try_from(hdr_value: header::IntoHeaderValue<StringParameterDefinition>) -> std::result::Result<Self, Self::Error> {
        let hdr_value = hdr_value.to_string();
        match hyper::header::HeaderValue::from_str(&hdr_value) {
             std::result::Result::Ok(value) => std::result::Result::Ok(value),
             std::result::Result::Err(e) => std::result::Result::Err(
                 format!("Invalid header value for StringParameterDefinition - value: {} is invalid {}",
                     hdr_value, e))
        }
    }
}

#[cfg(any(feature = "client", feature = "server"))]
impl std::convert::TryFrom<hyper::header::HeaderValue> for header::IntoHeaderValue<StringParameterDefinition> {
    type Error = String;

    fn try_from(hdr_value: hyper::header::HeaderValue) -> std::result::Result<Self, Self::Error> {
        match hdr_value.to_str() {
             std::result::Result::Ok(value) => {
                    match <StringParameterDefinition as std::str::FromStr>::from_str(value) {
                        std::result::Result::Ok(value) => std::result::Result::Ok(header::IntoHeaderValue(value)),
                        std::result::Result::Err(err) => std::result::Result::Err(
                            format!("Unable to convert header value '{}' into StringParameterDefinition - {}",
                                value, err))
                    }
             },
             std::result::Result::Err(e) => std::result::Result::Err(
                 format!("Unable to convert header: {:?} to string: {}",
                     hdr_value, e))
        }
    }
}


impl StringParameterDefinition {
    /// Helper function to allow us to convert this model to an XML string.
    /// Will panic if serialisation fails.
    #[allow(dead_code)]
    pub(crate) fn to_xml(&self) -> String {
        serde_xml_rs::to_string(&self).expect("impossible to fail to serialize")
    }
}

#[derive(Debug, Clone, PartialEq, serde::Serialize, serde::Deserialize)]
#[cfg_attr(feature = "conversion", derive(frunk::LabelledGeneric))]
pub struct StringParameterValue {
    #[serde(rename = "_class")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub _class: Option<String>,

    #[serde(rename = "name")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub name: Option<String>,

    #[serde(rename = "value")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub value: Option<String>,

}

impl StringParameterValue {
    pub fn new() -> StringParameterValue {
        StringParameterValue {
            _class: None,
            name: None,
            value: None,
        }
    }
}

/// Converts the StringParameterValue value to the Query Parameters representation (style=form, explode=false)
/// specified in https://swagger.io/docs/specification/serialization/
/// Should be implemented in a serde serializer
impl std::string::ToString for StringParameterValue {
    fn to_string(&self) -> String {
        let mut params: Vec<String> = vec![];

        if let Some(ref _class) = self._class {
            params.push("_class".to_string());
            params.push(_class.to_string());
        }


        if let Some(ref name) = self.name {
            params.push("name".to_string());
            params.push(name.to_string());
        }


        if let Some(ref value) = self.value {
            params.push("value".to_string());
            params.push(value.to_string());
        }

        params.join(",").to_string()
    }
}

/// Converts Query Parameters representation (style=form, explode=false) to a StringParameterValue value
/// as specified in https://swagger.io/docs/specification/serialization/
/// Should be implemented in a serde deserializer
impl std::str::FromStr for StringParameterValue {
    type Err = String;

    fn from_str(s: &str) -> std::result::Result<Self, Self::Err> {
        #[derive(Default)]
        // An intermediate representation of the struct to use for parsing.
        struct IntermediateRep {
            pub _class: Vec<String>,
            pub name: Vec<String>,
            pub value: Vec<String>,
        }

        let mut intermediate_rep = IntermediateRep::default();

        // Parse into intermediate representation
        let mut string_iter = s.split(',').into_iter();
        let mut key_result = string_iter.next();

        while key_result.is_some() {
            let val = match string_iter.next() {
                Some(x) => x,
                None => return std::result::Result::Err("Missing value while parsing StringParameterValue".to_string())
            };

            if let Some(key) = key_result {
                match key {
                    "_class" => intermediate_rep._class.push(<String as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "name" => intermediate_rep.name.push(<String as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "value" => intermediate_rep.value.push(<String as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    _ => return std::result::Result::Err("Unexpected key while parsing StringParameterValue".to_string())
                }
            }

            // Get the next key
            key_result = string_iter.next();
        }

        // Use the intermediate representation to return the struct
        std::result::Result::Ok(StringParameterValue {
            _class: intermediate_rep._class.into_iter().next(),
            name: intermediate_rep.name.into_iter().next(),
            value: intermediate_rep.value.into_iter().next(),
        })
    }
}

// Methods for converting between header::IntoHeaderValue<StringParameterValue> and hyper::header::HeaderValue

#[cfg(any(feature = "client", feature = "server"))]
impl std::convert::TryFrom<header::IntoHeaderValue<StringParameterValue>> for hyper::header::HeaderValue {
    type Error = String;

    fn try_from(hdr_value: header::IntoHeaderValue<StringParameterValue>) -> std::result::Result<Self, Self::Error> {
        let hdr_value = hdr_value.to_string();
        match hyper::header::HeaderValue::from_str(&hdr_value) {
             std::result::Result::Ok(value) => std::result::Result::Ok(value),
             std::result::Result::Err(e) => std::result::Result::Err(
                 format!("Invalid header value for StringParameterValue - value: {} is invalid {}",
                     hdr_value, e))
        }
    }
}

#[cfg(any(feature = "client", feature = "server"))]
impl std::convert::TryFrom<hyper::header::HeaderValue> for header::IntoHeaderValue<StringParameterValue> {
    type Error = String;

    fn try_from(hdr_value: hyper::header::HeaderValue) -> std::result::Result<Self, Self::Error> {
        match hdr_value.to_str() {
             std::result::Result::Ok(value) => {
                    match <StringParameterValue as std::str::FromStr>::from_str(value) {
                        std::result::Result::Ok(value) => std::result::Result::Ok(header::IntoHeaderValue(value)),
                        std::result::Result::Err(err) => std::result::Result::Err(
                            format!("Unable to convert header value '{}' into StringParameterValue - {}",
                                value, err))
                    }
             },
             std::result::Result::Err(e) => std::result::Result::Err(
                 format!("Unable to convert header: {:?} to string: {}",
                     hdr_value, e))
        }
    }
}


impl StringParameterValue {
    /// Helper function to allow us to convert this model to an XML string.
    /// Will panic if serialisation fails.
    #[allow(dead_code)]
    pub(crate) fn to_xml(&self) -> String {
        serde_xml_rs::to_string(&self).expect("impossible to fail to serialize")
    }
}

#[derive(Debug, Clone, PartialEq, serde::Serialize, serde::Deserialize)]
#[cfg_attr(feature = "conversion", derive(frunk::LabelledGeneric))]
pub struct SwapSpaceMonitorMemoryUsage2 {
    #[serde(rename = "_class")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub _class: Option<String>,

    #[serde(rename = "availablePhysicalMemory")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub available_physical_memory: Option<isize>,

    #[serde(rename = "availableSwapSpace")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub available_swap_space: Option<isize>,

    #[serde(rename = "totalPhysicalMemory")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub total_physical_memory: Option<isize>,

    #[serde(rename = "totalSwapSpace")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub total_swap_space: Option<isize>,

}

impl SwapSpaceMonitorMemoryUsage2 {
    pub fn new() -> SwapSpaceMonitorMemoryUsage2 {
        SwapSpaceMonitorMemoryUsage2 {
            _class: None,
            available_physical_memory: None,
            available_swap_space: None,
            total_physical_memory: None,
            total_swap_space: None,
        }
    }
}

/// Converts the SwapSpaceMonitorMemoryUsage2 value to the Query Parameters representation (style=form, explode=false)
/// specified in https://swagger.io/docs/specification/serialization/
/// Should be implemented in a serde serializer
impl std::string::ToString for SwapSpaceMonitorMemoryUsage2 {
    fn to_string(&self) -> String {
        let mut params: Vec<String> = vec![];

        if let Some(ref _class) = self._class {
            params.push("_class".to_string());
            params.push(_class.to_string());
        }


        if let Some(ref available_physical_memory) = self.available_physical_memory {
            params.push("availablePhysicalMemory".to_string());
            params.push(available_physical_memory.to_string());
        }


        if let Some(ref available_swap_space) = self.available_swap_space {
            params.push("availableSwapSpace".to_string());
            params.push(available_swap_space.to_string());
        }


        if let Some(ref total_physical_memory) = self.total_physical_memory {
            params.push("totalPhysicalMemory".to_string());
            params.push(total_physical_memory.to_string());
        }


        if let Some(ref total_swap_space) = self.total_swap_space {
            params.push("totalSwapSpace".to_string());
            params.push(total_swap_space.to_string());
        }

        params.join(",").to_string()
    }
}

/// Converts Query Parameters representation (style=form, explode=false) to a SwapSpaceMonitorMemoryUsage2 value
/// as specified in https://swagger.io/docs/specification/serialization/
/// Should be implemented in a serde deserializer
impl std::str::FromStr for SwapSpaceMonitorMemoryUsage2 {
    type Err = String;

    fn from_str(s: &str) -> std::result::Result<Self, Self::Err> {
        #[derive(Default)]
        // An intermediate representation of the struct to use for parsing.
        struct IntermediateRep {
            pub _class: Vec<String>,
            pub available_physical_memory: Vec<isize>,
            pub available_swap_space: Vec<isize>,
            pub total_physical_memory: Vec<isize>,
            pub total_swap_space: Vec<isize>,
        }

        let mut intermediate_rep = IntermediateRep::default();

        // Parse into intermediate representation
        let mut string_iter = s.split(',').into_iter();
        let mut key_result = string_iter.next();

        while key_result.is_some() {
            let val = match string_iter.next() {
                Some(x) => x,
                None => return std::result::Result::Err("Missing value while parsing SwapSpaceMonitorMemoryUsage2".to_string())
            };

            if let Some(key) = key_result {
                match key {
                    "_class" => intermediate_rep._class.push(<String as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "availablePhysicalMemory" => intermediate_rep.available_physical_memory.push(<isize as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "availableSwapSpace" => intermediate_rep.available_swap_space.push(<isize as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "totalPhysicalMemory" => intermediate_rep.total_physical_memory.push(<isize as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "totalSwapSpace" => intermediate_rep.total_swap_space.push(<isize as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    _ => return std::result::Result::Err("Unexpected key while parsing SwapSpaceMonitorMemoryUsage2".to_string())
                }
            }

            // Get the next key
            key_result = string_iter.next();
        }

        // Use the intermediate representation to return the struct
        std::result::Result::Ok(SwapSpaceMonitorMemoryUsage2 {
            _class: intermediate_rep._class.into_iter().next(),
            available_physical_memory: intermediate_rep.available_physical_memory.into_iter().next(),
            available_swap_space: intermediate_rep.available_swap_space.into_iter().next(),
            total_physical_memory: intermediate_rep.total_physical_memory.into_iter().next(),
            total_swap_space: intermediate_rep.total_swap_space.into_iter().next(),
        })
    }
}

// Methods for converting between header::IntoHeaderValue<SwapSpaceMonitorMemoryUsage2> and hyper::header::HeaderValue

#[cfg(any(feature = "client", feature = "server"))]
impl std::convert::TryFrom<header::IntoHeaderValue<SwapSpaceMonitorMemoryUsage2>> for hyper::header::HeaderValue {
    type Error = String;

    fn try_from(hdr_value: header::IntoHeaderValue<SwapSpaceMonitorMemoryUsage2>) -> std::result::Result<Self, Self::Error> {
        let hdr_value = hdr_value.to_string();
        match hyper::header::HeaderValue::from_str(&hdr_value) {
             std::result::Result::Ok(value) => std::result::Result::Ok(value),
             std::result::Result::Err(e) => std::result::Result::Err(
                 format!("Invalid header value for SwapSpaceMonitorMemoryUsage2 - value: {} is invalid {}",
                     hdr_value, e))
        }
    }
}

#[cfg(any(feature = "client", feature = "server"))]
impl std::convert::TryFrom<hyper::header::HeaderValue> for header::IntoHeaderValue<SwapSpaceMonitorMemoryUsage2> {
    type Error = String;

    fn try_from(hdr_value: hyper::header::HeaderValue) -> std::result::Result<Self, Self::Error> {
        match hdr_value.to_str() {
             std::result::Result::Ok(value) => {
                    match <SwapSpaceMonitorMemoryUsage2 as std::str::FromStr>::from_str(value) {
                        std::result::Result::Ok(value) => std::result::Result::Ok(header::IntoHeaderValue(value)),
                        std::result::Result::Err(err) => std::result::Result::Err(
                            format!("Unable to convert header value '{}' into SwapSpaceMonitorMemoryUsage2 - {}",
                                value, err))
                    }
             },
             std::result::Result::Err(e) => std::result::Result::Err(
                 format!("Unable to convert header: {:?} to string: {}",
                     hdr_value, e))
        }
    }
}


impl SwapSpaceMonitorMemoryUsage2 {
    /// Helper function to allow us to convert this model to an XML string.
    /// Will panic if serialisation fails.
    #[allow(dead_code)]
    pub(crate) fn to_xml(&self) -> String {
        serde_xml_rs::to_string(&self).expect("impossible to fail to serialize")
    }
}

#[derive(Debug, Clone, PartialEq, serde::Serialize, serde::Deserialize)]
#[cfg_attr(feature = "conversion", derive(frunk::LabelledGeneric))]
pub struct UnlabeledLoadStatistics {
    #[serde(rename = "_class")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub _class: Option<String>,

}

impl UnlabeledLoadStatistics {
    pub fn new() -> UnlabeledLoadStatistics {
        UnlabeledLoadStatistics {
            _class: None,
        }
    }
}

/// Converts the UnlabeledLoadStatistics value to the Query Parameters representation (style=form, explode=false)
/// specified in https://swagger.io/docs/specification/serialization/
/// Should be implemented in a serde serializer
impl std::string::ToString for UnlabeledLoadStatistics {
    fn to_string(&self) -> String {
        let mut params: Vec<String> = vec![];

        if let Some(ref _class) = self._class {
            params.push("_class".to_string());
            params.push(_class.to_string());
        }

        params.join(",").to_string()
    }
}

/// Converts Query Parameters representation (style=form, explode=false) to a UnlabeledLoadStatistics value
/// as specified in https://swagger.io/docs/specification/serialization/
/// Should be implemented in a serde deserializer
impl std::str::FromStr for UnlabeledLoadStatistics {
    type Err = String;

    fn from_str(s: &str) -> std::result::Result<Self, Self::Err> {
        #[derive(Default)]
        // An intermediate representation of the struct to use for parsing.
        struct IntermediateRep {
            pub _class: Vec<String>,
        }

        let mut intermediate_rep = IntermediateRep::default();

        // Parse into intermediate representation
        let mut string_iter = s.split(',').into_iter();
        let mut key_result = string_iter.next();

        while key_result.is_some() {
            let val = match string_iter.next() {
                Some(x) => x,
                None => return std::result::Result::Err("Missing value while parsing UnlabeledLoadStatistics".to_string())
            };

            if let Some(key) = key_result {
                match key {
                    "_class" => intermediate_rep._class.push(<String as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    _ => return std::result::Result::Err("Unexpected key while parsing UnlabeledLoadStatistics".to_string())
                }
            }

            // Get the next key
            key_result = string_iter.next();
        }

        // Use the intermediate representation to return the struct
        std::result::Result::Ok(UnlabeledLoadStatistics {
            _class: intermediate_rep._class.into_iter().next(),
        })
    }
}

// Methods for converting between header::IntoHeaderValue<UnlabeledLoadStatistics> and hyper::header::HeaderValue

#[cfg(any(feature = "client", feature = "server"))]
impl std::convert::TryFrom<header::IntoHeaderValue<UnlabeledLoadStatistics>> for hyper::header::HeaderValue {
    type Error = String;

    fn try_from(hdr_value: header::IntoHeaderValue<UnlabeledLoadStatistics>) -> std::result::Result<Self, Self::Error> {
        let hdr_value = hdr_value.to_string();
        match hyper::header::HeaderValue::from_str(&hdr_value) {
             std::result::Result::Ok(value) => std::result::Result::Ok(value),
             std::result::Result::Err(e) => std::result::Result::Err(
                 format!("Invalid header value for UnlabeledLoadStatistics - value: {} is invalid {}",
                     hdr_value, e))
        }
    }
}

#[cfg(any(feature = "client", feature = "server"))]
impl std::convert::TryFrom<hyper::header::HeaderValue> for header::IntoHeaderValue<UnlabeledLoadStatistics> {
    type Error = String;

    fn try_from(hdr_value: hyper::header::HeaderValue) -> std::result::Result<Self, Self::Error> {
        match hdr_value.to_str() {
             std::result::Result::Ok(value) => {
                    match <UnlabeledLoadStatistics as std::str::FromStr>::from_str(value) {
                        std::result::Result::Ok(value) => std::result::Result::Ok(header::IntoHeaderValue(value)),
                        std::result::Result::Err(err) => std::result::Result::Err(
                            format!("Unable to convert header value '{}' into UnlabeledLoadStatistics - {}",
                                value, err))
                    }
             },
             std::result::Result::Err(e) => std::result::Result::Err(
                 format!("Unable to convert header: {:?} to string: {}",
                     hdr_value, e))
        }
    }
}


impl UnlabeledLoadStatistics {
    /// Helper function to allow us to convert this model to an XML string.
    /// Will panic if serialisation fails.
    #[allow(dead_code)]
    pub(crate) fn to_xml(&self) -> String {
        serde_xml_rs::to_string(&self).expect("impossible to fail to serialize")
    }
}

#[derive(Debug, Clone, PartialEq, serde::Serialize, serde::Deserialize)]
#[cfg_attr(feature = "conversion", derive(frunk::LabelledGeneric))]
pub struct User {
    #[serde(rename = "_class")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub _class: Option<String>,

    #[serde(rename = "id")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub id: Option<String>,

    #[serde(rename = "fullName")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub full_name: Option<String>,

    #[serde(rename = "email")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub email: Option<String>,

    #[serde(rename = "name")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub name: Option<String>,

}

impl User {
    pub fn new() -> User {
        User {
            _class: None,
            id: None,
            full_name: None,
            email: None,
            name: None,
        }
    }
}

/// Converts the User value to the Query Parameters representation (style=form, explode=false)
/// specified in https://swagger.io/docs/specification/serialization/
/// Should be implemented in a serde serializer
impl std::string::ToString for User {
    fn to_string(&self) -> String {
        let mut params: Vec<String> = vec![];

        if let Some(ref _class) = self._class {
            params.push("_class".to_string());
            params.push(_class.to_string());
        }


        if let Some(ref id) = self.id {
            params.push("id".to_string());
            params.push(id.to_string());
        }


        if let Some(ref full_name) = self.full_name {
            params.push("fullName".to_string());
            params.push(full_name.to_string());
        }


        if let Some(ref email) = self.email {
            params.push("email".to_string());
            params.push(email.to_string());
        }


        if let Some(ref name) = self.name {
            params.push("name".to_string());
            params.push(name.to_string());
        }

        params.join(",").to_string()
    }
}

/// Converts Query Parameters representation (style=form, explode=false) to a User value
/// as specified in https://swagger.io/docs/specification/serialization/
/// Should be implemented in a serde deserializer
impl std::str::FromStr for User {
    type Err = String;

    fn from_str(s: &str) -> std::result::Result<Self, Self::Err> {
        #[derive(Default)]
        // An intermediate representation of the struct to use for parsing.
        struct IntermediateRep {
            pub _class: Vec<String>,
            pub id: Vec<String>,
            pub full_name: Vec<String>,
            pub email: Vec<String>,
            pub name: Vec<String>,
        }

        let mut intermediate_rep = IntermediateRep::default();

        // Parse into intermediate representation
        let mut string_iter = s.split(',').into_iter();
        let mut key_result = string_iter.next();

        while key_result.is_some() {
            let val = match string_iter.next() {
                Some(x) => x,
                None => return std::result::Result::Err("Missing value while parsing User".to_string())
            };

            if let Some(key) = key_result {
                match key {
                    "_class" => intermediate_rep._class.push(<String as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "id" => intermediate_rep.id.push(<String as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "fullName" => intermediate_rep.full_name.push(<String as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "email" => intermediate_rep.email.push(<String as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "name" => intermediate_rep.name.push(<String as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    _ => return std::result::Result::Err("Unexpected key while parsing User".to_string())
                }
            }

            // Get the next key
            key_result = string_iter.next();
        }

        // Use the intermediate representation to return the struct
        std::result::Result::Ok(User {
            _class: intermediate_rep._class.into_iter().next(),
            id: intermediate_rep.id.into_iter().next(),
            full_name: intermediate_rep.full_name.into_iter().next(),
            email: intermediate_rep.email.into_iter().next(),
            name: intermediate_rep.name.into_iter().next(),
        })
    }
}

// Methods for converting between header::IntoHeaderValue<User> and hyper::header::HeaderValue

#[cfg(any(feature = "client", feature = "server"))]
impl std::convert::TryFrom<header::IntoHeaderValue<User>> for hyper::header::HeaderValue {
    type Error = String;

    fn try_from(hdr_value: header::IntoHeaderValue<User>) -> std::result::Result<Self, Self::Error> {
        let hdr_value = hdr_value.to_string();
        match hyper::header::HeaderValue::from_str(&hdr_value) {
             std::result::Result::Ok(value) => std::result::Result::Ok(value),
             std::result::Result::Err(e) => std::result::Result::Err(
                 format!("Invalid header value for User - value: {} is invalid {}",
                     hdr_value, e))
        }
    }
}

#[cfg(any(feature = "client", feature = "server"))]
impl std::convert::TryFrom<hyper::header::HeaderValue> for header::IntoHeaderValue<User> {
    type Error = String;

    fn try_from(hdr_value: hyper::header::HeaderValue) -> std::result::Result<Self, Self::Error> {
        match hdr_value.to_str() {
             std::result::Result::Ok(value) => {
                    match <User as std::str::FromStr>::from_str(value) {
                        std::result::Result::Ok(value) => std::result::Result::Ok(header::IntoHeaderValue(value)),
                        std::result::Result::Err(err) => std::result::Result::Err(
                            format!("Unable to convert header value '{}' into User - {}",
                                value, err))
                    }
             },
             std::result::Result::Err(e) => std::result::Result::Err(
                 format!("Unable to convert header: {:?} to string: {}",
                     hdr_value, e))
        }
    }
}


impl User {
    /// Helper function to allow us to convert this model to an XML string.
    /// Will panic if serialisation fails.
    #[allow(dead_code)]
    pub(crate) fn to_xml(&self) -> String {
        serde_xml_rs::to_string(&self).expect("impossible to fail to serialize")
    }
}
