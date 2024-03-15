<?php
declare(strict_types=1);

namespace App\DTO;

use Articus\DataTransfer\Annotation as DTA;

class GithubRepository
{
    /**
     * @DTA\Data(field="_class", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"string"})
     */
    public ?string $_class = null;

    /**
     * @DTA\Data(field="_links", nullable=true)
     * @DTA\Strategy(name="Object", options={"type":\App\DTO\GithubRepositorylinks::class})
     * @DTA\Validator(name="TypeCompliant", options={"type":\App\DTO\GithubRepositorylinks::class})
     */
    public ?\App\DTO\GithubRepositorylinks $_links = null;

    /**
     * @DTA\Data(field="defaultBranch", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"string"})
     */
    public ?string $default_branch = null;

    /**
     * @DTA\Data(field="description", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"string"})
     */
    public ?string $description = null;

    /**
     * @DTA\Data(field="name", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"string"})
     */
    public ?string $name = null;

    /**
     * @DTA\Data(field="permissions", nullable=true)
     * @DTA\Strategy(name="Object", options={"type":\App\DTO\GithubRepositorypermissions::class})
     * @DTA\Validator(name="TypeCompliant", options={"type":\App\DTO\GithubRepositorypermissions::class})
     */
    public ?\App\DTO\GithubRepositorypermissions $permissions = null;

    /**
     * @DTA\Data(field="private", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"bool"})
     */
    public ?bool $private = null;

    /**
     * @DTA\Data(field="fullName", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"string"})
     */
    public ?string $full_name = null;

}
