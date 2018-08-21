<?php
/**
 * PipelineBranchesitem
 */
namespace OpenAPIServer\Model;

/**
 * PipelineBranchesitem
 */
class PipelineBranchesitem {

    /** @var string $displayName */
    private $displayName;

    /** @var int $estimatedDurationInMillis */
    private $estimatedDurationInMillis;

    /** @var string $name */
    private $name;

    /** @var int $weatherScore */
    private $weatherScore;

    /** @var \OpenAPIServer\Model\PipelineBranchesitemlatestRun $latestRun */
    private $latestRun;

    /** @var string $organization */
    private $organization;

    /** @var \OpenAPIServer\Model\PipelineBranchesitempullRequest $pullRequest */
    private $pullRequest;

    /** @var int $totalNumberOfPullRequests */
    private $totalNumberOfPullRequests;

    /** @var string $class */
    private $class;

}
