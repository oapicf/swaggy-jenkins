goog.provide('API.Client.QueueBlockedItem');

/**
 * @record
 */
API.Client.QueueBlockedItem = function() {}

/**
 * @type {!string}
 * @export
 */
API.Client.QueueBlockedItem.prototype._class;

/**
 * @type {!Array<!API.Client.CauseAction>}
 * @export
 */
API.Client.QueueBlockedItem.prototype.actions;

/**
 * @type {!boolean}
 * @export
 */
API.Client.QueueBlockedItem.prototype.blocked;

/**
 * @type {!boolean}
 * @export
 */
API.Client.QueueBlockedItem.prototype.buildable;

/**
 * @type {!number}
 * @export
 */
API.Client.QueueBlockedItem.prototype.id;

/**
 * @type {!number}
 * @export
 */
API.Client.QueueBlockedItem.prototype.inQueueSince;

/**
 * @type {!string}
 * @export
 */
API.Client.QueueBlockedItem.prototype.params;

/**
 * @type {!boolean}
 * @export
 */
API.Client.QueueBlockedItem.prototype.stuck;

/**
 * @type {!API.Client.FreeStyleProject}
 * @export
 */
API.Client.QueueBlockedItem.prototype.task;

/**
 * @type {!string}
 * @export
 */
API.Client.QueueBlockedItem.prototype.url;

/**
 * @type {!string}
 * @export
 */
API.Client.QueueBlockedItem.prototype.why;

/**
 * @type {!number}
 * @export
 */
API.Client.QueueBlockedItem.prototype.buildableStartMilliseconds;

