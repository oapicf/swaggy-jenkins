<?php
declare(strict_types=1);

namespace App\DTO;

use Articus\DataTransfer\Annotation as DTA;

/**
 */
class PipelineRunImpllinks
{
    /**
     * @DTA\Data(field="nodes", nullable=true)
     * @DTA\Strategy(name="Object", options={"type":\App\DTO\Link::class})
     * @DTA\Validator(name="TypeCompliant", options={"type":\App\DTO\Link::class})
     * @var \App\DTO\Link|null
     */
    public $nodes;

    /**
     * @DTA\Data(field="log", nullable=true)
     * @DTA\Strategy(name="Object", options={"type":\App\DTO\Link::class})
     * @DTA\Validator(name="TypeCompliant", options={"type":\App\DTO\Link::class})
     * @var \App\DTO\Link|null
     */
    public $log;

    /**
     * @DTA\Data(field="self", nullable=true)
     * @DTA\Strategy(name="Object", options={"type":\App\DTO\Link::class})
     * @DTA\Validator(name="TypeCompliant", options={"type":\App\DTO\Link::class})
     * @var \App\DTO\Link|null
     */
    public $self;

    /**
     * @DTA\Data(field="actions", nullable=true)
     * @DTA\Strategy(name="Object", options={"type":\App\DTO\Link::class})
     * @DTA\Validator(name="TypeCompliant", options={"type":\App\DTO\Link::class})
     * @var \App\DTO\Link|null
     */
    public $actions;

    /**
     * @DTA\Data(field="steps", nullable=true)
     * @DTA\Strategy(name="Object", options={"type":\App\DTO\Link::class})
     * @DTA\Validator(name="TypeCompliant", options={"type":\App\DTO\Link::class})
     * @var \App\DTO\Link|null
     */
    public $steps;

    /**
     * @DTA\Data(field="_class", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"string"})
     * @var string|null
     */
    public $_class;

}
