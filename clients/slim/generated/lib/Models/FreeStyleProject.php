<?php
/*
 * FreeStyleProject
 */
namespace \Models;

/*
 * FreeStyleProject
 */
class FreeStyleProject {
    /* @var string $class  */
    private $class;
/* @var string $name  */
    private $name;
/* @var string $url  */
    private $url;
/* @var string $color  */
    private $color;
/* @var \\Models\FreeStyleProjectactions[] $actions  */
    private $actions;
/* @var string $description  */
    private $description;
/* @var string $displayName  */
    private $displayName;
/* @var string $displayNameOrNull  */
    private $displayNameOrNull;
/* @var string $fullDisplayName  */
    private $fullDisplayName;
/* @var string $fullName  */
    private $fullName;
/* @var Bool $buildable  */
    private $buildable;
/* @var \\Models\FreeStyleBuild[] $builds  */
    private $builds;
/* @var \\Models\FreeStyleBuild $firstBuild  */
    private $firstBuild;
/* @var \\Models\FreeStyleProjecthealthReport[] $healthReport  */
    private $healthReport;
/* @var Bool $inQueue  */
    private $inQueue;
/* @var Bool $keepDependencies  */
    private $keepDependencies;
/* @var \\Models\FreeStyleBuild $lastBuild  */
    private $lastBuild;
/* @var \\Models\FreeStyleBuild $lastCompletedBuild  */
    private $lastCompletedBuild;
/* @var string $lastFailedBuild  */
    private $lastFailedBuild;
/* @var \\Models\FreeStyleBuild $lastStableBuild  */
    private $lastStableBuild;
/* @var \\Models\FreeStyleBuild $lastSuccessfulBuild  */
    private $lastSuccessfulBuild;
/* @var string $lastUnstableBuild  */
    private $lastUnstableBuild;
/* @var string $lastUnsuccessfulBuild  */
    private $lastUnsuccessfulBuild;
/* @var int $nextBuildNumber  */
    private $nextBuildNumber;
/* @var string $queueItem  */
    private $queueItem;
/* @var Bool $concurrentBuild  */
    private $concurrentBuild;
/* @var \\Models\NullSCM $scm  */
    private $scm;
}
