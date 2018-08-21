<?php

namespace App\DTO;

use Articus\DataTransfer\Annotation as DTA;

/**
 */
class ExtensionClassContainerImpl1
{
    /**
     * @DTA\Data(field="_class", nullable=true)
     * @DTA\Validator(name="Type", options={"type":"string"})
     * @var string
     */
    public $_class;
    /**
     * @DTA\Data(field="_links", nullable=true)
     * @DTA\Strategy(name="Object", options={"type":\App\DTO\ExtensionClassContainerImpl1links::class})
     * @DTA\Validator(name="Dictionary", options={"type":\App\DTO\ExtensionClassContainerImpl1links::class})
     * @var \App\DTO\ExtensionClassContainerImpl1links
     */
    public $_links;
    /**
     * @DTA\Data(field="map", nullable=true)
     * @DTA\Strategy(name="Object", options={"type":\App\DTO\ExtensionClassContainerImpl1map::class})
     * @DTA\Validator(name="Dictionary", options={"type":\App\DTO\ExtensionClassContainerImpl1map::class})
     * @var \App\DTO\ExtensionClassContainerImpl1map
     */
    public $map;
}
