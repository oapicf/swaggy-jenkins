<?php
/**
 * FreeStyleProject
 */
namespace app\Models;

/**
 * FreeStyleProject
 */
class FreeStyleProject {

    /** @var string $class */
    private $class;

    /** @var string $name */
    private $name;

    /** @var string $url */
    private $url;

    /** @var string $color */
    private $color;

    /** @var \app\Models\FreeStyleProjectactions[] $actions */
    private $actions;

    /** @var string $description */
    private $description;

    /** @var string $displayName */
    private $displayName;

    /** @var string $displayNameOrNull */
    private $displayNameOrNull;

    /** @var string $fullDisplayName */
    private $fullDisplayName;

    /** @var string $fullName */
    private $fullName;

    /** @var bool $buildable */
    private $buildable;

    /** @var \app\Models\FreeStyleBuild[] $builds */
    private $builds;

    /** @var \app\Models\FreeStyleBuild $firstBuild */
    private $firstBuild;

    /** @var \app\Models\FreeStyleProjecthealthReport[] $healthReport */
    private $healthReport;

    /** @var bool $inQueue */
    private $inQueue;

    /** @var bool $keepDependencies */
    private $keepDependencies;

    /** @var \app\Models\FreeStyleBuild $lastBuild */
    private $lastBuild;

    /** @var \app\Models\FreeStyleBuild $lastCompletedBuild */
    private $lastCompletedBuild;

    /** @var string $lastFailedBuild */
    private $lastFailedBuild;

    /** @var \app\Models\FreeStyleBuild $lastStableBuild */
    private $lastStableBuild;

    /** @var \app\Models\FreeStyleBuild $lastSuccessfulBuild */
    private $lastSuccessfulBuild;

    /** @var string $lastUnstableBuild */
    private $lastUnstableBuild;

    /** @var string $lastUnsuccessfulBuild */
    private $lastUnsuccessfulBuild;

    /** @var int $nextBuildNumber */
    private $nextBuildNumber;

    /** @var string $queueItem */
    private $queueItem;

    /** @var bool $concurrentBuild */
    private $concurrentBuild;

    /** @var \app\Models\NullSCM $scm */
    private $scm;

}
