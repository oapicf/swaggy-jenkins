<?php

namespace App\DTO;

use Articus\DataTransfer\Annotation as DTA;

/**
 */
class GithubContent
{
    /**
     * @DTA\Data(field="name", nullable=true)
     * @DTA\Validator(name="Type", options={"type":"string"})
     * @var string
     */
    public $name;
    /**
     * @DTA\Data(field="sha", nullable=true)
     * @DTA\Validator(name="Type", options={"type":"string"})
     * @var string
     */
    public $sha;
    /**
     * @DTA\Data(field="_class", nullable=true)
     * @DTA\Validator(name="Type", options={"type":"string"})
     * @var string
     */
    public $_class;
    /**
     * @DTA\Data(field="repo", nullable=true)
     * @DTA\Validator(name="Type", options={"type":"string"})
     * @var string
     */
    public $repo;
    /**
     * @DTA\Data(field="size", nullable=true)
     * @DTA\Validator(name="Type", options={"type":"int"})
     * @var int
     */
    public $size;
    /**
     * @DTA\Data(field="owner", nullable=true)
     * @DTA\Validator(name="Type", options={"type":"string"})
     * @var string
     */
    public $owner;
    /**
     * @DTA\Data(field="path", nullable=true)
     * @DTA\Validator(name="Type", options={"type":"string"})
     * @var string
     */
    public $path;
    /**
     * @DTA\Data(field="base64Data", nullable=true)
     * @DTA\Validator(name="Type", options={"type":"string"})
     * @var string
     */
    public $base64_data;
}
