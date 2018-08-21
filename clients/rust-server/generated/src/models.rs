#![allow(unused_imports, unused_qualifications, unused_extern_crates)]
extern crate chrono;
extern crate uuid;


use serde::ser::Serializer;

use std::collections::HashMap;
use models;
use swagger;


#[derive(Debug, Clone, PartialEq, Serialize, Deserialize)]
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

#[derive(Debug, Clone, PartialEq, Serialize, Deserialize)]
pub struct Body {
    #[serde(rename = "favorite")]
    pub favorite: bool,

}

impl Body {
    pub fn new(favorite: bool, ) -> Body {
        Body {
            favorite: favorite,
        }
    }
}

#[derive(Debug, Clone, PartialEq, Serialize, Deserialize)]
pub struct BranchImpl {
    #[serde(rename = "_class")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub _class: Option<String>,

    #[serde(rename = "displayName")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub display_name: Option<String>,

    #[serde(rename = "estimatedDurationInMillis")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub estimated_duration_in_millis: Option<i32>,

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
    pub weather_score: Option<i32>,

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

#[derive(Debug, Clone, PartialEq, Serialize, Deserialize)]
pub struct BranchImpllinks {
    #[serde(rename = "self")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub _self: Option<models::Link>,

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
            _self: None,
            actions: None,
            runs: None,
            queue: None,
            _class: None,
        }
    }
}

#[derive(Debug, Clone, PartialEq, Serialize, Deserialize)]
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

#[derive(Debug, Clone, PartialEq, Serialize, Deserialize)]
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

#[derive(Debug, Clone, PartialEq, Serialize, Deserialize)]
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

#[derive(Debug, Clone, PartialEq, Serialize, Deserialize)]
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

#[derive(Debug, Clone, PartialEq, Serialize, Deserialize)]
pub struct ClockDifference {
    #[serde(rename = "_class")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub _class: Option<String>,

    #[serde(rename = "diff")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub diff: Option<i32>,

}

impl ClockDifference {
    pub fn new() -> ClockDifference {
        ClockDifference {
            _class: None,
            diff: None,
        }
    }
}

#[derive(Debug, Clone, PartialEq, Serialize, Deserialize)]
pub struct ComputerSet {
    #[serde(rename = "_class")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub _class: Option<String>,

    #[serde(rename = "busyExecutors")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub busy_executors: Option<i32>,

    #[serde(rename = "computer")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub computer: Option<Vec<models::HudsonMasterComputer>>,

    #[serde(rename = "displayName")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub display_name: Option<String>,

    #[serde(rename = "totalExecutors")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub total_executors: Option<i32>,

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

#[derive(Debug, Clone, PartialEq, Serialize, Deserialize)]
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

#[derive(Debug, Clone, PartialEq, Serialize, Deserialize)]
pub struct DiskSpaceMonitorDescriptorDiskSpace {
    #[serde(rename = "_class")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub _class: Option<String>,

    #[serde(rename = "timestamp")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub timestamp: Option<i32>,

    #[serde(rename = "path")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub path: Option<String>,

    #[serde(rename = "size")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub size: Option<i32>,

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

#[derive(Debug, Clone, PartialEq, Serialize, Deserialize)]
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

#[derive(Debug, Clone, PartialEq, Serialize, Deserialize)]
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

#[derive(Debug, Clone, PartialEq, Serialize, Deserialize)]
pub struct ExtensionClassContainerImpl1links {
    #[serde(rename = "self")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub _self: Option<models::Link>,

    #[serde(rename = "_class")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub _class: Option<String>,

}

impl ExtensionClassContainerImpl1links {
    pub fn new() -> ExtensionClassContainerImpl1links {
        ExtensionClassContainerImpl1links {
            _self: None,
            _class: None,
        }
    }
}

#[derive(Debug, Clone, PartialEq, Serialize, Deserialize)]
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

#[derive(Debug, Clone, PartialEq, Serialize, Deserialize)]
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

#[derive(Debug, Clone, PartialEq, Serialize, Deserialize)]
pub struct ExtensionClassImpllinks {
    #[serde(rename = "self")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub _self: Option<models::Link>,

    #[serde(rename = "_class")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub _class: Option<String>,

}

impl ExtensionClassImpllinks {
    pub fn new() -> ExtensionClassImpllinks {
        ExtensionClassImpllinks {
            _self: None,
            _class: None,
        }
    }
}

#[derive(Debug, Clone, PartialEq, Serialize, Deserialize)]
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

#[derive(Debug, Clone, PartialEq, Serialize, Deserialize)]
pub struct FavoriteImpllinks {
    #[serde(rename = "self")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub _self: Option<models::Link>,

    #[serde(rename = "_class")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub _class: Option<String>,

}

impl FavoriteImpllinks {
    pub fn new() -> FavoriteImpllinks {
        FavoriteImpllinks {
            _self: None,
            _class: None,
        }
    }
}

#[derive(Debug, Clone, PartialEq, Serialize, Deserialize)]
pub struct FreeStyleBuild {
    #[serde(rename = "_class")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub _class: Option<String>,

    #[serde(rename = "number")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub number: Option<i32>,

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
    pub duration: Option<i32>,

    #[serde(rename = "estimatedDuration")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub estimated_duration: Option<i32>,

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
    pub queue_id: Option<i32>,

    #[serde(rename = "result")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub result: Option<String>,

    #[serde(rename = "timestamp")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub timestamp: Option<i32>,

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

#[derive(Debug, Clone, PartialEq, Serialize, Deserialize)]
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
    pub next_build_number: Option<i32>,

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

#[derive(Debug, Clone, PartialEq, Serialize, Deserialize)]
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

#[derive(Debug, Clone, PartialEq, Serialize, Deserialize)]
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
    pub score: Option<i32>,

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

#[derive(Debug, Clone, PartialEq, Serialize, Deserialize)]
pub struct GenericResource {
    #[serde(rename = "_class")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub _class: Option<String>,

