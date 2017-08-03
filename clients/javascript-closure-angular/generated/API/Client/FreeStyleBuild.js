goog.provide('API.Client.FreeStyleBuild');

/**
 * @record
 */
API.Client.FreeStyleBuild = function() {}

/**
 * @type {!string}
 * @export
 */
API.Client.FreeStyleBuild.prototype._class;

/**
 * @type {!number}
 * @export
 */
API.Client.FreeStyleBuild.prototype.number;

/**
 * @type {!string}
 * @export
 */
API.Client.FreeStyleBuild.prototype.url;

/**
 * @type {!Array<!API.Client.CauseAction>}
 * @export
 */
API.Client.FreeStyleBuild.prototype.actions;

/**
 * @type {!boolean}
 * @export
 */
API.Client.FreeStyleBuild.prototype.building;

/**
 * @type {!string}
 * @export
 */
API.Client.FreeStyleBuild.prototype.description;

/**
 * @type {!string}
 * @export
 */
API.Client.FreeStyleBuild.prototype.displayName;

/**
 * @type {!number}
 * @export
 */
API.Client.FreeStyleBuild.prototype.duration;

/**
 * @type {!number}
 * @export
 */
API.Client.FreeStyleBuild.prototype.estimatedDuration;

/**
 * @type {!string}
 * @export
 */
API.Client.FreeStyleBuild.prototype.executor;

/**
 * @type {!string}
 * @export
 */
API.Client.FreeStyleBuild.prototype.fullDisplayName;

/**
 * @type {!string}
 * @export
 */
API.Client.FreeStyleBuild.prototype.id;

/**
 * @type {!boolean}
 * @export
 */
API.Client.FreeStyleBuild.prototype.keepLog;

/**
 * @type {!number}
 * @export
 */
API.Client.FreeStyleBuild.prototype.queueId;

/**
 * @type {!string}
 * @export
 */
API.Client.FreeStyleBuild.prototype.result;

/**
 * @type {!number}
 * @export
 */
API.Client.FreeStyleBuild.prototype.timestamp;

/**
 * @type {!string}
 * @export
 */
API.Client.FreeStyleBuild.prototype.builtOn;

/**
 * @type {!API.Client.EmptyChangeLogSet}
 * @export
 */
API.Client.FreeStyleBuild.prototype.changeSet;

