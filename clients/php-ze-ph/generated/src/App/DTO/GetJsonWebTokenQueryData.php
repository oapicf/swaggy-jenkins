<?php

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
     * @DTA\Strategy(name="QueryParameter", options={"type":"int"})
     * @DTA\Validator(name="QueryParameterType", options={"type":"int"})
     * @var int
     */
    public $max_expiry_time_in_mins;
    /**
     * Token expiry time in minutes, default: 30 minutes
     * @DTA\Data(field="expiryTimeInMins", nullable=true)
     * @DTA\Strategy(name="QueryParameter", options={"type":"int"})
     * @DTA\Validator(name="QueryParameterType", options={"type":"int"})
     * @var int
     */
    public $expiry_time_in_mins;
}
