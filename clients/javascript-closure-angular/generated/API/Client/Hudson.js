goog.provide('API.Client.Hudson');

/**
 * @record
 */
API.Client.Hudson = function() {}

/**
 * @type {!string}
 * @export
 */
API.Client.Hudson.prototype._class;

/**
 * @type {!Array<!API.Client.HudsonassignedLabels>}
 * @export
 */
API.Client.Hudson.prototype.assignedLabels;

/**
 * @type {!string}
 * @export
 */
API.Client.Hudson.prototype.mode;

/**
 * @type {!string}
 * @export
 */
API.Client.Hudson.prototype.nodeDescription;

/**
 * @type {!string}
 * @export
 */
API.Client.Hudson.prototype.nodeName;

/**
 * @type {!number}
 * @export
 */
API.Client.Hudson.prototype.numExecutors;

/**
 * @type {!string}
 * @export
 */
API.Client.Hudson.prototype.description;

/**
 * @type {!Array<!API.Client.FreeStyleProject>}
 * @export
 */
API.Client.Hudson.prototype.jobs;

/**
 * @type {!API.Client.AllView}
 * @export
 */
API.Client.Hudson.prototype.primaryView;

/**
 * @type {!boolean}
 * @export
 */
API.Client.Hudson.prototype.quietingDown;

/**
 * @type {!number}
 * @export
 */
API.Client.Hudson.prototype.slaveAgentPort;

/**
 * @type {!API.Client.UnlabeledLoadStatistics}
 * @export
 */
API.Client.Hudson.prototype.unlabeledLoad;

/**
 * @type {!boolean}
 * @export
 */
API.Client.Hudson.prototype.useCrumbs;

/**
 * @type {!boolean}
 * @export
 */
API.Client.Hudson.prototype.useSecurity;

/**
 * @type {!Array<!API.Client.AllView>}
 * @export
 */
API.Client.Hudson.prototype.views;

