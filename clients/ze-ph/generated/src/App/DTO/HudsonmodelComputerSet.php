<?php

namespace App\DTO;

use Articus\DataTransfer\Annotation as DTA;

/**
 */
class HudsonmodelComputerSet 
{
    /**
     * @DTA\Data(field="_class", nullable=true)
     * @DTA\Validator(name="Type", options={"type":"string"})
     * @var string
     */
    public $_class;
    /**
     * @DTA\Data(field="busyExecutors", nullable=true)
     * @DTA\Validator(name="Type", options={"type":"int"})
     * @var int
     */
    public $busy_executors;
    /**
     * @DTA\Data(field="computer", nullable=true)
     * @DTA\Strategy(name="ObjectArray", options={"type":\App\DTO\HudsonmodelHudsonMasterComputer::class})
     * @DTA\Validator(name="Collection", options={"validators":{
     *     {"name":"Dictionary", "options":{"type":\App\DTO\HudsonmodelHudsonMasterComputer::class}}
     * }})
     * @var \App\DTO\HudsonmodelHudsonMasterComputer[]
     */
    public $computer;
    /**
     * @DTA\Data(field="displayName", nullable=true)
     * @DTA\Validator(name="Type", options={"type":"string"})
     * @var string
     */
    public $display_name;
    /**
     * @DTA\Data(field="totalExecutors", nullable=true)
     * @DTA\Validator(name="Type", options={"type":"int"})
     * @var int
     */
    public $total_executors;
}

