goog.provide('API.Client.ComputerSet');

/**
 * @record
 */
API.Client.ComputerSet = function() {}

/**
 * @type {!string}
 * @export
 */
API.Client.ComputerSet.prototype._class;

/**
 * @type {!number}
 * @export
 */
API.Client.ComputerSet.prototype.busyExecutors;

/**
 * @type {!Array<!API.Client.HudsonMasterComputer>}
 * @export
 */
API.Client.ComputerSet.prototype.computer;

/**
 * @type {!string}
 * @export
 */
API.Client.ComputerSet.prototype.displayName;

/**
 * @type {!number}
 * @export
 */
API.Client.ComputerSet.prototype.totalExecutors;