    #[serde(rename = "displayName")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub display_name: Option<String>,

    #[serde(rename = "durationInMillis")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub duration_in_millis: Option<i32>,

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

#[derive(Debug, Clone, PartialEq, Serialize, Deserialize)]
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
    pub size: Option<i32>,

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

#[derive(Debug, Clone, PartialEq, Serialize, Deserialize)]
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

#[derive(Debug, Clone, PartialEq, Serialize, Deserialize)]
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

#[derive(Debug, Clone, PartialEq, Serialize, Deserialize)]
pub struct GithubOrganizationlinks {
    #[serde(rename = "repositories")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub repositories: Option<models::Link>,

    #[serde(rename = "self")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub _self: Option<models::Link>,

    #[serde(rename = "_class")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub _class: Option<String>,

}

impl GithubOrganizationlinks {
    pub fn new() -> GithubOrganizationlinks {
        GithubOrganizationlinks {
            repositories: None,
            _self: None,
            _class: None,
        }
    }
}

#[derive(Debug, Clone, PartialEq, Serialize, Deserialize)]
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
    pub last_page: Option<i32>,

    #[serde(rename = "nextPage")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub next_page: Option<i32>,

    #[serde(rename = "pageSize")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub page_size: Option<i32>,

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

#[derive(Debug, Clone, PartialEq, Serialize, Deserialize)]
pub struct GithubRepositorieslinks {
    #[serde(rename = "self")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub _self: Option<models::Link>,

    #[serde(rename = "_class")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub _class: Option<String>,

}

impl GithubRepositorieslinks {
    pub fn new() -> GithubRepositorieslinks {
        GithubRepositorieslinks {
            _self: None,
            _class: None,
        }
    }
}

#[derive(Debug, Clone, PartialEq, Serialize, Deserialize)]
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

#[derive(Debug, Clone, PartialEq, Serialize, Deserialize)]
pub struct GithubRepositorylinks {
    #[serde(rename = "self")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub _self: Option<models::Link>,

    #[serde(rename = "_class")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub _class: Option<String>,

}

impl GithubRepositorylinks {
    pub fn new() -> GithubRepositorylinks {
        GithubRepositorylinks {
            _self: None,
            _class: None,
        }
    }
}

#[derive(Debug, Clone, PartialEq, Serialize, Deserialize)]
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

#[derive(Debug, Clone, PartialEq, Serialize, Deserialize)]
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

#[derive(Debug, Clone, PartialEq, Serialize, Deserialize)]
pub struct GithubRespositoryContainerlinks {
    #[serde(rename = "self")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub _self: Option<models::Link>,

    #[serde(rename = "_class")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub _class: Option<String>,

}

impl GithubRespositoryContainerlinks {
    pub fn new() -> GithubRespositoryContainerlinks {
        GithubRespositoryContainerlinks {
            _self: None,
            _class: None,
        }
    }
}

#[derive(Debug, Clone, PartialEq, Serialize, Deserialize)]
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

#[derive(Debug, Clone, PartialEq, Serialize, Deserialize)]
pub struct GithubScmlinks {
    #[serde(rename = "self")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub _self: Option<models::Link>,

    #[serde(rename = "_class")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub _class: Option<String>,

}

impl GithubScmlinks {
    pub fn new() -> GithubScmlinks {
        GithubScmlinks {
            _self: None,
            _class: None,
        }
    }
}

#[derive(Debug, Clone, PartialEq, Serialize, Deserialize)]
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
    pub num_executors: Option<i32>,

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
    pub slave_agent_port: Option<i32>,

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

#[derive(Debug, Clone, PartialEq, Serialize, Deserialize)]
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
    pub num_executors: Option<i32>,

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

#[derive(Debug, Clone, PartialEq, Serialize, Deserialize)]
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
    pub number: Option<i32>,

    #[serde(rename = "progress")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub progress: Option<i32>,

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

#[derive(Debug, Clone, PartialEq, Serialize, Deserialize)]
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

#[derive(Debug, Clone, PartialEq, Serialize, Deserialize)]
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

#[derive(Debug, Clone, PartialEq, Serialize, Deserialize)]
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

#[derive(Debug, Clone, PartialEq, Serialize, Deserialize)]
pub struct InputStepImpllinks {
    #[serde(rename = "self")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub _self: Option<models::Link>,

    #[serde(rename = "_class")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub _class: Option<String>,

}

impl InputStepImpllinks {
    pub fn new() -> InputStepImpllinks {
        InputStepImpllinks {
            _self: None,
            _class: None,
        }
    }
}

#[derive(Debug, Clone, PartialEq, Serialize, Deserialize)]
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

#[derive(Debug, Clone, PartialEq, Serialize, Deserialize)]
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

#[derive(Debug, Clone, PartialEq, Serialize, Deserialize)]
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

#[derive(Debug, Clone, PartialEq, Serialize, Deserialize)]
pub struct MultibranchPipeline {
    #[serde(rename = "displayName")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub display_name: Option<String>,

    #[serde(rename = "estimatedDurationInMillis")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub estimated_duration_in_millis: Option<i32>,

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
    pub weather_score: Option<i32>,

    #[serde(rename = "branchNames")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub branch_names: Option<Vec<String>>,

    #[serde(rename = "numberOfFailingBranches")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub number_of_failing_branches: Option<i32>,

    #[serde(rename = "numberOfFailingPullRequests")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub number_of_failing_pull_requests: Option<i32>,

