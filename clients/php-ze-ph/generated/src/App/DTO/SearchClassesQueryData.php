<?php

namespace App\DTO;

use Articus\DataTransfer\Annotation as DTA;

/**
 * Query parameters for searchClasses
 */
class SearchClassesQueryData
{
    /**
     * Query string containing an array of class names
     * @DTA\Data(field="q")
     * @DTA\Strategy(name="QueryParameter", options={"type":"string"})
     * @DTA\Validator(name="QueryParameterType", options={"type":"string"})
     * @var string
     */
    public $q;
}
