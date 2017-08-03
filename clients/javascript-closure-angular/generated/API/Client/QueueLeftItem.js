goog.provide('API.Client.QueueLeftItem');

/**
 * @record
 */
API.Client.QueueLeftItem = function() {}

/**
 * @type {!string}
 * @export
 */
API.Client.QueueLeftItem.prototype._class;

/**
 * @type {!Array<!API.Client.CauseAction>}
 * @export
 */
API.Client.QueueLeftItem.prototype.actions;

/**
 * @type {!boolean}
 * @export
 */
API.Client.QueueLeftItem.prototype.blocked;

/**
 * @type {!boolean}
 * @export
 */
API.Client.QueueLeftItem.prototype.buildable;

/**
 * @type {!number}
 * @export
 */
API.Client.QueueLeftItem.prototype.id;

/**
 * @type {!number}
 * @export
 */
API.Client.QueueLeftItem.prototype.inQueueSince;

/**
 * @type {!string}
 * @export
 */
API.Client.QueueLeftItem.prototype.params;

/**
 * @type {!boolean}
 * @export
 */
API.Client.QueueLeftItem.prototype.stuck;

/**
 * @type {!API.Client.FreeStyleProject}
 * @export
 */
API.Client.QueueLeftItem.prototype.task;

/**
 * @type {!string}
 * @export
 */
API.Client.QueueLeftItem.prototype.url;

/**
 * @type {!string}
 * @export
 */
API.Client.QueueLeftItem.prototype.why;

/**
 * @type {!boolean}
 * @export
 */
API.Client.QueueLeftItem.prototype.cancelled;

/**
 * @type {!API.Client.FreeStyleBuild}
 * @export
 */
API.Client.QueueLeftItem.prototype.executable;

