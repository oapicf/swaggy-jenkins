<?php
declare(strict_types=1);

namespace App\DTO;

use Articus\DataTransfer\Annotation as DTA;

/**
 * Parameters for getSCMOrganisationRepository
 */
class GetSCMOrganisationRepositoryParameterData
{
    /**
     * Name of the organization
     * @DTA\Data(subset="path", field="organization")
     * @DTA\Strategy(subset="path", name="QueryStringScalar", options={"type":"string"})
     * @DTA\Validator(subset="path", name="QueryStringScalar", options={"type":"string"})
     * @var string|null
     */
    public $organization;

    /**
     * Credential ID
     * @DTA\Data(subset="query", field="credentialId", nullable=true)
     * @DTA\Strategy(subset="query", name="QueryStringScalar", options={"type":"string"})
     * @DTA\Validator(subset="query", name="QueryStringScalar", options={"type":"string"})
     * @var string|null
     */
    public $credential_id;

    /**
     * Name of the SCM organization
     * @DTA\Data(subset="path", field="scmOrganisation")
     * @DTA\Strategy(subset="path", name="QueryStringScalar", options={"type":"string"})
     * @DTA\Validator(subset="path", name="QueryStringScalar", options={"type":"string"})
     * @var string|null
     */
    public $scm_organisation;

    /**
     * Name of SCM
     * @DTA\Data(subset="path", field="scm")
     * @DTA\Strategy(subset="path", name="QueryStringScalar", options={"type":"string"})
     * @DTA\Validator(subset="path", name="QueryStringScalar", options={"type":"string"})
     * @var string|null
     */
    public $scm;

    /**
     * Name of the SCM repository
     * @DTA\Data(subset="path", field="repository")
     * @DTA\Strategy(subset="path", name="QueryStringScalar", options={"type":"string"})
     * @DTA\Validator(subset="path", name="QueryStringScalar", options={"type":"string"})
     * @var string|null
     */
    public $repository;

}
