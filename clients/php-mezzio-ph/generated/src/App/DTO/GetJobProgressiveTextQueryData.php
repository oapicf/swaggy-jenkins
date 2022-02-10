<?php
declare(strict_types=1);

namespace App\DTO;

use Articus\DataTransfer\Annotation as DTA;

/**
 * Query parameters for getJobProgressiveText
 */
class GetJobProgressiveTextQueryData
{
    /**
     * Starting point of progressive text output
     * @DTA\Data(field="start")
     * @DTA\Strategy(name="QueryStringScalar", options={"type":"string"})
     * @DTA\Validator(name="QueryStringScalar", options={"type":"string"})
     * @var string|null
     */
    public $start;

}
