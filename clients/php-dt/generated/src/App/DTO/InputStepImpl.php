<?php
declare(strict_types=1);

namespace App\DTO;

use Articus\DataTransfer\Annotation as DTA;

class InputStepImpl
{
    /**
     * @DTA\Data(field="_class", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"string"})
     */
    public ?string $_class = null;

    /**
     * @DTA\Data(field="_links", nullable=true)
     * @DTA\Strategy(name="Object", options={"type":\App\DTO\InputStepImpllinks::class})
     * @DTA\Validator(name="TypeCompliant", options={"type":\App\DTO\InputStepImpllinks::class})
     */
    public ?\App\DTO\InputStepImpllinks $_links = null;

    /**
     * @DTA\Data(field="id", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"string"})
     */
    public ?string $id = null;

    /**
     * @DTA\Data(field="message", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"string"})
     */
    public ?string $message = null;

    /**
     * @DTA\Data(field="ok", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"string"})
     */
    public ?string $ok = null;

    /**
     * @DTA\Data(field="parameters", nullable=true)
     * @DTA\Strategy(name="Object", options={"type":\App\DTO\Collection25::class})
     * @DTA\Validator(name="TypeCompliant", options={"type":\App\DTO\Collection25::class})
     */
    public ?\App\DTO\Collection25 $parameters = null;

    /**
     * @DTA\Data(field="submitter", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"string"})
     */
    public ?string $submitter = null;

}
