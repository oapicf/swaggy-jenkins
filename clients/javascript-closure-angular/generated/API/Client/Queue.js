goog.provide('API.Client.Queue');

/**
 * @record
 */
API.Client.Queue = function() {}

/**
 * @type {!string}
 * @export
 */
API.Client.Queue.prototype._class;

/**
 * @type {!Array<!API.Client.QueueBlockedItem>}
 * @export
 */
API.Client.Queue.prototype.items;

