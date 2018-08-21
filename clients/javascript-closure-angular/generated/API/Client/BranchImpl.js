goog.provide('API.Client.BranchImpl');

/**
 * @record
 */
API.Client.BranchImpl = function() {}

/**
 * @type {!string}
 * @export
 */
API.Client.BranchImpl.prototype._class;

/**
 * @type {!string}
 * @export
 */
API.Client.BranchImpl.prototype.displayName;

/**
 * @type {!number}
 * @export
 */
API.Client.BranchImpl.prototype.estimatedDurationInMillis;

/**
 * @type {!string}
 * @export
 */
API.Client.BranchImpl.prototype.fullDisplayName;

/**
 * @type {!string}
 * @export
 */
API.Client.BranchImpl.prototype.fullName;

/**
 * @type {!string}
 * @export
 */
API.Client.BranchImpl.prototype.name;

/**
 * @type {!string}
 * @export
 */
API.Client.BranchImpl.prototype.organization;

/**
 * @type {!Array<!API.Client.StringParameterDefinition>}
 * @export
 */
API.Client.BranchImpl.prototype.parameters;

/**
 * @type {!API.Client.BranchImplpermissions}
 * @export
 */
API.Client.BranchImpl.prototype.permissions;

/**
 * @type {!number}
 * @export
 */
API.Client.BranchImpl.prototype.weatherScore;

/**
 * @type {!string}
 * @export
 */
API.Client.BranchImpl.prototype.pullRequest;

/**
 * @type {!API.Client.BranchImpllinks}
 * @export
 */
API.Client.BranchImpl.prototype.links;

/**
 * @type {!API.Client.PipelineRunImpl}
 * @export
 */
API.Client.BranchImpl.prototype.latestRun;

