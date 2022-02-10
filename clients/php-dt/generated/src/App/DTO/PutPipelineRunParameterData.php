<?php
declare(strict_types=1);

namespace App\DTO;

use Articus\DataTransfer\Annotation as DTA;

/**
 * Parameters for putPipelineRun
 */
class PutPipelineRunParameterData
{
    /**
     * Name of the pipeline
     * @DTA\Data(subset="path", field="pipeline")
     * @DTA\Strategy(subset="path", name="QueryStringScalar", options={"type":"string"})
     * @DTA\Validator(subset="path", name="QueryStringScalar", options={"type":"string"})
     * @var string|null
     */
    public $pipeline;

    /**
     * Set to true to make blocking stop, default: false
     * @DTA\Data(subset="query", field="blocking", nullable=true)
     * @DTA\Strategy(subset="query", name="QueryStringScalar", options={"type":"string"})
     * @DTA\Validator(subset="query", name="QueryStringScalar", options={"type":"string"})
     * @var string|null
     */
    public $blocking;

    /**
     * Name of the organization
     * @DTA\Data(subset="path", field="organization")
     * @DTA\Strategy(subset="path", name="QueryStringScalar", options={"type":"string"})
     * @DTA\Validator(subset="path", name="QueryStringScalar", options={"type":"string"})
     * @var string|null
     */
    public $organization;

    /**
     * Name of the run
     * @DTA\Data(subset="path", field="run")
     * @DTA\Strategy(subset="path", name="QueryStringScalar", options={"type":"string"})
     * @DTA\Validator(subset="path", name="QueryStringScalar", options={"type":"string"})
     * @var string|null
     */
    public $run;

    /**
     * Timeout in seconds, default: 10 seconds
     * @DTA\Data(subset="query", field="timeOutInSecs", nullable=true)
     * @DTA\Strategy(subset="query", name="QueryStringScalar", options={"type":"int"})
     * @DTA\Validator(subset="query", name="QueryStringScalar", options={"type":"int"})
     * @var int|null
     */
    public $time_out_in_secs;

}
