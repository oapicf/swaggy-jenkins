<?php
declare(strict_types=1);

namespace App\DTO;

use Articus\DataTransfer\Annotation as DTA;

/**
 */
class FavoriteImpl
{
    /**
     * @DTA\Data(field="_class", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"string"})
     * @var string|null
     */
    public $_class;

    /**
     * @DTA\Data(field="_links", nullable=true)
     * @DTA\Strategy(name="Object", options={"type":\App\DTO\FavoriteImpllinks::class})
     * @DTA\Validator(name="TypeCompliant", options={"type":\App\DTO\FavoriteImpllinks::class})
     * @var \App\DTO\FavoriteImpllinks|null
     */
    public $_links;

    /**
     * @DTA\Data(field="item", nullable=true)
     * @DTA\Strategy(name="Object", options={"type":\App\DTO\PipelineImpl::class})
     * @DTA\Validator(name="TypeCompliant", options={"type":\App\DTO\PipelineImpl::class})
     * @var \App\DTO\PipelineImpl|null
     */
    public $item;

}
