<?php

namespace App\DTO;

use Articus\DataTransfer\Annotation as DTA;

/**
 */
class CauseAction
{
    /**
     * @DTA\Data(field="_class", nullable=true)
     * @DTA\Validator(name="Type", options={"type":"string"})
     * @var string
     */
    public $_class;
    /**
     * @DTA\Data(field="causes", nullable=true)
     * TODO check validator and strategy are correct and can handle container item type
     * @DTA\Strategy(name="ObjectArray", options={"type":\App\DTO\CauseUserIdCause::class})
     * @DTA\Validator(name="Collection", options={"validators":{
     *     {"name":"Dictionary", "options":{"type":\App\DTO\CauseUserIdCause::class}}
     * }})
     * @var \App\DTO\CauseUserIdCause[]
     */
    public $causes;
}
