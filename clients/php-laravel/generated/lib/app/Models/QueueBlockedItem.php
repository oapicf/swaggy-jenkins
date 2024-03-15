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
    public $class = "";

    /** @var \app\Models\CauseAction[] $actions */
    public $actions = [];

    /** @var bool $blocked */
    public $blocked = false;

    /** @var bool $buildable */
    public $buildable = false;

    /** @var int $id */
    public $id = 0;

    /** @var int $inQueueSince */
    public $inQueueSince = 0;

    /** @var string $params */
    public $params = "";

    /** @var bool $stuck */
    public $stuck = false;

    /** @var \app\Models\FreeStyleProject $task */
    public $task;

    /** @var string $url */
    public $url = "";

    /** @var string $why */
    public $why = "";

    /** @var int $buildableStartMilliseconds */
    public $buildableStartMilliseconds = 0;

}
