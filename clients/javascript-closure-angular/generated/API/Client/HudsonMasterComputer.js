goog.provide('API.Client.HudsonMasterComputer');

/**
 * @record
 */
API.Client.HudsonMasterComputer = function() {}

/**
 * @type {!string}
 * @export
 */
API.Client.HudsonMasterComputer.prototype._class;

/**
 * @type {!string}
 * @export
 */
API.Client.HudsonMasterComputer.prototype.displayName;

/**
 * @type {!Array<!API.Client.HudsonMasterComputerexecutors>}
 * @export
 */
API.Client.HudsonMasterComputer.prototype.executors;

/**
 * @type {!string}
 * @export
 */
API.Client.HudsonMasterComputer.prototype.icon;

/**
 * @type {!string}
 * @export
 */
API.Client.HudsonMasterComputer.prototype.iconClassName;

/**
 * @type {!boolean}
 * @export
 */
API.Client.HudsonMasterComputer.prototype.idle;

/**
 * @type {!boolean}
 * @export
 */
API.Client.HudsonMasterComputer.prototype.jnlpAgent;

/**
 * @type {!boolean}
 * @export
 */
API.Client.HudsonMasterComputer.prototype.launchSupported;

/**
 * @type {!API.Client.Label1}
 * @export
 */
API.Client.HudsonMasterComputer.prototype.loadStatistics;

/**
 * @type {!boolean}
 * @export
 */
API.Client.HudsonMasterComputer.prototype.manualLaunchAllowed;

/**
 * @type {!API.Client.HudsonMasterComputermonitorData}
 * @export
 */
API.Client.HudsonMasterComputer.prototype.monitorData;

/**
 * @type {!number}
 * @export
 */
API.Client.HudsonMasterComputer.prototype.numExecutors;

/**
 * @type {!boolean}
 * @export
 */
API.Client.HudsonMasterComputer.prototype.offline;

/**
 * @type {!string}
 * @export
 */
API.Client.HudsonMasterComputer.prototype.offlineCause;

/**
 * @type {!string}
 * @export
 */
API.Client.HudsonMasterComputer.prototype.offlineCauseReason;

/**
 * @type {!boolean}
 * @export
 */
API.Client.HudsonMasterComputer.prototype.temporarilyOffline;