    #[serde(rename = "numberOfSuccessfulBranches")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub number_of_successful_branches: Option<i32>,

    #[serde(rename = "numberOfSuccessfulPullRequests")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub number_of_successful_pull_requests: Option<i32>,

    #[serde(rename = "totalNumberOfBranches")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub total_number_of_branches: Option<i32>,

    #[serde(rename = "totalNumberOfPullRequests")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub total_number_of_pull_requests: Option<i32>,

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

#[derive(Debug, Clone, PartialEq, Serialize, Deserialize)]
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

#[derive(Debug, Clone, PartialEq, Serialize, Deserialize)]
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

#[derive(Debug, Clone, PartialEq, Serialize, Deserialize)]
pub struct Organisations(Vec<Organisation>);

impl ::std::convert::From<Vec<Organisation>> for Organisations {
    fn from(x: Vec<Organisation>) -> Self {
        Organisations(x)
    }
}

impl ::std::convert::From<Organisations> for Vec<Organisation> {
    fn from(x: Organisations) -> Self {
        x.0
    }
}

impl ::std::iter::FromIterator<Organisation> for Organisations {
    fn from_iter<U: IntoIterator<Item=Organisation>>(u: U) -> Self {
        Organisations(Vec::<Organisation>::from_iter(u))
    }
}

impl ::std::iter::IntoIterator for Organisations {
    type Item = Organisation;
    type IntoIter = ::std::vec::IntoIter<Organisation>;

    fn into_iter(self) -> Self::IntoIter {
        self.0.into_iter()
    }
}

impl<'a> ::std::iter::IntoIterator for &'a Organisations {
    type Item = &'a Organisation;
    type IntoIter = ::std::slice::Iter<'a, Organisation>;

    fn into_iter(self) -> Self::IntoIter {
        (&self.0).into_iter()
    }
}

impl<'a> ::std::iter::IntoIterator for &'a mut Organisations {
    type Item = &'a mut Organisation;
    type IntoIter = ::std::slice::IterMut<'a, Organisation>;

    fn into_iter(self) -> Self::IntoIter {
        (&mut self.0).into_iter()
    }
}

impl ::std::ops::Deref for Organisations {
    type Target = Vec<Organisation>;
    fn deref(&self) -> &Self::Target {
        &self.0
    }
}

impl ::std::ops::DerefMut for Organisations {
    fn deref_mut(&mut self) -> &mut Self::Target {
        &mut self.0
    }
}


#[derive(Debug, Clone, PartialEq, Serialize, Deserialize)]
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
    pub weather_score: Option<i32>,

    #[serde(rename = "estimatedDurationInMillis")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub estimated_duration_in_millis: Option<i32>,

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

#[derive(Debug, Clone, PartialEq, Serialize, Deserialize)]
pub struct PipelineActivities(Vec<PipelineActivity>);

impl ::std::convert::From<Vec<PipelineActivity>> for PipelineActivities {
    fn from(x: Vec<PipelineActivity>) -> Self {
        PipelineActivities(x)
    }
}

impl ::std::convert::From<PipelineActivities> for Vec<PipelineActivity> {
    fn from(x: PipelineActivities) -> Self {
        x.0
    }
}

impl ::std::iter::FromIterator<PipelineActivity> for PipelineActivities {
    fn from_iter<U: IntoIterator<Item=PipelineActivity>>(u: U) -> Self {
        PipelineActivities(Vec::<PipelineActivity>::from_iter(u))
    }
}

impl ::std::iter::IntoIterator for PipelineActivities {
    type Item = PipelineActivity;
    type IntoIter = ::std::vec::IntoIter<PipelineActivity>;

    fn into_iter(self) -> Self::IntoIter {
        self.0.into_iter()
    }
}

impl<'a> ::std::iter::IntoIterator for &'a PipelineActivities {
    type Item = &'a PipelineActivity;
    type IntoIter = ::std::slice::Iter<'a, PipelineActivity>;

    fn into_iter(self) -> Self::IntoIter {
        (&self.0).into_iter()
    }
}

impl<'a> ::std::iter::IntoIterator for &'a mut PipelineActivities {
    type Item = &'a mut PipelineActivity;
    type IntoIter = ::std::slice::IterMut<'a, PipelineActivity>;

    fn into_iter(self) -> Self::IntoIter {
        (&mut self.0).into_iter()
    }
}

impl ::std::ops::Deref for PipelineActivities {
    type Target = Vec<PipelineActivity>;
    fn deref(&self) -> &Self::Target {
        &self.0
    }
}

impl ::std::ops::DerefMut for PipelineActivities {
    fn deref_mut(&mut self) -> &mut Self::Target {
        &mut self.0
    }
}


#[derive(Debug, Clone, PartialEq, Serialize, Deserialize)]
pub struct PipelineActivity {
    #[serde(rename = "_class")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub _class: Option<String>,

    #[serde(rename = "artifacts")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub artifacts: Option<Vec<models::PipelineActivityartifacts>>,

    #[serde(rename = "durationInMillis")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub duration_in_millis: Option<i32>,

    #[serde(rename = "estimatedDurationInMillis")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub estimated_duration_in_millis: Option<i32>,

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
    pub _type: Option<String>,

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
            _type: None,
            commit_id: None,
        }
    }
}

#[derive(Debug, Clone, PartialEq, Serialize, Deserialize)]
pub struct PipelineActivityartifacts {
    #[serde(rename = "name")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub name: Option<String>,

