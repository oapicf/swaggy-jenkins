goog.provide('API.Client.QueueItemImpl');

/**
 * @record
 */
API.Client.QueueItemImpl = function() {}

/**
 * @type {!string}
 * @export
 */
API.Client.QueueItemImpl.prototype._class;

/**
 * @type {!number}
 * @export
 */
API.Client.QueueItemImpl.prototype.expectedBuildNumber;

/**
 * @type {!string}
 * @export
 */
API.Client.QueueItemImpl.prototype.id;

/**
 * @type {!string}
 * @export
 */
API.Client.QueueItemImpl.prototype.pipeline;

/**
 * @type {!number}
 * @export
 */
API.Client.QueueItemImpl.prototype.queuedTime;

