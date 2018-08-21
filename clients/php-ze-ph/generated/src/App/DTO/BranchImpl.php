<?php

namespace App\DTO;

use Articus\DataTransfer\Annotation as DTA;

/**
 */
class BranchImpl
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
     * @DTA\Data(field="fullDisplayName", nullable=true)
     * @DTA\Validator(name="Type", options={"type":"string"})
     * @var string
     */
    public $full_display_name;
    /**
     * @DTA\Data(field="fullName", nullable=true)
     * @DTA\Validator(name="Type", options={"type":"string"})
     * @var string
     */
    public $full_name;
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
     * @DTA\Data(field="parameters", nullable=true)
     * TODO check validator and strategy are correct and can handle container item type
     * @DTA\Strategy(name="ObjectArray", options={"type":\App\DTO\StringParameterDefinition::class})
     * @DTA\Validator(name="Collection", options={"validators":{
     *     {"name":"Dictionary", "options":{"type":\App\DTO\StringParameterDefinition::class}}
     * }})
     * @var \App\DTO\StringParameterDefinition[]
     */
    public $parameters;
    /**
     * @DTA\Data(field="permissions", nullable=true)
     * @DTA\Strategy(name="Object", options={"type":\App\DTO\BranchImplpermissions::class})
     * @DTA\Validator(name="Dictionary", options={"type":\App\DTO\BranchImplpermissions::class})
     * @var \App\DTO\BranchImplpermissions
     */
    public $permissions;
    /**
     * @DTA\Data(field="weatherScore", nullable=true)
     * @DTA\Validator(name="Type", options={"type":"int"})
     * @var int
     */
    public $weather_score;
    /**
     * @DTA\Data(field="pullRequest", nullable=true)
     * @DTA\Validator(name="Type", options={"type":"string"})
     * @var string
     */
    public $pull_request;
    /**
     * @DTA\Data(field="_links", nullable=true)
     * @DTA\Strategy(name="Object", options={"type":\App\DTO\BranchImpllinks::class})
     * @DTA\Validator(name="Dictionary", options={"type":\App\DTO\BranchImpllinks::class})
     * @var \App\DTO\BranchImpllinks
     */
    public $_links;
    /**
     * @DTA\Data(field="latestRun", nullable=true)
     * @DTA\Strategy(name="Object", options={"type":\App\DTO\PipelineRunImpl::class})
     * @DTA\Validator(name="Dictionary", options={"type":\App\DTO\PipelineRunImpl::class})
     * @var \App\DTO\PipelineRunImpl
     */
    public $latest_run;
}
