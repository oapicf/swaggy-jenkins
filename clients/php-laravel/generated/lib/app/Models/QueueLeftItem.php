<?php
/**
 * QueueLeftItem
 */
namespace app\Models;

/**
 * QueueLeftItem
 */
class QueueLeftItem {

    /** @var string $_class */
    private $_class;

    /** @var \app\Models\CauseAction[] $actions */
    private $actions;

    /** @var bool $blocked */
    private $blocked;

    /** @var bool $buildable */
    private $buildable;

    /** @var int $id */
    private $id;

    /** @var int $in_queue_since */
    private $in_queue_since;

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

    /** @var bool $cancelled */
    private $cancelled;

    /** @var \app\Models\FreeStyleBuild $executable */
    private $executable;

}
