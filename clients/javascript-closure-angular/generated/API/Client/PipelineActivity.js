goog.provide('API.Client.PipelineActivity');

/**
 * @record
 */
API.Client.PipelineActivity = function() {}

/**
 * @type {!string}
 * @export
 */
API.Client.PipelineActivity.prototype._class;

/**
 * @type {!Array<!API.Client.PipelineActivityartifacts>}
 * @export
 */
API.Client.PipelineActivity.prototype.artifacts;

/**
 * @type {!number}
 * @export
 */
API.Client.PipelineActivity.prototype.durationInMillis;

/**
 * @type {!number}
 * @export
 */
API.Client.PipelineActivity.prototype.estimatedDurationInMillis;

/**
 * @type {!string}
 * @export
 */
API.Client.PipelineActivity.prototype.enQueueTime;

/**
 * @type {!string}
 * @export
 */
API.Client.PipelineActivity.prototype.endTime;

/**
 * @type {!string}
 * @export
 */
API.Client.PipelineActivity.prototype.id;

/**
 * @type {!string}
 * @export
 */
API.Client.PipelineActivity.prototype.organization;

/**
 * @type {!string}
 * @export
 */
API.Client.PipelineActivity.prototype.pipeline;

/**
 * @type {!string}
 * @export
 */
API.Client.PipelineActivity.prototype.result;

/**
 * @type {!string}
 * @export
 */
API.Client.PipelineActivity.prototype.runSummary;

/**
 * @type {!string}
 * @export
 */
API.Client.PipelineActivity.prototype.startTime;

/**
 * @type {!string}
 * @export
 */
API.Client.PipelineActivity.prototype.state;

/**
 * @type {!string}
 * @export
 */
API.Client.PipelineActivity.prototype.type;

/**
 * @type {!string}
 * @export
 */
API.Client.PipelineActivity.prototype.commitId;

