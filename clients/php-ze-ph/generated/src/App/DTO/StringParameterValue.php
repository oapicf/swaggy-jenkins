<?php

namespace App\DTO;

use Articus\DataTransfer\Annotation as DTA;

/**
 */
class StringParameterValue
{
    /**
     * @DTA\Data(field="_class", nullable=true)
     * @DTA\Validator(name="Type", options={"type":"string"})
     * @var string
     */
    public $_class;
    /**
     * @DTA\Data(field="name", nullable=true)
     * @DTA\Validator(name="Type", options={"type":"string"})
     * @var string
     */
    public $name;
    /**
     * @DTA\Data(field="value", nullable=true)
     * @DTA\Validator(name="Type", options={"type":"string"})
     * @var string
     */
    public $value;
}
