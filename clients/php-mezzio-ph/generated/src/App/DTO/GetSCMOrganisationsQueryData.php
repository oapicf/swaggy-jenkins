<?php
declare(strict_types=1);

namespace App\DTO;

use Articus\DataTransfer\Annotation as DTA;

/**
 * Query parameters for getSCMOrganisations
 */
class GetSCMOrganisationsQueryData
{
    /**
     * Credential ID
     * @DTA\Data(field="credentialId", nullable=true)
     * @DTA\Strategy(name="QueryStringScalar", options={"type":"string"})
     * @DTA\Validator(name="QueryStringScalar", options={"type":"string"})
     * @var string|null
     */
    public $credential_id;

}
