<?php

namespace App\DTO;

use Articus\DataTransfer\Annotation as DTA;

/**
 */
class HudsonMasterComputerexecutors
{
    /**
     * @DTA\Data(field="currentExecutable", nullable=true)
     * @DTA\Strategy(name="Object", options={"type":\App\DTO\FreeStyleBuild::class})
     * @DTA\Validator(name="Dictionary", options={"type":\App\DTO\FreeStyleBuild::class})
     * @var \App\DTO\FreeStyleBuild
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
