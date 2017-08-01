<?php

namespace App\DTO;

use Articus\DataTransfer\Annotation as DTA;

/**
 */
class IojenkinsblueoceanserviceembeddedrestExtensionClassContainerImpl1 
{
    /**
     * @DTA\Data(field="_class", nullable=true)
     * @DTA\Validator(name="Type", options={"type":"string"})
     * @var string
     */
    public $_class;
    /**
     * @DTA\Data(field="_links", nullable=true)
     * @DTA\Strategy(name="Object", options={"type":\App\DTO\IojenkinsblueoceanserviceembeddedrestExtensionClassContainerImpl1Links::class})
     * @DTA\Validator(name="Dictionary", options={"type":\App\DTO\IojenkinsblueoceanserviceembeddedrestExtensionClassContainerImpl1Links::class})
     * @var \App\DTO\IojenkinsblueoceanserviceembeddedrestExtensionClassContainerImpl1Links
     */
    public $_links;
    /**
     * @DTA\Data(field="map", nullable=true)
     * @DTA\Strategy(name="Object", options={"type":\App\DTO\IojenkinsblueoceanserviceembeddedrestExtensionClassContainerImpl1Map::class})
     * @DTA\Validator(name="Dictionary", options={"type":\App\DTO\IojenkinsblueoceanserviceembeddedrestExtensionClassContainerImpl1Map::class})
     * @var \App\DTO\IojenkinsblueoceanserviceembeddedrestExtensionClassContainerImpl1Map
     */
    public $map;
}

