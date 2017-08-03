goog.provide('API.Client.Pipeline');

/**
 * @record
 */
API.Client.Pipeline = function() {}

/**
 * @type {!string}
 * @export
 */
API.Client.Pipeline.prototype._class;

/**
 * @type {!string}
 * @export
 */
API.Client.Pipeline.prototype.organization;

/**
 * @type {!string}
 * @export
 */
API.Client.Pipeline.prototype.name;

/**
 * @type {!string}
 * @export
 */
API.Client.Pipeline.prototype.displayName;

/**
 * @type {!string}
 * @export
 */
API.Client.Pipeline.prototype.fullName;

/**
 * @type {!number}
 * @export
 */
API.Client.Pipeline.prototype.weatherScore;

/**
 * @type {!number}
 * @export
 */
API.Client.Pipeline.prototype.estimatedDurationInMillis;

/**
 * @type {!API.Client.PipelinelatestRun}
 * @export
 */
API.Client.Pipeline.prototype.latestRun;