    #[serde(rename = "size")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub size: Option<i32>,

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

#[derive(Debug, Clone, PartialEq, Serialize, Deserialize)]
pub struct PipelineBranches(Vec<PipelineBranchesitem>);

impl ::std::convert::From<Vec<PipelineBranchesitem>> for PipelineBranches {
    fn from(x: Vec<PipelineBranchesitem>) -> Self {
        PipelineBranches(x)
    }
}

impl ::std::convert::From<PipelineBranches> for Vec<PipelineBranchesitem> {
    fn from(x: PipelineBranches) -> Self {
        x.0
    }
}

impl ::std::iter::FromIterator<PipelineBranchesitem> for PipelineBranches {
    fn from_iter<U: IntoIterator<Item=PipelineBranchesitem>>(u: U) -> Self {
        PipelineBranches(Vec::<PipelineBranchesitem>::from_iter(u))
    }
}

impl ::std::iter::IntoIterator for PipelineBranches {
    type Item = PipelineBranchesitem;
    type IntoIter = ::std::vec::IntoIter<PipelineBranchesitem>;

    fn into_iter(self) -> Self::IntoIter {
        self.0.into_iter()
    }
}

impl<'a> ::std::iter::IntoIterator for &'a PipelineBranches {
    type Item = &'a PipelineBranchesitem;
    type IntoIter = ::std::slice::Iter<'a, PipelineBranchesitem>;

    fn into_iter(self) -> Self::IntoIter {
        (&self.0).into_iter()
    }
}

impl<'a> ::std::iter::IntoIterator for &'a mut PipelineBranches {
    type Item = &'a mut PipelineBranchesitem;
    type IntoIter = ::std::slice::IterMut<'a, PipelineBranchesitem>;

    fn into_iter(self) -> Self::IntoIter {
        (&mut self.0).into_iter()
    }
}

impl ::std::ops::Deref for PipelineBranches {
    type Target = Vec<PipelineBranchesitem>;
    fn deref(&self) -> &Self::Target {
        &self.0
    }
}

impl ::std::ops::DerefMut for PipelineBranches {
    fn deref_mut(&mut self) -> &mut Self::Target {
        &mut self.0
    }
}


#[derive(Debug, Clone, PartialEq, Serialize, Deserialize)]
pub struct PipelineBranchesitem {
    #[serde(rename = "displayName")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub display_name: Option<String>,

    #[serde(rename = "estimatedDurationInMillis")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub estimated_duration_in_millis: Option<i32>,

    #[serde(rename = "name")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub name: Option<String>,

    #[serde(rename = "weatherScore")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub weather_score: Option<i32>,

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
    pub total_number_of_pull_requests: Option<i32>,

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

#[derive(Debug, Clone, PartialEq, Serialize, Deserialize)]
pub struct PipelineBranchesitemlatestRun {
    #[serde(rename = "durationInMillis")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub duration_in_millis: Option<i32>,

    #[serde(rename = "estimatedDurationInMillis")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub estimated_duration_in_millis: Option<i32>,

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
    pub _type: Option<String>,

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
            _type: None,
            commit_id: None,
            _class: None,
        }
    }
}

#[derive(Debug, Clone, PartialEq, Serialize, Deserialize)]
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

#[derive(Debug, Clone, PartialEq, Serialize, Deserialize)]
pub struct PipelineBranchesitempullRequestlinks {
    #[serde(rename = "self")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub _self: Option<String>,

    #[serde(rename = "_class")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub _class: Option<String>,

}

impl PipelineBranchesitempullRequestlinks {
    pub fn new() -> PipelineBranchesitempullRequestlinks {
        PipelineBranchesitempullRequestlinks {
            _self: None,
            _class: None,
        }
    }
}

#[derive(Debug, Clone, PartialEq, Serialize, Deserialize)]
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
    pub number_of_folders: Option<i32>,

    #[serde(rename = "numberOfPipelines")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub number_of_pipelines: Option<i32>,

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

#[derive(Debug, Clone, PartialEq, Serialize, Deserialize)]
pub struct PipelineImpl {
    #[serde(rename = "_class")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub _class: Option<String>,

    #[serde(rename = "displayName")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub display_name: Option<String>,

    #[serde(rename = "estimatedDurationInMillis")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub estimated_duration_in_millis: Option<i32>,

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
    pub weather_score: Option<i32>,

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

#[derive(Debug, Clone, PartialEq, Serialize, Deserialize)]
pub struct PipelineImpllinks {
    #[serde(rename = "runs")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub runs: Option<models::Link>,

    #[serde(rename = "self")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub _self: Option<models::Link>,

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
            _self: None,
            queue: None,
            actions: None,
            _class: None,
        }
    }
}

#[derive(Debug, Clone, PartialEq, Serialize, Deserialize)]
pub struct PipelineQueue(Vec<QueueItemImpl>);

impl ::std::convert::From<Vec<QueueItemImpl>> for PipelineQueue {
    fn from(x: Vec<QueueItemImpl>) -> Self {
        PipelineQueue(x)
    }
}

impl ::std::convert::From<PipelineQueue> for Vec<QueueItemImpl> {
    fn from(x: PipelineQueue) -> Self {
        x.0
    }
}

impl ::std::iter::FromIterator<QueueItemImpl> for PipelineQueue {
    fn from_iter<U: IntoIterator<Item=QueueItemImpl>>(u: U) -> Self {
        PipelineQueue(Vec::<QueueItemImpl>::from_iter(u))
    }
}

impl ::std::iter::IntoIterator for PipelineQueue {
    type Item = QueueItemImpl;
    type IntoIter = ::std::vec::IntoIter<QueueItemImpl>;

    fn into_iter(self) -> Self::IntoIter {
        self.0.into_iter()
    }
}

impl<'a> ::std::iter::IntoIterator for &'a PipelineQueue {
    type Item = &'a QueueItemImpl;
    type IntoIter = ::std::slice::Iter<'a, QueueItemImpl>;

