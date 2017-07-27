<?php

namespace App\DTO;

use Articus\DataTransfer\Annotation as DTA;

/**
 */
class IojenkinsblueoceanserviceembeddedrestExtensionClassImpl 
{
    /**
     * @DTA\Data(field="_class", nullable=true)
     * @DTA\Validator(name="Type", options={"type":"string"})
     * @var string
     */
    public $_class;
    /**
     * @DTA\Data(field="_links", nullable=true)
     * @DTA\Strategy(name="Object", options={"type":\App\DTO\IojenkinsblueoceanserviceembeddedrestExtensionClassImplLinks::class})
     * @DTA\Validator(name="Dictionary", options={"type":\App\DTO\IojenkinsblueoceanserviceembeddedrestExtensionClassImplLinks::class})
     * @var \App\DTO\IojenkinsblueoceanserviceembeddedrestExtensionClassImplLinks
     */
    public $_links;
    /**
     * @DTA\Data(field="classes", nullable=true)
     * @DTA\Validator(name="Collection", options={"validators":{
     *     {"name":"Type", "options":{"type":"string"}}
     * }})
     * @var string[]
     */
    public $classes;
}

