<?php

namespace App\DTO;

use Articus\DataTransfer\Annotation as DTA;

/**
 */
class GithubRepositorypermissions
{
    /**
     * @DTA\Data(field="admin", nullable=true)
     * @DTA\Validator(name="Type", options={"type":"bool"})
     * @var bool
     */
    public $admin;
    /**
     * @DTA\Data(field="push", nullable=true)
     * @DTA\Validator(name="Type", options={"type":"bool"})
     * @var bool
     */
    public $push;
    /**
     * @DTA\Data(field="pull", nullable=true)
     * @DTA\Validator(name="Type", options={"type":"bool"})
     * @var bool
     */
    public $pull;
    /**
     * @DTA\Data(field="_class", nullable=true)
     * @DTA\Validator(name="Type", options={"type":"string"})
     * @var string
     */
    public $_class;
}
