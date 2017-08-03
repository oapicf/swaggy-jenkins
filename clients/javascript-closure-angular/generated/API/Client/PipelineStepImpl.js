goog.provide('API.Client.PipelineStepImpl');

/**
 * @record
 */
API.Client.PipelineStepImpl = function() {}

/**
 * @type {!string}
 * @export
 */
API.Client.PipelineStepImpl.prototype._class;

/**
 * @type {!API.Client.PipelineStepImpllinks}
 * @export
 */
API.Client.PipelineStepImpl.prototype.links;

/**
 * @type {!string}
 * @export
 */
API.Client.PipelineStepImpl.prototype.displayName;

/**
 * @type {!number}
 * @export
 */
API.Client.PipelineStepImpl.prototype.durationInMillis;

/**
 * @type {!string}
 * @export
 */
API.Client.PipelineStepImpl.prototype.id;

/**
 * @type {!API.Client.InputStepImpl}
 * @export
 */
API.Client.PipelineStepImpl.prototype.input;

/**
 * @type {!string}
 * @export
 */
API.Client.PipelineStepImpl.prototype.result;

/**
 * @type {!string}
 * @export
 */
API.Client.PipelineStepImpl.prototype.startTime;

/**
 * @type {!string}
 * @export
 */
API.Client.PipelineStepImpl.prototype.state;

