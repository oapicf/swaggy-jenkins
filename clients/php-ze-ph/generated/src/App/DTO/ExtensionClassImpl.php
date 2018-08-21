<?php

namespace App\DTO;

use Articus\DataTransfer\Annotation as DTA;

/**
 */
class ExtensionClassImpl
{
    /**
     * @DTA\Data(field="_class", nullable=true)
     * @DTA\Validator(name="Type", options={"type":"string"})
     * @var string
     */
    public $_class;
    /**
     * @DTA\Data(field="_links", nullable=true)
     * @DTA\Strategy(name="Object", options={"type":\App\DTO\ExtensionClassImpllinks::class})
     * @DTA\Validator(name="Dictionary", options={"type":\App\DTO\ExtensionClassImpllinks::class})
     * @var \App\DTO\ExtensionClassImpllinks
     */
    public $_links;
    /**
     * @DTA\Data(field="classes", nullable=true)
     * TODO check validator and strategy are correct and can handle container item type
     * @DTA\Validator(name="Collection", options={"validators":{
     *     {"name":"Type", "options":{"type":"string"}}
     * }})
     * @var string[]
     */
    public $classes;
}
