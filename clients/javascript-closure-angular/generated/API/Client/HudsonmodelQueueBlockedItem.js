goog.provide('API.Client.hudsonmodelQueueBlockedItem');

/**
 * @record
 */
API.Client.HudsonmodelQueueBlockedItem = function() {}

/**
 * @type {!string}
 * @export
 */
API.Client.HudsonmodelQueueBlockedItem.prototype._class;

/**
 * @type {!Array<!API.Client.hudsonmodelCauseAction>}
 * @export
 */
API.Client.HudsonmodelQueueBlockedItem.prototype.actions;

/**
 * @type {!boolean}
 * @export
 */
API.Client.HudsonmodelQueueBlockedItem.prototype.blocked;

/**
 * @type {!boolean}
 * @export
 */
API.Client.HudsonmodelQueueBlockedItem.prototype.buildable;

/**
 * @type {!number}
 * @export
 */
API.Client.HudsonmodelQueueBlockedItem.prototype.id;

/**
 * @type {!number}
 * @export
 */
API.Client.HudsonmodelQueueBlockedItem.prototype.inQueueSince;

/**
 * @type {!string}
 * @export
 */
API.Client.HudsonmodelQueueBlockedItem.prototype.params;

/**
 * @type {!boolean}
 * @export
 */
API.Client.HudsonmodelQueueBlockedItem.prototype.stuck;

/**
 * @type {!API.Client.hudsonmodelFreeStyleProject}
 * @export
 */
API.Client.HudsonmodelQueueBlockedItem.prototype.task;

/**
 * @type {!string}
 * @export
 */
API.Client.HudsonmodelQueueBlockedItem.prototype.url;

/**
 * @type {!string}
 * @export
 */
API.Client.HudsonmodelQueueBlockedItem.prototype.why;

/**
 * @type {!number}
 * @export
 */
API.Client.HudsonmodelQueueBlockedItem.prototype.buildableStartMilliseconds;

