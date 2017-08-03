goog.provide('API.Client.GithubRepository');

/**
 * @record
 */
API.Client.GithubRepository = function() {}

/**
 * @type {!string}
 * @export
 */
API.Client.GithubRepository.prototype._class;

/**
 * @type {!API.Client.GithubRepositorylinks}
 * @export
 */
API.Client.GithubRepository.prototype.links;

/**
 * @type {!string}
 * @export
 */
API.Client.GithubRepository.prototype.defaultBranch;

/**
 * @type {!string}
 * @export
 */
API.Client.GithubRepository.prototype.description;

/**
 * @type {!string}
 * @export
 */
API.Client.GithubRepository.prototype.name;

/**
 * @type {!API.Client.GithubRepositorypermissions}
 * @export
 */
API.Client.GithubRepository.prototype.permissions;

/**
 * @type {!boolean}
 * @export
 */
API.Client.GithubRepository.prototype._private;

/**
 * @type {!string}
 * @export
 */
API.Client.GithubRepository.prototype.fullName;

