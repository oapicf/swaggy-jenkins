<?php

namespace App\DTO;

use Articus\DataTransfer\Annotation as DTA;

/**
 */
class FavoriteImpl
{
    /**
     * @DTA\Data(field="_class", nullable=true)
     * @DTA\Validator(name="Type", options={"type":"string"})
     * @var string
     */
    public $_class;
    /**
     * @DTA\Data(field="_links", nullable=true)
     * @DTA\Strategy(name="Object", options={"type":\App\DTO\FavoriteImpllinks::class})
     * @DTA\Validator(name="Dictionary", options={"type":\App\DTO\FavoriteImpllinks::class})
     * @var \App\DTO\FavoriteImpllinks
     */
    public $_links;
    /**
     * @DTA\Data(field="item", nullable=true)
     * @DTA\Strategy(name="Object", options={"type":\App\DTO\PipelineImpl::class})
     * @DTA\Validator(name="Dictionary", options={"type":\App\DTO\PipelineImpl::class})
     * @var \App\DTO\PipelineImpl
     */
    public $item;
}
