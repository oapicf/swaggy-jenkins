<?php
/**
 * GithubRepository
 */
namespace OpenAPIServer\Model;

/**
 * GithubRepository
 */
class GithubRepository {

    /** @var string $class */
    private $class;

    /** @var \OpenAPIServer\Model\GithubRepositorylinks $links */
    private $links;

    /** @var string $defaultBranch */
    private $defaultBranch;

    /** @var string $description */
    private $description;

    /** @var string $name */
    private $name;

    /** @var \OpenAPIServer\Model\GithubRepositorypermissions $permissions */
    private $permissions;

    /** @var bool $private */
    private $private;

    /** @var string $fullName */
    private $fullName;

}
