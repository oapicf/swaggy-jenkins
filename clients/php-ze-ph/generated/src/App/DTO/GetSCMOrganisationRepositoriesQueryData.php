<?php

namespace App\DTO;

use Articus\DataTransfer\Annotation as DTA;

/**
 * Query parameters for getSCMOrganisationRepositories
 */
class GetSCMOrganisationRepositoriesQueryData
{
    /**
     * Page number
     * @DTA\Data(field="pageNumber", nullable=true)
     * @DTA\Strategy(name="QueryParameter", options={"type":"int"})
     * @DTA\Validator(name="QueryParameterType", options={"type":"int"})
     * @var int
     */
    public $page_number;
    /**
     * Credential ID
     * @DTA\Data(field="credentialId", nullable=true)
     * @DTA\Strategy(name="QueryParameter", options={"type":"string"})
     * @DTA\Validator(name="QueryParameterType", options={"type":"string"})
     * @var string
     */
    public $credential_id;
    /**
     * Number of items in a page
     * @DTA\Data(field="pageSize", nullable=true)
     * @DTA\Strategy(name="QueryParameter", options={"type":"int"})
     * @DTA\Validator(name="QueryParameterType", options={"type":"int"})
     * @var int
     */
    public $page_size;
}
