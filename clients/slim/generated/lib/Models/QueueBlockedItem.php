<?php
/*
 * QueueBlockedItem
 */
namespace \Models;

/*
 * QueueBlockedItem
 */
class QueueBlockedItem {
    /* @var string $class  */
    private $class;
/* @var \\Models\CauseAction[] $actions  */
    private $actions;
/* @var Bool $blocked  */
    private $blocked;
/* @var Bool $buildable  */
    private $buildable;
/* @var int $id  */
    private $id;
/* @var int $inQueueSince  */
    private $inQueueSince;
/* @var string $params  */
    private $params;
/* @var Bool $stuck  */
    private $stuck;
/* @var \\Models\FreeStyleProject $task  */
    private $task;
/* @var string $url  */
    private $url;
/* @var string $why  */
    private $why;
/* @var int $buildableStartMilliseconds  */
    private $buildableStartMilliseconds;
}
