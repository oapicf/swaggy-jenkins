goog.provide('API.Client.hudsonmodelQueueLeftItem');

/**
 * @record
 */
API.Client.HudsonmodelQueueLeftItem = function() {}

/**
 * @type {!string}
 * @export
 */
API.Client.HudsonmodelQueueLeftItem.prototype._class;

/**
 * @type {!Array<!API.Client.hudsonmodelCauseAction>}
 * @export
 */
API.Client.HudsonmodelQueueLeftItem.prototype.actions;

/**
 * @type {!boolean}
 * @export
 */
API.Client.HudsonmodelQueueLeftItem.prototype.blocked;

/**
 * @type {!boolean}
 * @export
 */
API.Client.HudsonmodelQueueLeftItem.prototype.buildable;

/**
 * @type {!number}
 * @export
 */
API.Client.HudsonmodelQueueLeftItem.prototype.id;

/**
 * @type {!number}
 * @export
 */
API.Client.HudsonmodelQueueLeftItem.prototype.inQueueSince;

/**
 * @type {!string}
 * @export
 */
API.Client.HudsonmodelQueueLeftItem.prototype.params;

/**
 * @type {!boolean}
 * @export
 */
API.Client.HudsonmodelQueueLeftItem.prototype.stuck;

/**
 * @type {!API.Client.hudsonmodelFreeStyleProject}
 * @export
 */
API.Client.HudsonmodelQueueLeftItem.prototype.task;

/**
 * @type {!string}
 * @export
 */
API.Client.HudsonmodelQueueLeftItem.prototype.url;

/**
 * @type {!string}
 * @export
 */
API.Client.HudsonmodelQueueLeftItem.prototype.why;

/**
 * @type {!boolean}
 * @export
 */
API.Client.HudsonmodelQueueLeftItem.prototype.cancelled;

/**
 * @type {!API.Client.hudsonmodelFreeStyleBuild}
 * @export
 */
API.Client.HudsonmodelQueueLeftItem.prototype.executable;

