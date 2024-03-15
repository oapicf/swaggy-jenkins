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
    public $displayName = "";

    /** @var int $estimatedDurationInMillis */
    public $estimatedDurationInMillis = 0;

    /** @var string $name */
    public $name = "";

    /** @var int $weatherScore */
    public $weatherScore = 0;

    /** @var \app\Models\PipelineBranchesitemlatestRun $latestRun */
    public $latestRun;

    /** @var string $organization */
    public $organization = "";

    /** @var \app\Models\PipelineBranchesitempullRequest $pullRequest */
    public $pullRequest;

    /** @var int $totalNumberOfPullRequests */
    public $totalNumberOfPullRequests = 0;

    /** @var string $class */
    public $class = "";

}
