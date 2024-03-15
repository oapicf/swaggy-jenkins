--  Swaggy Jenkins
--  Jenkins API clients generated from Swagger / Open API specification
--
--  The version of the OpenAPI document: 2.0.1_pre.0
--  Contact: blah+oapicf@cliffano.com
--
--  NOTE: This package is auto generated by OpenAPI-Generator 7.4.0.
--  https://openapi-generator.tech
--  Do not edit the class manually.

pragma Warnings (Off, "*is not referenced");
with Swagger.Streams;
package body .Clients is
   pragma Style_Checks ("-bmrIu");

   Mime_1 : aliased constant String := "*/*";
   Mime_2 : aliased constant String := "text/xml";
   Media_List_1 : constant Swagger.Mime_List := (
     1 => Swagger.Mime_Json   );
   Media_List_2 : constant Swagger.Mime_List := (
     1 => Mime_1'Access   );
   Media_List_3 : constant Swagger.Mime_List := (
     1 => Mime_2'Access   );


   --  
   --  Retrieve CSRF protection token
   procedure Get_Crumb
      (Client : in out Client_Type;
       Result : out .Models.DefaultCrumbIssuer_Type) is
      URI   : Swagger.Clients.URI_Type;
      Reply : Swagger.Value_Type;
   begin
      Client.Set_Accept (Media_List_1);


      URI.Set_Path ("/crumbIssuer/api/json");
      Client.Call (Swagger.Clients.GET, URI, Reply);
      .Models.Deserialize (Reply, "", Result);
   end Get_Crumb;

   --  
   --  Delete queue item from an organization pipeline queue
   procedure Delete_Pipeline_Queue_Item
      (Client : in out Client_Type;
       Organization : in Swagger.UString;
       Pipeline : in Swagger.UString;
       Queue : in Swagger.UString) is
      URI   : Swagger.Clients.URI_Type;
   begin


      URI.Set_Path ("/blue/rest/organizations/{organization}/pipelines/{pipeline}/queue/{queue}");
      URI.Set_Path_Param ("organization", Organization);
      URI.Set_Path_Param ("pipeline", Pipeline);
      URI.Set_Path_Param ("queue", Queue);
      Client.Call (Swagger.Clients.DELETE, URI);
   end Delete_Pipeline_Queue_Item;

   --  
   --  Retrieve authenticated user details for an organization
   procedure Get_Authenticated_User
      (Client : in out Client_Type;
       Organization : in Swagger.UString;
       Result : out .Models.User_Type) is
      URI   : Swagger.Clients.URI_Type;
      Reply : Swagger.Value_Type;
   begin
      Client.Set_Accept (Media_List_1);


      URI.Set_Path ("/blue/rest/organizations/{organization}/user/");
      URI.Set_Path_Param ("organization", Organization);
      Client.Call (Swagger.Clients.GET, URI, Reply);
      .Models.Deserialize (Reply, "", Result);
   end Get_Authenticated_User;

   --  
   --  Get a list of class names supported by a given class
   procedure Get_Classes
      (Client : in out Client_Type;
       Class : in Swagger.UString;
       Result : out Swagger.UString) is
      URI   : Swagger.Clients.URI_Type;
      Reply : Swagger.Value_Type;
   begin
      Client.Set_Accept (Media_List_1);


      URI.Set_Path ("/blue/rest/classes/{class}");
      URI.Set_Path_Param ("class", Class);
      Client.Call (Swagger.Clients.GET, URI, Reply);
      .Models.Deserialize (Reply, "", Result);
   end Get_Classes;

   --  
   --  Retrieve JSON Web Key
   procedure Get_Json_Web_Key
      (Client : in out Client_Type;
       Key : in Integer;
       Result : out Swagger.UString) is
      URI   : Swagger.Clients.URI_Type;
      Reply : Swagger.Value_Type;
   begin
      Client.Set_Accept (Media_List_1);


      URI.Set_Path ("/jwt-auth/jwks/{key}");
      URI.Set_Path_Param ("key", .Models.To_String (Key));
      Client.Call (Swagger.Clients.GET, URI, Reply);
      .Models.Deserialize (Reply, "", Result);
   end Get_Json_Web_Key;

   --  
   --  Retrieve JSON Web Token
   procedure Get_Json_Web_Token
      (Client : in out Client_Type;
       Expiry_Time_In_Mins : in Swagger.Nullable_Integer;
       Max_Expiry_Time_In_Mins : in Swagger.Nullable_Integer;
       Result : out Swagger.UString) is
      URI   : Swagger.Clients.URI_Type;
      Reply : Swagger.Value_Type;
   begin
      Client.Set_Accept (Media_List_1);


      URI.Add_Param ("expiryTimeInMins", Expiry_Time_In_Mins);
      URI.Add_Param ("maxExpiryTimeInMins", Max_Expiry_Time_In_Mins);
      URI.Set_Path ("/jwt-auth/token");
      Client.Call (Swagger.Clients.GET, URI, Reply);
      .Models.Deserialize (Reply, "", Result);
   end Get_Json_Web_Token;

   --  
   --  Retrieve organization details
   procedure Get_Organisation
      (Client : in out Client_Type;
       Organization : in Swagger.UString;
       Result : out .Models.Organisation_Type) is
      URI   : Swagger.Clients.URI_Type;
      Reply : Swagger.Value_Type;
   begin
      Client.Set_Accept (Media_List_1);


      URI.Set_Path ("/blue/rest/organizations/{organization}");
      URI.Set_Path_Param ("organization", Organization);
      Client.Call (Swagger.Clients.GET, URI, Reply);
      .Models.Deserialize (Reply, "", Result);
   end Get_Organisation;

   --  
   --  Retrieve all organizations details
   procedure Get_Organisations
      (Client : in out Client_Type;
       Result : out .Models.Organisation_Type_Vectors.Vector) is
      URI   : Swagger.Clients.URI_Type;
      Reply : Swagger.Value_Type;
   begin
      Client.Set_Accept (Media_List_1);


      URI.Set_Path ("/blue/rest/organizations/");
      Client.Call (Swagger.Clients.GET, URI, Reply);
      .Models.Deserialize (Reply, "", Result);
   end Get_Organisations;

   --  
   --  Retrieve pipeline details for an organization
   procedure Get_Pipeline
      (Client : in out Client_Type;
       Organization : in Swagger.UString;
       Pipeline : in Swagger.UString;
       Result : out .Models.Pipeline_Type) is
      URI   : Swagger.Clients.URI_Type;
      Reply : Swagger.Value_Type;
   begin
      Client.Set_Accept (Media_List_1);


      URI.Set_Path ("/blue/rest/organizations/{organization}/pipelines/{pipeline}");
      URI.Set_Path_Param ("organization", Organization);
      URI.Set_Path_Param ("pipeline", Pipeline);
      Client.Call (Swagger.Clients.GET, URI, Reply);
      .Models.Deserialize (Reply, "", Result);
   end Get_Pipeline;

   --  
   --  Retrieve all activities details for an organization pipeline
   procedure Get_Pipeline_Activities
      (Client : in out Client_Type;
       Organization : in Swagger.UString;
       Pipeline : in Swagger.UString;
       Result : out .Models.PipelineActivity_Type_Vectors.Vector) is
      URI   : Swagger.Clients.URI_Type;
      Reply : Swagger.Value_Type;
   begin
      Client.Set_Accept (Media_List_1);


      URI.Set_Path ("/blue/rest/organizations/{organization}/pipelines/{pipeline}/activities");
      URI.Set_Path_Param ("organization", Organization);
      URI.Set_Path_Param ("pipeline", Pipeline);
      Client.Call (Swagger.Clients.GET, URI, Reply);
      .Models.Deserialize (Reply, "", Result);
   end Get_Pipeline_Activities;

   --  
   --  Retrieve branch details for an organization pipeline
   procedure Get_Pipeline_Branch
      (Client : in out Client_Type;
       Organization : in Swagger.UString;
       Pipeline : in Swagger.UString;
       Branch : in Swagger.UString;
       Result : out .Models.BranchImpl_Type) is
      URI   : Swagger.Clients.URI_Type;
      Reply : Swagger.Value_Type;
   begin
      Client.Set_Accept (Media_List_1);


      URI.Set_Path ("/blue/rest/organizations/{organization}/pipelines/{pipeline}/branches/{branch}/");
      URI.Set_Path_Param ("organization", Organization);
      URI.Set_Path_Param ("pipeline", Pipeline);
      URI.Set_Path_Param ("branch", Branch);
      Client.Call (Swagger.Clients.GET, URI, Reply);
      .Models.Deserialize (Reply, "", Result);
   end Get_Pipeline_Branch;

   --  
   --  Retrieve branch run details for an organization pipeline
   procedure Get_Pipeline_Branch_Run
      (Client : in out Client_Type;
       Organization : in Swagger.UString;
       Pipeline : in Swagger.UString;
       Branch : in Swagger.UString;
       Run : in Swagger.UString;
       Result : out .Models.PipelineRun_Type) is
      URI   : Swagger.Clients.URI_Type;
      Reply : Swagger.Value_Type;
   begin
      Client.Set_Accept (Media_List_1);


      URI.Set_Path ("/blue/rest/organizations/{organization}/pipelines/{pipeline}/branches/{branch}/runs/{run}");
      URI.Set_Path_Param ("organization", Organization);
      URI.Set_Path_Param ("pipeline", Pipeline);
      URI.Set_Path_Param ("branch", Branch);
      URI.Set_Path_Param ("run", Run);
      Client.Call (Swagger.Clients.GET, URI, Reply);
      .Models.Deserialize (Reply, "", Result);
   end Get_Pipeline_Branch_Run;

   --  
   --  Retrieve all branches details for an organization pipeline
   procedure Get_Pipeline_Branches
      (Client : in out Client_Type;
       Organization : in Swagger.UString;
       Pipeline : in Swagger.UString;
       Result : out .Models.MultibranchPipeline_Type) is
      URI   : Swagger.Clients.URI_Type;
      Reply : Swagger.Value_Type;
   begin
      Client.Set_Accept (Media_List_1);


      URI.Set_Path ("/blue/rest/organizations/{organization}/pipelines/{pipeline}/branches");
      URI.Set_Path_Param ("organization", Organization);
      URI.Set_Path_Param ("pipeline", Pipeline);
      Client.Call (Swagger.Clients.GET, URI, Reply);
      .Models.Deserialize (Reply, "", Result);
   end Get_Pipeline_Branches;

   --  
   --  Retrieve pipeline folder for an organization
   procedure Get_Pipeline_Folder
      (Client : in out Client_Type;
       Organization : in Swagger.UString;
       Folder : in Swagger.UString;
       Result : out .Models.PipelineFolderImpl_Type) is
      URI   : Swagger.Clients.URI_Type;
      Reply : Swagger.Value_Type;
   begin
      Client.Set_Accept (Media_List_1);


      URI.Set_Path ("/blue/rest/organizations/{organization}/pipelines/{folder}/");
      URI.Set_Path_Param ("organization", Organization);
      URI.Set_Path_Param ("folder", Folder);
      Client.Call (Swagger.Clients.GET, URI, Reply);
      .Models.Deserialize (Reply, "", Result);
   end Get_Pipeline_Folder;

   --  
   --  Retrieve pipeline details for an organization folder
   procedure Get_Pipeline_Folder_Pipeline
      (Client : in out Client_Type;
       Organization : in Swagger.UString;
       Pipeline : in Swagger.UString;
       Folder : in Swagger.UString;
       Result : out .Models.PipelineImpl_Type) is
      URI   : Swagger.Clients.URI_Type;
      Reply : Swagger.Value_Type;
   begin
      Client.Set_Accept (Media_List_1);


      URI.Set_Path ("/blue/rest/organizations/{organization}/pipelines/{folder}/pipelines/{pipeline}");
      URI.Set_Path_Param ("organization", Organization);
      URI.Set_Path_Param ("pipeline", Pipeline);
      URI.Set_Path_Param ("folder", Folder);
      Client.Call (Swagger.Clients.GET, URI, Reply);
      .Models.Deserialize (Reply, "", Result);
   end Get_Pipeline_Folder_Pipeline;

   --  
   --  Retrieve queue details for an organization pipeline
   procedure Get_Pipeline_Queue
      (Client : in out Client_Type;
       Organization : in Swagger.UString;
       Pipeline : in Swagger.UString;
       Result : out .Models.QueueItemImpl_Type_Vectors.Vector) is
      URI   : Swagger.Clients.URI_Type;
      Reply : Swagger.Value_Type;
   begin
      Client.Set_Accept (Media_List_1);


      URI.Set_Path ("/blue/rest/organizations/{organization}/pipelines/{pipeline}/queue");
      URI.Set_Path_Param ("organization", Organization);
      URI.Set_Path_Param ("pipeline", Pipeline);
      Client.Call (Swagger.Clients.GET, URI, Reply);
      .Models.Deserialize (Reply, "", Result);
   end Get_Pipeline_Queue;

   --  
   --  Retrieve run details for an organization pipeline
   procedure Get_Pipeline_Run
      (Client : in out Client_Type;
       Organization : in Swagger.UString;
       Pipeline : in Swagger.UString;
       Run : in Swagger.UString;
       Result : out .Models.PipelineRun_Type) is
      URI   : Swagger.Clients.URI_Type;
      Reply : Swagger.Value_Type;
   begin
      Client.Set_Accept (Media_List_1);


      URI.Set_Path ("/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}");
      URI.Set_Path_Param ("organization", Organization);
      URI.Set_Path_Param ("pipeline", Pipeline);
      URI.Set_Path_Param ("run", Run);
      Client.Call (Swagger.Clients.GET, URI, Reply);
      .Models.Deserialize (Reply, "", Result);
   end Get_Pipeline_Run;

   --  
   --  Get log for a pipeline run
   procedure Get_Pipeline_Run_Log
      (Client : in out Client_Type;
       Organization : in Swagger.UString;
       Pipeline : in Swagger.UString;
       Run : in Swagger.UString;
       Start : in Swagger.Nullable_Integer;
       Download : in Swagger.Nullable_Boolean;
       Result : out Swagger.UString) is
      URI   : Swagger.Clients.URI_Type;
      Reply : Swagger.Value_Type;
   begin
      Client.Set_Accept (Media_List_1);


      URI.Add_Param ("start", Start);
      URI.Add_Param ("download", Download);
      URI.Set_Path ("/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/log");
      URI.Set_Path_Param ("organization", Organization);
      URI.Set_Path_Param ("pipeline", Pipeline);
      URI.Set_Path_Param ("run", Run);
      Client.Call (Swagger.Clients.GET, URI, Reply);
      .Models.Deserialize (Reply, "", Result);
   end Get_Pipeline_Run_Log;

   --  
   --  Retrieve run node details for an organization pipeline
   procedure Get_Pipeline_Run_Node
      (Client : in out Client_Type;
       Organization : in Swagger.UString;
       Pipeline : in Swagger.UString;
       Run : in Swagger.UString;
       Node : in Swagger.UString;
       Result : out .Models.PipelineRunNode_Type) is
      URI   : Swagger.Clients.URI_Type;
      Reply : Swagger.Value_Type;
   begin
      Client.Set_Accept (Media_List_1);


      URI.Set_Path ("/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes/{node}");
      URI.Set_Path_Param ("organization", Organization);
      URI.Set_Path_Param ("pipeline", Pipeline);
      URI.Set_Path_Param ("run", Run);
      URI.Set_Path_Param ("node", Node);
      Client.Call (Swagger.Clients.GET, URI, Reply);
      .Models.Deserialize (Reply, "", Result);
   end Get_Pipeline_Run_Node;

   --  
   --  Retrieve run node details for an organization pipeline
   procedure Get_Pipeline_Run_Node_Step
      (Client : in out Client_Type;
       Organization : in Swagger.UString;
       Pipeline : in Swagger.UString;
       Run : in Swagger.UString;
       Node : in Swagger.UString;
       Step : in Swagger.UString;
       Result : out .Models.PipelineStepImpl_Type) is
      URI   : Swagger.Clients.URI_Type;
      Reply : Swagger.Value_Type;
   begin
      Client.Set_Accept (Media_List_1);


      URI.Set_Path ("/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes/{node}/steps/{step}");
      URI.Set_Path_Param ("organization", Organization);
      URI.Set_Path_Param ("pipeline", Pipeline);
      URI.Set_Path_Param ("run", Run);
      URI.Set_Path_Param ("node", Node);
      URI.Set_Path_Param ("step", Step);
      Client.Call (Swagger.Clients.GET, URI, Reply);
      .Models.Deserialize (Reply, "", Result);
   end Get_Pipeline_Run_Node_Step;

   --  
   --  Get log for a pipeline run node step
   procedure Get_Pipeline_Run_Node_Step_Log
      (Client : in out Client_Type;
       Organization : in Swagger.UString;
       Pipeline : in Swagger.UString;
       Run : in Swagger.UString;
       Node : in Swagger.UString;
       Step : in Swagger.UString;
       Result : out Swagger.UString) is
      URI   : Swagger.Clients.URI_Type;
      Reply : Swagger.Value_Type;
   begin
      Client.Set_Accept (Media_List_1);


      URI.Set_Path ("/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes/{node}/steps/{step}/log");
      URI.Set_Path_Param ("organization", Organization);
      URI.Set_Path_Param ("pipeline", Pipeline);
      URI.Set_Path_Param ("run", Run);
      URI.Set_Path_Param ("node", Node);
      URI.Set_Path_Param ("step", Step);
      Client.Call (Swagger.Clients.GET, URI, Reply);
      .Models.Deserialize (Reply, "", Result);
   end Get_Pipeline_Run_Node_Step_Log;

   --  
   --  Retrieve run node steps details for an organization pipeline
   procedure Get_Pipeline_Run_Node_Steps
      (Client : in out Client_Type;
       Organization : in Swagger.UString;
       Pipeline : in Swagger.UString;
       Run : in Swagger.UString;
       Node : in Swagger.UString;
       Result : out .Models.PipelineStepImpl_Type_Vectors.Vector) is
      URI   : Swagger.Clients.URI_Type;
      Reply : Swagger.Value_Type;
   begin
      Client.Set_Accept (Media_List_1);


      URI.Set_Path ("/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes/{node}/steps");
      URI.Set_Path_Param ("organization", Organization);
      URI.Set_Path_Param ("pipeline", Pipeline);
      URI.Set_Path_Param ("run", Run);
      URI.Set_Path_Param ("node", Node);
      Client.Call (Swagger.Clients.GET, URI, Reply);
      .Models.Deserialize (Reply, "", Result);
   end Get_Pipeline_Run_Node_Steps;

   --  
   --  Retrieve run nodes details for an organization pipeline
   procedure Get_Pipeline_Run_Nodes
      (Client : in out Client_Type;
       Organization : in Swagger.UString;
       Pipeline : in Swagger.UString;
       Run : in Swagger.UString;
       Result : out .Models.PipelineRunNode_Type_Vectors.Vector) is
      URI   : Swagger.Clients.URI_Type;
      Reply : Swagger.Value_Type;
   begin
      Client.Set_Accept (Media_List_1);


      URI.Set_Path ("/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes");
      URI.Set_Path_Param ("organization", Organization);
      URI.Set_Path_Param ("pipeline", Pipeline);
      URI.Set_Path_Param ("run", Run);
      Client.Call (Swagger.Clients.GET, URI, Reply);
      .Models.Deserialize (Reply, "", Result);
   end Get_Pipeline_Run_Nodes;

   --  
   --  Retrieve all runs details for an organization pipeline
   procedure Get_Pipeline_Runs
      (Client : in out Client_Type;
       Organization : in Swagger.UString;
       Pipeline : in Swagger.UString;
       Result : out .Models.PipelineRun_Type_Vectors.Vector) is
      URI   : Swagger.Clients.URI_Type;
      Reply : Swagger.Value_Type;
   begin
      Client.Set_Accept (Media_List_1);


      URI.Set_Path ("/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs");
      URI.Set_Path_Param ("organization", Organization);
      URI.Set_Path_Param ("pipeline", Pipeline);
      Client.Call (Swagger.Clients.GET, URI, Reply);
      .Models.Deserialize (Reply, "", Result);
   end Get_Pipeline_Runs;

   --  
   --  Retrieve all pipelines details for an organization
   procedure Get_Pipelines
      (Client : in out Client_Type;
       Organization : in Swagger.UString;
       Result : out .Models.Pipeline_Type_Vectors.Vector) is
      URI   : Swagger.Clients.URI_Type;
      Reply : Swagger.Value_Type;
   begin
      Client.Set_Accept (Media_List_1);


      URI.Set_Path ("/blue/rest/organizations/{organization}/pipelines/");
      URI.Set_Path_Param ("organization", Organization);
      Client.Call (Swagger.Clients.GET, URI, Reply);
      .Models.Deserialize (Reply, "", Result);
   end Get_Pipelines;

   --  
   --  Retrieve SCM details for an organization
   procedure Get_SCM
      (Client : in out Client_Type;
       Organization : in Swagger.UString;
       Scm : in Swagger.UString;
       Result : out .Models.GithubScm_Type) is
      URI   : Swagger.Clients.URI_Type;
      Reply : Swagger.Value_Type;
   begin
      Client.Set_Accept (Media_List_1);


      URI.Set_Path ("/blue/rest/organizations/{organization}/scm/{scm}");
      URI.Set_Path_Param ("organization", Organization);
      URI.Set_Path_Param ("scm", Scm);
      Client.Call (Swagger.Clients.GET, URI, Reply);
      .Models.Deserialize (Reply, "", Result);
   end Get_SCM;

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
       Result : out .Models.GithubOrganization_Type_Vectors.Vector) is
      URI   : Swagger.Clients.URI_Type;
      Reply : Swagger.Value_Type;
   begin
      Client.Set_Accept (Media_List_1);


      URI.Add_Param ("credentialId", Credential_Id);
      URI.Add_Param ("pageSize", Page_Size);
      URI.Add_Param ("pageNumber", Page_Number);
      URI.Set_Path ("/blue/rest/organizations/{organization}/scm/{scm}/organizations/{scmOrganisation}/repositories");
      URI.Set_Path_Param ("organization", Organization);
      URI.Set_Path_Param ("scm", Scm);
      URI.Set_Path_Param ("scmOrganisation", Scm_Organisation);
      Client.Call (Swagger.Clients.GET, URI, Reply);
      .Models.Deserialize (Reply, "", Result);
   end Get_SCMOrganisation_Repositories;

   --  
   --  Retrieve SCM organization repository details for an organization
   procedure Get_SCMOrganisation_Repository
      (Client : in out Client_Type;
       Organization : in Swagger.UString;
       Scm : in Swagger.UString;
       Scm_Organisation : in Swagger.UString;
       Repository : in Swagger.UString;
       Credential_Id : in Swagger.Nullable_UString;
       Result : out .Models.GithubOrganization_Type_Vectors.Vector) is
      URI   : Swagger.Clients.URI_Type;
      Reply : Swagger.Value_Type;
   begin
      Client.Set_Accept (Media_List_1);


      URI.Add_Param ("credentialId", Credential_Id);
      URI.Set_Path ("/blue/rest/organizations/{organization}/scm/{scm}/organizations/{scmOrganisation}/repositories/{repository}");
      URI.Set_Path_Param ("organization", Organization);
      URI.Set_Path_Param ("scm", Scm);
      URI.Set_Path_Param ("scmOrganisation", Scm_Organisation);
      URI.Set_Path_Param ("repository", Repository);
      Client.Call (Swagger.Clients.GET, URI, Reply);
      .Models.Deserialize (Reply, "", Result);
   end Get_SCMOrganisation_Repository;

   --  
   --  Retrieve SCM organizations details for an organization
   procedure Get_SCMOrganisations
      (Client : in out Client_Type;
       Organization : in Swagger.UString;
       Scm : in Swagger.UString;
       Credential_Id : in Swagger.Nullable_UString;
       Result : out .Models.GithubOrganization_Type_Vectors.Vector) is
      URI   : Swagger.Clients.URI_Type;
      Reply : Swagger.Value_Type;
   begin
      Client.Set_Accept (Media_List_1);


      URI.Add_Param ("credentialId", Credential_Id);
      URI.Set_Path ("/blue/rest/organizations/{organization}/scm/{scm}/organizations");
      URI.Set_Path_Param ("organization", Organization);
      URI.Set_Path_Param ("scm", Scm);
      Client.Call (Swagger.Clients.GET, URI, Reply);
      .Models.Deserialize (Reply, "", Result);
   end Get_SCMOrganisations;

   --  
   --  Retrieve user details for an organization
   procedure Get_User
      (Client : in out Client_Type;
       Organization : in Swagger.UString;
       User : in Swagger.UString;
       Result : out .Models.User_Type) is
      URI   : Swagger.Clients.URI_Type;
      Reply : Swagger.Value_Type;
   begin
      Client.Set_Accept (Media_List_1);


      URI.Set_Path ("/blue/rest/organizations/{organization}/users/{user}");
      URI.Set_Path_Param ("organization", Organization);
      URI.Set_Path_Param ("user", User);
      Client.Call (Swagger.Clients.GET, URI, Reply);
      .Models.Deserialize (Reply, "", Result);
   end Get_User;

   --  
   --  Retrieve user favorites details for an organization
   procedure Get_User_Favorites
      (Client : in out Client_Type;
       User : in Swagger.UString;
       Result : out .Models.FavoriteImpl_Type_Vectors.Vector) is
      URI   : Swagger.Clients.URI_Type;
      Reply : Swagger.Value_Type;
   begin
      Client.Set_Accept (Media_List_1);


      URI.Set_Path ("/blue/rest/users/{user}/favorites");
      URI.Set_Path_Param ("user", User);
      Client.Call (Swagger.Clients.GET, URI, Reply);
      .Models.Deserialize (Reply, "", Result);
   end Get_User_Favorites;

   --  
   --  Retrieve users details for an organization
   procedure Get_Users
      (Client : in out Client_Type;
       Organization : in Swagger.UString;
       Result : out .Models.User_Type) is
      URI   : Swagger.Clients.URI_Type;
      Reply : Swagger.Value_Type;
   begin
      Client.Set_Accept (Media_List_1);


      URI.Set_Path ("/blue/rest/organizations/{organization}/users/");
      URI.Set_Path_Param ("organization", Organization);
      Client.Call (Swagger.Clients.GET, URI, Reply);
      .Models.Deserialize (Reply, "", Result);
   end Get_Users;

   --  
   --  Replay an organization pipeline run
   procedure Post_Pipeline_Run
      (Client : in out Client_Type;
       Organization : in Swagger.UString;
       Pipeline : in Swagger.UString;
       Run : in Swagger.UString;
       Result : out .Models.QueueItemImpl_Type) is
      URI   : Swagger.Clients.URI_Type;
      Reply : Swagger.Value_Type;
   begin
      Client.Set_Accept (Media_List_1);


      URI.Set_Path ("/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/replay");
      URI.Set_Path_Param ("organization", Organization);
      URI.Set_Path_Param ("pipeline", Pipeline);
      URI.Set_Path_Param ("run", Run);
      Client.Call (Swagger.Clients.POST, URI, Reply);
      .Models.Deserialize (Reply, "", Result);
   end Post_Pipeline_Run;

   --  
   --  Start a build for an organization pipeline
   procedure Post_Pipeline_Runs
      (Client : in out Client_Type;
       Organization : in Swagger.UString;
       Pipeline : in Swagger.UString;
       Result : out .Models.QueueItemImpl_Type) is
      URI   : Swagger.Clients.URI_Type;
      Reply : Swagger.Value_Type;
   begin
      Client.Set_Accept (Media_List_1);


      URI.Set_Path ("/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs");
      URI.Set_Path_Param ("organization", Organization);
      URI.Set_Path_Param ("pipeline", Pipeline);
      Client.Call (Swagger.Clients.POST, URI, Reply);
      .Models.Deserialize (Reply, "", Result);
   end Post_Pipeline_Runs;

   --  
   --  Favorite/unfavorite a pipeline
   procedure Put_Pipeline_Favorite
      (Client : in out Client_Type;
       Organization : in Swagger.UString;
       Pipeline : in Swagger.UString;
       P_Body : in Boolean;
       Result : out .Models.FavoriteImpl_Type) is
      URI   : Swagger.Clients.URI_Type;
      Req   : Swagger.Clients.Request_Type;
      Reply : Swagger.Value_Type;
   begin
      Client.Set_Accept (Media_List_1);
      Client.Initialize (Req, Media_List_1);
      .Models.Serialize (Req.Stream, "", P_Body);

      URI.Set_Path ("/blue/rest/organizations/{organization}/pipelines/{pipeline}/favorite");
      URI.Set_Path_Param ("organization", Organization);
      URI.Set_Path_Param ("pipeline", Pipeline);
      Client.Call (Swagger.Clients.PUT, URI, Req, Reply);
      .Models.Deserialize (Reply, "", Result);
   end Put_Pipeline_Favorite;

   --  
   --  Stop a build of an organization pipeline
   procedure Put_Pipeline_Run
      (Client : in out Client_Type;
       Organization : in Swagger.UString;
       Pipeline : in Swagger.UString;
       Run : in Swagger.UString;
       Blocking : in Swagger.Nullable_UString;
       Time_Out_In_Secs : in Swagger.Nullable_Integer;
       Result : out .Models.PipelineRun_Type) is
      URI   : Swagger.Clients.URI_Type;
      Reply : Swagger.Value_Type;
   begin
      Client.Set_Accept (Media_List_1);


      URI.Add_Param ("blocking", Blocking);
      URI.Add_Param ("timeOutInSecs", Time_Out_In_Secs);
      URI.Set_Path ("/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/stop");
      URI.Set_Path_Param ("organization", Organization);
      URI.Set_Path_Param ("pipeline", Pipeline);
      URI.Set_Path_Param ("run", Run);
      Client.Call (Swagger.Clients.PUT, URI, Reply);
      .Models.Deserialize (Reply, "", Result);
   end Put_Pipeline_Run;

   --  
   --  Search for any resource details
   procedure Search
      (Client : in out Client_Type;
       Q : in Swagger.UString;
       Result : out Swagger.UString) is
      URI   : Swagger.Clients.URI_Type;
      Reply : Swagger.Value_Type;
   begin
      Client.Set_Accept (Media_List_1);


      URI.Add_Param ("q", Q);
      URI.Set_Path ("/blue/rest/search/");
      Client.Call (Swagger.Clients.GET, URI, Reply);
      .Models.Deserialize (Reply, "", Result);
   end Search;

   --  
   --  Get classes details
   procedure Search_Classes
      (Client : in out Client_Type;
       Q : in Swagger.UString;
       Result : out Swagger.UString) is
      URI   : Swagger.Clients.URI_Type;
      Reply : Swagger.Value_Type;
   begin
      Client.Set_Accept (Media_List_1);


      URI.Add_Param ("q", Q);
      URI.Set_Path ("/blue/rest/classes/");
      Client.Call (Swagger.Clients.GET, URI, Reply);
      .Models.Deserialize (Reply, "", Result);
   end Search_Classes;

   --  
   --  Retrieve computer details
   procedure Get_Computer
      (Client : in out Client_Type;
       Depth : in Integer;
       Result : out .Models.ComputerSet_Type) is
      URI   : Swagger.Clients.URI_Type;
      Reply : Swagger.Value_Type;
   begin
      Client.Set_Accept (Media_List_1);


      URI.Add_Param ("depth", Depth);
      URI.Set_Path ("/computer/api/json");
      Client.Call (Swagger.Clients.GET, URI, Reply);
      .Models.Deserialize (Reply, "", Result);
   end Get_Computer;

   --  
   --  Retrieve Jenkins details
   procedure Get_Jenkins
      (Client : in out Client_Type;
       Result : out .Models.Hudson_Type) is
      URI   : Swagger.Clients.URI_Type;
      Reply : Swagger.Value_Type;
   begin
      Client.Set_Accept (Media_List_1);


      URI.Set_Path ("/api/json");
      Client.Call (Swagger.Clients.GET, URI, Reply);
      .Models.Deserialize (Reply, "", Result);
   end Get_Jenkins;

   --  
   --  Retrieve job details
   procedure Get_Job
      (Client : in out Client_Type;
       Name : in Swagger.UString;
       Result : out .Models.FreeStyleProject_Type) is
      URI   : Swagger.Clients.URI_Type;
      Reply : Swagger.Value_Type;
   begin
      Client.Set_Accept (Media_List_1);


      URI.Set_Path ("/job/{name}/api/json");
      URI.Set_Path_Param ("name", Name);
      Client.Call (Swagger.Clients.GET, URI, Reply);
      .Models.Deserialize (Reply, "", Result);
   end Get_Job;

   --  
   --  Retrieve job configuration
   procedure Get_Job_Config
      (Client : in out Client_Type;
       Name : in Swagger.UString;
       Result : out Swagger.UString) is
      URI   : Swagger.Clients.URI_Type;
      Reply : Swagger.Value_Type;
   begin
      Client.Set_Accept (Media_List_3);


      URI.Set_Path ("/job/{name}/config.xml");
      URI.Set_Path_Param ("name", Name);
      Client.Call (Swagger.Clients.GET, URI, Reply);
      .Models.Deserialize (Reply, "", Result);
   end Get_Job_Config;

   --  
   --  Retrieve job's last build details
   procedure Get_Job_Last_Build
      (Client : in out Client_Type;
       Name : in Swagger.UString;
       Result : out .Models.FreeStyleBuild_Type) is
      URI   : Swagger.Clients.URI_Type;
      Reply : Swagger.Value_Type;
   begin
      Client.Set_Accept (Media_List_1);


      URI.Set_Path ("/job/{name}/lastBuild/api/json");
      URI.Set_Path_Param ("name", Name);
      Client.Call (Swagger.Clients.GET, URI, Reply);
      .Models.Deserialize (Reply, "", Result);
   end Get_Job_Last_Build;

   --  
   --  Retrieve job's build progressive text output
   procedure Get_Job_Progressive_Text
      (Client : in out Client_Type;
       Name : in Swagger.UString;
       Number : in Swagger.UString;
       Start : in Swagger.UString) is
      URI   : Swagger.Clients.URI_Type;
   begin


      URI.Add_Param ("start", Start);
      URI.Set_Path ("/job/{name}/{number}/logText/progressiveText");
      URI.Set_Path_Param ("name", Name);
      URI.Set_Path_Param ("number", Number);
      Client.Call (Swagger.Clients.GET, URI);
   end Get_Job_Progressive_Text;

   --  
   --  Retrieve queue details
   procedure Get_Queue
      (Client : in out Client_Type;
       Result : out .Models.Queue_Type) is
      URI   : Swagger.Clients.URI_Type;
      Reply : Swagger.Value_Type;
   begin
      Client.Set_Accept (Media_List_1);


      URI.Set_Path ("/queue/api/json");
      Client.Call (Swagger.Clients.GET, URI, Reply);
      .Models.Deserialize (Reply, "", Result);
   end Get_Queue;

   --  
   --  Retrieve queued item details
   procedure Get_Queue_Item
      (Client : in out Client_Type;
       Number : in Swagger.UString;
       Result : out .Models.Queue_Type) is
      URI   : Swagger.Clients.URI_Type;
      Reply : Swagger.Value_Type;
   begin
      Client.Set_Accept (Media_List_1);


      URI.Set_Path ("/queue/item/{number}/api/json");
      URI.Set_Path_Param ("number", Number);
      Client.Call (Swagger.Clients.GET, URI, Reply);
      .Models.Deserialize (Reply, "", Result);
   end Get_Queue_Item;

   --  
   --  Retrieve view details
   procedure Get_View
      (Client : in out Client_Type;
       Name : in Swagger.UString;
       Result : out .Models.ListView_Type) is
      URI   : Swagger.Clients.URI_Type;
      Reply : Swagger.Value_Type;
   begin
      Client.Set_Accept (Media_List_1);


      URI.Set_Path ("/view/{name}/api/json");
      URI.Set_Path_Param ("name", Name);
      Client.Call (Swagger.Clients.GET, URI, Reply);
      .Models.Deserialize (Reply, "", Result);
   end Get_View;

   --  
   --  Retrieve view configuration
   procedure Get_View_Config
      (Client : in out Client_Type;
       Name : in Swagger.UString;
       Result : out Swagger.UString) is
      URI   : Swagger.Clients.URI_Type;
      Reply : Swagger.Value_Type;
   begin
      Client.Set_Accept (Media_List_3);


      URI.Set_Path ("/view/{name}/config.xml");
      URI.Set_Path_Param ("name", Name);
      Client.Call (Swagger.Clients.GET, URI, Reply);
      .Models.Deserialize (Reply, "", Result);
   end Get_View_Config;

   --  
   --  Retrieve Jenkins headers
   procedure Head_Jenkins
      (Client : in out Client_Type) is
      URI   : Swagger.Clients.URI_Type;
   begin


      URI.Set_Path ("/api/json");
      Client.Call (Swagger.Clients.HEAD, URI);
   end Head_Jenkins;

   --  
   --  Create a new job using job configuration, or copied from an existing job
   procedure Post_Create_Item
      (Client : in out Client_Type;
       Name : in Swagger.UString;
       From : in Swagger.Nullable_UString;
       Mode : in Swagger.Nullable_UString;
       Jenkins_Crumb : in Swagger.Nullable_UString;
       Content_Type : in Swagger.Nullable_UString;
       P_Body : in Swagger.Nullable_UString) is
      URI   : Swagger.Clients.URI_Type;
      Req   : Swagger.Clients.Request_Type;
   begin
      Client.Set_Accept (Media_List_2);
      Client.Initialize (Req, Media_List_1);
      .Models.Serialize (Req.Stream, "", P_Body);

      URI.Add_Param ("name", Name);
      URI.Add_Param ("from", From);
      URI.Add_Param ("mode", Mode);
      URI.Set_Path ("/createItem");
      Client.Call (Swagger.Clients.POST, URI, Req);
   end Post_Create_Item;

   --  
   --  Create a new view using view configuration
   procedure Post_Create_View
      (Client : in out Client_Type;
       Name : in Swagger.UString;
       Jenkins_Crumb : in Swagger.Nullable_UString;
       Content_Type : in Swagger.Nullable_UString;
       P_Body : in Swagger.Nullable_UString) is
      URI   : Swagger.Clients.URI_Type;
      Req   : Swagger.Clients.Request_Type;
   begin
      Client.Set_Accept (Media_List_2);
      Client.Initialize (Req, Media_List_1);
      .Models.Serialize (Req.Stream, "", P_Body);

      URI.Add_Param ("name", Name);
      URI.Set_Path ("/createView");
      Client.Call (Swagger.Clients.POST, URI, Req);
   end Post_Create_View;

   --  
   --  Build a job
   procedure Post_Job_Build
      (Client : in out Client_Type;
       Name : in Swagger.UString;
       Json : in Swagger.UString;
       Token : in Swagger.Nullable_UString;
       Jenkins_Crumb : in Swagger.Nullable_UString) is
      URI   : Swagger.Clients.URI_Type;
   begin


      URI.Add_Param ("json", Json);
      URI.Add_Param ("token", Token);
      URI.Set_Path ("/job/{name}/build");
      URI.Set_Path_Param ("name", Name);
      Client.Call (Swagger.Clients.POST, URI);
   end Post_Job_Build;

   --  
   --  Update job configuration
   procedure Post_Job_Config
      (Client : in out Client_Type;
       Name : in Swagger.UString;
       P_Body : in Swagger.UString;
       Jenkins_Crumb : in Swagger.Nullable_UString) is
      URI   : Swagger.Clients.URI_Type;
      Req   : Swagger.Clients.Request_Type;
   begin
      Client.Set_Accept (Media_List_2);
      Client.Initialize (Req, Media_List_1);
      .Models.Serialize (Req.Stream, "", P_Body);

      URI.Set_Path ("/job/{name}/config.xml");
      URI.Set_Path_Param ("name", Name);
      Client.Call (Swagger.Clients.POST, URI, Req);
   end Post_Job_Config;

   --  
   --  Delete a job
   procedure Post_Job_Delete
      (Client : in out Client_Type;
       Name : in Swagger.UString;
       Jenkins_Crumb : in Swagger.Nullable_UString) is
      URI   : Swagger.Clients.URI_Type;
   begin


      URI.Set_Path ("/job/{name}/doDelete");
      URI.Set_Path_Param ("name", Name);
      Client.Call (Swagger.Clients.POST, URI);
   end Post_Job_Delete;

   --  
   --  Disable a job
   procedure Post_Job_Disable
      (Client : in out Client_Type;
       Name : in Swagger.UString;
       Jenkins_Crumb : in Swagger.Nullable_UString) is
      URI   : Swagger.Clients.URI_Type;
   begin


      URI.Set_Path ("/job/{name}/disable");
      URI.Set_Path_Param ("name", Name);
      Client.Call (Swagger.Clients.POST, URI);
   end Post_Job_Disable;

   --  
   --  Enable a job
   procedure Post_Job_Enable
      (Client : in out Client_Type;
       Name : in Swagger.UString;
       Jenkins_Crumb : in Swagger.Nullable_UString) is
      URI   : Swagger.Clients.URI_Type;
   begin


      URI.Set_Path ("/job/{name}/enable");
      URI.Set_Path_Param ("name", Name);
      Client.Call (Swagger.Clients.POST, URI);
   end Post_Job_Enable;

   --  
   --  Stop a job
   procedure Post_Job_Last_Build_Stop
      (Client : in out Client_Type;
       Name : in Swagger.UString;
       Jenkins_Crumb : in Swagger.Nullable_UString) is
      URI   : Swagger.Clients.URI_Type;
   begin


      URI.Set_Path ("/job/{name}/lastBuild/stop");
      URI.Set_Path_Param ("name", Name);
      Client.Call (Swagger.Clients.POST, URI);
   end Post_Job_Last_Build_Stop;

   --  
   --  Update view configuration
   procedure Post_View_Config
      (Client : in out Client_Type;
       Name : in Swagger.UString;
       P_Body : in Swagger.UString;
       Jenkins_Crumb : in Swagger.Nullable_UString) is
      URI   : Swagger.Clients.URI_Type;
      Req   : Swagger.Clients.Request_Type;
   begin
      Client.Set_Accept (Media_List_2);
      Client.Initialize (Req, Media_List_1);
      .Models.Serialize (Req.Stream, "", P_Body);

      URI.Set_Path ("/view/{name}/config.xml");
      URI.Set_Path_Param ("name", Name);
      Client.Call (Swagger.Clients.POST, URI, Req);
   end Post_View_Config;
end .Clients;
