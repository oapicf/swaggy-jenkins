<?php
declare(strict_types=1);

namespace App\DTO;

use Articus\DataTransfer\Annotation as DTA;

/**
 * Parameters for getComputer
 */
class GetComputerParameterData
{
    /**
     * Recursion depth in response model
     * @DTA\Data(subset="query", field="depth")
     * @DTA\Strategy(subset="query", name="QueryStringScalar", options={"type":"int"})
     * @DTA\Validator(subset="query", name="QueryStringScalar", options={"type":"int"})
     * @var int|null
     */
    public $depth;

}
