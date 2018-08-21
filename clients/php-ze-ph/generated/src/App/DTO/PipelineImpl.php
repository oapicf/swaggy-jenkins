<?php

namespace App\DTO;

use Articus\DataTransfer\Annotation as DTA;

/**
 */
class PipelineImpl
{
    /**
     * @DTA\Data(field="_class", nullable=true)
     * @DTA\Validator(name="Type", options={"type":"string"})
     * @var string
     */
    public $_class;
    /**
     * @DTA\Data(field="displayName", nullable=true)
     * @DTA\Validator(name="Type", options={"type":"string"})
     * @var string
     */
    public $display_name;
    /**
     * @DTA\Data(field="estimatedDurationInMillis", nullable=true)
     * @DTA\Validator(name="Type", options={"type":"int"})
     * @var int
     */
    public $estimated_duration_in_millis;
    /**
     * @DTA\Data(field="fullName", nullable=true)
     * @DTA\Validator(name="Type", options={"type":"string"})
     * @var string
     */
    public $full_name;
    /**
     * @DTA\Data(field="latestRun", nullable=true)
     * @DTA\Validator(name="Type", options={"type":"string"})
     * @var string
     */
    public $latest_run;
    /**
     * @DTA\Data(field="name", nullable=true)
     * @DTA\Validator(name="Type", options={"type":"string"})
     * @var string
     */
    public $name;
    /**
     * @DTA\Data(field="organization", nullable=true)
     * @DTA\Validator(name="Type", options={"type":"string"})
     * @var string
     */
    public $organization;
    /**
     * @DTA\Data(field="weatherScore", nullable=true)
     * @DTA\Validator(name="Type", options={"type":"int"})
     * @var int
     */
    public $weather_score;
    /**
     * @DTA\Data(field="_links", nullable=true)
     * @DTA\Strategy(name="Object", options={"type":\App\DTO\PipelineImpllinks::class})
     * @DTA\Validator(name="Dictionary", options={"type":\App\DTO\PipelineImpllinks::class})
     * @var \App\DTO\PipelineImpllinks
     */
    public $_links;
}
