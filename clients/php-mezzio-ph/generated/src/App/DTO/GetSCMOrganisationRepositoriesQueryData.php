<?php
declare(strict_types=1);

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
     * @DTA\Strategy(name="QueryStringScalar", options={"type":"int"})
     * @DTA\Validator(name="QueryStringScalar", options={"type":"int"})
     * @var int|null
     */
    public $page_number;

    /**
     * Credential ID
     * @DTA\Data(field="credentialId", nullable=true)
     * @DTA\Strategy(name="QueryStringScalar", options={"type":"string"})
     * @DTA\Validator(name="QueryStringScalar", options={"type":"string"})
     * @var string|null
     */
    public $credential_id;

    /**
     * Number of items in a page
     * @DTA\Data(field="pageSize", nullable=true)
     * @DTA\Strategy(name="QueryStringScalar", options={"type":"int"})
     * @DTA\Validator(name="QueryStringScalar", options={"type":"int"})
     * @var int|null
     */
    public $page_size;

}
