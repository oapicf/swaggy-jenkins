<?php
declare(strict_types=1);

namespace App\DTO;

use Articus\DataTransfer\Annotation as DTA;

/**
 */
class HudsonMasterComputer
{
    /**
     * @DTA\Data(field="_class", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"string"})
     * @var string|null
     */
    public $_class;

    /**
     * @DTA\Data(field="displayName", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"string"})
     * @var string|null
     */
    public $display_name;

    /**
     * @DTA\Data(field="executors", nullable=true)
     * @DTA\Strategy(name="Object", options={"type":\App\DTO\Collection8::class})
     * @DTA\Validator(name="TypeCompliant", options={"type":\App\DTO\Collection8::class})
     * @var \App\DTO\Collection8|null
     */
    public $executors;

    /**
     * @DTA\Data(field="icon", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"string"})
     * @var string|null
     */
    public $icon;

    /**
     * @DTA\Data(field="iconClassName", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"string"})
     * @var string|null
     */
    public $icon_class_name;

    /**
     * @DTA\Data(field="idle", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"bool"})
     * @var bool|null
     */
    public $idle;

    /**
     * @DTA\Data(field="jnlpAgent", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"bool"})
     * @var bool|null
     */
    public $jnlp_agent;

    /**
     * @DTA\Data(field="launchSupported", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"bool"})
     * @var bool|null
     */
    public $launch_supported;

    /**
     * @DTA\Data(field="loadStatistics", nullable=true)
     * @DTA\Strategy(name="Object", options={"type":\App\DTO\Label1::class})
     * @DTA\Validator(name="TypeCompliant", options={"type":\App\DTO\Label1::class})
     * @var \App\DTO\Label1|null
     */
    public $load_statistics;

    /**
     * @DTA\Data(field="manualLaunchAllowed", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"bool"})
     * @var bool|null
     */
    public $manual_launch_allowed;

    /**
     * @DTA\Data(field="monitorData", nullable=true)
     * @DTA\Strategy(name="Object", options={"type":\App\DTO\HudsonMasterComputermonitorData::class})
     * @DTA\Validator(name="TypeCompliant", options={"type":\App\DTO\HudsonMasterComputermonitorData::class})
     * @var \App\DTO\HudsonMasterComputermonitorData|null
     */
    public $monitor_data;

    /**
     * @DTA\Data(field="numExecutors", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"int"})
     * @var int|null
     */
    public $num_executors;

    /**
     * @DTA\Data(field="offline", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"bool"})
     * @var bool|null
     */
    public $offline;

    /**
     * @DTA\Data(field="offlineCause", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"string"})
     * @var string|null
     */
    public $offline_cause;

    /**
     * @DTA\Data(field="offlineCauseReason", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"string"})
     * @var string|null
     */
    public $offline_cause_reason;

    /**
     * @DTA\Data(field="temporarilyOffline", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"bool"})
     * @var bool|null
     */
    public $temporarily_offline;

}
