<?php
declare(strict_types=1);

namespace App\DTO;

use Articus\DataTransfer\Annotation as DTA;

class HudsonMasterComputer
{
    /**
     * @DTA\Data(field="_class", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"string"})
     */
    public ?string $_class = null;

    /**
     * @DTA\Data(field="displayName", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"string"})
     */
    public ?string $display_name = null;

    /**
     * @DTA\Data(field="executors", nullable=true)
     * @DTA\Strategy(name="Object", options={"type":\App\DTO\Collection8::class})
     * @DTA\Validator(name="TypeCompliant", options={"type":\App\DTO\Collection8::class})
     */
    public ?\App\DTO\Collection8 $executors = null;

    /**
     * @DTA\Data(field="icon", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"string"})
     */
    public ?string $icon = null;

    /**
     * @DTA\Data(field="iconClassName", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"string"})
     */
    public ?string $icon_class_name = null;

    /**
     * @DTA\Data(field="idle", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"bool"})
     */
    public ?bool $idle = null;

    /**
     * @DTA\Data(field="jnlpAgent", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"bool"})
     */
    public ?bool $jnlp_agent = null;

    /**
     * @DTA\Data(field="launchSupported", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"bool"})
     */
    public ?bool $launch_supported = null;

    /**
     * @DTA\Data(field="loadStatistics", nullable=true)
     * @DTA\Strategy(name="Object", options={"type":\App\DTO\Label1::class})
     * @DTA\Validator(name="TypeCompliant", options={"type":\App\DTO\Label1::class})
     */
    public ?\App\DTO\Label1 $load_statistics = null;

    /**
     * @DTA\Data(field="manualLaunchAllowed", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"bool"})
     */
    public ?bool $manual_launch_allowed = null;

    /**
     * @DTA\Data(field="monitorData", nullable=true)
     * @DTA\Strategy(name="Object", options={"type":\App\DTO\HudsonMasterComputermonitorData::class})
     * @DTA\Validator(name="TypeCompliant", options={"type":\App\DTO\HudsonMasterComputermonitorData::class})
     */
    public ?\App\DTO\HudsonMasterComputermonitorData $monitor_data = null;

    /**
     * @DTA\Data(field="numExecutors", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"int"})
     */
    public ?int $num_executors = null;

    /**
     * @DTA\Data(field="offline", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"bool"})
     */
    public ?bool $offline = null;

    /**
     * @DTA\Data(field="offlineCause", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"string"})
     */
    public ?string $offline_cause = null;

    /**
     * @DTA\Data(field="offlineCauseReason", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"string"})
     */
    public ?string $offline_cause_reason = null;

    /**
     * @DTA\Data(field="temporarilyOffline", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"bool"})
     */
    public ?bool $temporarily_offline = null;

}
