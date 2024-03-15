<?php
declare(strict_types=1);

namespace App\DTO;

use Articus\DataTransfer\Annotation as DTA;

class FavoriteImpl
{
    /**
     * @DTA\Data(field="_class", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"string"})
     */
    public ?string $_class = null;

    /**
     * @DTA\Data(field="_links", nullable=true)
     * @DTA\Strategy(name="Object", options={"type":\App\DTO\FavoriteImpllinks::class})
     * @DTA\Validator(name="TypeCompliant", options={"type":\App\DTO\FavoriteImpllinks::class})
     */
    public ?\App\DTO\FavoriteImpllinks $_links = null;

    /**
     * @DTA\Data(field="item", nullable=true)
     * @DTA\Strategy(name="Object", options={"type":\App\DTO\PipelineImpl::class})
     * @DTA\Validator(name="TypeCompliant", options={"type":\App\DTO\PipelineImpl::class})
     */
    public ?\App\DTO\PipelineImpl $item = null;

}
