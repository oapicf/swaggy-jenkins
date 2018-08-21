goog.provide('API.Client.PipelinelatestRun');

/**
 * @record
 */
API.Client.PipelinelatestRun = function() {}

/**
 * @type {!Array<!API.Client.PipelinelatestRunartifacts>}
 * @export
 */
API.Client.PipelinelatestRun.prototype.artifacts;

/**
 * @type {!number}
 * @export
 */
API.Client.PipelinelatestRun.prototype.durationInMillis;

/**
 * @type {!number}
 * @export
 */
API.Client.PipelinelatestRun.prototype.estimatedDurationInMillis;

/**
 * @type {!string}
 * @export
 */
API.Client.PipelinelatestRun.prototype.enQueueTime;

/**
 * @type {!string}
 * @export
 */
API.Client.PipelinelatestRun.prototype.endTime;

/**
 * @type {!string}
 * @export
 */
API.Client.PipelinelatestRun.prototype.id;

/**
 * @type {!string}
 * @export
 */
API.Client.PipelinelatestRun.prototype.organization;

/**
 * @type {!string}
 * @export
 */
API.Client.PipelinelatestRun.prototype.pipeline;

/**
 * @type {!string}
 * @export
 */
API.Client.PipelinelatestRun.prototype.result;

/**
 * @type {!string}
 * @export
 */
API.Client.PipelinelatestRun.prototype.runSummary;

/**
 * @type {!string}
 * @export
 */
API.Client.PipelinelatestRun.prototype.startTime;

/**
 * @type {!string}
 * @export
 */
API.Client.PipelinelatestRun.prototype.state;

/**
 * @type {!string}
 * @export
 */
API.Client.PipelinelatestRun.prototype.type;

/**
 * @type {!string}
 * @export
 */
API.Client.PipelinelatestRun.prototype.commitId;

/**
 * @type {!string}
 * @export
 */
API.Client.PipelinelatestRun.prototype._class;

