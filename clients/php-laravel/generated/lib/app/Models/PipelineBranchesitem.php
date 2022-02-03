<?php
/**
 * PipelineBranchesitem
 */
namespace app\Models;

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

    /** @var \app\Models\PipelineBranchesitemlatestRun $latestRun */
    private $latestRun;

    /** @var string $organization */
    private $organization;

    /** @var \app\Models\PipelineBranchesitempullRequest $pullRequest */
    private $pullRequest;

    /** @var int $totalNumberOfPullRequests */
    private $totalNumberOfPullRequests;

    /** @var string $class */
    private $class;

}