    fn into_iter(self) -> Self::IntoIter {
        (&self.0).into_iter()
    }
}

impl<'a> ::std::iter::IntoIterator for &'a mut PipelineQueue {
    type Item = &'a mut QueueItemImpl;
    type IntoIter = ::std::slice::IterMut<'a, QueueItemImpl>;

    fn into_iter(self) -> Self::IntoIter {
        (&mut self.0).into_iter()
    }
}

impl ::std::ops::Deref for PipelineQueue {
    type Target = Vec<QueueItemImpl>;
    fn deref(&self) -> &Self::Target {
        &self.0
    }
}

impl ::std::ops::DerefMut for PipelineQueue {
    fn deref_mut(&mut self) -> &mut Self::Target {
        &mut self.0
    }
}


#[derive(Debug, Clone, PartialEq, Serialize, Deserialize)]
pub struct PipelineRun {
    #[serde(rename = "_class")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub _class: Option<String>,

    #[serde(rename = "artifacts")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub artifacts: Option<Vec<models::PipelineRunartifacts>>,

    #[serde(rename = "durationInMillis")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub duration_in_millis: Option<i32>,

    #[serde(rename = "estimatedDurationInMillis")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub estimated_duration_in_millis: Option<i32>,

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
    pub _type: Option<String>,

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
            _type: None,
            commit_id: None,
        }
    }
}

#[derive(Debug, Clone, PartialEq, Serialize, Deserialize)]
pub struct PipelineRunImpl {
    #[serde(rename = "_class")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub _class: Option<String>,

    #[serde(rename = "_links")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub _links: Option<models::PipelineRunImpllinks>,

    #[serde(rename = "durationInMillis")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub duration_in_millis: Option<i32>,

    #[serde(rename = "enQueueTime")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub en_queue_time: Option<String>,

    #[serde(rename = "endTime")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub end_time: Option<String>,

    #[serde(rename = "estimatedDurationInMillis")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub estimated_duration_in_millis: Option<i32>,

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
    pub _type: Option<String>,

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
            _type: None,
            commit_id: None,
        }
    }
}

#[derive(Debug, Clone, PartialEq, Serialize, Deserialize)]
pub struct PipelineRunImpllinks {
    #[serde(rename = "nodes")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub nodes: Option<models::Link>,

    #[serde(rename = "log")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub log: Option<models::Link>,

    #[serde(rename = "self")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub _self: Option<models::Link>,

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
            _self: None,
            actions: None,
            steps: None,
            _class: None,
        }
    }
}

#[derive(Debug, Clone, PartialEq, Serialize, Deserialize)]
pub struct PipelineRunNode {
    #[serde(rename = "_class")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub _class: Option<String>,

    #[serde(rename = "displayName")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub display_name: Option<String>,

    #[serde(rename = "durationInMillis")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub duration_in_millis: Option<i32>,

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

#[derive(Debug, Clone, PartialEq, Serialize, Deserialize)]
pub struct PipelineRunNodeSteps(Vec<PipelineStepImpl>);

impl ::std::convert::From<Vec<PipelineStepImpl>> for PipelineRunNodeSteps {
    fn from(x: Vec<PipelineStepImpl>) -> Self {
        PipelineRunNodeSteps(x)
    }
}

impl ::std::convert::From<PipelineRunNodeSteps> for Vec<PipelineStepImpl> {
    fn from(x: PipelineRunNodeSteps) -> Self {
        x.0
    }
}

impl ::std::iter::FromIterator<PipelineStepImpl> for PipelineRunNodeSteps {
    fn from_iter<U: IntoIterator<Item=PipelineStepImpl>>(u: U) -> Self {
        PipelineRunNodeSteps(Vec::<PipelineStepImpl>::from_iter(u))
    }
}

impl ::std::iter::IntoIterator for PipelineRunNodeSteps {
    type Item = PipelineStepImpl;
    type IntoIter = ::std::vec::IntoIter<PipelineStepImpl>;

    fn into_iter(self) -> Self::IntoIter {
        self.0.into_iter()
    }
}

impl<'a> ::std::iter::IntoIterator for &'a PipelineRunNodeSteps {
    type Item = &'a PipelineStepImpl;
    type IntoIter = ::std::slice::Iter<'a, PipelineStepImpl>;

    fn into_iter(self) -> Self::IntoIter {
        (&self.0).into_iter()
    }
}

impl<'a> ::std::iter::IntoIterator for &'a mut PipelineRunNodeSteps {
    type Item = &'a mut PipelineStepImpl;
    type IntoIter = ::std::slice::IterMut<'a, PipelineStepImpl>;

    fn into_iter(self) -> Self::IntoIter {
        (&mut self.0).into_iter()
    }
}

impl ::std::ops::Deref for PipelineRunNodeSteps {
    type Target = Vec<PipelineStepImpl>;
    fn deref(&self) -> &Self::Target {
        &self.0
    }
}

impl ::std::ops::DerefMut for PipelineRunNodeSteps {
    fn deref_mut(&mut self) -> &mut Self::Target {
        &mut self.0
    }
}


#[derive(Debug, Clone, PartialEq, Serialize, Deserialize)]
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

#[derive(Debug, Clone, PartialEq, Serialize, Deserialize)]
pub struct PipelineRunNodes(Vec<PipelineRunNode>);

impl ::std::convert::From<Vec<PipelineRunNode>> for PipelineRunNodes {
    fn from(x: Vec<PipelineRunNode>) -> Self {
        PipelineRunNodes(x)
    }
}

impl ::std::convert::From<PipelineRunNodes> for Vec<PipelineRunNode> {
    fn from(x: PipelineRunNodes) -> Self {
        x.0
    }
}

impl ::std::iter::FromIterator<PipelineRunNode> for PipelineRunNodes {
    fn from_iter<U: IntoIterator<Item=PipelineRunNode>>(u: U) -> Self {
        PipelineRunNodes(Vec::<PipelineRunNode>::from_iter(u))
    }
}

impl ::std::iter::IntoIterator for PipelineRunNodes {
    type Item = PipelineRunNode;
    type IntoIter = ::std::vec::IntoIter<PipelineRunNode>;

