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
    public $class = "";

    /** @var string $name */
    public $name = "";

    /** @var string $url */
    public $url = "";

    /** @var string $color */
    public $color = "";

    /** @var \app\Models\FreeStyleProjectactions[] $actions */
    public $actions = [];

    /** @var string $description */
    public $description = "";

    /** @var string $displayName */
    public $displayName = "";

    /** @var string $displayNameOrNull */
    public $displayNameOrNull = "";

    /** @var string $fullDisplayName */
    public $fullDisplayName = "";

    /** @var string $fullName */
    public $fullName = "";

    /** @var bool $buildable */
    public $buildable = false;

    /** @var \app\Models\FreeStyleBuild[] $builds */
    public $builds = [];

    /** @var \app\Models\FreeStyleBuild $firstBuild */
    public $firstBuild;

    /** @var \app\Models\FreeStyleProjecthealthReport[] $healthReport */
    public $healthReport = [];

    /** @var bool $inQueue */
    public $inQueue = false;

    /** @var bool $keepDependencies */
    public $keepDependencies = false;

    /** @var \app\Models\FreeStyleBuild $lastBuild */
    public $lastBuild;

    /** @var \app\Models\FreeStyleBuild $lastCompletedBuild */
    public $lastCompletedBuild;

    /** @var string $lastFailedBuild */
    public $lastFailedBuild = "";

    /** @var \app\Models\FreeStyleBuild $lastStableBuild */
    public $lastStableBuild;

    /** @var \app\Models\FreeStyleBuild $lastSuccessfulBuild */
    public $lastSuccessfulBuild;

    /** @var string $lastUnstableBuild */
    public $lastUnstableBuild = "";

    /** @var string $lastUnsuccessfulBuild */
    public $lastUnsuccessfulBuild = "";

    /** @var int $nextBuildNumber */
    public $nextBuildNumber = 0;

    /** @var string $queueItem */
    public $queueItem = "";

    /** @var bool $concurrentBuild */
    public $concurrentBuild = false;

    /** @var \app\Models\NullSCM $scm */
    public $scm;

}
