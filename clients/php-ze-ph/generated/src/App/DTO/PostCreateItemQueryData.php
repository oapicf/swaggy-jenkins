<?php

namespace App\DTO;

use Articus\DataTransfer\Annotation as DTA;

/**
 * Query parameters for postCreateItem
 */
class PostCreateItemQueryData
{
    /**
     * Set to &#39;copy&#39; for copying an existing job
     * @DTA\Data(field="mode", nullable=true)
     * @DTA\Strategy(name="QueryParameter", options={"type":"string"})
     * @DTA\Validator(name="QueryParameterType", options={"type":"string"})
     * @var string
     */
    public $mode;
    /**
     * Name of the new job
     * @DTA\Data(field="name")
     * @DTA\Strategy(name="QueryParameter", options={"type":"string"})
     * @DTA\Validator(name="QueryParameterType", options={"type":"string"})
     * @var string
     */
    public $name;
    /**
     * Existing job to copy from
     * @DTA\Data(field="from", nullable=true)
     * @DTA\Strategy(name="QueryParameter", options={"type":"string"})
     * @DTA\Validator(name="QueryParameterType", options={"type":"string"})
     * @var string
     */
    public $from;
}
