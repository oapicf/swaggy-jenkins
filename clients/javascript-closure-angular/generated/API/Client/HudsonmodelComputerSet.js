goog.provide('API.Client.hudsonmodelComputerSet');

/**
 * @record
 */
API.Client.HudsonmodelComputerSet = function() {}

/**
 * @type {!string}
 * @export
 */
API.Client.HudsonmodelComputerSet.prototype._class;

/**
 * @type {!number}
 * @export
 */
API.Client.HudsonmodelComputerSet.prototype.busyExecutors;

/**
 * @type {!Array<!API.Client.hudsonmodelHudsonMasterComputer>}
 * @export
 */
API.Client.HudsonmodelComputerSet.prototype.computer;

/**
 * @type {!string}
 * @export
 */
API.Client.HudsonmodelComputerSet.prototype.displayName;

/**
 * @type {!number}
 * @export
 */
API.Client.HudsonmodelComputerSet.prototype.totalExecutors;

