<?php
declare(strict_types=1);

namespace App\DTO;

use Articus\DataTransfer\Annotation as DTA;

/**
 */
class GithubRespositoryContainer
{
    /**
     * @DTA\Data(field="_class", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"string"})
     * @var string|null
     */
    public $_class;

    /**
     * @DTA\Data(field="_links", nullable=true)
     * @DTA\Strategy(name="Object", options={"type":\App\DTO\GithubRespositoryContainerlinks::class})
     * @DTA\Validator(name="TypeCompliant", options={"type":\App\DTO\GithubRespositoryContainerlinks::class})
     * @var \App\DTO\GithubRespositoryContainerlinks|null
     */
    public $_links;

    /**
     * @DTA\Data(field="repositories", nullable=true)
     * @DTA\Strategy(name="Object", options={"type":\App\DTO\GithubRepositories::class})
     * @DTA\Validator(name="TypeCompliant", options={"type":\App\DTO\GithubRepositories::class})
     * @var \App\DTO\GithubRepositories|null
     */
    public $repositories;

}
