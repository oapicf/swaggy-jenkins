<?php

namespace App\DTO;

use Articus\DataTransfer\Annotation as DTA;

/**
 * Query parameters for getComputer
 */
class GetComputerQueryData
{
    /**
     * Recursion depth in response model
     * @DTA\Data(field="depth")
     * @DTA\Strategy(name="QueryParameter", options={"type":"int"})
     * @DTA\Validator(name="QueryParameterType", options={"type":"int"})
     * @var int
     */
    public $depth;
}
