<?php
/**
 * MultibranchPipeline
 */
namespace app\Models;

/**
 * MultibranchPipeline
 */
class MultibranchPipeline {

    /** @var string $displayName */
    public $displayName = "";

    /** @var int $estimatedDurationInMillis */
    public $estimatedDurationInMillis = 0;

    /** @var string $latestRun */
    public $latestRun = "";

    /** @var string $name */
    public $name = "";

    /** @var string $organization */
    public $organization = "";

    /** @var int $weatherScore */
    public $weatherScore = 0;

    /** @var string[] $branchNames */
    public $branchNames = [];

    /** @var int $numberOfFailingBranches */
    public $numberOfFailingBranches = 0;

    /** @var int $numberOfFailingPullRequests */
    public $numberOfFailingPullRequests = 0;

    /** @var int $numberOfSuccessfulBranches */
    public $numberOfSuccessfulBranches = 0;

    /** @var int $numberOfSuccessfulPullRequests */
    public $numberOfSuccessfulPullRequests = 0;

    /** @var int $totalNumberOfBranches */
    public $totalNumberOfBranches = 0;

    /** @var int $totalNumberOfPullRequests */
    public $totalNumberOfPullRequests = 0;

    /** @var string $class */
    public $class = "";

}
