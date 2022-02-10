<?php
declare(strict_types=1);

namespace App\DTO;

use Articus\DataTransfer\Annotation as DTA;

/**
 */
class ExtensionClassImpl
{
    /**
     * @DTA\Data(field="_class", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"string"})
     * @var string|null
     */
    public $_class;

    /**
     * @DTA\Data(field="_links", nullable=true)
     * @DTA\Strategy(name="Object", options={"type":\App\DTO\ExtensionClassImpllinks::class})
     * @DTA\Validator(name="TypeCompliant", options={"type":\App\DTO\ExtensionClassImpllinks::class})
     * @var \App\DTO\ExtensionClassImpllinks|null
     */
    public $_links;

    /**
     * @DTA\Data(field="classes", nullable=true)
     * @DTA\Strategy(name="Object", options={"type":::class})
     * @DTA\Validator(name="TypeCompliant", options={"type":::class})
     * @var string[]|null
     */
    public $classes;

}
