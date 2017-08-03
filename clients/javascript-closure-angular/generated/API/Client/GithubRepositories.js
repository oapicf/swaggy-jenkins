goog.provide('API.Client.GithubRepositories');

/**
 * @record
 */
API.Client.GithubRepositories = function() {}

/**
 * @type {!string}
 * @export
 */
API.Client.GithubRepositories.prototype._class;

/**
 * @type {!API.Client.GithubRepositorieslinks}
 * @export
 */
API.Client.GithubRepositories.prototype.links;

/**
 * @type {!Array<!API.Client.GithubRepository>}
 * @export
 */
API.Client.GithubRepositories.prototype.items;

/**
 * @type {!number}
 * @export
 */
API.Client.GithubRepositories.prototype.lastPage;

/**
 * @type {!number}
 * @export
 */
API.Client.GithubRepositories.prototype.nextPage;

/**
 * @type {!number}
 * @export
 */
API.Client.GithubRepositories.prototype.pageSize;

