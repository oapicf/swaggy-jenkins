<?php

namespace App\DTO;

use Articus\DataTransfer\Annotation as DTA;

/**
 */
class InputStepImpl
{
    /**
     * @DTA\Data(field="_class", nullable=true)
     * @DTA\Validator(name="Type", options={"type":"string"})
     * @var string
     */
    public $_class;
    /**
     * @DTA\Data(field="_links", nullable=true)
     * @DTA\Strategy(name="Object", options={"type":\App\DTO\InputStepImpllinks::class})
     * @DTA\Validator(name="Dictionary", options={"type":\App\DTO\InputStepImpllinks::class})
     * @var \App\DTO\InputStepImpllinks
     */
    public $_links;
    /**
     * @DTA\Data(field="id", nullable=true)
     * @DTA\Validator(name="Type", options={"type":"string"})
     * @var string
     */
    public $id;
    /**
     * @DTA\Data(field="message", nullable=true)
     * @DTA\Validator(name="Type", options={"type":"string"})
     * @var string
     */
    public $message;
    /**
     * @DTA\Data(field="ok", nullable=true)
     * @DTA\Validator(name="Type", options={"type":"string"})
     * @var string
     */
    public $ok;
    /**
     * @DTA\Data(field="parameters", nullable=true)
     * TODO check validator and strategy are correct and can handle container item type
     * @DTA\Strategy(name="ObjectArray", options={"type":\App\DTO\StringParameterDefinition::class})
     * @DTA\Validator(name="Collection", options={"validators":{
     *     {"name":"Dictionary", "options":{"type":\App\DTO\StringParameterDefinition::class}}
     * }})
     * @var \App\DTO\StringParameterDefinition[]
     */
    public $parameters;
    /**
     * @DTA\Data(field="submitter", nullable=true)
     * @DTA\Validator(name="Type", options={"type":"string"})
     * @var string
     */
    public $submitter;
}
