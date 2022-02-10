<?php
declare(strict_types=1);

namespace App\DTO;

use Articus\DataTransfer\Annotation as DTA;

/**
 * Parameters for getPipelineRunNodeSteps
 */
class GetPipelineRunNodeStepsParameterData
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
     * Name of the node
     * @DTA\Data(subset="path", field="node")
     * @DTA\Strategy(subset="path", name="QueryStringScalar", options={"type":"string"})
     * @DTA\Validator(subset="path", name="QueryStringScalar", options={"type":"string"})
     * @var string|null
     */
    public $node;

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

}
