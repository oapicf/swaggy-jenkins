<?php
declare(strict_types=1);

namespace App\DTO;

use Articus\DataTransfer\Annotation as DTA;

class GithubOrganization
{
    /**
     * @DTA\Data(field="_class", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"string"})
     */
    public ?string $_class = null;

    /**
     * @DTA\Data(field="_links", nullable=true)
     * @DTA\Strategy(name="Object", options={"type":\App\DTO\GithubOrganizationlinks::class})
     * @DTA\Validator(name="TypeCompliant", options={"type":\App\DTO\GithubOrganizationlinks::class})
     */
    public ?\App\DTO\GithubOrganizationlinks $_links = null;

    /**
     * @DTA\Data(field="jenkinsOrganizationPipeline", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"bool"})
     */
    public ?bool $jenkins_organization_pipeline = null;

    /**
     * @DTA\Data(field="name", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"string"})
     */
    public ?string $name = null;

}
