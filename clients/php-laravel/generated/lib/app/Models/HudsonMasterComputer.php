<?php
/**
 * HudsonMasterComputer
 */
namespace app\Models;

/**
 * HudsonMasterComputer
 */
class HudsonMasterComputer {

    /** @var string $_class */
    private $_class;

    /** @var string $display_name */
    private $display_name;

    /** @var \app\Models\HudsonMasterComputerexecutors[] $executors */
    private $executors;

    /** @var string $icon */
    private $icon;

    /** @var string $icon_class_name */
    private $icon_class_name;

    /** @var bool $idle */
    private $idle;

    /** @var bool $jnlp_agent */
    private $jnlp_agent;

    /** @var bool $launch_supported */
    private $launch_supported;

    /** @var \app\Models\Label1 $load_statistics */
    private $load_statistics;

    /** @var bool $manual_launch_allowed */
    private $manual_launch_allowed;

    /** @var \app\Models\HudsonMasterComputermonitorData $monitor_data */
    private $monitor_data;

    /** @var int $num_executors */
    private $num_executors;

    /** @var bool $offline */
    private $offline;

    /** @var string $offline_cause */
    private $offline_cause;

    /** @var string $offline_cause_reason */
    private $offline_cause_reason;

    /** @var bool $temporarily_offline */
    private $temporarily_offline;

}
