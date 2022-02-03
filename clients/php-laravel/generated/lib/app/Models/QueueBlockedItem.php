<?php
/**
 * QueueBlockedItem
 */
namespace app\Models;

/**
 * QueueBlockedItem
 */
class QueueBlockedItem {

    /** @var string $class */
    private $class;

    /** @var \app\Models\CauseAction[] $actions */
    private $actions;

    /** @var bool $blocked */
    private $blocked;

    /** @var bool $buildable */
    private $buildable;

    /** @var int $id */
    private $id;

    /** @var int $inQueueSince */
    private $inQueueSince;

    /** @var string $params */
    private $params;

    /** @var bool $stuck */
    private $stuck;

    /** @var \app\Models\FreeStyleProject $task */
    private $task;

    /** @var string $url */
    private $url;

    /** @var string $why */
    private $why;

    /** @var int $buildableStartMilliseconds */
    private $buildableStartMilliseconds;

}
