<?php
declare(strict_types=1);

namespace App\DTO;

use Articus\DataTransfer\Annotation as DTA;

/**
 * Parameters for getJsonWebToken
 */
class GetJsonWebTokenParameterData
{
    /**
     * Maximum token expiry time in minutes, default: 480 minutes
     * @DTA\Data(subset="query", field="maxExpiryTimeInMins", nullable=true)
     * @DTA\Strategy(subset="query", name="QueryStringScalar", options={"type":"int"})
     * @DTA\Validator(subset="query", name="QueryStringScalar", options={"type":"int"})
     * @var int|null
     */
    public $max_expiry_time_in_mins;

    /**
     * Token expiry time in minutes, default: 30 minutes
     * @DTA\Data(subset="query", field="expiryTimeInMins", nullable=true)
     * @DTA\Strategy(subset="query", name="QueryStringScalar", options={"type":"int"})
     * @DTA\Validator(subset="query", name="QueryStringScalar", options={"type":"int"})
     * @var int|null
     */
    public $expiry_time_in_mins;

}
