goog.provide('API.Client.PipelineRunNode');

/**
 * @record
 */
API.Client.PipelineRunNode = function() {}

/**
 * @type {!string}
 * @export
 */
API.Client.PipelineRunNode.prototype._class;

/**
 * @type {!string}
 * @export
 */
API.Client.PipelineRunNode.prototype.displayName;

/**
 * @type {!number}
 * @export
 */
API.Client.PipelineRunNode.prototype.durationInMillis;

/**
 * @type {!Array<!API.Client.PipelineRunNodeedges>}
 * @export
 */
API.Client.PipelineRunNode.prototype.edges;

/**
 * @type {!string}
 * @export
 */
API.Client.PipelineRunNode.prototype.id;

/**
 * @type {!string}
 * @export
 */
API.Client.PipelineRunNode.prototype.result;

/**
 * @type {!string}
 * @export
 */
API.Client.PipelineRunNode.prototype.startTime;

/**
 * @type {!string}
 * @export
 */
API.Client.PipelineRunNode.prototype.state;

