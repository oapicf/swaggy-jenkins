<?php

namespace App\DTO;

use Articus\DataTransfer\Annotation as DTA;

/**
 */
class EmptyChangeLogSet
{
    /**
     * @DTA\Data(field="_class", nullable=true)
     * @DTA\Validator(name="Type", options={"type":"string"})
     * @var string
     */
    public $_class;
    /**
     * @DTA\Data(field="kind", nullable=true)
     * @DTA\Validator(name="Type", options={"type":"string"})
     * @var string
     */
    public $kind;
}