    fn into_iter(self) -> Self::IntoIter {
        self.0.into_iter()
    }
}

impl<'a> ::std::iter::IntoIterator for &'a PipelineRunNodes {
    type Item = &'a PipelineRunNode;
    type IntoIter = ::std::slice::Iter<'a, PipelineRunNode>;

    fn into_iter(self) -> Self::IntoIter {
        (&self.0).into_iter()
    }
}

impl<'a> ::std::iter::IntoIterator for &'a mut PipelineRunNodes {
    type Item = &'a mut PipelineRunNode;
    type IntoIter = ::std::slice::IterMut<'a, PipelineRunNode>;

    fn into_iter(self) -> Self::IntoIter {
        (&mut self.0).into_iter()
    }
}

impl ::std::ops::Deref for PipelineRunNodes {
    type Target = Vec<PipelineRunNode>;
    fn deref(&self) -> &Self::Target {
        &self.0
    }
}

impl ::std::ops::DerefMut for PipelineRunNodes {
    fn deref_mut(&mut self) -> &mut Self::Target {
        &mut self.0
    }
}


#[derive(Debug, Clone, PartialEq, Serialize, Deserialize)]
pub struct PipelineRunSteps(Vec<GenericResource>);

impl ::std::convert::From<Vec<GenericResource>> for PipelineRunSteps {
    fn from(x: Vec<GenericResource>) -> Self {
        PipelineRunSteps(x)
    }
}

impl ::std::convert::From<PipelineRunSteps> for Vec<GenericResource> {
    fn from(x: PipelineRunSteps) -> Self {
        x.0
    }
}

impl ::std::iter::FromIterator<GenericResource> for PipelineRunSteps {
    fn from_iter<U: IntoIterator<Item=GenericResource>>(u: U) -> Self {
        PipelineRunSteps(Vec::<GenericResource>::from_iter(u))
    }
}

impl ::std::iter::IntoIterator for PipelineRunSteps {
    type Item = GenericResource;
    type IntoIter = ::std::vec::IntoIter<GenericResource>;

    fn into_iter(self) -> Self::IntoIter {
        self.0.into_iter()
    }
}

impl<'a> ::std::iter::IntoIterator for &'a PipelineRunSteps {
    type Item = &'a GenericResource;
    type IntoIter = ::std::slice::Iter<'a, GenericResource>;

    fn into_iter(self) -> Self::IntoIter {
        (&self.0).into_iter()
    }
}

impl<'a> ::std::iter::IntoIterator for &'a mut PipelineRunSteps {
    type Item = &'a mut GenericResource;
    type IntoIter = ::std::slice::IterMut<'a, GenericResource>;

    fn into_iter(self) -> Self::IntoIter {
        (&mut self.0).into_iter()
    }
}

impl ::std::ops::Deref for PipelineRunSteps {
    type Target = Vec<GenericResource>;
    fn deref(&self) -> &Self::Target {
        &self.0
    }
}

impl ::std::ops::DerefMut for PipelineRunSteps {
    fn deref_mut(&mut self) -> &mut Self::Target {
        &mut self.0
    }
}


#[derive(Debug, Clone, PartialEq, Serialize, Deserialize)]
pub struct PipelineRunartifacts {
    #[serde(rename = "name")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub name: Option<String>,

    #[serde(rename = "size")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub size: Option<i32>,

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

#[derive(Debug, Clone, PartialEq, Serialize, Deserialize)]
pub struct PipelineRuns(Vec<PipelineRun>);

impl ::std::convert::From<Vec<PipelineRun>> for PipelineRuns {
    fn from(x: Vec<PipelineRun>) -> Self {
        PipelineRuns(x)
    }
}

impl ::std::convert::From<PipelineRuns> for Vec<PipelineRun> {
    fn from(x: PipelineRuns) -> Self {
        x.0
    }
}

impl ::std::iter::FromIterator<PipelineRun> for PipelineRuns {
    fn from_iter<U: IntoIterator<Item=PipelineRun>>(u: U) -> Self {
        PipelineRuns(Vec::<PipelineRun>::from_iter(u))
    }
}

impl ::std::iter::IntoIterator for PipelineRuns {
    type Item = PipelineRun;
    type IntoIter = ::std::vec::IntoIter<PipelineRun>;

    fn into_iter(self) -> Self::IntoIter {
        self.0.into_iter()
    }
}

impl<'a> ::std::iter::IntoIterator for &'a PipelineRuns {
    type Item = &'a PipelineRun;
    type IntoIter = ::std::slice::Iter<'a, PipelineRun>;

    fn into_iter(self) -> Self::IntoIter {
        (&self.0).into_iter()
    }
}

impl<'a> ::std::iter::IntoIterator for &'a mut PipelineRuns {
    type Item = &'a mut PipelineRun;
    type IntoIter = ::std::slice::IterMut<'a, PipelineRun>;

