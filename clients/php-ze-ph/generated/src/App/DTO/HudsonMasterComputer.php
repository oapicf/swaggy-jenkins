<?php

namespace App\DTO;

use Articus\DataTransfer\Annotation as DTA;

/**
 */
class HudsonMasterComputer
{
    /**
     * @DTA\Data(field="_class", nullable=true)
     * @DTA\Validator(name="Type", options={"type":"string"})
     * @var string
     */
    public $_class;
    /**
     * @DTA\Data(field="displayName", nullable=true)
     * @DTA\Validator(name="Type", options={"type":"string"})
     * @var string
     */
    public $display_name;
    /**
     * @DTA\Data(field="executors", nullable=true)
     * TODO check validator and strategy are correct and can handle container item type
     * @DTA\Strategy(name="ObjectArray", options={"type":\App\DTO\HudsonMasterComputerexecutors::class})
     * @DTA\Validator(name="Collection", options={"validators":{
     *     {"name":"Dictionary", "options":{"type":\App\DTO\HudsonMasterComputerexecutors::class}}
     * }})
     * @var \App\DTO\HudsonMasterComputerexecutors[]
     */
    public $executors;
    /**
     * @DTA\Data(field="icon", nullable=true)
     * @DTA\Validator(name="Type", options={"type":"string"})
     * @var string
     */
    public $icon;
    /**
     * @DTA\Data(field="iconClassName", nullable=true)
     * @DTA\Validator(name="Type", options={"type":"string"})
     * @var string
     */
    public $icon_class_name;
    /**
     * @DTA\Data(field="idle", nullable=true)
     * @DTA\Validator(name="Type", options={"type":"bool"})
     * @var bool
     */
    public $idle;
    /**
     * @DTA\Data(field="jnlpAgent", nullable=true)
     * @DTA\Validator(name="Type", options={"type":"bool"})
     * @var bool
     */
    public $jnlp_agent;
    /**
     * @DTA\Data(field="launchSupported", nullable=true)
     * @DTA\Validator(name="Type", options={"type":"bool"})
     * @var bool
     */
    public $launch_supported;
    /**
     * @DTA\Data(field="loadStatistics", nullable=true)
     * @DTA\Strategy(name="Object", options={"type":\App\DTO\Label1::class})
     * @DTA\Validator(name="Dictionary", options={"type":\App\DTO\Label1::class})
     * @var \App\DTO\Label1
     */
    public $load_statistics;
    /**
     * @DTA\Data(field="manualLaunchAllowed", nullable=true)
     * @DTA\Validator(name="Type", options={"type":"bool"})
     * @var bool
     */
    public $manual_launch_allowed;
    /**
     * @DTA\Data(field="monitorData", nullable=true)
     * @DTA\Strategy(name="Object", options={"type":\App\DTO\HudsonMasterComputermonitorData::class})
     * @DTA\Validator(name="Dictionary", options={"type":\App\DTO\HudsonMasterComputermonitorData::class})
     * @var \App\DTO\HudsonMasterComputermonitorData
     */
    public $monitor_data;
    /**
     * @DTA\Data(field="numExecutors", nullable=true)
     * @DTA\Validator(name="Type", options={"type":"int"})
     * @var int
     */
    public $num_executors;
    /**
     * @DTA\Data(field="offline", nullable=true)
     * @DTA\Validator(name="Type", options={"type":"bool"})
     * @var bool
     */
    public $offline;
    /**
     * @DTA\Data(field="offlineCause", nullable=true)
     * @DTA\Validator(name="Type", options={"type":"string"})
     * @var string
     */
    public $offline_cause;
    /**
     * @DTA\Data(field="offlineCauseReason", nullable=true)
     * @DTA\Validator(name="Type", options={"type":"string"})
     * @var string
     */
    public $offline_cause_reason;
    /**
     * @DTA\Data(field="temporarilyOffline", nullable=true)
     * @DTA\Validator(name="Type", options={"type":"bool"})
     * @var bool
     */
    public $temporarily_offline;
}
