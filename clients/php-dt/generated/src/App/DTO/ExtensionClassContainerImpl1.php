<?php
declare(strict_types=1);

namespace App\DTO;

use Articus\DataTransfer\Annotation as DTA;

class ExtensionClassContainerImpl1
{
    /**
     * @DTA\Data(field="_class", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"string"})
     */
    public ?string $_class = null;

    /**
     * @DTA\Data(field="_links", nullable=true)
     * @DTA\Strategy(name="Object", options={"type":\App\DTO\ExtensionClassContainerImpl1links::class})
     * @DTA\Validator(name="TypeCompliant", options={"type":\App\DTO\ExtensionClassContainerImpl1links::class})
     */
    public ?\App\DTO\ExtensionClassContainerImpl1links $_links = null;

    /**
     * @DTA\Data(field="map", nullable=true)
     * @DTA\Strategy(name="Object", options={"type":\App\DTO\ExtensionClassContainerImpl1map::class})
     * @DTA\Validator(name="TypeCompliant", options={"type":\App\DTO\ExtensionClassContainerImpl1map::class})
     */
    public ?\App\DTO\ExtensionClassContainerImpl1map $map = null;

}
