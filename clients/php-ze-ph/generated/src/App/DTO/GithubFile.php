<?php

namespace App\DTO;

use Articus\DataTransfer\Annotation as DTA;

/**
 */
class GithubFile
{
    /**
     * @DTA\Data(field="content", nullable=true)
     * @DTA\Strategy(name="Object", options={"type":\App\DTO\GithubContent::class})
     * @DTA\Validator(name="Dictionary", options={"type":\App\DTO\GithubContent::class})
     * @var \App\DTO\GithubContent
     */
    public $content;
    /**
     * @DTA\Data(field="_class", nullable=true)
     * @DTA\Validator(name="Type", options={"type":"string"})
     * @var string
     */
    public $_class;
}
