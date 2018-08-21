<?php

namespace App\DTO;

use Articus\DataTransfer\Annotation as DTA;

/**
 */
class BranchImplpermissions
{
    /**
     * @DTA\Data(field="create", nullable=true)
     * @DTA\Validator(name="Type", options={"type":"bool"})
     * @var bool
     */
    public $create;
    /**
     * @DTA\Data(field="read", nullable=true)
     * @DTA\Validator(name="Type", options={"type":"bool"})
     * @var bool
     */
    public $read;
    /**
     * @DTA\Data(field="start", nullable=true)
     * @DTA\Validator(name="Type", options={"type":"bool"})
     * @var bool
     */
    public $start;
    /**
     * @DTA\Data(field="stop", nullable=true)
     * @DTA\Validator(name="Type", options={"type":"bool"})
     * @var bool
     */
    public $stop;
    /**
     * @DTA\Data(field="_class", nullable=true)
     * @DTA\Validator(name="Type", options={"type":"string"})
     * @var string
     */
    public $_class;
}
