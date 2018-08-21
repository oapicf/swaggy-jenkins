goog.provide('API.Client.ResponseTimeMonitorData');

/**
 * @record
 */
API.Client.ResponseTimeMonitorData = function() {}

/**
 * @type {!string}
 * @export
 */
API.Client.ResponseTimeMonitorData.prototype._class;

/**
 * @type {!number}
 * @export
 */
API.Client.ResponseTimeMonitorData.prototype.timestamp;

/**
 * @type {!number}
 * @export
 */
API.Client.ResponseTimeMonitorData.prototype.average;

