goog.provide('API.Client.MultibranchPipeline');

/**
 * @record
 */
API.Client.MultibranchPipeline = function() {}

/**
 * @type {!string}
 * @export
 */
API.Client.MultibranchPipeline.prototype.displayName;

/**
 * @type {!number}
 * @export
 */
API.Client.MultibranchPipeline.prototype.estimatedDurationInMillis;

/**
 * @type {!string}
 * @export
 */
API.Client.MultibranchPipeline.prototype.latestRun;

/**
 * @type {!string}
 * @export
 */
API.Client.MultibranchPipeline.prototype.name;

/**
 * @type {!string}
 * @export
 */
API.Client.MultibranchPipeline.prototype.organization;

/**
 * @type {!number}
 * @export
 */
API.Client.MultibranchPipeline.prototype.weatherScore;

/**
 * @type {!Array<!string>}
 * @export
 */
API.Client.MultibranchPipeline.prototype.branchNames;

/**
 * @type {!number}
 * @export
 */
API.Client.MultibranchPipeline.prototype.numberOfFailingBranches;

/**
 * @type {!number}
 * @export
 */
API.Client.MultibranchPipeline.prototype.numberOfFailingPullRequests;

/**
 * @type {!number}
 * @export
 */
API.Client.MultibranchPipeline.prototype.numberOfSuccessfulBranches;

/**
 * @type {!number}
 * @export
 */
API.Client.MultibranchPipeline.prototype.numberOfSuccessfulPullRequests;

/**
 * @type {!number}
 * @export
 */
API.Client.MultibranchPipeline.prototype.totalNumberOfBranches;

/**
 * @type {!number}
 * @export
 */
API.Client.MultibranchPipeline.prototype.totalNumberOfPullRequests;

/**
 * @type {!string}
 * @export
 */
API.Client.MultibranchPipeline.prototype._class;

