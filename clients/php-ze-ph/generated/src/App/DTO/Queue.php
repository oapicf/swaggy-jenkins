<?php

namespace App\DTO;

use Articus\DataTransfer\Annotation as DTA;

/**
 */
class Queue
{
    /**
     * @DTA\Data(field="_class", nullable=true)
     * @DTA\Validator(name="Type", options={"type":"string"})
     * @var string
     */
    public $_class;
    /**
     * @DTA\Data(field="items", nullable=true)
     * TODO check validator and strategy are correct and can handle container item type
     * @DTA\Strategy(name="ObjectArray", options={"type":\App\DTO\QueueBlockedItem::class})
     * @DTA\Validator(name="Collection", options={"validators":{
     *     {"name":"Dictionary", "options":{"type":\App\DTO\QueueBlockedItem::class}}
     * }})
     * @var \App\DTO\QueueBlockedItem[]
     */
    public $items;
}
