<?php
/**
 * Queue
 */
namespace app\Models;

/**
 * Queue
 */
class Queue {

    /** @var string $class */
    public $class = "";

    /** @var \app\Models\QueueBlockedItem[] $items */
    public $items = [];

}
