<?php
/**
 * HudsonMasterComputer
 */
namespace app\Models;

/**
 * HudsonMasterComputer
 */
class HudsonMasterComputer {

    /** @var string $class */
    public $class = "";

    /** @var string $displayName */
    public $displayName = "";

    /** @var \app\Models\HudsonMasterComputerexecutors[] $executors */
    public $executors = [];

    /** @var string $icon */
    public $icon = "";

    /** @var string $iconClassName */
    public $iconClassName = "";

    /** @var bool $idle */
    public $idle = false;

    /** @var bool $jnlpAgent */
    public $jnlpAgent = false;

    /** @var bool $launchSupported */
    public $launchSupported = false;

    /** @var \app\Models\Label1 $loadStatistics */
    public $loadStatistics;

    /** @var bool $manualLaunchAllowed */
    public $manualLaunchAllowed = false;

    /** @var \app\Models\HudsonMasterComputermonitorData $monitorData */
    public $monitorData;

    /** @var int $numExecutors */
    public $numExecutors = 0;

    /** @var bool $offline */
    public $offline = false;

    /** @var string $offlineCause */
    public $offlineCause = "";

    /** @var string $offlineCauseReason */
    public $offlineCauseReason = "";

    /** @var bool $temporarilyOffline */
    public $temporarilyOffline = false;

}
