<?php
/**
 * GithubRepository
 */
namespace app\Models;

/**
 * GithubRepository
 */
class GithubRepository {

    /** @var string $class */
    public $class = "";

    /** @var \app\Models\GithubRepositorylinks $links */
    public $links;

    /** @var string $defaultBranch */
    public $defaultBranch = "";

    /** @var string $description */
    public $description = "";

    /** @var string $name */
    public $name = "";

    /** @var \app\Models\GithubRepositorypermissions $permissions */
    public $permissions;

    /** @var bool $private */
    public $private = false;

    /** @var string $fullName */
    public $fullName = "";

}
