<?php

namespace App\DTO;

use Articus\DataTransfer\Annotation as DTA;

/**
 */
class GithubOrganization
{
    /**
     * @DTA\Data(field="_class", nullable=true)
     * @DTA\Validator(name="Type", options={"type":"string"})
     * @var string
     */
    public $_class;
    /**
     * @DTA\Data(field="_links", nullable=true)
     * @DTA\Strategy(name="Object", options={"type":\App\DTO\GithubOrganizationlinks::class})
     * @DTA\Validator(name="Dictionary", options={"type":\App\DTO\GithubOrganizationlinks::class})
     * @var \App\DTO\GithubOrganizationlinks
     */
    public $_links;
    /**
     * @DTA\Data(field="jenkinsOrganizationPipeline", nullable=true)
     * @DTA\Validator(name="Type", options={"type":"bool"})
     * @var bool
     */
    public $jenkins_organization_pipeline;
    /**
     * @DTA\Data(field="name", nullable=true)
     * @DTA\Validator(name="Type", options={"type":"string"})
     * @var string
     */
    public $name;
}
