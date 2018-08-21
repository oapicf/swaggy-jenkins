<?php
/**
 * BranchImpl
 */
namespace app\Models;

/**
 * BranchImpl
 */
class BranchImpl {

    /** @var string $_class */
    private $_class;

    /** @var string $display_name */
    private $display_name;

    /** @var int $estimated_duration_in_millis */
    private $estimated_duration_in_millis;

    /** @var string $full_display_name */
    private $full_display_name;

    /** @var string $full_name */
    private $full_name;

    /** @var string $name */
    private $name;

    /** @var string $organization */
    private $organization;

    /** @var \app\Models\StringParameterDefinition[] $parameters */
    private $parameters;

    /** @var \app\Models\BranchImplpermissions $permissions */
    private $permissions;

    /** @var int $weather_score */
    private $weather_score;

    /** @var string $pull_request */
    private $pull_request;

    /** @var \app\Models\BranchImpllinks $_links */
    private $_links;

    /** @var \app\Models\PipelineRunImpl $latest_run */
    private $latest_run;

}
