<?php
/**
 * FreeStyleBuild
 */
namespace app\Models;

/**
 * FreeStyleBuild
 */
class FreeStyleBuild {

    /** @var string $class */
    private $class;

    /** @var int $number */
    private $number;

    /** @var string $url */
    private $url;

    /** @var \app\Models\CauseAction[] $actions */
    private $actions;

    /** @var bool $building */
    private $building;

    /** @var string $description */
    private $description;

    /** @var string $displayName */
    private $displayName;

    /** @var int $duration */
    private $duration;

    /** @var int $estimatedDuration */
    private $estimatedDuration;

    /** @var string $executor */
    private $executor;

    /** @var string $fullDisplayName */
    private $fullDisplayName;

    /** @var string $id */
    private $id;

    /** @var bool $keepLog */
    private $keepLog;

    /** @var int $queueId */
    private $queueId;

    /** @var string $result */
    private $result;

    /** @var int $timestamp */
    private $timestamp;

    /** @var string $builtOn */
    private $builtOn;

    /** @var \app\Models\EmptyChangeLogSet $changeSet */
    private $changeSet;

}
