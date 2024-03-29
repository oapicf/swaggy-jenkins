--  Swaggy Jenkins
--  Jenkins API clients generated from Swagger / Open API specification
--
--  The version of the OpenAPI document: 2.0.1_pre.0
--  Contact: blah+oapicf@cliffano.com
--
--  NOTE: This package is auto generated by OpenAPI-Generator 7.4.0.
--  https://openapi-generator.tech
--  Do not edit the class manually.

with .Models;
with Swagger.Clients;
package .Clients is
   pragma Style_Checks ("-bmrIu");

   type Client_Type is new Swagger.Clients.Client_Type with null record;

   --  
   --  Retrieve CSRF protection token
   procedure Get_Crumb
      (Client : in out Client_Type;
       Result : out .Models.DefaultCrumbIssuer_Type);

   --  
   --  Delete queue item from an organization pipeline queue
   procedure Delete_Pipeline_Queue_Item
      (Client : in out Client_Type;
       Organization : in Swagger.UString;
       Pipeline : in Swagger.UString;
       Queue : in Swagger.UString);

   --  
   --  Retrieve authenticated user details for an organization
   procedure Get_Authenticated_User
      (Client : in out Client_Type;
       Organization : in Swagger.UString;
       Result : out .Models.User_Type);

   --  
   --  Get a list of class names supported by a given class
   procedure Get_Classes
      (Client : in out Client_Type;
       Class : in Swagger.UString;
       Result : out Swagger.UString);

   --  
   --  Retrieve JSON Web Key
   procedure Get_Json_Web_Key
      (Client : in out Client_Type;
       Key : in Integer;
       Result : out Swagger.UString);

   --  
   --  Retrieve JSON Web Token
   procedure Get_Json_Web_Token
      (Client : in out Client_Type;
       Expiry_Time_In_Mins : in Swagger.Nullable_Integer;
       Max_Expiry_Time_In_Mins : in Swagger.Nullable_Integer;
       Result : out Swagger.UString);

   --  
   --  Retrieve organization details
   procedure Get_Organisation
      (Client : in out Client_Type;
       Organization : in Swagger.UString;
       Result : out .Models.Organisation_Type);

   --  
   --  Retrieve all organizations details
   procedure Get_Organisations
      (Client : in out Client_Type;
       Result : out .Models.Organisation_Type_Vectors.Vector);

   --  
   --  Retrieve pipeline details for an organization
   procedure Get_Pipeline
      (Client : in out Client_Type;
       Organization : in Swagger.UString;
       Pipeline : in Swagger.UString;
       Result : out .Models.Pipeline_Type);

   --  
   --  Retrieve all activities details for an organization pipeline
   procedure Get_Pipeline_Activities
      (Client : in out Client_Type;
       Organization : in Swagger.UString;
       Pipeline : in Swagger.UString;
       Result : out .Models.PipelineActivity_Type_Vectors.Vector);

   --  
   --  Retrieve branch details for an organization pipeline
   procedure Get_Pipeline_Branch
      (Client : in out Client_Type;
       Organization : in Swagger.UString;
       Pipeline : in Swagger.UString;
       Branch : in Swagger.UString;
       Result : out .Models.BranchImpl_Type);

   --  
   --  Retrieve branch run details for an organization pipeline
   procedure Get_Pipeline_Branch_Run
      (Client : in out Client_Type;
       Organization : in Swagger.UString;
       Pipeline : in Swagger.UString;
       Branch : in Swagger.UString;
       Run : in Swagger.UString;
       Result : out .Models.PipelineRun_Type);

   --  
   --  Retrieve all branches details for an organization pipeline
   procedure Get_Pipeline_Branches
      (Client : in out Client_Type;
       Organization : in Swagger.UString;
       Pipeline : in Swagger.UString;
       Result : out .Models.MultibranchPipeline_Type);

   --  
   --  Retrieve pipeline folder for an organization
   procedure Get_Pipeline_Folder
      (Client : in out Client_Type;
       Organization : in Swagger.UString;
       Folder : in Swagger.UString;
       Result : out .Models.PipelineFolderImpl_Type);

   --  
   --  Retrieve pipeline details for an organization folder
   procedure Get_Pipeline_Folder_Pipeline
      (Client : in out Client_Type;
       Organization : in Swagger.UString;
       Pipeline : in Swagger.UString;
       Folder : in Swagger.UString;
       Result : out .Models.PipelineImpl_Type);

   --  
   --  Retrieve queue details for an organization pipeline
   procedure Get_Pipeline_Queue
      (Client : in out Client_Type;
       Organization : in Swagger.UString;
       Pipeline : in Swagger.UString;
       Result : out .Models.QueueItemImpl_Type_Vectors.Vector);

   --  
   --  Retrieve run details for an organization pipeline
   procedure Get_Pipeline_Run
      (Client : in out Client_Type;
       Organization : in Swagger.UString;
       Pipeline : in Swagger.UString;
       Run : in Swagger.UString;
       Result : out .Models.PipelineRun_Type);

   --  
   --  Get log for a pipeline run
   procedure Get_Pipeline_Run_Log
      (Client : in out Client_Type;
       Organization : in Swagger.UString;
       Pipeline : in Swagger.UString;
       Run : in Swagger.UString;
       Start : in Swagger.Nullable_Integer;
       Download : in Swagger.Nullable_Boolean;
       Result : out Swagger.UString);

   --  
   --  Retrieve run node details for an organization pipeline
   procedure Get_Pipeline_Run_Node
      (Client : in out Client_Type;
       Organization : in Swagger.UString;
       Pipeline : in Swagger.UString;
       Run : in Swagger.UString;
       Node : in Swagger.UString;
       Result : out .Models.PipelineRunNode_Type);

   --  
   --  Retrieve run node details for an organization pipeline
   procedure Get_Pipeline_Run_Node_Step
      (Client : in out Client_Type;
       Organization : in Swagger.UString;
       Pipeline : in Swagger.UString;
       Run : in Swagger.UString;
       Node : in Swagger.UString;
       Step : in Swagger.UString;
       Result : out .Models.PipelineStepImpl_Type);

   --  
   --  Get log for a pipeline run node step
   procedure Get_Pipeline_Run_Node_Step_Log
      (Client : in out Client_Type;
       Organization : in Swagger.UString;
       Pipeline : in Swagger.UString;
       Run : in Swagger.UString;
       Node : in Swagger.UString;
       Step : in Swagger.UString;
       Result : out Swagger.UString);

   --  
   --  Retrieve run node steps details for an organization pipeline
   procedure Get_Pipeline_Run_Node_Steps
      (Client : in out Client_Type;
       Organization : in Swagger.UString;
       Pipeline : in Swagger.UString;
       Run : in Swagger.UString;
       Node : in Swagger.UString;
       Result : out .Models.PipelineStepImpl_Type_Vectors.Vector);

   --  
   --  Retrieve run nodes details for an organization pipeline
   procedure Get_Pipeline_Run_Nodes
      (Client : in out Client_Type;
       Organization : in Swagger.UString;
       Pipeline : in Swagger.UString;
       Run : in Swagger.UString;
       Result : out .Models.PipelineRunNode_Type_Vectors.Vector);

   --  
   --  Retrieve all runs details for an organization pipeline
   procedure Get_Pipeline_Runs
      (Client : in out Client_Type;
       Organization : in Swagger.UString;
       Pipeline : in Swagger.UString;
       Result : out .Models.PipelineRun_Type_Vectors.Vector);

   --  
   --  Retrieve all pipelines details for an organization
   procedure Get_Pipelines
      (Client : in out Client_Type;
       Organization : in Swagger.UString;
       Result : out .Models.Pipeline_Type_Vectors.Vector);

   --  
   --  Retrieve SCM details for an organization
   procedure Get_SCM
      (Client : in out Client_Type;
       Organization : in Swagger.UString;
       Scm : in Swagger.UString;
       Result : out .Models.GithubScm_Type);

   --  
   --  Retrieve SCM organization repositories details for an organization
   procedure Get_SCMOrganisation_Repositories
      (Client : in out Client_Type;
       Organization : in Swagger.UString;
       Scm : in Swagger.UString;
       Scm_Organisation : in Swagger.UString;
       Credential_Id : in Swagger.Nullable_UString;
       Page_Size : in Swagger.Nullable_Integer;
       Page_Number : in Swagger.Nullable_Integer;
       Result : out .Models.GithubOrganization_Type_Vectors.Vector);

   --  
   --  Retrieve SCM organization repository details for an organization
   procedure Get_SCMOrganisation_Repository
      (Client : in out Client_Type;
       Organization : in Swagger.UString;
       Scm : in Swagger.UString;
       Scm_Organisation : in Swagger.UString;
       Repository : in Swagger.UString;
       Credential_Id : in Swagger.Nullable_UString;
       Result : out .Models.GithubOrganization_Type_Vectors.Vector);

   --  
   --  Retrieve SCM organizations details for an organization
   procedure Get_SCMOrganisations
      (Client : in out Client_Type;
       Organization : in Swagger.UString;
       Scm : in Swagger.UString;
       Credential_Id : in Swagger.Nullable_UString;
       Result : out .Models.GithubOrganization_Type_Vectors.Vector);

   --  
   --  Retrieve user details for an organization
   procedure Get_User
      (Client : in out Client_Type;
       Organization : in Swagger.UString;
       User : in Swagger.UString;
       Result : out .Models.User_Type);

   --  
   --  Retrieve user favorites details for an organization
   procedure Get_User_Favorites
      (Client : in out Client_Type;
       User : in Swagger.UString;
       Result : out .Models.FavoriteImpl_Type_Vectors.Vector);

   --  
   --  Retrieve users details for an organization
   procedure Get_Users
      (Client : in out Client_Type;
       Organization : in Swagger.UString;
       Result : out .Models.User_Type);

   --  
   --  Replay an organization pipeline run
   procedure Post_Pipeline_Run
      (Client : in out Client_Type;
       Organization : in Swagger.UString;
       Pipeline : in Swagger.UString;
       Run : in Swagger.UString;
       Result : out .Models.QueueItemImpl_Type);

   --  
   --  Start a build for an organization pipeline
   procedure Post_Pipeline_Runs
      (Client : in out Client_Type;
       Organization : in Swagger.UString;
       Pipeline : in Swagger.UString;
       Result : out .Models.QueueItemImpl_Type);

   --  
   --  Favorite/unfavorite a pipeline
   procedure Put_Pipeline_Favorite
      (Client : in out Client_Type;
       Organization : in Swagger.UString;
       Pipeline : in Swagger.UString;
       P_Body : in Boolean;
       Result : out .Models.FavoriteImpl_Type);

   --  
   --  Stop a build of an organization pipeline
   procedure Put_Pipeline_Run
      (Client : in out Client_Type;
       Organization : in Swagger.UString;
       Pipeline : in Swagger.UString;
       Run : in Swagger.UString;
       Blocking : in Swagger.Nullable_UString;
       Time_Out_In_Secs : in Swagger.Nullable_Integer;
       Result : out .Models.PipelineRun_Type);

   --  
   --  Search for any resource details
   procedure Search
      (Client : in out Client_Type;
       Q : in Swagger.UString;
       Result : out Swagger.UString);

   --  
   --  Get classes details
   procedure Search_Classes
      (Client : in out Client_Type;
       Q : in Swagger.UString;
       Result : out Swagger.UString);

   --  
   --  Retrieve computer details
   procedure Get_Computer
      (Client : in out Client_Type;
       Depth : in Integer;
       Result : out .Models.ComputerSet_Type);

   --  
   --  Retrieve Jenkins details
   procedure Get_Jenkins
      (Client : in out Client_Type;
       Result : out .Models.Hudson_Type);

   --  
   --  Retrieve job details
   procedure Get_Job
      (Client : in out Client_Type;
       Name : in Swagger.UString;
       Result : out .Models.FreeStyleProject_Type);

   --  
   --  Retrieve job configuration
   procedure Get_Job_Config
      (Client : in out Client_Type;
       Name : in Swagger.UString;
       Result : out Swagger.UString);

   --  
   --  Retrieve job's last build details
   procedure Get_Job_Last_Build
      (Client : in out Client_Type;
       Name : in Swagger.UString;
       Result : out .Models.FreeStyleBuild_Type);

   --  
   --  Retrieve job's build progressive text output
   procedure Get_Job_Progressive_Text
      (Client : in out Client_Type;
       Name : in Swagger.UString;
       Number : in Swagger.UString;
       Start : in Swagger.UString);

   --  
   --  Retrieve queue details
   procedure Get_Queue
      (Client : in out Client_Type;
       Result : out .Models.Queue_Type);

   --  
   --  Retrieve queued item details
   procedure Get_Queue_Item
      (Client : in out Client_Type;
       Number : in Swagger.UString;
       Result : out .Models.Queue_Type);

   --  
   --  Retrieve view details
   procedure Get_View
      (Client : in out Client_Type;
       Name : in Swagger.UString;
       Result : out .Models.ListView_Type);

   --  
   --  Retrieve view configuration
   procedure Get_View_Config
      (Client : in out Client_Type;
       Name : in Swagger.UString;
       Result : out Swagger.UString);

   --  
   --  Retrieve Jenkins headers
   procedure Head_Jenkins
      (Client : in out Client_Type);

   --  
   --  Create a new job using job configuration, or copied from an existing job
   procedure Post_Create_Item
      (Client : in out Client_Type;
       Name : in Swagger.UString;
       From : in Swagger.Nullable_UString;
       Mode : in Swagger.Nullable_UString;
       Jenkins_Crumb : in Swagger.Nullable_UString;
       Content_Type : in Swagger.Nullable_UString;
       P_Body : in Swagger.Nullable_UString);

   --  
   --  Create a new view using view configuration
   procedure Post_Create_View
      (Client : in out Client_Type;
       Name : in Swagger.UString;
       Jenkins_Crumb : in Swagger.Nullable_UString;
       Content_Type : in Swagger.Nullable_UString;
       P_Body : in Swagger.Nullable_UString);

   --  
   --  Build a job
   procedure Post_Job_Build
      (Client : in out Client_Type;
       Name : in Swagger.UString;
       Json : in Swagger.UString;
       Token : in Swagger.Nullable_UString;
       Jenkins_Crumb : in Swagger.Nullable_UString);

   --  
   --  Update job configuration
   procedure Post_Job_Config
      (Client : in out Client_Type;
       Name : in Swagger.UString;
       P_Body : in Swagger.UString;
       Jenkins_Crumb : in Swagger.Nullable_UString);

   --  
   --  Delete a job
   procedure Post_Job_Delete
      (Client : in out Client_Type;
       Name : in Swagger.UString;
       Jenkins_Crumb : in Swagger.Nullable_UString);

   --  
   --  Disable a job
   procedure Post_Job_Disable
      (Client : in out Client_Type;
       Name : in Swagger.UString;
       Jenkins_Crumb : in Swagger.Nullable_UString);

   --  
   --  Enable a job
   procedure Post_Job_Enable
      (Client : in out Client_Type;
       Name : in Swagger.UString;
       Jenkins_Crumb : in Swagger.Nullable_UString);

   --  
   --  Stop a job
   procedure Post_Job_Last_Build_Stop
      (Client : in out Client_Type;
       Name : in Swagger.UString;
       Jenkins_Crumb : in Swagger.Nullable_UString);

   --  
   --  Update view configuration
   procedure Post_View_Config
      (Client : in out Client_Type;
       Name : in Swagger.UString;
       P_Body : in Swagger.UString;
       Jenkins_Crumb : in Swagger.Nullable_UString);

end .Clients;
