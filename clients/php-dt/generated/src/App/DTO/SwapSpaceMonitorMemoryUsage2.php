<?php
declare(strict_types=1);

namespace App\DTO;

use Articus\DataTransfer\Annotation as DTA;

class SwapSpaceMonitorMemoryUsage2
{
    /**
     * @DTA\Data(field="_class", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"string"})
     */
    public ?string $_class = null;

    /**
     * @DTA\Data(field="availablePhysicalMemory", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"int"})
     */
    public ?int $available_physical_memory = null;

    /**
     * @DTA\Data(field="availableSwapSpace", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"int"})
     */
    public ?int $available_swap_space = null;

    /**
     * @DTA\Data(field="totalPhysicalMemory", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"int"})
     */
    public ?int $total_physical_memory = null;

    /**
     * @DTA\Data(field="totalSwapSpace", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"int"})
     */
    public ?int $total_swap_space = null;

}
