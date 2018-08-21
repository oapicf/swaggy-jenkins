<?php

namespace App\DTO;

use Articus\DataTransfer\Annotation as DTA;

/**
 * Query parameters for postCreateView
 */
class PostCreateViewQueryData
{
    /**
     * Name of the new view
     * @DTA\Data(field="name")
     * @DTA\Strategy(name="QueryParameter", options={"type":"string"})
     * @DTA\Validator(name="QueryParameterType", options={"type":"string"})
     * @var string
     */
    public $name;
}
