<?php
declare(strict_types=1);

namespace App\DTO;

use Articus\DataTransfer\Annotation as DTA;

/**
 */
class GithubRepository
{
    /**
     * @DTA\Data(field="_class", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"string"})
     * @var string|null
     */
    public $_class;

    /**
     * @DTA\Data(field="_links", nullable=true)
     * @DTA\Strategy(name="Object", options={"type":\App\DTO\GithubRepositorylinks::class})
     * @DTA\Validator(name="TypeCompliant", options={"type":\App\DTO\GithubRepositorylinks::class})
     * @var \App\DTO\GithubRepositorylinks|null
     */
    public $_links;

    /**
     * @DTA\Data(field="defaultBranch", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"string"})
     * @var string|null
     */
    public $default_branch;

    /**
     * @DTA\Data(field="description", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"string"})
     * @var string|null
     */
    public $description;

    /**
     * @DTA\Data(field="name", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"string"})
     * @var string|null
     */
    public $name;

    /**
     * @DTA\Data(field="permissions", nullable=true)
     * @DTA\Strategy(name="Object", options={"type":\App\DTO\GithubRepositorypermissions::class})
     * @DTA\Validator(name="TypeCompliant", options={"type":\App\DTO\GithubRepositorypermissions::class})
     * @var \App\DTO\GithubRepositorypermissions|null
     */
    public $permissions;

    /**
     * @DTA\Data(field="private", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"bool"})
     * @var bool|null
     */
    public $private;

    /**
     * @DTA\Data(field="fullName", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"string"})
     * @var string|null
     */
    public $full_name;

}
