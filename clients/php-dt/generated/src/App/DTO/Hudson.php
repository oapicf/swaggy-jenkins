<?php
declare(strict_types=1);

namespace App\DTO;

use Articus\DataTransfer\Annotation as DTA;

class Hudson
{
    /**
     * @DTA\Data(field="_class", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"string"})
     */
    public ?string $_class = null;

    /**
     * @DTA\Data(field="assignedLabels", nullable=true)
     * @DTA\Strategy(name="Object", options={"type":\App\DTO\Collection::class})
     * @DTA\Validator(name="TypeCompliant", options={"type":\App\DTO\Collection::class})
     */
    public ?\App\DTO\Collection $assigned_labels = null;

    /**
     * @DTA\Data(field="mode", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"string"})
     */
    public ?string $mode = null;

    /**
     * @DTA\Data(field="nodeDescription", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"string"})
     */
    public ?string $node_description = null;

    /**
     * @DTA\Data(field="nodeName", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"string"})
     */
    public ?string $node_name = null;

    /**
     * @DTA\Data(field="numExecutors", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"int"})
     */
    public ?int $num_executors = null;

    /**
     * @DTA\Data(field="description", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"string"})
     */
    public ?string $description = null;

    /**
     * @DTA\Data(field="jobs", nullable=true)
     * @DTA\Strategy(name="Object", options={"type":\App\DTO\Collection6::class})
     * @DTA\Validator(name="TypeCompliant", options={"type":\App\DTO\Collection6::class})
     */
    public ?\App\DTO\Collection6 $jobs = null;

    /**
     * @DTA\Data(field="primaryView", nullable=true)
     * @DTA\Strategy(name="Object", options={"type":\App\DTO\AllView::class})
     * @DTA\Validator(name="TypeCompliant", options={"type":\App\DTO\AllView::class})
     */
    public ?\App\DTO\AllView $primary_view = null;

    /**
     * @DTA\Data(field="quietingDown", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"bool"})
     */
    public ?bool $quieting_down = null;

    /**
     * @DTA\Data(field="slaveAgentPort", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"int"})
     */
    public ?int $slave_agent_port = null;

    /**
     * @DTA\Data(field="unlabeledLoad", nullable=true)
     * @DTA\Strategy(name="Object", options={"type":\App\DTO\UnlabeledLoadStatistics::class})
     * @DTA\Validator(name="TypeCompliant", options={"type":\App\DTO\UnlabeledLoadStatistics::class})
     */
    public ?\App\DTO\UnlabeledLoadStatistics $unlabeled_load = null;

    /**
     * @DTA\Data(field="useCrumbs", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"bool"})
     */
    public ?bool $use_crumbs = null;

    /**
     * @DTA\Data(field="useSecurity", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"bool"})
     */
    public ?bool $use_security = null;

    /**
     * @DTA\Data(field="views", nullable=true)
     * @DTA\Strategy(name="Object", options={"type":\App\DTO\Collection7::class})
     * @DTA\Validator(name="TypeCompliant", options={"type":\App\DTO\Collection7::class})
     */
    public ?\App\DTO\Collection7 $views = null;

}
