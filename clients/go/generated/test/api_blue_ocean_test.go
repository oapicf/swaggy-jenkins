/*
Swaggy Jenkins

Testing BlueOceanAPIService

*/

// Code generated by OpenAPI Generator (https://openapi-generator.tech);

package openapi

import (
	"context"
	"github.com/stretchr/testify/assert"
	"github.com/stretchr/testify/require"
	"testing"
	openapiclient "github.com/oapicf/swaggy-jenkins"
)

func Test_openapi_BlueOceanAPIService(t *testing.T) {

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)

	t.Run("Test BlueOceanAPIService DeletePipelineQueueItem", func(t *testing.T) {

		t.Skip("skip test")  // remove to run test

		var organization string
		var pipeline string
		var queue string

		httpRes, err := apiClient.BlueOceanAPI.DeletePipelineQueueItem(context.Background(), organization, pipeline, queue).Execute()

		require.Nil(t, err)
		assert.Equal(t, 200, httpRes.StatusCode)

	})

	t.Run("Test BlueOceanAPIService GetAuthenticatedUser", func(t *testing.T) {

		t.Skip("skip test")  // remove to run test

		var organization string

		resp, httpRes, err := apiClient.BlueOceanAPI.GetAuthenticatedUser(context.Background(), organization).Execute()

		require.Nil(t, err)
		require.NotNil(t, resp)
		assert.Equal(t, 200, httpRes.StatusCode)

	})

	t.Run("Test BlueOceanAPIService GetClasses", func(t *testing.T) {

		t.Skip("skip test")  // remove to run test

		var class string

		resp, httpRes, err := apiClient.BlueOceanAPI.GetClasses(context.Background(), class).Execute()

		require.Nil(t, err)
		require.NotNil(t, resp)
		assert.Equal(t, 200, httpRes.StatusCode)

	})

	t.Run("Test BlueOceanAPIService GetJsonWebKey", func(t *testing.T) {

		t.Skip("skip test")  // remove to run test

		var key int32

		resp, httpRes, err := apiClient.BlueOceanAPI.GetJsonWebKey(context.Background(), key).Execute()

		require.Nil(t, err)
		require.NotNil(t, resp)
		assert.Equal(t, 200, httpRes.StatusCode)

	})

	t.Run("Test BlueOceanAPIService GetJsonWebToken", func(t *testing.T) {

		t.Skip("skip test")  // remove to run test

		resp, httpRes, err := apiClient.BlueOceanAPI.GetJsonWebToken(context.Background()).Execute()

		require.Nil(t, err)
		require.NotNil(t, resp)
		assert.Equal(t, 200, httpRes.StatusCode)

	})

	t.Run("Test BlueOceanAPIService GetOrganisation", func(t *testing.T) {

		t.Skip("skip test")  // remove to run test

		var organization string

		resp, httpRes, err := apiClient.BlueOceanAPI.GetOrganisation(context.Background(), organization).Execute()

		require.Nil(t, err)
		require.NotNil(t, resp)
		assert.Equal(t, 200, httpRes.StatusCode)

	})

	t.Run("Test BlueOceanAPIService GetOrganisations", func(t *testing.T) {

		t.Skip("skip test")  // remove to run test

		resp, httpRes, err := apiClient.BlueOceanAPI.GetOrganisations(context.Background()).Execute()

		require.Nil(t, err)
		require.NotNil(t, resp)
		assert.Equal(t, 200, httpRes.StatusCode)

	})

	t.Run("Test BlueOceanAPIService GetPipeline", func(t *testing.T) {

		t.Skip("skip test")  // remove to run test

		var organization string
		var pipeline string

		resp, httpRes, err := apiClient.BlueOceanAPI.GetPipeline(context.Background(), organization, pipeline).Execute()

		require.Nil(t, err)
		require.NotNil(t, resp)
		assert.Equal(t, 200, httpRes.StatusCode)

	})

	t.Run("Test BlueOceanAPIService GetPipelineActivities", func(t *testing.T) {

		t.Skip("skip test")  // remove to run test

		var organization string
		var pipeline string

		resp, httpRes, err := apiClient.BlueOceanAPI.GetPipelineActivities(context.Background(), organization, pipeline).Execute()

		require.Nil(t, err)
		require.NotNil(t, resp)
		assert.Equal(t, 200, httpRes.StatusCode)

	})

	t.Run("Test BlueOceanAPIService GetPipelineBranch", func(t *testing.T) {

		t.Skip("skip test")  // remove to run test

		var organization string
		var pipeline string
		var branch string

		resp, httpRes, err := apiClient.BlueOceanAPI.GetPipelineBranch(context.Background(), organization, pipeline, branch).Execute()

		require.Nil(t, err)
		require.NotNil(t, resp)
		assert.Equal(t, 200, httpRes.StatusCode)

	})

	t.Run("Test BlueOceanAPIService GetPipelineBranchRun", func(t *testing.T) {

		t.Skip("skip test")  // remove to run test

		var organization string
		var pipeline string
		var branch string
		var run string

		resp, httpRes, err := apiClient.BlueOceanAPI.GetPipelineBranchRun(context.Background(), organization, pipeline, branch, run).Execute()

		require.Nil(t, err)
		require.NotNil(t, resp)
		assert.Equal(t, 200, httpRes.StatusCode)

	})

	t.Run("Test BlueOceanAPIService GetPipelineBranches", func(t *testing.T) {

		t.Skip("skip test")  // remove to run test

		var organization string
		var pipeline string

		resp, httpRes, err := apiClient.BlueOceanAPI.GetPipelineBranches(context.Background(), organization, pipeline).Execute()

		require.Nil(t, err)
		require.NotNil(t, resp)
		assert.Equal(t, 200, httpRes.StatusCode)

	})

	t.Run("Test BlueOceanAPIService GetPipelineFolder", func(t *testing.T) {

		t.Skip("skip test")  // remove to run test

		var organization string
		var folder string

		resp, httpRes, err := apiClient.BlueOceanAPI.GetPipelineFolder(context.Background(), organization, folder).Execute()

		require.Nil(t, err)
		require.NotNil(t, resp)
		assert.Equal(t, 200, httpRes.StatusCode)

	})

	t.Run("Test BlueOceanAPIService GetPipelineFolderPipeline", func(t *testing.T) {

		t.Skip("skip test")  // remove to run test

		var organization string
		var pipeline string
		var folder string

		resp, httpRes, err := apiClient.BlueOceanAPI.GetPipelineFolderPipeline(context.Background(), organization, pipeline, folder).Execute()

		require.Nil(t, err)
		require.NotNil(t, resp)
		assert.Equal(t, 200, httpRes.StatusCode)

	})

	t.Run("Test BlueOceanAPIService GetPipelineQueue", func(t *testing.T) {

		t.Skip("skip test")  // remove to run test

		var organization string
		var pipeline string

		resp, httpRes, err := apiClient.BlueOceanAPI.GetPipelineQueue(context.Background(), organization, pipeline).Execute()

		require.Nil(t, err)
		require.NotNil(t, resp)
		assert.Equal(t, 200, httpRes.StatusCode)

	})

	t.Run("Test BlueOceanAPIService GetPipelineRun", func(t *testing.T) {

		t.Skip("skip test")  // remove to run test

		var organization string
		var pipeline string
		var run string

		resp, httpRes, err := apiClient.BlueOceanAPI.GetPipelineRun(context.Background(), organization, pipeline, run).Execute()

		require.Nil(t, err)
		require.NotNil(t, resp)
		assert.Equal(t, 200, httpRes.StatusCode)

	})

	t.Run("Test BlueOceanAPIService GetPipelineRunLog", func(t *testing.T) {

		t.Skip("skip test")  // remove to run test

		var organization string
		var pipeline string
		var run string

		resp, httpRes, err := apiClient.BlueOceanAPI.GetPipelineRunLog(context.Background(), organization, pipeline, run).Execute()

		require.Nil(t, err)
		require.NotNil(t, resp)
		assert.Equal(t, 200, httpRes.StatusCode)

	})

	t.Run("Test BlueOceanAPIService GetPipelineRunNode", func(t *testing.T) {

		t.Skip("skip test")  // remove to run test

		var organization string
		var pipeline string
		var run string
		var node string

		resp, httpRes, err := apiClient.BlueOceanAPI.GetPipelineRunNode(context.Background(), organization, pipeline, run, node).Execute()

		require.Nil(t, err)
		require.NotNil(t, resp)
		assert.Equal(t, 200, httpRes.StatusCode)

	})

	t.Run("Test BlueOceanAPIService GetPipelineRunNodeStep", func(t *testing.T) {

		t.Skip("skip test")  // remove to run test

		var organization string
		var pipeline string
		var run string
		var node string
		var step string

		resp, httpRes, err := apiClient.BlueOceanAPI.GetPipelineRunNodeStep(context.Background(), organization, pipeline, run, node, step).Execute()

		require.Nil(t, err)
		require.NotNil(t, resp)
		assert.Equal(t, 200, httpRes.StatusCode)

	})

	t.Run("Test BlueOceanAPIService GetPipelineRunNodeStepLog", func(t *testing.T) {

		t.Skip("skip test")  // remove to run test

		var organization string
		var pipeline string
		var run string
		var node string
		var step string

		resp, httpRes, err := apiClient.BlueOceanAPI.GetPipelineRunNodeStepLog(context.Background(), organization, pipeline, run, node, step).Execute()

		require.Nil(t, err)
		require.NotNil(t, resp)
		assert.Equal(t, 200, httpRes.StatusCode)

	})

	t.Run("Test BlueOceanAPIService GetPipelineRunNodeSteps", func(t *testing.T) {

		t.Skip("skip test")  // remove to run test

		var organization string
		var pipeline string
		var run string
		var node string

		resp, httpRes, err := apiClient.BlueOceanAPI.GetPipelineRunNodeSteps(context.Background(), organization, pipeline, run, node).Execute()

		require.Nil(t, err)
		require.NotNil(t, resp)
		assert.Equal(t, 200, httpRes.StatusCode)

	})

	t.Run("Test BlueOceanAPIService GetPipelineRunNodes", func(t *testing.T) {

		t.Skip("skip test")  // remove to run test

		var organization string
		var pipeline string
		var run string

		resp, httpRes, err := apiClient.BlueOceanAPI.GetPipelineRunNodes(context.Background(), organization, pipeline, run).Execute()

		require.Nil(t, err)
		require.NotNil(t, resp)
		assert.Equal(t, 200, httpRes.StatusCode)

	})

	t.Run("Test BlueOceanAPIService GetPipelineRuns", func(t *testing.T) {

		t.Skip("skip test")  // remove to run test

		var organization string
		var pipeline string

		resp, httpRes, err := apiClient.BlueOceanAPI.GetPipelineRuns(context.Background(), organization, pipeline).Execute()

		require.Nil(t, err)
		require.NotNil(t, resp)
		assert.Equal(t, 200, httpRes.StatusCode)

	})

	t.Run("Test BlueOceanAPIService GetPipelines", func(t *testing.T) {

		t.Skip("skip test")  // remove to run test

		var organization string

		resp, httpRes, err := apiClient.BlueOceanAPI.GetPipelines(context.Background(), organization).Execute()

		require.Nil(t, err)
		require.NotNil(t, resp)
		assert.Equal(t, 200, httpRes.StatusCode)

	})

	t.Run("Test BlueOceanAPIService GetSCM", func(t *testing.T) {

		t.Skip("skip test")  // remove to run test

		var organization string
		var scm string

		resp, httpRes, err := apiClient.BlueOceanAPI.GetSCM(context.Background(), organization, scm).Execute()

		require.Nil(t, err)
		require.NotNil(t, resp)
		assert.Equal(t, 200, httpRes.StatusCode)

	})

	t.Run("Test BlueOceanAPIService GetSCMOrganisationRepositories", func(t *testing.T) {

		t.Skip("skip test")  // remove to run test

		var organization string
		var scm string
		var scmOrganisation string

		resp, httpRes, err := apiClient.BlueOceanAPI.GetSCMOrganisationRepositories(context.Background(), organization, scm, scmOrganisation).Execute()

		require.Nil(t, err)
		require.NotNil(t, resp)
		assert.Equal(t, 200, httpRes.StatusCode)

	})

	t.Run("Test BlueOceanAPIService GetSCMOrganisationRepository", func(t *testing.T) {

		t.Skip("skip test")  // remove to run test

		var organization string
		var scm string
		var scmOrganisation string
		var repository string

		resp, httpRes, err := apiClient.BlueOceanAPI.GetSCMOrganisationRepository(context.Background(), organization, scm, scmOrganisation, repository).Execute()

		require.Nil(t, err)
		require.NotNil(t, resp)
		assert.Equal(t, 200, httpRes.StatusCode)

	})

	t.Run("Test BlueOceanAPIService GetSCMOrganisations", func(t *testing.T) {

		t.Skip("skip test")  // remove to run test

		var organization string
		var scm string

		resp, httpRes, err := apiClient.BlueOceanAPI.GetSCMOrganisations(context.Background(), organization, scm).Execute()

		require.Nil(t, err)
		require.NotNil(t, resp)
		assert.Equal(t, 200, httpRes.StatusCode)

	})

	t.Run("Test BlueOceanAPIService GetUser", func(t *testing.T) {

		t.Skip("skip test")  // remove to run test

		var organization string
		var user string

		resp, httpRes, err := apiClient.BlueOceanAPI.GetUser(context.Background(), organization, user).Execute()

		require.Nil(t, err)
		require.NotNil(t, resp)
		assert.Equal(t, 200, httpRes.StatusCode)

	})

	t.Run("Test BlueOceanAPIService GetUserFavorites", func(t *testing.T) {

		t.Skip("skip test")  // remove to run test

		var user string

		resp, httpRes, err := apiClient.BlueOceanAPI.GetUserFavorites(context.Background(), user).Execute()

		require.Nil(t, err)
		require.NotNil(t, resp)
		assert.Equal(t, 200, httpRes.StatusCode)

	})

	t.Run("Test BlueOceanAPIService GetUsers", func(t *testing.T) {

		t.Skip("skip test")  // remove to run test

		var organization string

		resp, httpRes, err := apiClient.BlueOceanAPI.GetUsers(context.Background(), organization).Execute()

		require.Nil(t, err)
		require.NotNil(t, resp)
		assert.Equal(t, 200, httpRes.StatusCode)

	})

	t.Run("Test BlueOceanAPIService PostPipelineRun", func(t *testing.T) {

		t.Skip("skip test")  // remove to run test

		var organization string
		var pipeline string
		var run string

		resp, httpRes, err := apiClient.BlueOceanAPI.PostPipelineRun(context.Background(), organization, pipeline, run).Execute()

		require.Nil(t, err)
		require.NotNil(t, resp)
		assert.Equal(t, 200, httpRes.StatusCode)

	})

	t.Run("Test BlueOceanAPIService PostPipelineRuns", func(t *testing.T) {

		t.Skip("skip test")  // remove to run test

		var organization string
		var pipeline string

		resp, httpRes, err := apiClient.BlueOceanAPI.PostPipelineRuns(context.Background(), organization, pipeline).Execute()

		require.Nil(t, err)
		require.NotNil(t, resp)
		assert.Equal(t, 200, httpRes.StatusCode)

	})

	t.Run("Test BlueOceanAPIService PutPipelineFavorite", func(t *testing.T) {

		t.Skip("skip test")  // remove to run test

		var organization string
		var pipeline string

		resp, httpRes, err := apiClient.BlueOceanAPI.PutPipelineFavorite(context.Background(), organization, pipeline).Execute()

		require.Nil(t, err)
		require.NotNil(t, resp)
		assert.Equal(t, 200, httpRes.StatusCode)

	})

	t.Run("Test BlueOceanAPIService PutPipelineRun", func(t *testing.T) {

		t.Skip("skip test")  // remove to run test

		var organization string
		var pipeline string
		var run string

		resp, httpRes, err := apiClient.BlueOceanAPI.PutPipelineRun(context.Background(), organization, pipeline, run).Execute()

		require.Nil(t, err)
		require.NotNil(t, resp)
		assert.Equal(t, 200, httpRes.StatusCode)

	})

	t.Run("Test BlueOceanAPIService Search", func(t *testing.T) {

		t.Skip("skip test")  // remove to run test

		resp, httpRes, err := apiClient.BlueOceanAPI.Search(context.Background()).Execute()

		require.Nil(t, err)
		require.NotNil(t, resp)
		assert.Equal(t, 200, httpRes.StatusCode)

	})

	t.Run("Test BlueOceanAPIService SearchClasses", func(t *testing.T) {

		t.Skip("skip test")  // remove to run test

		resp, httpRes, err := apiClient.BlueOceanAPI.SearchClasses(context.Background()).Execute()

		require.Nil(t, err)
		require.NotNil(t, resp)
		assert.Equal(t, 200, httpRes.StatusCode)

	})

}
