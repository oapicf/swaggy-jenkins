<?php
declare(strict_types=1);

namespace App\DTO;

use Articus\DataTransfer\Annotation as DTA;

/**
 */
class CauseAction
{
    /**
     * @DTA\Data(field="_class", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"string"})
     * @var string|null
     */
    public $_class;

    /**
     * @DTA\Data(field="causes", nullable=true)
     * @DTA\Strategy(name="Object", options={"type":\App\DTO\Collection88::class})
     * @DTA\Validator(name="TypeCompliant", options={"type":\App\DTO\Collection88::class})
     * @var \App\DTO\Collection88|null
     */
    public $causes;

}
