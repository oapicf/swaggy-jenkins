<?php
declare(strict_types=1);

namespace App\DTO;

use Articus\DataTransfer\Annotation as DTA;

/**
 */
class Hudson
{
    /**
     * @DTA\Data(field="_class", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"string"})
     * @var string|null
     */
    public $_class;

    /**
     * @DTA\Data(field="assignedLabels", nullable=true)
     * @DTA\Strategy(name="Object", options={"type":\App\DTO\Collection::class})
     * @DTA\Validator(name="TypeCompliant", options={"type":\App\DTO\Collection::class})
     * @var \App\DTO\Collection|null
     */
    public $assigned_labels;

    /**
     * @DTA\Data(field="mode", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"string"})
     * @var string|null
     */
    public $mode;

    /**
     * @DTA\Data(field="nodeDescription", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"string"})
     * @var string|null
     */
    public $node_description;

    /**
     * @DTA\Data(field="nodeName", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"string"})
     * @var string|null
     */
    public $node_name;

    /**
     * @DTA\Data(field="numExecutors", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"int"})
     * @var int|null
     */
    public $num_executors;

    /**
     * @DTA\Data(field="description", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"string"})
     * @var string|null
     */
    public $description;

    /**
     * @DTA\Data(field="jobs", nullable=true)
     * @DTA\Strategy(name="Object", options={"type":\App\DTO\Collection6::class})
     * @DTA\Validator(name="TypeCompliant", options={"type":\App\DTO\Collection6::class})
     * @var \App\DTO\Collection6|null
     */
    public $jobs;

    /**
     * @DTA\Data(field="primaryView", nullable=true)
     * @DTA\Strategy(name="Object", options={"type":\App\DTO\AllView::class})
     * @DTA\Validator(name="TypeCompliant", options={"type":\App\DTO\AllView::class})
     * @var \App\DTO\AllView|null
     */
    public $primary_view;

    /**
     * @DTA\Data(field="quietingDown", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"bool"})
     * @var bool|null
     */
    public $quieting_down;

    /**
     * @DTA\Data(field="slaveAgentPort", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"int"})
     * @var int|null
     */
    public $slave_agent_port;

    /**
     * @DTA\Data(field="unlabeledLoad", nullable=true)
     * @DTA\Strategy(name="Object", options={"type":\App\DTO\UnlabeledLoadStatistics::class})
     * @DTA\Validator(name="TypeCompliant", options={"type":\App\DTO\UnlabeledLoadStatistics::class})
     * @var \App\DTO\UnlabeledLoadStatistics|null
     */
    public $unlabeled_load;

    /**
     * @DTA\Data(field="useCrumbs", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"bool"})
     * @var bool|null
     */
    public $use_crumbs;

    /**
     * @DTA\Data(field="useSecurity", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"bool"})
     * @var bool|null
     */
    public $use_security;

    /**
     * @DTA\Data(field="views", nullable=true)
     * @DTA\Strategy(name="Object", options={"type":\App\DTO\Collection7::class})
     * @DTA\Validator(name="TypeCompliant", options={"type":\App\DTO\Collection7::class})
     * @var \App\DTO\Collection7|null
     */
    public $views;

}