    fn into_iter(self) -> Self::IntoIter {
        (&mut self.0).into_iter()
    }
}

impl ::std::ops::Deref for PipelineRuns {
    type Target = Vec<PipelineRun>;
    fn deref(&self) -> &Self::Target {
        &self.0
    }
}

impl ::std::ops::DerefMut for PipelineRuns {
    fn deref_mut(&mut self) -> &mut Self::Target {
        &mut self.0
    }
}


#[derive(Debug, Clone, PartialEq, Serialize, Deserialize)]
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
    pub duration_in_millis: Option<i32>,

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

#[derive(Debug, Clone, PartialEq, Serialize, Deserialize)]
pub struct PipelineStepImpllinks {
    #[serde(rename = "self")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub _self: Option<models::Link>,

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
            _self: None,
            actions: None,
            _class: None,
        }
    }
}

#[derive(Debug, Clone, PartialEq, Serialize, Deserialize)]
pub struct PipelinelatestRun {
    #[serde(rename = "artifacts")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub artifacts: Option<Vec<models::PipelinelatestRunartifacts>>,

    #[serde(rename = "durationInMillis")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub duration_in_millis: Option<i32>,

    #[serde(rename = "estimatedDurationInMillis")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub estimated_duration_in_millis: Option<i32>,

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
    pub _type: Option<String>,

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
            _type: None,
            commit_id: None,
            _class: None,
        }
    }
}

#[derive(Debug, Clone, PartialEq, Serialize, Deserialize)]
pub struct PipelinelatestRunartifacts {
    #[serde(rename = "name")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub name: Option<String>,

    #[serde(rename = "size")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub size: Option<i32>,

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

#[derive(Debug, Clone, PartialEq, Serialize, Deserialize)]
pub struct Pipelines(Vec<Pipeline>);

impl ::std::convert::From<Vec<Pipeline>> for Pipelines {
    fn from(x: Vec<Pipeline>) -> Self {
        Pipelines(x)
    }
}

impl ::std::convert::From<Pipelines> for Vec<Pipeline> {
    fn from(x: Pipelines) -> Self {
        x.0
    }
}

impl ::std::iter::FromIterator<Pipeline> for Pipelines {
    fn from_iter<U: IntoIterator<Item=Pipeline>>(u: U) -> Self {
        Pipelines(Vec::<Pipeline>::from_iter(u))
    }
}

impl ::std::iter::IntoIterator for Pipelines {
    type Item = Pipeline;
    type IntoIter = ::std::vec::IntoIter<Pipeline>;

    fn into_iter(self) -> Self::IntoIter {
        self.0.into_iter()
    }
}

impl<'a> ::std::iter::IntoIterator for &'a Pipelines {
    type Item = &'a Pipeline;
    type IntoIter = ::std::slice::Iter<'a, Pipeline>;

    fn into_iter(self) -> Self::IntoIter {
        (&self.0).into_iter()
    }
}

impl<'a> ::std::iter::IntoIterator for &'a mut Pipelines {
    type Item = &'a mut Pipeline;
    type IntoIter = ::std::slice::IterMut<'a, Pipeline>;

    fn into_iter(self) -> Self::IntoIter {
        (&mut self.0).into_iter()
    }
}

impl ::std::ops::Deref for Pipelines {
    type Target = Vec<Pipeline>;
    fn deref(&self) -> &Self::Target {
        &self.0
    }
}

impl ::std::ops::DerefMut for Pipelines {
    fn deref_mut(&mut self) -> &mut Self::Target {
        &mut self.0
    }
}


#[derive(Debug, Clone, PartialEq, Serialize, Deserialize)]
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

#[derive(Debug, Clone, PartialEq, Serialize, Deserialize)]
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
    pub id: Option<i32>,

    #[serde(rename = "inQueueSince")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub in_queue_since: Option<i32>,

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
    pub buildable_start_milliseconds: Option<i32>,

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

#[derive(Debug, Clone, PartialEq, Serialize, Deserialize)]
pub struct QueueItemImpl {
    #[serde(rename = "_class")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub _class: Option<String>,

    #[serde(rename = "expectedBuildNumber")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub expected_build_number: Option<i32>,

    #[serde(rename = "id")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub id: Option<String>,

    #[serde(rename = "pipeline")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub pipeline: Option<String>,

    #[serde(rename = "queuedTime")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub queued_time: Option<i32>,

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

#[derive(Debug, Clone, PartialEq, Serialize, Deserialize)]
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
    pub id: Option<i32>,

    #[serde(rename = "inQueueSince")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub in_queue_since: Option<i32>,

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

#[derive(Debug, Clone, PartialEq, Serialize, Deserialize)]
pub struct ResponseTimeMonitorData {
    #[serde(rename = "_class")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub _class: Option<String>,

    #[serde(rename = "timestamp")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub timestamp: Option<i32>,

    #[serde(rename = "average")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub average: Option<i32>,

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

#[derive(Debug, Clone, PartialEq, Serialize, Deserialize)]
pub struct ScmOrganisations(Vec<GithubOrganization>);

impl ::std::convert::From<Vec<GithubOrganization>> for ScmOrganisations {
    fn from(x: Vec<GithubOrganization>) -> Self {
        ScmOrganisations(x)
    }
}

impl ::std::convert::From<ScmOrganisations> for Vec<GithubOrganization> {
    fn from(x: ScmOrganisations) -> Self {
        x.0
    }
}

impl ::std::iter::FromIterator<GithubOrganization> for ScmOrganisations {
    fn from_iter<U: IntoIterator<Item=GithubOrganization>>(u: U) -> Self {
        ScmOrganisations(Vec::<GithubOrganization>::from_iter(u))
    }
}

impl ::std::iter::IntoIterator for ScmOrganisations {
    type Item = GithubOrganization;
    type IntoIter = ::std::vec::IntoIter<GithubOrganization>;

    fn into_iter(self) -> Self::IntoIter {
        self.0.into_iter()
    }
}

impl<'a> ::std::iter::IntoIterator for &'a ScmOrganisations {
    type Item = &'a GithubOrganization;
    type IntoIter = ::std::slice::Iter<'a, GithubOrganization>;

