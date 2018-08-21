<?php
/**
 * FreeStyleProject
 */
namespace OpenAPIServer\Model;

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

    /** @var \OpenAPIServer\Model\FreeStyleProjectactions[] $actions */
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

    /** @var \OpenAPIServer\Model\FreeStyleBuild[] $builds */
    private $builds;

    /** @var \OpenAPIServer\Model\FreeStyleBuild $firstBuild */
    private $firstBuild;

    /** @var \OpenAPIServer\Model\FreeStyleProjecthealthReport[] $healthReport */
    private $healthReport;

    /** @var bool $inQueue */
    private $inQueue;

    /** @var bool $keepDependencies */
    private $keepDependencies;

    /** @var \OpenAPIServer\Model\FreeStyleBuild $lastBuild */
    private $lastBuild;

    /** @var \OpenAPIServer\Model\FreeStyleBuild $lastCompletedBuild */
    private $lastCompletedBuild;

    /** @var string $lastFailedBuild */
    private $lastFailedBuild;

    /** @var \OpenAPIServer\Model\FreeStyleBuild $lastStableBuild */
    private $lastStableBuild;

    /** @var \OpenAPIServer\Model\FreeStyleBuild $lastSuccessfulBuild */
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

    /** @var \OpenAPIServer\Model\NullSCM $scm */
    private $scm;

}
