goog.provide('API.Client.getPipelineBranchesitem');

/**
 * @record
 */
API.Client.GetPipelineBranchesitem = function() {}

/**
 * @type {!string}
 * @export
 */
API.Client.GetPipelineBranchesitem.prototype.displayName;

/**
 * @type {!number}
 * @export
 */
API.Client.GetPipelineBranchesitem.prototype.estimatedDurationInMillis;

/**
 * @type {!string}
 * @export
 */
API.Client.GetPipelineBranchesitem.prototype.name;

/**
 * @type {!number}
 * @export
 */
API.Client.GetPipelineBranchesitem.prototype.weatherScore;

/**
 * @type {!API.Client.getPipelineBranchesitem_latestRun}
 * @export
 */
API.Client.GetPipelineBranchesitem.prototype.latestRun;

/**
 * @type {!string}
 * @export
 */
API.Client.GetPipelineBranchesitem.prototype.organization;

/**
 * @type {!API.Client.getPipelineBranchesitem_pullRequest}
 * @export
 */
API.Client.GetPipelineBranchesitem.prototype.pullRequest;

/**
 * @type {!number}
 * @export
 */
API.Client.GetPipelineBranchesitem.prototype.totalNumberOfPullRequests;

/**
 * @type {!string}
 * @export
 */
API.Client.GetPipelineBranchesitem.prototype._class;

