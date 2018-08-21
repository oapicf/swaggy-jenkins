<?php

namespace App\DTO;

use Articus\DataTransfer\Annotation as DTA;

/**
 * Query parameters for postJobBuild
 */
class PostJobBuildQueryData
{
    /**
     * @DTA\Data(field="json")
     * @DTA\Strategy(name="QueryParameter", options={"type":"string"})
     * @DTA\Validator(name="QueryParameterType", options={"type":"string"})
     * @var string
     */
    public $json;
    /**
     * @DTA\Data(field="token", nullable=true)
     * @DTA\Strategy(name="QueryParameter", options={"type":"string"})
     * @DTA\Validator(name="QueryParameterType", options={"type":"string"})
     * @var string
     */
    public $token;
}
