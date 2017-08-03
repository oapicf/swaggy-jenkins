package 

import (
	"net/http"
	"fmt"
	"github.com/gorilla/mux"
)

type Route struct {
	Name        string
	Method      string
	Pattern     string
	HandlerFunc http.HandlerFunc
}

type Routes []Route

func NewRouter() *mux.Router {
	router := mux.NewRouter().StrictSlash(true)
	for _, route := range routes {
		var handler http.Handler
		handler = route.HandlerFunc
		handler = Logger(handler, route.Name)

		router.
			Methods(route.Method).
			Path(route.Pattern).
			Name(route.Name).
			Handler(handler)
	}

	return router
}

func Index(w http.ResponseWriter, r *http.Request) {
	fmt.Fprintf(w, "Hello World!")
}

var routes = Routes{
	Route{
		"Index",
		"GET",
		"//",
		Index,
	},

	Route{
		"DeletePipelineQueueItem",
		"DELETE",
		"//blue/rest/organizations/{organization}/pipelines/{pipeline}/queue/{queue}",
		DeletePipelineQueueItem,
	},

	Route{
		"GetAuthenticatedUser",
		"GET",
		"//blue/rest/organizations/{organization}/user/",
		GetAuthenticatedUser,
	},

	Route{
		"GetClasses",
		"GET",
		"//blue/rest/classes/{class}",
		GetClasses,
	},

	Route{
		"GetOrganisation",
		"GET",
		"//blue/rest/organizations/{organization}",
		GetOrganisation,
	},

	Route{
		"GetOrganisations",
		"GET",
		"//blue/rest/organizations/",
		GetOrganisations,
	},

	Route{
		"GetPipeline",
		"GET",
		"//blue/rest/organizations/{organization}/pipelines/{pipeline}",
		GetPipeline,
	},

	Route{
		"GetPipelineActivities",
		"GET",
		"//blue/rest/organizations/{organization}/pipelines/{pipeline}/activities",
		GetPipelineActivities,
	},

	Route{
		"GetPipelineBranch",
		"GET",
		"//blue/rest/organizations/{organization}/pipelines/{pipeline}/branches/{branch}/",
		GetPipelineBranch,
	},

	Route{
		"GetPipelineBranchRun",
		"GET",
		"//blue/rest/organizations/{organization}/pipelines/{pipeline}/branches/{branch}/runs/{run}",
		GetPipelineBranchRun,
	},

	Route{
		"GetPipelineBranches",
		"GET",
		"//blue/rest/organizations/{organization}/pipelines/{pipeline}/branches",
		GetPipelineBranches,
	},

	Route{
		"GetPipelineFolder",
		"GET",
		"//blue/rest/organizations/{organization}/pipelines/{folder}/",
		GetPipelineFolder,
	},

	Route{
		"GetPipelineFolderPipeline",
		"GET",
		"//blue/rest/organizations/{organization}/pipelines/{folder}/pipelines/{pipeline}",
		GetPipelineFolderPipeline,
	},

	Route{
		"GetPipelineQueue",
		"GET",
		"//blue/rest/organizations/{organization}/pipelines/{pipeline}/queue",
		GetPipelineQueue,
	},

	Route{
		"GetPipelineRun",
		"GET",
		"//blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}",
		GetPipelineRun,
	},

	Route{
		"GetPipelineRunLog",
		"GET",
		"//blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/log",
		GetPipelineRunLog,
	},

	Route{
		"GetPipelineRunNode",
		"GET",
		"//blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes/{node}",
		GetPipelineRunNode,
	},

	Route{
		"GetPipelineRunNodeStep",
		"GET",
		"//blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes/{node}/steps/{step}",
		GetPipelineRunNodeStep,
	},

	Route{
		"GetPipelineRunNodeStepLog",
		"GET",
		"//blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes/{node}/steps/{step}/log",
		GetPipelineRunNodeStepLog,
	},

	Route{
		"GetPipelineRunNodeSteps",
		"GET",
		"//blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes/{node}/steps",
		GetPipelineRunNodeSteps,
	},

	Route{
		"GetPipelineRunNodes",
		"GET",
		"//blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes",
		GetPipelineRunNodes,
	},

	Route{
		"GetPipelineRuns",
		"GET",
		"//blue/rest/organizations/{organization}/pipelines/{pipeline}/runs",
		GetPipelineRuns,
	},

	Route{
		"GetPipelines",
		"GET",
		"//blue/rest/organizations/{organization}/pipelines/",
		GetPipelines,
	},

	Route{
		"GetSCM",
		"GET",
		"//blue/rest/organizations/{organization}/scm/{scm}",
		GetSCM,
	},

	Route{
		"GetSCMOrganisationRepositories",
		"GET",
		"//blue/rest/organizations/{organization}/scm/{scm}/organizations/{scmOrganisation}/repositories",
		GetSCMOrganisationRepositories,
	},

	Route{
		"GetSCMOrganisationRepository",
		"GET",
		"//blue/rest/organizations/{organization}/scm/{scm}/organizations/{scmOrganisation}/repositories/{repository}",
		GetSCMOrganisationRepository,
	},

	Route{
		"GetSCMOrganisations",
		"GET",
		"//blue/rest/organizations/{organization}/scm/{scm}/organizations",
		GetSCMOrganisations,
	},

	Route{
		"GetUser",
		"GET",
		"//blue/rest/organizations/{organization}/users/{user}",
		GetUser,
	},

	Route{
		"GetUserFavorites",
		"GET",
		"//blue/rest/users/{user}/favorites",
		GetUserFavorites,
	},

	Route{
		"GetUsers",
		"GET",
		"//blue/rest/organizations/{organization}/users/",
		GetUsers,
	},

	Route{
		"PostPipelineRun",
		"POST",
		"//blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/replay",
		PostPipelineRun,
	},

	Route{
		"PostPipelineRuns",
		"POST",
		"//blue/rest/organizations/{organization}/pipelines/{pipeline}/runs",
		PostPipelineRuns,
	},

	Route{
		"PutPipelineFavorite",
		"PUT",
		"//blue/rest/organizations/{organization}/pipelines/{pipeline}/favorite",
		PutPipelineFavorite,
	},

	Route{
		"PutPipelineRun",
		"PUT",
		"//blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/stop",
		PutPipelineRun,
	},

	Route{
		"Search",
		"GET",
		"//blue/rest/search/",
		Search,
	},

	Route{
		"SearchClasses",
		"GET",
		"//blue/rest/classes/",
		SearchClasses,
	},

	Route{
		"GetComputer",
		"GET",
		"//computer/api/json",
		GetComputer,
	},

	Route{
		"GetCrumb",
		"GET",
		"//crumbIssuer/api/json",
		GetCrumb,
	},

	Route{
		"GetJenkins",
		"GET",
		"//api/json",
		GetJenkins,
	},

	Route{
		"GetJob",
		"GET",
		"//job/{name}/api/json",
		GetJob,
	},

	Route{
		"GetJobConfig",
		"GET",
		"//job/{name}/config.xml",
		GetJobConfig,
	},

	Route{
		"GetJobLastBuild",
		"GET",
		"//job/{name}/lastBuild/api/json",
		GetJobLastBuild,
	},

	Route{
		"GetJobProgressiveText",
		"GET",
		"//job/{name}/{number}/logText/progressiveText",
		GetJobProgressiveText,
	},

	Route{
		"GetQueue",
		"GET",
		"//queue/api/json",
		GetQueue,
	},

	Route{
		"GetQueueItem",
		"GET",
		"//queue/item/{number}/api/json",
		GetQueueItem,
	},

	Route{
		"GetView",
		"GET",
		"//view/{name}/api/json",
		GetView,
	},

	Route{
		"GetViewConfig",
		"GET",
		"//view/{name}/config.xml",
		GetViewConfig,
	},

	Route{
		"HeadJenkins",
		"HEAD",
		"//api/json",
		HeadJenkins,
	},

	Route{
		"PostCreateItem",
		"POST",
		"//createItem",
		PostCreateItem,
	},

	Route{
		"PostCreateView",
		"POST",
		"//createView",
		PostCreateView,
	},

	Route{
		"PostJobBuild",
		"POST",
		"//job/{name}/build",
		PostJobBuild,
	},

	Route{
		"PostJobConfig",
		"POST",
		"//job/{name}/config.xml",
		PostJobConfig,
	},

	Route{
		"PostJobDelete",
		"POST",
		"//job/{name}/doDelete",
		PostJobDelete,
	},

	Route{
		"PostJobDisable",
		"POST",
		"//job/{name}/disable",
		PostJobDisable,
	},

	Route{
		"PostJobEnable",
		"POST",
		"//job/{name}/enable",
		PostJobEnable,
	},

	Route{
		"PostJobLastBuildStop",
		"POST",
		"//job/{name}/lastBuild/stop",
		PostJobLastBuildStop,
	},

	Route{
		"PostViewConfig",
		"POST",
		"//view/{name}/config.xml",
		PostViewConfig,
	},

}
