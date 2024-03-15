<?php
declare(strict_types=1);

namespace App\DTO;

use Articus\DataTransfer\Annotation as DTA;

class QueueLeftItem
{
    /**
     * @DTA\Data(field="_class", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"string"})
     */
    public ?string $_class = null;

    /**
     * @DTA\Data(field="actions", nullable=true)
     * @DTA\Strategy(name="Object", options={"type":::class})
     * @DTA\Validator(name="TypeCompliant", options={"type":::class})
     */
    public ?array $actions = null;

    /**
     * @DTA\Data(field="blocked", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"bool"})
     */
    public ?bool $blocked = null;

    /**
     * @DTA\Data(field="buildable", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"bool"})
     */
    public ?bool $buildable = null;

    /**
     * @DTA\Data(field="id", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"int"})
     */
    public ?int $id = null;

    /**
     * @DTA\Data(field="inQueueSince", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"int"})
     */
    public ?int $in_queue_since = null;

    /**
     * @DTA\Data(field="params", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"string"})
     */
    public ?string $params = null;

    /**
     * @DTA\Data(field="stuck", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"bool"})
     */
    public ?bool $stuck = null;

    /**
     * @DTA\Data(field="task", nullable=true)
     * @DTA\Strategy(name="Object", options={"type":\App\DTO\FreeStyleProject::class})
     * @DTA\Validator(name="TypeCompliant", options={"type":\App\DTO\FreeStyleProject::class})
     */
    public ?\App\DTO\FreeStyleProject $task = null;

    /**
     * @DTA\Data(field="url", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"string"})
     */
    public ?string $url = null;

    /**
     * @DTA\Data(field="why", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"string"})
     */
    public ?string $why = null;

    /**
     * @DTA\Data(field="cancelled", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"bool"})
     */
    public ?bool $cancelled = null;

    /**
     * @DTA\Data(field="executable", nullable=true)
     * @DTA\Strategy(name="Object", options={"type":\App\DTO\FreeStyleBuild::class})
     * @DTA\Validator(name="TypeCompliant", options={"type":\App\DTO\FreeStyleBuild::class})
     */
    public ?\App\DTO\FreeStyleBuild $executable = null;

}
