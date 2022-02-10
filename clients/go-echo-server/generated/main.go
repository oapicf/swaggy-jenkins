package main

import (
	"github.com/GIT_USER_ID/GIT_REPO_ID/handlers"
	"github.com/labstack/echo/v4"
	"github.com/labstack/echo/v4/middleware"
)

func main() {
	e := echo.New()

    //todo: handle the error!
	c, _ := handlers.NewContainer()

	// Middleware
	e.Use(middleware.Logger())
	e.Use(middleware.Recover())


	// GetCrumb - 
	e.GET("/crumbIssuer/api/json", c.GetCrumb)

	// DeletePipelineQueueItem - 
	e.DELETE("/blue/rest/organizations/:organization/pipelines/:pipeline/queue/:queue", c.DeletePipelineQueueItem)

	// GetAuthenticatedUser - 
	e.GET("/blue/rest/organizations/:organization/user/", c.GetAuthenticatedUser)

	// GetClasses - 
	e.GET("/blue/rest/classes/:class", c.GetClasses)

	// GetJsonWebKey - 
	e.GET("/jwt-auth/jwks/:key", c.GetJsonWebKey)

	// GetJsonWebToken - 
	e.GET("/jwt-auth/token", c.GetJsonWebToken)

	// GetOrganisation - 
	e.GET("/blue/rest/organizations/:organization", c.GetOrganisation)

	// GetOrganisations - 
	e.GET("/blue/rest/organizations/", c.GetOrganisations)

	// GetPipeline - 
	e.GET("/blue/rest/organizations/:organization/pipelines/:pipeline", c.GetPipeline)

	// GetPipelineActivities - 
	e.GET("/blue/rest/organizations/:organization/pipelines/:pipeline/activities", c.GetPipelineActivities)

	// GetPipelineBranch - 
	e.GET("/blue/rest/organizations/:organization/pipelines/:pipeline/branches/:branch/", c.GetPipelineBranch)

	// GetPipelineBranchRun - 
	e.GET("/blue/rest/organizations/:organization/pipelines/:pipeline/branches/:branch/runs/:run", c.GetPipelineBranchRun)

	// GetPipelineBranches - 
	e.GET("/blue/rest/organizations/:organization/pipelines/:pipeline/branches", c.GetPipelineBranches)

	// GetPipelineFolder - 
	e.GET("/blue/rest/organizations/:organization/pipelines/:folder/", c.GetPipelineFolder)

	// GetPipelineFolderPipeline - 
	e.GET("/blue/rest/organizations/:organization/pipelines/:folder/pipelines/:pipeline", c.GetPipelineFolderPipeline)

	// GetPipelineQueue - 
	e.GET("/blue/rest/organizations/:organization/pipelines/:pipeline/queue", c.GetPipelineQueue)

	// GetPipelineRun - 
	e.GET("/blue/rest/organizations/:organization/pipelines/:pipeline/runs/:run", c.GetPipelineRun)

	// GetPipelineRunLog - 
	e.GET("/blue/rest/organizations/:organization/pipelines/:pipeline/runs/:run/log", c.GetPipelineRunLog)

	// GetPipelineRunNode - 
	e.GET("/blue/rest/organizations/:organization/pipelines/:pipeline/runs/:run/nodes/:node", c.GetPipelineRunNode)

	// GetPipelineRunNodeStep - 
	e.GET("/blue/rest/organizations/:organization/pipelines/:pipeline/runs/:run/nodes/:node/steps/:step", c.GetPipelineRunNodeStep)

	// GetPipelineRunNodeStepLog - 
	e.GET("/blue/rest/organizations/:organization/pipelines/:pipeline/runs/:run/nodes/:node/steps/:step/log", c.GetPipelineRunNodeStepLog)

	// GetPipelineRunNodeSteps - 
	e.GET("/blue/rest/organizations/:organization/pipelines/:pipeline/runs/:run/nodes/:node/steps", c.GetPipelineRunNodeSteps)

	// GetPipelineRunNodes - 
	e.GET("/blue/rest/organizations/:organization/pipelines/:pipeline/runs/:run/nodes", c.GetPipelineRunNodes)

	// GetPipelineRuns - 
	e.GET("/blue/rest/organizations/:organization/pipelines/:pipeline/runs", c.GetPipelineRuns)

	// GetPipelines - 
	e.GET("/blue/rest/organizations/:organization/pipelines/", c.GetPipelines)

	// GetSCM - 
	e.GET("/blue/rest/organizations/:organization/scm/:scm", c.GetSCM)

	// GetSCMOrganisationRepositories - 
	e.GET("/blue/rest/organizations/:organization/scm/:scm/organizations/:scmOrganisation/repositories", c.GetSCMOrganisationRepositories)

	// GetSCMOrganisationRepository - 
	e.GET("/blue/rest/organizations/:organization/scm/:scm/organizations/:scmOrganisation/repositories/:repository", c.GetSCMOrganisationRepository)

	// GetSCMOrganisations - 
	e.GET("/blue/rest/organizations/:organization/scm/:scm/organizations", c.GetSCMOrganisations)

	// GetUser - 
	e.GET("/blue/rest/organizations/:organization/users/:user", c.GetUser)

	// GetUserFavorites - 
	e.GET("/blue/rest/users/:user/favorites", c.GetUserFavorites)

	// GetUsers - 
	e.GET("/blue/rest/organizations/:organization/users/", c.GetUsers)

	// PostPipelineRun - 
	e.POST("/blue/rest/organizations/:organization/pipelines/:pipeline/runs/:run/replay", c.PostPipelineRun)

	// PostPipelineRuns - 
	e.POST("/blue/rest/organizations/:organization/pipelines/:pipeline/runs", c.PostPipelineRuns)

	// PutPipelineFavorite - 
	e.PUT("/blue/rest/organizations/:organization/pipelines/:pipeline/favorite", c.PutPipelineFavorite)

	// PutPipelineRun - 
	e.PUT("/blue/rest/organizations/:organization/pipelines/:pipeline/runs/:run/stop", c.PutPipelineRun)

	// Search - 
	e.GET("/blue/rest/search/", c.Search)

	// SearchClasses - 
	e.GET("/blue/rest/classes/", c.SearchClasses)

	// GetComputer - 
	e.GET("/computer/api/json", c.GetComputer)

	// GetJenkins - 
	e.GET("/api/json", c.GetJenkins)

	// GetJob - 
	e.GET("/job/:name/api/json", c.GetJob)

	// GetJobConfig - 
	e.GET("/job/:name/config.xml", c.GetJobConfig)

	// GetJobLastBuild - 
	e.GET("/job/:name/lastBuild/api/json", c.GetJobLastBuild)

	// GetJobProgressiveText - 
	e.GET("/job/:name/:number/logText/progressiveText", c.GetJobProgressiveText)

	// GetQueue - 
	e.GET("/queue/api/json", c.GetQueue)

	// GetQueueItem - 
	e.GET("/queue/item/:number/api/json", c.GetQueueItem)

	// GetView - 
	e.GET("/view/:name/api/json", c.GetView)

	// GetViewConfig - 
	e.GET("/view/:name/config.xml", c.GetViewConfig)

	// HeadJenkins - 
	e.HEAD("/api/json", c.HeadJenkins)

	// PostCreateItem - 
	e.POST("/createItem", c.PostCreateItem)

	// PostCreateView - 
	e.POST("/createView", c.PostCreateView)

	// PostJobBuild - 
	e.POST("/job/:name/build", c.PostJobBuild)

	// PostJobConfig - 
	e.POST("/job/:name/config.xml", c.PostJobConfig)

	// PostJobDelete - 
	e.POST("/job/:name/doDelete", c.PostJobDelete)

	// PostJobDisable - 
	e.POST("/job/:name/disable", c.PostJobDisable)

	// PostJobEnable - 
	e.POST("/job/:name/enable", c.PostJobEnable)

	// PostJobLastBuildStop - 
	e.POST("/job/:name/lastBuild/stop", c.PostJobLastBuildStop)

	// PostViewConfig - 
	e.POST("/view/:name/config.xml", c.PostViewConfig)


	// Start server
	e.Logger.Fatal(e.Start(":8080"))
}