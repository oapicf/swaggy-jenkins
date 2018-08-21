<?php
/**
 * BranchImpl
 */
namespace OpenAPIServer\Model;

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

    /** @var \OpenAPIServer\Model\StringParameterDefinition[] $parameters */
    private $parameters;

    /** @var \OpenAPIServer\Model\BranchImplpermissions $permissions */
    private $permissions;

    /** @var int $weatherScore */
    private $weatherScore;

    /** @var string $pullRequest */
    private $pullRequest;

    /** @var \OpenAPIServer\Model\BranchImpllinks $links */
    private $links;

    /** @var \OpenAPIServer\Model\PipelineRunImpl $latestRun */
    private $latestRun;

}
