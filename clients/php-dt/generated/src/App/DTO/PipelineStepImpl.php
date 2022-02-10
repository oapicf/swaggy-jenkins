<?php
declare(strict_types=1);

namespace App\DTO;

use Articus\DataTransfer\Annotation as DTA;

/**
 */
class PipelineStepImpl
{
    /**
     * @DTA\Data(field="_class", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"string"})
     * @var string|null
     */
    public $_class;

    /**
     * @DTA\Data(field="_links", nullable=true)
     * @DTA\Strategy(name="Object", options={"type":\App\DTO\PipelineStepImpllinks::class})
     * @DTA\Validator(name="TypeCompliant", options={"type":\App\DTO\PipelineStepImpllinks::class})
     * @var \App\DTO\PipelineStepImpllinks|null
     */
    public $_links;

    /**
     * @DTA\Data(field="displayName", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"string"})
     * @var string|null
     */
    public $display_name;

    /**
     * @DTA\Data(field="durationInMillis", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"int"})
     * @var int|null
     */
    public $duration_in_millis;

    /**
     * @DTA\Data(field="id", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"string"})
     * @var string|null
     */
    public $id;

    /**
     * @DTA\Data(field="input", nullable=true)
     * @DTA\Strategy(name="Object", options={"type":\App\DTO\InputStepImpl::class})
     * @DTA\Validator(name="TypeCompliant", options={"type":\App\DTO\InputStepImpl::class})
     * @var \App\DTO\InputStepImpl|null
     */
    public $input;

    /**
     * @DTA\Data(field="result", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"string"})
     * @var string|null
     */
    public $result;

    /**
     * @DTA\Data(field="startTime", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"string"})
     * @var string|null
     */
    public $start_time;

    /**
     * @DTA\Data(field="state", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"string"})
     * @var string|null
     */
    public $state;

}
