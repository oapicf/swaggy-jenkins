
# Table `MultibranchPipeline`
(mapped from: MultibranchPipeline)

## Properties
Name | Mapping | SQL Type | Default | Type | Description | Notes
---- | ------- | -------- | ------- | ---- | ----------- | -----
**displayName** | displayName | text |  | **kotlin.String** |  |  [optional]
**estimatedDurationInMillis** | estimatedDurationInMillis | int |  | **kotlin.Int** |  |  [optional]
**latestRun** | latestRun | text |  | **kotlin.String** |  |  [optional]
**name** | name | text |  | **kotlin.String** |  |  [optional]
**organization** | organization | text |  | **kotlin.String** |  |  [optional]
**weatherScore** | weatherScore | int |  | **kotlin.Int** |  |  [optional]
**branchNames** | `One-To-Many` | `----` | `----`  | **kotlin.Array&lt;kotlin.String&gt;** |  |  [optional]
**numberOfFailingBranches** | numberOfFailingBranches | int |  | **kotlin.Int** |  |  [optional]
**numberOfFailingPullRequests** | numberOfFailingPullRequests | int |  | **kotlin.Int** |  |  [optional]
**numberOfSuccessfulBranches** | numberOfSuccessfulBranches | int |  | **kotlin.Int** |  |  [optional]
**numberOfSuccessfulPullRequests** | numberOfSuccessfulPullRequests | int |  | **kotlin.Int** |  |  [optional]
**totalNumberOfBranches** | totalNumberOfBranches | int |  | **kotlin.Int** |  |  [optional]
**totalNumberOfPullRequests** | totalNumberOfPullRequests | int |  | **kotlin.Int** |  |  [optional]
**propertyClass** | _class | text |  | **kotlin.String** |  |  [optional]








# **Table `MultibranchPipelineBranchNames`**
(mapped from: MultibranchPipelineBranchNames)

## Properties
Name | Mapping | SQL Type | Default | Type | Description | Notes
---- | ------- | -------- | ------- | ---- | ----------- | -----
multibranchPipeline | multibranchPipeline | long | | kotlin.Long | Primary Key | *one*
branchNames | branchNames | text | | kotlin.String | Foreign Key | *many*










