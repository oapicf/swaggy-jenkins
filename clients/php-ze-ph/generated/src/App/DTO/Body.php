<?php

namespace App\DTO;

use Articus\DataTransfer\Annotation as DTA;

/**
 */
class Body
{
    /**
     * @DTA\Data(field="favorite")
     * @DTA\Validator(name="Type", options={"type":"bool"})
     * @var bool
     */
    public $favorite;
}
