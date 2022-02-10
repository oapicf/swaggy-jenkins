
# Table `PipelineBranchesitem`
(mapped from: PipelineBranchesitem)

## Properties
Name | Mapping | SQL Type | Default | Type | Description | Notes
---- | ------- | -------- | ------- | ---- | ----------- | -----
**displayName** | displayName | text |  | **kotlin.String** |  |  [optional]
**estimatedDurationInMillis** | estimatedDurationInMillis | int |  | **kotlin.Int** |  |  [optional]
**name** | name | text |  | **kotlin.String** |  |  [optional]
**weatherScore** | weatherScore | int |  | **kotlin.Int** |  |  [optional]
**latestRun** | latestRun | long |  | [**PipelineBranchesitemlatestRun**](PipelineBranchesitemlatestRun.md) |  |  [optional] [foreignkey]
**organization** | organization | text |  | **kotlin.String** |  |  [optional]
**pullRequest** | pullRequest | long |  | [**PipelineBranchesitempullRequest**](PipelineBranchesitempullRequest.md) |  |  [optional] [foreignkey]
**totalNumberOfPullRequests** | totalNumberOfPullRequests | int |  | **kotlin.Int** |  |  [optional]
**propertyClass** | _class | text |  | **kotlin.String** |  |  [optional]











