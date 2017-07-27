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
		"GetAuthenticatedUser",
		"GET",
		"//blue/rest/organizations/{organisation}/user/",
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
		"//blue/rest/organizations/{organisation}",
		GetOrganisation,
	},

	Route{
		"GetOrganisations",
		"GET",
		"//blue/rest/organizations/",
		GetOrganisations,
	},

	Route{
		"GetPipelineBranchByOrg",
		"GET",
		"//blue/rest/organizations/{organisation}/pipelines/{pipeline}/branches/{branch}/",
		GetPipelineBranchByOrg,
	},

	Route{
		"GetPipelineBranchesByOrg",
		"GET",
		"//blue/rest/organizations/{organisation}/pipelines/{pipeline}/branches",
		GetPipelineBranchesByOrg,
	},

	Route{
		"GetPipelineByOrg",
		"GET",
		"//blue/rest/organizations/{organisation}/pipelines/{pipeline}",
		GetPipelineByOrg,
	},

	Route{
		"GetPipelineFolderByOrg",
		"GET",
		"//blue/rest/organizations/{organisation}/pipelines/{folder}/",
		GetPipelineFolderByOrg,
	},

	Route{
		"GetPipelineFolderByOrg_0",
		"GET",
		"//blue/rest/organizations/{organisation}/pipelines/{folder}/pipelines/{pipeline}",
		GetPipelineFolderByOrg_0,
	},

	Route{
		"GetPipelinesByOrg",
		"GET",
		"//blue/rest/organizations/{organisation}/pipelines/",
		GetPipelinesByOrg,
	},

	Route{
		"GetUser",
		"GET",
		"//blue/rest/organizations/{organisation}/users/{user}",
		GetUser,
	},

	Route{
		"GetUsers",
		"GET",
		"//blue/rest/organizations/{organisation}/users/",
		GetUsers,
	},

	Route{
		"Search",
		"GET",
		"//blue/rest/classes/",
		Search,
	},

	Route{
		"Search_0",
		"GET",
		"//blue/rest/search/",
		Search_0,
	},

	Route{
		"GetComputer",
		"GET",
		"//computer/api/json?depth=1",
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
