goog.provide('API.Client.PipelineBranchesitem');

/**
 * @record
 */
API.Client.PipelineBranchesitem = function() {}

/**
 * @type {!string}
 * @export
 */
API.Client.PipelineBranchesitem.prototype.displayName;

/**
 * @type {!number}
 * @export
 */
API.Client.PipelineBranchesitem.prototype.estimatedDurationInMillis;

/**
 * @type {!string}
 * @export
 */
API.Client.PipelineBranchesitem.prototype.name;

/**
 * @type {!number}
 * @export
 */
API.Client.PipelineBranchesitem.prototype.weatherScore;

/**
 * @type {!API.Client.PipelineBranchesitemlatestRun}
 * @export
 */
API.Client.PipelineBranchesitem.prototype.latestRun;

/**
 * @type {!string}
 * @export
 */
API.Client.PipelineBranchesitem.prototype.organization;

/**
 * @type {!API.Client.PipelineBranchesitempullRequest}
 * @export
 */
API.Client.PipelineBranchesitem.prototype.pullRequest;

/**
 * @type {!number}
 * @export
 */
API.Client.PipelineBranchesitem.prototype.totalNumberOfPullRequests;

/**
 * @type {!string}
 * @export
 */
API.Client.PipelineBranchesitem.prototype._class;

