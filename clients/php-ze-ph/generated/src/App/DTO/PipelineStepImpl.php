<?php

namespace App\DTO;

use Articus\DataTransfer\Annotation as DTA;

/**
 */
class PipelineStepImpl
{
    /**
     * @DTA\Data(field="_class", nullable=true)
     * @DTA\Validator(name="Type", options={"type":"string"})
     * @var string
     */
    public $_class;
    /**
     * @DTA\Data(field="_links", nullable=true)
     * @DTA\Strategy(name="Object", options={"type":\App\DTO\PipelineStepImpllinks::class})
     * @DTA\Validator(name="Dictionary", options={"type":\App\DTO\PipelineStepImpllinks::class})
     * @var \App\DTO\PipelineStepImpllinks
     */
    public $_links;
    /**
     * @DTA\Data(field="displayName", nullable=true)
     * @DTA\Validator(name="Type", options={"type":"string"})
     * @var string
     */
    public $display_name;
    /**
     * @DTA\Data(field="durationInMillis", nullable=true)
     * @DTA\Validator(name="Type", options={"type":"int"})
     * @var int
     */
    public $duration_in_millis;
    /**
     * @DTA\Data(field="id", nullable=true)
     * @DTA\Validator(name="Type", options={"type":"string"})
     * @var string
     */
    public $id;
    /**
     * @DTA\Data(field="input", nullable=true)
     * @DTA\Strategy(name="Object", options={"type":\App\DTO\InputStepImpl::class})
     * @DTA\Validator(name="Dictionary", options={"type":\App\DTO\InputStepImpl::class})
     * @var \App\DTO\InputStepImpl
     */
    public $input;
    /**
     * @DTA\Data(field="result", nullable=true)
     * @DTA\Validator(name="Type", options={"type":"string"})
     * @var string
     */
    public $result;
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
}
