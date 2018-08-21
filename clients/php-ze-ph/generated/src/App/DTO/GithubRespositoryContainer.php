<?php

namespace App\DTO;

use Articus\DataTransfer\Annotation as DTA;

/**
 */
class GithubRespositoryContainer
{
    /**
     * @DTA\Data(field="_class", nullable=true)
     * @DTA\Validator(name="Type", options={"type":"string"})
     * @var string
     */
    public $_class;
    /**
     * @DTA\Data(field="_links", nullable=true)
     * @DTA\Strategy(name="Object", options={"type":\App\DTO\GithubRespositoryContainerlinks::class})
     * @DTA\Validator(name="Dictionary", options={"type":\App\DTO\GithubRespositoryContainerlinks::class})
     * @var \App\DTO\GithubRespositoryContainerlinks
     */
    public $_links;
    /**
     * @DTA\Data(field="repositories", nullable=true)
     * @DTA\Strategy(name="Object", options={"type":\App\DTO\GithubRepositories::class})
     * @DTA\Validator(name="Dictionary", options={"type":\App\DTO\GithubRepositories::class})
     * @var \App\DTO\GithubRepositories
     */
    public $repositories;
}
