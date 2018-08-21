<?php

namespace App\DTO;

use Articus\DataTransfer\Annotation as DTA;

/**
 */
class SwapSpaceMonitorMemoryUsage2
{
    /**
     * @DTA\Data(field="_class", nullable=true)
     * @DTA\Validator(name="Type", options={"type":"string"})
     * @var string
     */
    public $_class;
    /**
     * @DTA\Data(field="availablePhysicalMemory", nullable=true)
     * @DTA\Validator(name="Type", options={"type":"int"})
     * @var int
     */
    public $available_physical_memory;
    /**
     * @DTA\Data(field="availableSwapSpace", nullable=true)
     * @DTA\Validator(name="Type", options={"type":"int"})
     * @var int
     */
    public $available_swap_space;
    /**
     * @DTA\Data(field="totalPhysicalMemory", nullable=true)
     * @DTA\Validator(name="Type", options={"type":"int"})
     * @var int
     */
    public $total_physical_memory;
    /**
     * @DTA\Data(field="totalSwapSpace", nullable=true)
     * @DTA\Validator(name="Type", options={"type":"int"})
     * @var int
     */
    public $total_swap_space;
}
