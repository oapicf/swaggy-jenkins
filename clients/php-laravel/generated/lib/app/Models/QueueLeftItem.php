<?php
/**
 * QueueLeftItem
 */
namespace app\Models;

/**
 * QueueLeftItem
 */
class QueueLeftItem {

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

    /** @var bool $cancelled */
    public $cancelled = false;

    /** @var \app\Models\FreeStyleBuild $executable */
    public $executable;

}
