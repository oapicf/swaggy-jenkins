<?php

namespace App\DTO;

use Articus\DataTransfer\Annotation as DTA;

/**
 * Query parameters for putPipelineRun
 */
class PutPipelineRunQueryData
{
    /**
     * Set to true to make blocking stop, default: false
     * @DTA\Data(field="blocking", nullable=true)
     * @DTA\Strategy(name="QueryParameter", options={"type":"string"})
     * @DTA\Validator(name="QueryParameterType", options={"type":"string"})
     * @var string
     */
    public $blocking;
    /**
     * Timeout in seconds, default: 10 seconds
     * @DTA\Data(field="timeOutInSecs", nullable=true)
     * @DTA\Strategy(name="QueryParameter", options={"type":"int"})
     * @DTA\Validator(name="QueryParameterType", options={"type":"int"})
     * @var int
     */
    public $time_out_in_secs;
}
