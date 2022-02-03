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
    private $class;

    /** @var string $displayName */
    private $displayName;

    /** @var int $estimatedDurationInMillis */
    private $estimatedDurationInMillis;

    /** @var string $fullDisplayName */
    private $fullDisplayName;

    /** @var string $fullName */
    private $fullName;

    /** @var string $name */
    private $name;

    /** @var string $organization */
    private $organization;

    /** @var \app\Models\StringParameterDefinition[] $parameters */
    private $parameters;

    /** @var \app\Models\BranchImplpermissions $permissions */
    private $permissions;

    /** @var int $weatherScore */
    private $weatherScore;

    /** @var string $pullRequest */
    private $pullRequest;

    /** @var \app\Models\BranchImpllinks $links */
    private $links;

    /** @var \app\Models\PipelineRunImpl $latestRun */
    private $latestRun;

}
