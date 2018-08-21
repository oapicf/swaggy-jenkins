<?php
/**
 * FreeStyleBuild
 */
namespace app\Models;

/**
 * FreeStyleBuild
 */
class FreeStyleBuild {

    /** @var string $_class */
    private $_class;

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

    /** @var string $display_name */
    private $display_name;

    /** @var int $duration */
    private $duration;

    /** @var int $estimated_duration */
    private $estimated_duration;

    /** @var string $executor */
    private $executor;

    /** @var string $full_display_name */
    private $full_display_name;

    /** @var string $id */
    private $id;

    /** @var bool $keep_log */
    private $keep_log;

    /** @var int $queue_id */
    private $queue_id;

    /** @var string $result */
    private $result;

    /** @var int $timestamp */
    private $timestamp;

    /** @var string $built_on */
    private $built_on;

    /** @var \app\Models\EmptyChangeLogSet $change_set */
    private $change_set;

}
