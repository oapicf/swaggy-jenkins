<?php
declare(strict_types=1);

namespace App\DTO;

use Articus\DataTransfer\Annotation as DTA;

/**
 */
class BranchImpl
{
    /**
     * @DTA\Data(field="_class", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"string"})
     * @var string|null
     */
    public $_class;

    /**
     * @DTA\Data(field="displayName", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"string"})
     * @var string|null
     */
    public $display_name;

    /**
     * @DTA\Data(field="estimatedDurationInMillis", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"int"})
     * @var int|null
     */
    public $estimated_duration_in_millis;

    /**
     * @DTA\Data(field="fullDisplayName", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"string"})
     * @var string|null
     */
    public $full_display_name;

    /**
     * @DTA\Data(field="fullName", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"string"})
     * @var string|null
     */
    public $full_name;

    /**
     * @DTA\Data(field="name", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"string"})
     * @var string|null
     */
    public $name;

    /**
     * @DTA\Data(field="organization", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"string"})
     * @var string|null
     */
    public $organization;

    /**
     * @DTA\Data(field="parameters", nullable=true)
     * @DTA\Strategy(name="Object", options={"type":\App\DTO\Collection98::class})
     * @DTA\Validator(name="TypeCompliant", options={"type":\App\DTO\Collection98::class})
     * @var \App\DTO\Collection98|null
     */
    public $parameters;

    /**
     * @DTA\Data(field="permissions", nullable=true)
     * @DTA\Strategy(name="Object", options={"type":\App\DTO\BranchImplpermissions::class})
     * @DTA\Validator(name="TypeCompliant", options={"type":\App\DTO\BranchImplpermissions::class})
     * @var \App\DTO\BranchImplpermissions|null
     */
    public $permissions;

    /**
     * @DTA\Data(field="weatherScore", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"int"})
     * @var int|null
     */
    public $weather_score;

    /**
     * @DTA\Data(field="pullRequest", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"string"})
     * @var string|null
     */
    public $pull_request;

    /**
     * @DTA\Data(field="_links", nullable=true)
     * @DTA\Strategy(name="Object", options={"type":\App\DTO\BranchImpllinks::class})
     * @DTA\Validator(name="TypeCompliant", options={"type":\App\DTO\BranchImpllinks::class})
     * @var \App\DTO\BranchImpllinks|null
     */
    public $_links;

    /**
     * @DTA\Data(field="latestRun", nullable=true)
     * @DTA\Strategy(name="Object", options={"type":\App\DTO\PipelineRunImpl::class})
     * @DTA\Validator(name="TypeCompliant", options={"type":\App\DTO\PipelineRunImpl::class})
     * @var \App\DTO\PipelineRunImpl|null
     */
    public $latest_run;

}
