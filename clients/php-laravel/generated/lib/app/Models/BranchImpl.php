<?php
/**
 * BranchImpl
 */
namespace app\Models;

/**
 * BranchImpl
 */
class BranchImpl {

    /** @var string $class */
    public $class = "";

    /** @var string $displayName */
    public $displayName = "";

    /** @var int $estimatedDurationInMillis */
    public $estimatedDurationInMillis = 0;

    /** @var string $fullDisplayName */
    public $fullDisplayName = "";

    /** @var string $fullName */
    public $fullName = "";

    /** @var string $name */
    public $name = "";

    /** @var string $organization */
    public $organization = "";

    /** @var \app\Models\StringParameterDefinition[] $parameters */
    public $parameters = [];

    /** @var \app\Models\BranchImplpermissions $permissions */
    public $permissions;

    /** @var int $weatherScore */
    public $weatherScore = 0;

    /** @var string $pullRequest */
    public $pullRequest = "";

    /** @var \app\Models\BranchImpllinks $links */
    public $links;

    /** @var \app\Models\PipelineRunImpl $latestRun */
    public $latestRun;

}
