<?php
declare(strict_types=1);

namespace App\DTO;

use Articus\DataTransfer\Annotation as DTA;

/**
 */
class HudsonMasterComputerexecutors
{
    /**
     * @DTA\Data(field="currentExecutable", nullable=true)
     * @DTA\Strategy(name="Object", options={"type":\App\DTO\FreeStyleBuild::class})
     * @DTA\Validator(name="TypeCompliant", options={"type":\App\DTO\FreeStyleBuild::class})
     * @var \App\DTO\FreeStyleBuild|null
     */
    public $current_executable;

    /**
     * @DTA\Data(field="idle", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"bool"})
     * @var bool|null
     */
    public $idle;

    /**
     * @DTA\Data(field="likelyStuck", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"bool"})
     * @var bool|null
     */
    public $likely_stuck;

    /**
     * @DTA\Data(field="number", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"int"})
     * @var int|null
     */
    public $number;

    /**
     * @DTA\Data(field="progress", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"int"})
     * @var int|null
     */
    public $progress;

    /**
     * @DTA\Data(field="_class", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"string"})
     * @var string|null
     */
    public $_class;

}
