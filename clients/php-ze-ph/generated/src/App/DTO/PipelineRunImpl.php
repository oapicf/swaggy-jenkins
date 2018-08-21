<?php

namespace App\DTO;

use Articus\DataTransfer\Annotation as DTA;

/**
 */
class PipelineRunImpl
{
    /**
     * @DTA\Data(field="_class", nullable=true)
     * @DTA\Validator(name="Type", options={"type":"string"})
     * @var string
     */
    public $_class;
    /**
     * @DTA\Data(field="_links", nullable=true)
     * @DTA\Strategy(name="Object", options={"type":\App\DTO\PipelineRunImpllinks::class})
     * @DTA\Validator(name="Dictionary", options={"type":\App\DTO\PipelineRunImpllinks::class})
     * @var \App\DTO\PipelineRunImpllinks
     */
    public $_links;
    /**
     * @DTA\Data(field="durationInMillis", nullable=true)
     * @DTA\Validator(name="Type", options={"type":"int"})
     * @var int
     */
    public $duration_in_millis;
    /**
     * @DTA\Data(field="enQueueTime", nullable=true)
     * @DTA\Validator(name="Type", options={"type":"string"})
     * @var string
     */
    public $en_queue_time;
    /**
     * @DTA\Data(field="endTime", nullable=true)
     * @DTA\Validator(name="Type", options={"type":"string"})
     * @var string
     */
    public $end_time;
    /**
     * @DTA\Data(field="estimatedDurationInMillis", nullable=true)
     * @DTA\Validator(name="Type", options={"type":"int"})
     * @var int
     */
    public $estimated_duration_in_millis;
    /**
     * @DTA\Data(field="id", nullable=true)
     * @DTA\Validator(name="Type", options={"type":"string"})
     * @var string
     */
    public $id;
    /**
     * @DTA\Data(field="organization", nullable=true)
     * @DTA\Validator(name="Type", options={"type":"string"})
     * @var string
     */
    public $organization;
    /**
     * @DTA\Data(field="pipeline", nullable=true)
     * @DTA\Validator(name="Type", options={"type":"string"})
     * @var string
     */
    public $pipeline;
    /**
     * @DTA\Data(field="result", nullable=true)
     * @DTA\Validator(name="Type", options={"type":"string"})
     * @var string
     */
    public $result;
    /**
     * @DTA\Data(field="runSummary", nullable=true)
     * @DTA\Validator(name="Type", options={"type":"string"})
     * @var string
     */
    public $run_summary;
    /**
     * @DTA\Data(field="startTime", nullable=true)
     * @DTA\Validator(name="Type", options={"type":"string"})
     * @var string
     */
    public $start_time;
    /**
     * @DTA\Data(field="state", nullable=true)
     * @DTA\Validator(name="Type", options={"type":"string"})
     * @var string
     */
    public $state;
    /**
     * @DTA\Data(field="type", nullable=true)
     * @DTA\Validator(name="Type", options={"type":"string"})
     * @var string
     */
    public $type;
    /**
     * @DTA\Data(field="commitId", nullable=true)
     * @DTA\Validator(name="Type", options={"type":"string"})
     * @var string
     */
    public $commit_id;
}
