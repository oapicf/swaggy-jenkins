<?php

namespace App\DTO;

use Articus\DataTransfer\Annotation as DTA;

/**
 */
class HudsonmodelQueue 
{
    /**
     * @DTA\Data(field="_class", nullable=true)
     * @DTA\Validator(name="Type", options={"type":"string"})
     * @var string
     */
    public $_class;
    /**
     * @DTA\Data(field="items", nullable=true)
     * @DTA\Strategy(name="ObjectArray", options={"type":\App\DTO\HudsonmodelQueueBlockedItem::class})
     * @DTA\Validator(name="Collection", options={"validators":{
     *     {"name":"Dictionary", "options":{"type":\App\DTO\HudsonmodelQueueBlockedItem::class}}
     * }})
     * @var \App\DTO\HudsonmodelQueueBlockedItem[]
     */
    public $items;
}

