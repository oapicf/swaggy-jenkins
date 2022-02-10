<?php
declare(strict_types=1);

namespace App\DTO;

use Articus\DataTransfer\Annotation as DTA;

/**
 */
class GithubOrganization
{
    /**
     * @DTA\Data(field="_class", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"string"})
     * @var string|null
     */
    public $_class;

    /**
     * @DTA\Data(field="_links", nullable=true)
     * @DTA\Strategy(name="Object", options={"type":\App\DTO\GithubOrganizationlinks::class})
     * @DTA\Validator(name="TypeCompliant", options={"type":\App\DTO\GithubOrganizationlinks::class})
     * @var \App\DTO\GithubOrganizationlinks|null
     */
    public $_links;

    /**
     * @DTA\Data(field="jenkinsOrganizationPipeline", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"bool"})
     * @var bool|null
     */
    public $jenkins_organization_pipeline;

    /**
     * @DTA\Data(field="name", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"string"})
     * @var string|null
     */
    public $name;

}
