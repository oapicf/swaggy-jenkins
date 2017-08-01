<?php

namespace App\DTO;

use Articus\DataTransfer\Annotation as DTA;

/**
 */
class HudsonmodelHudsonMasterComputerexecutors 
{
    /**
     * @DTA\Data(field="currentExecutable", nullable=true)
     * @DTA\Strategy(name="Object", options={"type":\App\DTO\HudsonmodelFreeStyleBuild::class})
     * @DTA\Validator(name="Dictionary", options={"type":\App\DTO\HudsonmodelFreeStyleBuild::class})
     * @var \App\DTO\HudsonmodelFreeStyleBuild
     */
    public $current_executable;
    /**
     * @DTA\Data(field="idle", nullable=true)
     * @DTA\Validator(name="Type", options={"type":"bool"})
     * @var bool
     */
    public $idle;
    /**
     * @DTA\Data(field="likelyStuck", nullable=true)
     * @DTA\Validator(name="Type", options={"type":"bool"})
     * @var bool
     */
    public $likely_stuck;
    /**
     * @DTA\Data(field="number", nullable=true)
     * @DTA\Validator(name="Type", options={"type":"int"})
     * @var int
     */
    public $number;
    /**
     * @DTA\Data(field="progress", nullable=true)
     * @DTA\Validator(name="Type", options={"type":"int"})
     * @var int
     */
    public $progress;
    /**
     * @DTA\Data(field="_class", nullable=true)
     * @DTA\Validator(name="Type", options={"type":"string"})
     * @var string
     */
    public $_class;
}

