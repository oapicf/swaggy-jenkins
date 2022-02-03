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
    private $displayName;

    /** @var int $estimatedDurationInMillis */
    private $estimatedDurationInMillis;

    /** @var string $latestRun */
    private $latestRun;

    /** @var string $name */
    private $name;

    /** @var string $organization */
    private $organization;

    /** @var int $weatherScore */
    private $weatherScore;

    /** @var string[] $branchNames */
    private $branchNames;

    /** @var int $numberOfFailingBranches */
    private $numberOfFailingBranches;

    /** @var int $numberOfFailingPullRequests */
    private $numberOfFailingPullRequests;

    /** @var int $numberOfSuccessfulBranches */
    private $numberOfSuccessfulBranches;

    /** @var int $numberOfSuccessfulPullRequests */
    private $numberOfSuccessfulPullRequests;

    /** @var int $totalNumberOfBranches */
    private $totalNumberOfBranches;

    /** @var int $totalNumberOfPullRequests */
    private $totalNumberOfPullRequests;

    /** @var string $class */
    private $class;

}
