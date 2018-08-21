<?php

namespace App\DTO;

use Articus\DataTransfer\Annotation as DTA;

/**
 */
class CauseUserIdCause
{
    /**
     * @DTA\Data(field="_class", nullable=true)
     * @DTA\Validator(name="Type", options={"type":"string"})
     * @var string
     */
    public $_class;
    /**
     * @DTA\Data(field="shortDescription", nullable=true)
     * @DTA\Validator(name="Type", options={"type":"string"})
     * @var string
     */
    public $short_description;
    /**
     * @DTA\Data(field="userId", nullable=true)
     * @DTA\Validator(name="Type", options={"type":"string"})
     * @var string
     */
    public $user_id;
    /**
     * @DTA\Data(field="userName", nullable=true)
     * @DTA\Validator(name="Type", options={"type":"string"})
     * @var string
     */
    public $user_name;
}
