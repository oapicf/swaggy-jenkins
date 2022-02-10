<?php
declare(strict_types=1);

namespace App\DTO;

use Articus\DataTransfer\Annotation as DTA;

/**
 * Query parameters for getJsonWebToken
 */
class GetJsonWebTokenQueryData
{
    /**
     * Maximum token expiry time in minutes, default: 480 minutes
     * @DTA\Data(field="maxExpiryTimeInMins", nullable=true)
     * @DTA\Strategy(name="QueryStringScalar", options={"type":"int"})
     * @DTA\Validator(name="QueryStringScalar", options={"type":"int"})
     * @var int|null
     */
    public $max_expiry_time_in_mins;

    /**
     * Token expiry time in minutes, default: 30 minutes
     * @DTA\Data(field="expiryTimeInMins", nullable=true)
     * @DTA\Strategy(name="QueryStringScalar", options={"type":"int"})
     * @DTA\Validator(name="QueryStringScalar", options={"type":"int"})
     * @var int|null
     */
    public $expiry_time_in_mins;

}
