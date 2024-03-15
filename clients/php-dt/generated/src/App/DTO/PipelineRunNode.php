<?php
declare(strict_types=1);

namespace App\DTO;

use Articus\DataTransfer\Annotation as DTA;

class PipelineRunNode
{
    /**
     * @DTA\Data(field="_class", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"string"})
     */
    public ?string $_class = null;

    /**
     * @DTA\Data(field="displayName", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"string"})
     */
    public ?string $display_name = null;

    /**
     * @DTA\Data(field="durationInMillis", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"int"})
     */
    public ?int $duration_in_millis = null;

    /**
     * @DTA\Data(field="edges", nullable=true)
     * @DTA\Strategy(name="Object", options={"type":\App\DTO\Collection23::class})
     * @DTA\Validator(name="TypeCompliant", options={"type":\App\DTO\Collection23::class})
     */
    public ?\App\DTO\Collection23 $edges = null;

    /**
     * @DTA\Data(field="id", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"string"})
     */
    public ?string $id = null;

    /**
     * @DTA\Data(field="result", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"string"})
     */
    public ?string $result = null;

    /**
     * @DTA\Data(field="startTime", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"string"})
     */
    public ?string $start_time = null;

    /**
     * @DTA\Data(field="state", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"string"})
     */
    public ?string $state = null;

}
