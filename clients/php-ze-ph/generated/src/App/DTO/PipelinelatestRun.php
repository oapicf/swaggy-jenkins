<?php

namespace App\DTO;

use Articus\DataTransfer\Annotation as DTA;

/**
 */
class PipelinelatestRun
{
    /**
     * @DTA\Data(field="artifacts", nullable=true)
     * TODO check validator and strategy are correct and can handle container item type
     * @DTA\Strategy(name="ObjectArray", options={"type":\App\DTO\PipelinelatestRunartifacts::class})
     * @DTA\Validator(name="Collection", options={"validators":{
     *     {"name":"Dictionary", "options":{"type":\App\DTO\PipelinelatestRunartifacts::class}}
     * }})
     * @var \App\DTO\PipelinelatestRunartifacts[]
     */
    public $artifacts;
    /**
     * @DTA\Data(field="durationInMillis", nullable=true)
     * @DTA\Validator(name="Type", options={"type":"int"})
     * @var int
     */
    public $duration_in_millis;
    /**
     * @DTA\Data(field="estimatedDurationInMillis", nullable=true)
     * @DTA\Validator(name="Type", options={"type":"int"})
     * @var int
     */
    public $estimated_duration_in_millis;
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
    /**
     * @DTA\Data(field="_class", nullable=true)
     * @DTA\Validator(name="Type", options={"type":"string"})
     * @var string
     */
    public $_class;
}
