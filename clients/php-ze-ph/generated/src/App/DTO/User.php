<?php

namespace App\DTO;

use Articus\DataTransfer\Annotation as DTA;

/**
 */
class User
{
    /**
     * @DTA\Data(field="_class", nullable=true)
     * @DTA\Validator(name="Type", options={"type":"string"})
     * @var string
     */
    public $_class;
    /**
     * @DTA\Data(field="id", nullable=true)
     * @DTA\Validator(name="Type", options={"type":"string"})
     * @var string
     */
    public $id;
    /**
     * @DTA\Data(field="fullName", nullable=true)
     * @DTA\Validator(name="Type", options={"type":"string"})
     * @var string
     */
    public $full_name;
    /**
     * @DTA\Data(field="email", nullable=true)
     * @DTA\Validator(name="Type", options={"type":"string"})
     * @var string
     */
    public $email;
    /**
     * @DTA\Data(field="name", nullable=true)
     * @DTA\Validator(name="Type", options={"type":"string"})
     * @var string
     */
    public $name;
}
