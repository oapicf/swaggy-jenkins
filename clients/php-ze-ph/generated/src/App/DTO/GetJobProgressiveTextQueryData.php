<?php

namespace App\DTO;

use Articus\DataTransfer\Annotation as DTA;

/**
 * Query parameters for getJobProgressiveText
 */
class GetJobProgressiveTextQueryData
{
    /**
     * Starting point of progressive text output
     * @DTA\Data(field="start")
     * @DTA\Strategy(name="QueryParameter", options={"type":"string"})
     * @DTA\Validator(name="QueryParameterType", options={"type":"string"})
     * @var string
     */
    public $start;
}
