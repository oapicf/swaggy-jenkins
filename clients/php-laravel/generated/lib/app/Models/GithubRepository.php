<?php
/**
 * GithubRepository
 */
namespace app\Models;

/**
 * GithubRepository
 */
class GithubRepository {

    /** @var string $_class */
    private $_class;

    /** @var \app\Models\GithubRepositorylinks $_links */
    private $_links;

    /** @var string $default_branch */
    private $default_branch;

    /** @var string $description */
    private $description;

    /** @var string $name */
    private $name;

    /** @var \app\Models\GithubRepositorypermissions $permissions */
    private $permissions;

    /** @var bool $private */
    private $private;

    /** @var string $full_name */
    private $full_name;

}
