<?php

namespace App\DTO;

use Articus\DataTransfer\Annotation as DTA;

/**
 */
class DiskSpaceMonitorDescriptorDiskSpace
{
    /**
     * @DTA\Data(field="_class", nullable=true)
     * @DTA\Validator(name="Type", options={"type":"string"})
     * @var string
     */
    public $_class;
    /**
     * @DTA\Data(field="timestamp", nullable=true)
     * @DTA\Validator(name="Type", options={"type":"int"})
     * @var int
     */
    public $timestamp;
    /**
     * @DTA\Data(field="path", nullable=true)
     * @DTA\Validator(name="Type", options={"type":"string"})
     * @var string
     */
    public $path;
    /**
     * @DTA\Data(field="size", nullable=true)
     * @DTA\Validator(name="Type", options={"type":"int"})
     * @var int
     */
    public $size;
}
