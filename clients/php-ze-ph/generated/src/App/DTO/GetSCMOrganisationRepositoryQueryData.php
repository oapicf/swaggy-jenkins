<?php

namespace App\DTO;

use Articus\DataTransfer\Annotation as DTA;

/**
 * Query parameters for getSCMOrganisationRepository
 */
class GetSCMOrganisationRepositoryQueryData
{
    /**
     * Credential ID
     * @DTA\Data(field="credentialId", nullable=true)
     * @DTA\Strategy(name="QueryParameter", options={"type":"string"})
     * @DTA\Validator(name="QueryParameterType", options={"type":"string"})
     * @var string
     */
    public $credential_id;
}
