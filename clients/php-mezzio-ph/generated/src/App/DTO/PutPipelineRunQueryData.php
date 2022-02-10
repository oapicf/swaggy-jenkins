<?php
declare(strict_types=1);

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
     * @DTA\Strategy(name="QueryStringScalar", options={"type":"string"})
     * @DTA\Validator(name="QueryStringScalar", options={"type":"string"})
     * @var string|null
     */
    public $blocking;

    /**
     * Timeout in seconds, default: 10 seconds
     * @DTA\Data(field="timeOutInSecs", nullable=true)
     * @DTA\Strategy(name="QueryStringScalar", options={"type":"int"})
     * @DTA\Validator(name="QueryStringScalar", options={"type":"int"})
     * @var int|null
     */
    public $time_out_in_secs;

}
