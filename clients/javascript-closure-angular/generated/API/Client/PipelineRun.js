goog.provide('API.Client.PipelineRun');

/**
 * @record
 */
API.Client.PipelineRun = function() {}

/**
 * @type {!string}
 * @export
 */
API.Client.PipelineRun.prototype._class;

/**
 * @type {!Array<!API.Client.PipelineRunartifacts>}
 * @export
 */
API.Client.PipelineRun.prototype.artifacts;

/**
 * @type {!number}
 * @export
 */
API.Client.PipelineRun.prototype.durationInMillis;

/**
 * @type {!number}
 * @export
 */
API.Client.PipelineRun.prototype.estimatedDurationInMillis;

/**
 * @type {!string}
 * @export
 */
API.Client.PipelineRun.prototype.enQueueTime;

/**
 * @type {!string}
 * @export
 */
API.Client.PipelineRun.prototype.endTime;

/**
 * @type {!string}
 * @export
 */
API.Client.PipelineRun.prototype.id;

/**
 * @type {!string}
 * @export
 */
API.Client.PipelineRun.prototype.organization;

/**
 * @type {!string}
 * @export
 */
API.Client.PipelineRun.prototype.pipeline;

/**
 * @type {!string}
 * @export
 */
API.Client.PipelineRun.prototype.result;

/**
 * @type {!string}
 * @export
 */
API.Client.PipelineRun.prototype.runSummary;

/**
 * @type {!string}
 * @export
 */
API.Client.PipelineRun.prototype.startTime;

/**
 * @type {!string}
 * @export
 */
API.Client.PipelineRun.prototype.state;

/**
 * @type {!string}
 * @export
 */
API.Client.PipelineRun.prototype.type;

/**
 * @type {!string}
 * @export
 */
API.Client.PipelineRun.prototype.commitId;

