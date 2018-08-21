<?php

namespace App\DTO;

use Articus\DataTransfer\Annotation as DTA;

/**
 */
class PipelineBranchesitempullRequestlinks
{
    /**
     * @DTA\Data(field="self", nullable=true)
     * @DTA\Validator(name="Type", options={"type":"string"})
     * @var string
     */
    public $self;
    /**
     * @DTA\Data(field="_class", nullable=true)
     * @DTA\Validator(name="Type", options={"type":"string"})
     * @var string
     */
    public $_class;
}
