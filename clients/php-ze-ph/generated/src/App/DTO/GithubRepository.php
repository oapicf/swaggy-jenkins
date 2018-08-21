<?php

namespace App\DTO;

use Articus\DataTransfer\Annotation as DTA;

/**
 */
class GithubRepository
{
    /**
     * @DTA\Data(field="_class", nullable=true)
     * @DTA\Validator(name="Type", options={"type":"string"})
     * @var string
     */
    public $_class;
    /**
     * @DTA\Data(field="_links", nullable=true)
     * @DTA\Strategy(name="Object", options={"type":\App\DTO\GithubRepositorylinks::class})
     * @DTA\Validator(name="Dictionary", options={"type":\App\DTO\GithubRepositorylinks::class})
     * @var \App\DTO\GithubRepositorylinks
     */
    public $_links;
    /**
     * @DTA\Data(field="defaultBranch", nullable=true)
     * @DTA\Validator(name="Type", options={"type":"string"})
     * @var string
     */
    public $default_branch;
    /**
     * @DTA\Data(field="description", nullable=true)
     * @DTA\Validator(name="Type", options={"type":"string"})
     * @var string
     */
    public $description;
    /**
     * @DTA\Data(field="name", nullable=true)
     * @DTA\Validator(name="Type", options={"type":"string"})
     * @var string
     */
    public $name;
    /**
     * @DTA\Data(field="permissions", nullable=true)
     * @DTA\Strategy(name="Object", options={"type":\App\DTO\GithubRepositorypermissions::class})
     * @DTA\Validator(name="Dictionary", options={"type":\App\DTO\GithubRepositorypermissions::class})
     * @var \App\DTO\GithubRepositorypermissions
     */
    public $permissions;
    /**
     * @DTA\Data(field="private", nullable=true)
     * @DTA\Validator(name="Type", options={"type":"bool"})
     * @var bool
     */
    public $private;
    /**
     * @DTA\Data(field="fullName", nullable=true)
     * @DTA\Validator(name="Type", options={"type":"string"})
     * @var string
     */
    public $full_name;
}
