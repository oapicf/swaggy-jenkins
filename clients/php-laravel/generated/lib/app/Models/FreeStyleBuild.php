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
    public $class = "";

    /** @var int $number */
    public $number = 0;

    /** @var string $url */
    public $url = "";

    /** @var \app\Models\CauseAction[] $actions */
    public $actions = [];

    /** @var bool $building */
    public $building = false;

    /** @var string $description */
    public $description = "";

    /** @var string $displayName */
    public $displayName = "";

    /** @var int $duration */
    public $duration = 0;

    /** @var int $estimatedDuration */
    public $estimatedDuration = 0;

    /** @var string $executor */
    public $executor = "";

    /** @var string $fullDisplayName */
    public $fullDisplayName = "";

    /** @var string $id */
    public $id = "";

    /** @var bool $keepLog */
    public $keepLog = false;

    /** @var int $queueId */
    public $queueId = 0;

    /** @var string $result */
    public $result = "";

    /** @var int $timestamp */
    public $timestamp = 0;

    /** @var string $builtOn */
    public $builtOn = "";

    /** @var \app\Models\EmptyChangeLogSet $changeSet */
    public $changeSet;

}
