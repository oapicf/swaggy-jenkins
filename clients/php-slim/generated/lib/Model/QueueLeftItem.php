<?php
/**
 * QueueLeftItem
 */
namespace OpenAPIServer\Model;

/**
 * QueueLeftItem
 */
class QueueLeftItem {

    /** @var string $class */
    private $class;

    /** @var \OpenAPIServer\Model\CauseAction[] $actions */
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

    /** @var \OpenAPIServer\Model\FreeStyleProject $task */
    private $task;

    /** @var string $url */
    private $url;

    /** @var string $why */
    private $why;

    /** @var bool $cancelled */
    private $cancelled;

    /** @var \OpenAPIServer\Model\FreeStyleBuild $executable */
    private $executable;

}
