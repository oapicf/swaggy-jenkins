<?php
declare(strict_types=1);

namespace App\DTO;

use Articus\DataTransfer\Annotation as DTA;

class PipelineImpllinks
{
    /**
     * @DTA\Data(field="self", nullable=true)
     * @DTA\Strategy(name="Object", options={"type":\App\DTO\Link::class})
     * @DTA\Validator(name="TypeCompliant", options={"type":\App\DTO\Link::class})
     */
    public ?\App\DTO\Link $self = null;

    /**
     * @DTA\Data(field="actions", nullable=true)
     * @DTA\Strategy(name="Object", options={"type":\App\DTO\Link::class})
     * @DTA\Validator(name="TypeCompliant", options={"type":\App\DTO\Link::class})
     */
    public ?\App\DTO\Link $actions = null;

    /**
     * @DTA\Data(field="runs", nullable=true)
     * @DTA\Strategy(name="Object", options={"type":\App\DTO\Link::class})
     * @DTA\Validator(name="TypeCompliant", options={"type":\App\DTO\Link::class})
     */
    public ?\App\DTO\Link $runs = null;

    /**
     * @DTA\Data(field="queue", nullable=true)
     * @DTA\Strategy(name="Object", options={"type":\App\DTO\Link::class})
     * @DTA\Validator(name="TypeCompliant", options={"type":\App\DTO\Link::class})
     */
    public ?\App\DTO\Link $queue = null;

    /**
     * @DTA\Data(field="_class", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"string"})
     */
    public ?string $_class = null;

}
