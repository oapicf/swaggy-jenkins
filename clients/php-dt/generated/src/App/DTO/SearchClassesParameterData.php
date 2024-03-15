<?php
declare(strict_types=1);

namespace App\DTO;

use Articus\DataTransfer\Annotation as DTA;

/**
 * Parameters for searchClasses
 */
class SearchClassesParameterData
{
    /**
     * Query string containing an array of class names
     * @DTA\Data(subset="query", field="q")
     * @DTA\Strategy(subset="query", name="QueryStringScalar", options={"type":"string"})
     * @DTA\Validator(subset="query", name="QueryStringScalar", options={"type":"string"})
     */
    public ?string $q = null;

}
