<?php
declare(strict_types=1);

namespace App\DTO;

use Articus\DataTransfer\Annotation as DTA;

class HudsonMasterComputerexecutors
{
    /**
     * @DTA\Data(field="currentExecutable", nullable=true)
     * @DTA\Strategy(name="Object", options={"type":\App\DTO\FreeStyleBuild::class})
     * @DTA\Validator(name="TypeCompliant", options={"type":\App\DTO\FreeStyleBuild::class})
     */
    public ?\App\DTO\FreeStyleBuild $current_executable = null;

    /**
     * @DTA\Data(field="idle", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"bool"})
     */
    public ?bool $idle = null;

    /**
     * @DTA\Data(field="likelyStuck", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"bool"})
     */
    public ?bool $likely_stuck = null;

    /**
     * @DTA\Data(field="number", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"int"})
     */
    public ?int $number = null;

    /**
     * @DTA\Data(field="progress", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"int"})
     */
    public ?int $progress = null;

    /**
     * @DTA\Data(field="_class", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"string"})
     */
    public ?string $_class = null;

}
