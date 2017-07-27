goog.provide('API.Client.hudsonmodelFreeStyleProject');

/**
 * @record
 */
API.Client.HudsonmodelFreeStyleProject = function() {}

/**
 * @type {!string}
 * @export
 */
API.Client.HudsonmodelFreeStyleProject.prototype._class;

/**
 * @type {!string}
 * @export
 */
API.Client.HudsonmodelFreeStyleProject.prototype.name;

/**
 * @type {!string}
 * @export
 */
API.Client.HudsonmodelFreeStyleProject.prototype.url;

/**
 * @type {!string}
 * @export
 */
API.Client.HudsonmodelFreeStyleProject.prototype.color;

/**
 * @type {!Array<!API.Client.hudsonmodelFreeStyleProjectactions>}
 * @export
 */
API.Client.HudsonmodelFreeStyleProject.prototype.actions;

/**
 * @type {!string}
 * @export
 */
API.Client.HudsonmodelFreeStyleProject.prototype.description;

/**
 * @type {!string}
 * @export
 */
API.Client.HudsonmodelFreeStyleProject.prototype.displayName;

/**
 * @type {!string}
 * @export
 */
API.Client.HudsonmodelFreeStyleProject.prototype.displayNameOrNull;

/**
 * @type {!string}
 * @export
 */
API.Client.HudsonmodelFreeStyleProject.prototype.fullDisplayName;

/**
 * @type {!string}
 * @export
 */
API.Client.HudsonmodelFreeStyleProject.prototype.fullName;

/**
 * @type {!boolean}
 * @export
 */
API.Client.HudsonmodelFreeStyleProject.prototype.buildable;

/**
 * @type {!Array<!API.Client.hudsonmodelFreeStyleBuild>}
 * @export
 */
API.Client.HudsonmodelFreeStyleProject.prototype.builds;

/**
 * @type {!API.Client.hudsonmodelFreeStyleBuild}
 * @export
 */
API.Client.HudsonmodelFreeStyleProject.prototype.firstBuild;

/**
 * @type {!Array<!API.Client.hudsonmodelFreeStyleProjecthealthReport>}
 * @export
 */
API.Client.HudsonmodelFreeStyleProject.prototype.healthReport;

/**
 * @type {!boolean}
 * @export
 */
API.Client.HudsonmodelFreeStyleProject.prototype.inQueue;

/**
 * @type {!boolean}
 * @export
 */
API.Client.HudsonmodelFreeStyleProject.prototype.keepDependencies;

/**
 * @type {!API.Client.hudsonmodelFreeStyleBuild}
 * @export
 */
API.Client.HudsonmodelFreeStyleProject.prototype.lastBuild;

/**
 * @type {!API.Client.hudsonmodelFreeStyleBuild}
 * @export
 */
API.Client.HudsonmodelFreeStyleProject.prototype.lastCompletedBuild;

/**
 * @type {!string}
 * @export
 */
API.Client.HudsonmodelFreeStyleProject.prototype.lastFailedBuild;

/**
 * @type {!API.Client.hudsonmodelFreeStyleBuild}
 * @export
 */
API.Client.HudsonmodelFreeStyleProject.prototype.lastStableBuild;

/**
 * @type {!API.Client.hudsonmodelFreeStyleBuild}
 * @export
 */
API.Client.HudsonmodelFreeStyleProject.prototype.lastSuccessfulBuild;

/**
 * @type {!string}
 * @export
 */
API.Client.HudsonmodelFreeStyleProject.prototype.lastUnstableBuild;

/**
 * @type {!string}
 * @export
 */
API.Client.HudsonmodelFreeStyleProject.prototype.lastUnsuccessfulBuild;

/**
 * @type {!number}
 * @export
 */
API.Client.HudsonmodelFreeStyleProject.prototype.nextBuildNumber;

/**
 * @type {!string}
 * @export
 */
API.Client.HudsonmodelFreeStyleProject.prototype.queueItem;

/**
 * @type {!boolean}
 * @export
 */
API.Client.HudsonmodelFreeStyleProject.prototype.concurrentBuild;

/**
 * @type {!API.Client.hudsonscmNullSCM}
 * @export
 */
API.Client.HudsonmodelFreeStyleProject.prototype.scm;

