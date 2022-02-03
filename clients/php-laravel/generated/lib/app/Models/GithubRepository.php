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
    private $class;

    /** @var \app\Models\GithubRepositorylinks $links */
    private $links;

    /** @var string $defaultBranch */
    private $defaultBranch;

    /** @var string $description */
    private $description;

    /** @var string $name */
    private $name;

    /** @var \app\Models\GithubRepositorypermissions $permissions */
    private $permissions;

    /** @var bool $private */
    private $private;

    /** @var string $fullName */
    private $fullName;

}