    fn into_iter(self) -> Self::IntoIter {
        (&self.0).into_iter()
    }
}

impl<'a> ::std::iter::IntoIterator for &'a mut ScmOrganisations {
    type Item = &'a mut GithubOrganization;
    type IntoIter = ::std::slice::IterMut<'a, GithubOrganization>;

    fn into_iter(self) -> Self::IntoIter {
        (&mut self.0).into_iter()
    }
}

impl ::std::ops::Deref for ScmOrganisations {
    type Target = Vec<GithubOrganization>;
    fn deref(&self) -> &Self::Target {
        &self.0
    }
}

impl ::std::ops::DerefMut for ScmOrganisations {
    fn deref_mut(&mut self) -> &mut Self::Target {
        &mut self.0
    }
}


#[derive(Debug, Clone, PartialEq, Serialize, Deserialize)]
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
    pub _type: Option<String>,

}

impl StringParameterDefinition {
    pub fn new() -> StringParameterDefinition {
        StringParameterDefinition {
            _class: None,
            default_parameter_value: None,
            description: None,
            name: None,
            _type: None,
        }
    }
}

#[derive(Debug, Clone, PartialEq, Serialize, Deserialize)]
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

#[derive(Debug, Clone, PartialEq, Serialize, Deserialize)]
pub struct SwapSpaceMonitorMemoryUsage2 {
    #[serde(rename = "_class")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub _class: Option<String>,

    #[serde(rename = "availablePhysicalMemory")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub available_physical_memory: Option<i32>,

    #[serde(rename = "availableSwapSpace")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub available_swap_space: Option<i32>,

    #[serde(rename = "totalPhysicalMemory")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub total_physical_memory: Option<i32>,

    #[serde(rename = "totalSwapSpace")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub total_swap_space: Option<i32>,

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

#[derive(Debug, Clone, PartialEq, Serialize, Deserialize)]
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

#[derive(Debug, Clone, PartialEq, Serialize, Deserialize)]
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

#[derive(Debug, Clone, PartialEq, Serialize, Deserialize)]
pub struct UserFavorites(Vec<FavoriteImpl>);

impl ::std::convert::From<Vec<FavoriteImpl>> for UserFavorites {
    fn from(x: Vec<FavoriteImpl>) -> Self {
        UserFavorites(x)
    }
}

impl ::std::convert::From<UserFavorites> for Vec<FavoriteImpl> {
    fn from(x: UserFavorites) -> Self {
        x.0
    }
}

impl ::std::iter::FromIterator<FavoriteImpl> for UserFavorites {
    fn from_iter<U: IntoIterator<Item=FavoriteImpl>>(u: U) -> Self {
        UserFavorites(Vec::<FavoriteImpl>::from_iter(u))
    }
}

impl ::std::iter::IntoIterator for UserFavorites {
    type Item = FavoriteImpl;
    type IntoIter = ::std::vec::IntoIter<FavoriteImpl>;

    fn into_iter(self) -> Self::IntoIter {
        self.0.into_iter()
    }
}

impl<'a> ::std::iter::IntoIterator for &'a UserFavorites {
    type Item = &'a FavoriteImpl;
    type IntoIter = ::std::slice::Iter<'a, FavoriteImpl>;

    fn into_iter(self) -> Self::IntoIter {
        (&self.0).into_iter()
    }
}

impl<'a> ::std::iter::IntoIterator for &'a mut UserFavorites {
    type Item = &'a mut FavoriteImpl;
    type IntoIter = ::std::slice::IterMut<'a, FavoriteImpl>;

    fn into_iter(self) -> Self::IntoIter {
        (&mut self.0).into_iter()
    }
}

impl ::std::ops::Deref for UserFavorites {
    type Target = Vec<FavoriteImpl>;
    fn deref(&self) -> &Self::Target {
        &self.0
    }
}

impl ::std::ops::DerefMut for UserFavorites {
    fn deref_mut(&mut self) -> &mut Self::Target {
        &mut self.0
    }
}


#[derive(Debug, Clone, PartialEq, Serialize, Deserialize)]
pub struct Users(Vec<User>);

impl ::std::convert::From<Vec<User>> for Users {
    fn from(x: Vec<User>) -> Self {
        Users(x)
    }
}

impl ::std::convert::From<Users> for Vec<User> {
    fn from(x: Users) -> Self {
        x.0
    }
}

impl ::std::iter::FromIterator<User> for Users {
    fn from_iter<U: IntoIterator<Item=User>>(u: U) -> Self {
        Users(Vec::<User>::from_iter(u))
    }
}

impl ::std::iter::IntoIterator for Users {
    type Item = User;
    type IntoIter = ::std::vec::IntoIter<User>;

    fn into_iter(self) -> Self::IntoIter {
        self.0.into_iter()
    }
}

impl<'a> ::std::iter::IntoIterator for &'a Users {
    type Item = &'a User;
    type IntoIter = ::std::slice::Iter<'a, User>;

    fn into_iter(self) -> Self::IntoIter {
        (&self.0).into_iter()
    }
}

impl<'a> ::std::iter::IntoIterator for &'a mut Users {
    type Item = &'a mut User;
    type IntoIter = ::std::slice::IterMut<'a, User>;

    fn into_iter(self) -> Self::IntoIter {
        (&mut self.0).into_iter()
    }
}

impl ::std::ops::Deref for Users {
    type Target = Vec<User>;
    fn deref(&self) -> &Self::Target {
        &self.0
    }
}

impl ::std::ops::DerefMut for Users {
    fn deref_mut(&mut self) -> &mut Self::Target {
        &mut self.0
    }
}

