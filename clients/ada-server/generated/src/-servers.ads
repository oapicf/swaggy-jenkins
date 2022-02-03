--  Swaggy Jenkins
--  Jenkins API clients generated from Swagger / Open API specification
--  ------------ EDIT NOTE ------------
--  This file was generated with openapi-generator.  You can modify it to implement
--  the server.  After you modify this file, you should add the following line
--  to the .openapi-generator-ignore file:
--
--  src/-servers.ads
--
--  Then, you can drop this edit note comment.
--  ------------ EDIT NOTE ------------
with Swagger.Servers;
with .Models;
with .Skeletons;
package .Servers is
   pragma Warnings (Off, "*use clause for package*");
   use .Models;
   type Server_Type is limited new .Skeletons.Server_Type with null record;


   --  
   --  Retrieve CSRF protection token
   overriding
   procedure Get_Crumb
      (Server : in out Server_Type
       ;
       Result  : out .Models.DefaultCrumbIssuer_Type;
       Context : in out Swagger.Servers.Context_Type);

   --  
   --  Delete queue item from an organization pipeline queue
   overriding
   procedure Delete_Pipeline_Queue_Item
      (Server : in out Server_Type;
       Organization : in Swagger.UString;
       Pipeline : in Swagger.UString;
       Queue : in Swagger.UString;
       Context : in out Swagger.Servers.Context_Type);

   --  
   --  Retrieve authenticated user details for an organization
   overriding
   procedure Get_Authenticated_User
      (Server : in out Server_Type;
       Organization : in Swagger.UString;
       Result  : out .Models.User_Type;
       Context : in out Swagger.Servers.Context_Type);

   --  
   --  Get a list of class names supported by a given class
   overriding
   procedure Get_Classes
      (Server : in out Server_Type;
       Class : in Swagger.UString;
       Result  : out Swagger.UString;
       Context : in out Swagger.Servers.Context_Type);

   --  
   --  Retrieve JSON Web Key
   overriding
   procedure Get_Json_Web_Key
      (Server : in out Server_Type;
       Key : in Integer;
       Result  : out Swagger.UString;
       Context : in out Swagger.Servers.Context_Type);

   --  
   --  Retrieve JSON Web Token
   overriding
   procedure Get_Json_Web_Token
      (Server : in out Server_Type;
       Expiry_Time_In_Mins : in Swagger.Nullable_Integer;
       Max_Expiry_Time_In_Mins : in Swagger.Nullable_Integer;
       Result  : out Swagger.UString;
       Context : in out Swagger.Servers.Context_Type);

   --  
   --  Retrieve organization details
   overriding
   procedure Get_Organisation
      (Server : in out Server_Type;
       Organization : in Swagger.UString;
       Result  : out .Models.Organisation_Type;
       Context : in out Swagger.Servers.Context_Type);

   --  
   --  Retrieve all organizations details
   overriding
   procedure Get_Organisations
      (Server : in out Server_Type
       ;
       Result  : out .Models.Organisation_Type_Vectors.Vector;
       Context : in out Swagger.Servers.Context_Type);

   --  
   --  Retrieve pipeline details for an organization
   overriding
   procedure Get_Pipeline
      (Server : in out Server_Type;
       Organization : in Swagger.UString;
       Pipeline : in Swagger.UString;
       Result  : out .Models.Pipeline_Type;
       Context : in out Swagger.Servers.Context_Type);

   --  
   --  Retrieve all activities details for an organization pipeline
   overriding
   procedure Get_Pipeline_Activities
      (Server : in out Server_Type;
       Organization : in Swagger.UString;
       Pipeline : in Swagger.UString;
       Result  : out .Models.PipelineActivity_Type_Vectors.Vector;
       Context : in out Swagger.Servers.Context_Type);

   --  
   --  Retrieve branch details for an organization pipeline
   overriding
   procedure Get_Pipeline_Branch
      (Server : in out Server_Type;
       Organization : in Swagger.UString;
       Pipeline : in Swagger.UString;
       Branch : in Swagger.UString;
       Result  : out .Models.BranchImpl_Type;
       Context : in out Swagger.Servers.Context_Type);

   --  
   --  Retrieve branch run details for an organization pipeline
   overriding
   procedure Get_Pipeline_Branch_Run
      (Server : in out Server_Type;
       Organization : in Swagger.UString;
       Pipeline : in Swagger.UString;
       Branch : in Swagger.UString;
       Run : in Swagger.UString;
       Result  : out .Models.PipelineRun_Type;
       Context : in out Swagger.Servers.Context_Type);

   --  
   --  Retrieve all branches details for an organization pipeline
   overriding
   procedure Get_Pipeline_Branches
      (Server : in out Server_Type;
       Organization : in Swagger.UString;
       Pipeline : in Swagger.UString;
       Result  : out .Models.MultibranchPipeline_Type;
       Context : in out Swagger.Servers.Context_Type);

   --  
   --  Retrieve pipeline folder for an organization
   overriding
   procedure Get_Pipeline_Folder
      (Server : in out Server_Type;
       Organization : in Swagger.UString;
       Folder : in Swagger.UString;
       Result  : out .Models.PipelineFolderImpl_Type;
       Context : in out Swagger.Servers.Context_Type);

   --  
   --  Retrieve pipeline details for an organization folder
   overriding
   procedure Get_Pipeline_Folder_Pipeline
      (Server : in out Server_Type;
       Organization : in Swagger.UString;
       Pipeline : in Swagger.UString;
       Folder : in Swagger.UString;
       Result  : out .Models.PipelineImpl_Type;
       Context : in out Swagger.Servers.Context_Type);

   --  
   --  Retrieve queue details for an organization pipeline
   overriding
   procedure Get_Pipeline_Queue
      (Server : in out Server_Type;
       Organization : in Swagger.UString;
       Pipeline : in Swagger.UString;
       Result  : out .Models.QueueItemImpl_Type_Vectors.Vector;
       Context : in out Swagger.Servers.Context_Type);

   --  
   --  Retrieve run details for an organization pipeline
   overriding
   procedure Get_Pipeline_Run
      (Server : in out Server_Type;
       Organization : in Swagger.UString;
       Pipeline : in Swagger.UString;
       Run : in Swagger.UString;
       Result  : out .Models.PipelineRun_Type;
       Context : in out Swagger.Servers.Context_Type);

   --  
   --  Get log for a pipeline run
   overriding
   procedure Get_Pipeline_Run_Log
      (Server : in out Server_Type;
       Organization : in Swagger.UString;
       Pipeline : in Swagger.UString;
       Run : in Swagger.UString;
       Start : in Swagger.Nullable_Integer;
       Download : in Swagger.Nullable_Boolean;
       Result  : out Swagger.UString;
       Context : in out Swagger.Servers.Context_Type);

   --  
   --  Retrieve run node details for an organization pipeline
   overriding
   procedure Get_Pipeline_Run_Node
      (Server : in out Server_Type;
       Organization : in Swagger.UString;
       Pipeline : in Swagger.UString;
       Run : in Swagger.UString;
       Node : in Swagger.UString;
       Result  : out .Models.PipelineRunNode_Type;
       Context : in out Swagger.Servers.Context_Type);

   --  
   --  Retrieve run node details for an organization pipeline
   overriding
   procedure Get_Pipeline_Run_Node_Step
      (Server : in out Server_Type;
       Organization : in Swagger.UString;
       Pipeline : in Swagger.UString;
       Run : in Swagger.UString;
       Node : in Swagger.UString;
       Step : in Swagger.UString;
       Result  : out .Models.PipelineStepImpl_Type;
       Context : in out Swagger.Servers.Context_Type);

   --  
   --  Get log for a pipeline run node step
   overriding
   procedure Get_Pipeline_Run_Node_Step_Log
      (Server : in out Server_Type;
       Organization : in Swagger.UString;
       Pipeline : in Swagger.UString;
       Run : in Swagger.UString;
       Node : in Swagger.UString;
       Step : in Swagger.UString;
       Result  : out Swagger.UString;
       Context : in out Swagger.Servers.Context_Type);

   --  
   --  Retrieve run node steps details for an organization pipeline
   overriding
   procedure Get_Pipeline_Run_Node_Steps
      (Server : in out Server_Type;
       Organization : in Swagger.UString;
       Pipeline : in Swagger.UString;
       Run : in Swagger.UString;
       Node : in Swagger.UString;
       Result  : out .Models.PipelineStepImpl_Type_Vectors.Vector;
       Context : in out Swagger.Servers.Context_Type);

   --  
   --  Retrieve run nodes details for an organization pipeline
   overriding
   procedure Get_Pipeline_Run_Nodes
      (Server : in out Server_Type;
       Organization : in Swagger.UString;
       Pipeline : in Swagger.UString;
       Run : in Swagger.UString;
       Result  : out .Models.PipelineRunNode_Type_Vectors.Vector;
       Context : in out Swagger.Servers.Context_Type);

   --  
   --  Retrieve all runs details for an organization pipeline
   overriding
   procedure Get_Pipeline_Runs
      (Server : in out Server_Type;
       Organization : in Swagger.UString;
       Pipeline : in Swagger.UString;
       Result  : out .Models.PipelineRun_Type_Vectors.Vector;
       Context : in out Swagger.Servers.Context_Type);

   --  
   --  Retrieve all pipelines details for an organization
   overriding
   procedure Get_Pipelines
      (Server : in out Server_Type;
       Organization : in Swagger.UString;
       Result  : out .Models.Pipeline_Type_Vectors.Vector;
       Context : in out Swagger.Servers.Context_Type);

   --  
   --  Retrieve SCM details for an organization
   overriding
   procedure Get_SCM
      (Server : in out Server_Type;
       Organization : in Swagger.UString;
       Scm : in Swagger.UString;
       Result  : out .Models.GithubScm_Type;
       Context : in out Swagger.Servers.Context_Type);

   --  
   --  Retrieve SCM organization repositories details for an organization
   overriding
   procedure Get_SCMOrganisation_Repositories
      (Server : in out Server_Type;
       Organization : in Swagger.UString;
       Scm : in Swagger.UString;
       Scm_Organisation : in Swagger.UString;
       Credential_Id : in Swagger.Nullable_UString;
       Page_Size : in Swagger.Nullable_Integer;
       Page_Number : in Swagger.Nullable_Integer;
       Result  : out .Models.GithubOrganization_Type_Vectors.Vector;
       Context : in out Swagger.Servers.Context_Type);

   --  
   --  Retrieve SCM organization repository details for an organization
   overriding
   procedure Get_SCMOrganisation_Repository
      (Server : in out Server_Type;
       Organization : in Swagger.UString;
       Scm : in Swagger.UString;
       Scm_Organisation : in Swagger.UString;
       Repository : in Swagger.UString;
       Credential_Id : in Swagger.Nullable_UString;
       Result  : out .Models.GithubOrganization_Type_Vectors.Vector;
       Context : in out Swagger.Servers.Context_Type);

   --  
   --  Retrieve SCM organizations details for an organization
   overriding
   procedure Get_SCMOrganisations
      (Server : in out Server_Type;
       Organization : in Swagger.UString;
       Scm : in Swagger.UString;
       Credential_Id : in Swagger.Nullable_UString;
       Result  : out .Models.GithubOrganization_Type_Vectors.Vector;
       Context : in out Swagger.Servers.Context_Type);

   --  
   --  Retrieve user details for an organization
   overriding
   procedure Get_User
      (Server : in out Server_Type;
       Organization : in Swagger.UString;
       User : in Swagger.UString;
       Result  : out .Models.User_Type;
       Context : in out Swagger.Servers.Context_Type);

   --  
   --  Retrieve user favorites details for an organization
   overriding
   procedure Get_User_Favorites
      (Server : in out Server_Type;
       User : in Swagger.UString;
       Result  : out .Models.FavoriteImpl_Type_Vectors.Vector;
       Context : in out Swagger.Servers.Context_Type);

   --  
   --  Retrieve users details for an organization
   overriding
   procedure Get_Users
      (Server : in out Server_Type;
       Organization : in Swagger.UString;
       Result  : out .Models.User_Type;
       Context : in out Swagger.Servers.Context_Type);

   --  
   --  Replay an organization pipeline run
   overriding
   procedure Post_Pipeline_Run
      (Server : in out Server_Type;
       Organization : in Swagger.UString;
       Pipeline : in Swagger.UString;
       Run : in Swagger.UString;
       Result  : out .Models.QueueItemImpl_Type;
       Context : in out Swagger.Servers.Context_Type);

   --  
   --  Start a build for an organization pipeline
   overriding
   procedure Post_Pipeline_Runs
      (Server : in out Server_Type;
       Organization : in Swagger.UString;
       Pipeline : in Swagger.UString;
       Result  : out .Models.QueueItemImpl_Type;
       Context : in out Swagger.Servers.Context_Type);

   --  
   --  Favorite/unfavorite a pipeline
   overriding
   procedure Put_Pipeline_Favorite
      (Server : in out Server_Type;
       Organization : in Swagger.UString;
       Pipeline : in Swagger.UString;
       U_NKNOWNBASETYPE : in UNKNOWN_BASE_TYPE;
       Result  : out .Models.FavoriteImpl_Type;
       Context : in out Swagger.Servers.Context_Type);

   --  
   --  Stop a build of an organization pipeline
   overriding
   procedure Put_Pipeline_Run
      (Server : in out Server_Type;
       Organization : in Swagger.UString;
       Pipeline : in Swagger.UString;
       Run : in Swagger.UString;
       Blocking : in Swagger.Nullable_UString;
       Time_Out_In_Secs : in Swagger.Nullable_Integer;
       Result  : out .Models.PipelineRun_Type;
       Context : in out Swagger.Servers.Context_Type);

   --  
   --  Search for any resource details
   overriding
   procedure Search
      (Server : in out Server_Type;
       Q : in Swagger.UString;
       Result  : out Swagger.UString;
       Context : in out Swagger.Servers.Context_Type);

   --  
   --  Get classes details
   overriding
   procedure Search_Classes
      (Server : in out Server_Type;
       Q : in Swagger.UString;
       Result  : out Swagger.UString;
       Context : in out Swagger.Servers.Context_Type);

   --  
   --  Retrieve computer details
   overriding
   procedure Get_Computer
      (Server : in out Server_Type;
       Depth : in Integer;
       Result  : out .Models.ComputerSet_Type;
       Context : in out Swagger.Servers.Context_Type);

   --  
   --  Retrieve Jenkins details
   overriding
   procedure Get_Jenkins
      (Server : in out Server_Type
       ;
       Result  : out .Models.Hudson_Type;
       Context : in out Swagger.Servers.Context_Type);

   --  
   --  Retrieve job details
   overriding
   procedure Get_Job
      (Server : in out Server_Type;
       Name : in Swagger.UString;
       Result  : out .Models.FreeStyleProject_Type;
       Context : in out Swagger.Servers.Context_Type);

   --  
   --  Retrieve job configuration
   overriding
   procedure Get_Job_Config
      (Server : in out Server_Type;
       Name : in Swagger.UString;
       Result  : out Swagger.UString;
       Context : in out Swagger.Servers.Context_Type);

   --  
   --  Retrieve job's last build details
   overriding
   procedure Get_Job_Last_Build
      (Server : in out Server_Type;
       Name : in Swagger.UString;
       Result  : out .Models.FreeStyleBuild_Type;
       Context : in out Swagger.Servers.Context_Type);

   --  
   --  Retrieve job's build progressive text output
   overriding
   procedure Get_Job_Progressive_Text
      (Server : in out Server_Type;
       Name : in Swagger.UString;
       Number : in Swagger.UString;
       Start : in Swagger.UString;
       Context : in out Swagger.Servers.Context_Type);

   --  
   --  Retrieve queue details
   overriding
   procedure Get_Queue
      (Server : in out Server_Type
       ;
       Result  : out .Models.Queue_Type;
       Context : in out Swagger.Servers.Context_Type);

   --  
   --  Retrieve queued item details
   overriding
   procedure Get_Queue_Item
      (Server : in out Server_Type;
       Number : in Swagger.UString;
       Result  : out .Models.Queue_Type;
       Context : in out Swagger.Servers.Context_Type);

   --  
   --  Retrieve view details
   overriding
   procedure Get_View
      (Server : in out Server_Type;
       Name : in Swagger.UString;
       Result  : out .Models.ListView_Type;
       Context : in out Swagger.Servers.Context_Type);

   --  
   --  Retrieve view configuration
   overriding
   procedure Get_View_Config
      (Server : in out Server_Type;
       Name : in Swagger.UString;
       Result  : out Swagger.UString;
       Context : in out Swagger.Servers.Context_Type);

   --  
   --  Retrieve Jenkins headers
   overriding
   procedure Head_Jenkins
      (Server : in out Server_Type
       ;
       Context : in out Swagger.Servers.Context_Type);

   --  
   --  Create a new job using job configuration, or copied from an existing job
   overriding
   procedure Post_Create_Item
      (Server : in out Server_Type;
       Name : in Swagger.UString;
       From : in Swagger.Nullable_UString;
       Mode : in Swagger.Nullable_UString;
       Jenkins_Crumb : in Swagger.Nullable_UString;
       Content_Type : in Swagger.Nullable_UString;
       P_Body : in Swagger.Nullable_UString;
       Context : in out Swagger.Servers.Context_Type);

   --  
   --  Create a new view using view configuration
   overriding
   procedure Post_Create_View
      (Server : in out Server_Type;
       Name : in Swagger.UString;
       Jenkins_Crumb : in Swagger.Nullable_UString;
       Content_Type : in Swagger.Nullable_UString;
       P_Body : in Swagger.Nullable_UString;
       Context : in out Swagger.Servers.Context_Type);

   --  
   --  Build a job
   overriding
   procedure Post_Job_Build
      (Server : in out Server_Type;
       Name : in Swagger.UString;
       Json : in Swagger.UString;
       Token : in Swagger.Nullable_UString;
       Jenkins_Crumb : in Swagger.Nullable_UString;
       Context : in out Swagger.Servers.Context_Type);

   --  
   --  Update job configuration
   overriding
   procedure Post_Job_Config
      (Server : in out Server_Type;
       Name : in Swagger.UString;
       P_Body : in Swagger.UString;
       Jenkins_Crumb : in Swagger.Nullable_UString;
       Context : in out Swagger.Servers.Context_Type);

   --  
   --  Delete a job
   overriding
   procedure Post_Job_Delete
      (Server : in out Server_Type;
       Name : in Swagger.UString;
       Jenkins_Crumb : in Swagger.Nullable_UString;
       Context : in out Swagger.Servers.Context_Type);

   --  
   --  Disable a job
   overriding
   procedure Post_Job_Disable
      (Server : in out Server_Type;
       Name : in Swagger.UString;
       Jenkins_Crumb : in Swagger.Nullable_UString;
       Context : in out Swagger.Servers.Context_Type);

   --  
   --  Enable a job
   overriding
   procedure Post_Job_Enable
      (Server : in out Server_Type;
       Name : in Swagger.UString;
       Jenkins_Crumb : in Swagger.Nullable_UString;
       Context : in out Swagger.Servers.Context_Type);

   --  
   --  Stop a job
   overriding
   procedure Post_Job_Last_Build_Stop
      (Server : in out Server_Type;
       Name : in Swagger.UString;
       Jenkins_Crumb : in Swagger.Nullable_UString;
       Context : in out Swagger.Servers.Context_Type);

   --  
   --  Update view configuration
   overriding
   procedure Post_View_Config
      (Server : in out Server_Type;
       Name : in Swagger.UString;
       P_Body : in Swagger.UString;
       Jenkins_Crumb : in Swagger.Nullable_UString;
       Context : in out Swagger.Servers.Context_Type);

   package Server_Impl is
      new .Skeletons.Shared_Instance (Server_Type);

end .Servers;
