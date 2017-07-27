<?php

namespace App\DTO;

use Articus\DataTransfer\Annotation as DTA;

/**
 */
class IojenkinsblueoceanserviceembeddedrestExtensionClassImplLinks 
{
    /**
     * @DTA\Data(field="self", nullable=true)
     * @DTA\Strategy(name="Object", options={"type":\App\DTO\IojenkinsblueoceanresthalLink::class})
     * @DTA\Validator(name="Dictionary", options={"type":\App\DTO\IojenkinsblueoceanresthalLink::class})
     * @var \App\DTO\IojenkinsblueoceanresthalLink
     */
    public $self;
    /**
     * @DTA\Data(field="_class", nullable=true)
     * @DTA\Validator(name="Type", options={"type":"string"})
     * @var string
     */
    public $_class;
}

