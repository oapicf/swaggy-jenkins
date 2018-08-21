goog.provide('API.Client.FreeStyleProject');

/**
 * @record
 */
API.Client.FreeStyleProject = function() {}

/**
 * @type {!string}
 * @export
 */
API.Client.FreeStyleProject.prototype._class;

/**
 * @type {!string}
 * @export
 */
API.Client.FreeStyleProject.prototype.name;

/**
 * @type {!string}
 * @export
 */
API.Client.FreeStyleProject.prototype.url;

/**
 * @type {!string}
 * @export
 */
API.Client.FreeStyleProject.prototype.color;

/**
 * @type {!Array<!API.Client.FreeStyleProjectactions>}
 * @export
 */
API.Client.FreeStyleProject.prototype.actions;

/**
 * @type {!string}
 * @export
 */
API.Client.FreeStyleProject.prototype.description;

/**
 * @type {!string}
 * @export
 */
API.Client.FreeStyleProject.prototype.displayName;

/**
 * @type {!string}
 * @export
 */
API.Client.FreeStyleProject.prototype.displayNameOrNull;

/**
 * @type {!string}
 * @export
 */
API.Client.FreeStyleProject.prototype.fullDisplayName;

/**
 * @type {!string}
 * @export
 */
API.Client.FreeStyleProject.prototype.fullName;

/**
 * @type {!boolean}
 * @export
 */
API.Client.FreeStyleProject.prototype.buildable;

/**
 * @type {!Array<!API.Client.FreeStyleBuild>}
 * @export
 */
API.Client.FreeStyleProject.prototype.builds;

/**
 * @type {!API.Client.FreeStyleBuild}
 * @export
 */
API.Client.FreeStyleProject.prototype.firstBuild;

/**
 * @type {!Array<!API.Client.FreeStyleProjecthealthReport>}
 * @export
 */
API.Client.FreeStyleProject.prototype.healthReport;

/**
 * @type {!boolean}
 * @export
 */
API.Client.FreeStyleProject.prototype.inQueue;

/**
 * @type {!boolean}
 * @export
 */
API.Client.FreeStyleProject.prototype.keepDependencies;

/**
 * @type {!API.Client.FreeStyleBuild}
 * @export
 */
API.Client.FreeStyleProject.prototype.lastBuild;

/**
 * @type {!API.Client.FreeStyleBuild}
 * @export
 */
API.Client.FreeStyleProject.prototype.lastCompletedBuild;

/**
 * @type {!string}
 * @export
 */
API.Client.FreeStyleProject.prototype.lastFailedBuild;

/**
 * @type {!API.Client.FreeStyleBuild}
 * @export
 */
API.Client.FreeStyleProject.prototype.lastStableBuild;

/**
 * @type {!API.Client.FreeStyleBuild}
 * @export
 */
API.Client.FreeStyleProject.prototype.lastSuccessfulBuild;

/**
 * @type {!string}
 * @export
 */
API.Client.FreeStyleProject.prototype.lastUnstableBuild;

/**
 * @type {!string}
 * @export
 */
API.Client.FreeStyleProject.prototype.lastUnsuccessfulBuild;

/**
 * @type {!number}
 * @export
 */
API.Client.FreeStyleProject.prototype.nextBuildNumber;

/**
 * @type {!string}
 * @export
 */
API.Client.FreeStyleProject.prototype.queueItem;

/**
 * @type {!boolean}
 * @export
 */
API.Client.FreeStyleProject.prototype.concurrentBuild;

/**
 * @type {!API.Client.NullSCM}
 * @export
 */
API.Client.FreeStyleProject.prototype.scm;

