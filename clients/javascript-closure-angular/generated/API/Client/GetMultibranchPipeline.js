goog.provide('API.Client.getMultibranchPipeline');

/**
 * @record
 */
API.Client.GetMultibranchPipeline = function() {}

/**
 * @type {!string}
 * @export
 */
API.Client.GetMultibranchPipeline.prototype.displayName;

/**
 * @type {!number}
 * @export
 */
API.Client.GetMultibranchPipeline.prototype.estimatedDurationInMillis;

/**
 * @type {!string}
 * @export
 */
API.Client.GetMultibranchPipeline.prototype.latestRun;

/**
 * @type {!string}
 * @export
 */
API.Client.GetMultibranchPipeline.prototype.name;

/**
 * @type {!string}
 * @export
 */
API.Client.GetMultibranchPipeline.prototype.organization;

/**
 * @type {!number}
 * @export
 */
API.Client.GetMultibranchPipeline.prototype.weatherScore;

/**
 * @type {!Array<!string>}
 * @export
 */
API.Client.GetMultibranchPipeline.prototype.branchNames;

/**
 * @type {!number}
 * @export
 */
API.Client.GetMultibranchPipeline.prototype.numberOfFailingBranches;

/**
 * @type {!number}
 * @export
 */
API.Client.GetMultibranchPipeline.prototype.numberOfFailingPullRequests;

/**
 * @type {!number}
 * @export
 */
API.Client.GetMultibranchPipeline.prototype.numberOfSuccessfulBranches;

/**
 * @type {!number}
 * @export
 */
API.Client.GetMultibranchPipeline.prototype.numberOfSuccessfulPullRequests;

/**
 * @type {!number}
 * @export
 */
API.Client.GetMultibranchPipeline.prototype.totalNumberOfBranches;

/**
 * @type {!number}
 * @export
 */
API.Client.GetMultibranchPipeline.prototype.totalNumberOfPullRequests;

/**
 * @type {!string}
 * @export
 */
API.Client.GetMultibranchPipeline.prototype._class;

