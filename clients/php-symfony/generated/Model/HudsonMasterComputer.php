<?php
/**
 * HudsonMasterComputer
 *
 * PHP version 8.1.1
 *
 * @category Class
 * @package  OpenAPI\Server\Model
 * @author   OpenAPI Generator team
 * @link     https://github.com/openapitools/openapi-generator
 */

/**
 * Swaggy Jenkins
 *
 * Jenkins API clients generated from Swagger / Open API specification
 *
 * The version of the OpenAPI document: 2.0.1-pre.0
 * Contact: blah+oapicf@cliffano.com
 * Generated by: https://github.com/openapitools/openapi-generator.git
 *
 */

/**
 * NOTE: This class is auto generated by the openapi generator program.
 * https://github.com/openapitools/openapi-generator
 * Do not edit the class manually.
 */

namespace OpenAPI\Server\Model;

use Symfony\Component\Validator\Constraints as Assert;
use JMS\Serializer\Annotation\Type;
use JMS\Serializer\Annotation\Accessor;
use JMS\Serializer\Annotation\SerializedName;

/**
 * Class representing the HudsonMasterComputer model.
 *
 * @package OpenAPI\Server\Model
 * @author  OpenAPI Generator team
 */

class HudsonMasterComputer 
{
        /**
     * @var string|null
     * @SerializedName("_class")
     * @Assert\Type("string")
     * @Type("string")
     */
    protected ?string $class = null;

    /**
     * @var string|null
     * @SerializedName("displayName")
     * @Assert\Type("string")
     * @Type("string")
     */
    protected ?string $displayName = null;

    /**
     * @var HudsonMasterComputerexecutors[]|null
     * @SerializedName("executors")
     * @Assert\All({
     *   @Assert\Type("OpenAPI\Server\Model\HudsonMasterComputerexecutors")
     * })
     * @Type("array<OpenAPI\Server\Model\HudsonMasterComputerexecutors>")
     */
    protected ?array $executors = null;

    /**
     * @var string|null
     * @SerializedName("icon")
     * @Assert\Type("string")
     * @Type("string")
     */
    protected ?string $icon = null;

    /**
     * @var string|null
     * @SerializedName("iconClassName")
     * @Assert\Type("string")
     * @Type("string")
     */
    protected ?string $iconClassName = null;

    /**
     * @var bool|null
     * @SerializedName("idle")
     * @Assert\Type("bool")
     * @Type("bool")
     */
    protected ?bool $idle = null;

    /**
     * @var bool|null
     * @SerializedName("jnlpAgent")
     * @Assert\Type("bool")
     * @Type("bool")
     */
    protected ?bool $jnlpAgent = null;

    /**
     * @var bool|null
     * @SerializedName("launchSupported")
     * @Assert\Type("bool")
     * @Type("bool")
     */
    protected ?bool $launchSupported = null;

    /**
     * @var Label1|null
     * @SerializedName("loadStatistics")
     * @Assert\Type("OpenAPI\Server\Model\Label1")
     * @Type("OpenAPI\Server\Model\Label1")
     */
    protected ?Label1 $loadStatistics = null;

    /**
     * @var bool|null
     * @SerializedName("manualLaunchAllowed")
     * @Assert\Type("bool")
     * @Type("bool")
     */
    protected ?bool $manualLaunchAllowed = null;

    /**
     * @var HudsonMasterComputermonitorData|null
     * @SerializedName("monitorData")
     * @Assert\Type("OpenAPI\Server\Model\HudsonMasterComputermonitorData")
     * @Type("OpenAPI\Server\Model\HudsonMasterComputermonitorData")
     */
    protected ?HudsonMasterComputermonitorData $monitorData = null;

    /**
     * @var int|null
     * @SerializedName("numExecutors")
     * @Assert\Type("int")
     * @Type("int")
     */
    protected ?int $numExecutors = null;

    /**
     * @var bool|null
     * @SerializedName("offline")
     * @Assert\Type("bool")
     * @Type("bool")
     */
    protected ?bool $offline = null;

    /**
     * @var string|null
     * @SerializedName("offlineCause")
     * @Assert\Type("string")
     * @Type("string")
     */
    protected ?string $offlineCause = null;

    /**
     * @var string|null
     * @SerializedName("offlineCauseReason")
     * @Assert\Type("string")
     * @Type("string")
     */
    protected ?string $offlineCauseReason = null;

    /**
     * @var bool|null
     * @SerializedName("temporarilyOffline")
     * @Assert\Type("bool")
     * @Type("bool")
     */
    protected ?bool $temporarilyOffline = null;

    /**
     * Constructor
     * @param array|null $data Associated array of property values initializing the model
     */
    public function __construct(array $data = null)
    {
        if (is_array($data)) {
            $this->class = array_key_exists('class', $data) ? $data['class'] : $this->class;
            $this->displayName = array_key_exists('displayName', $data) ? $data['displayName'] : $this->displayName;
            $this->executors = array_key_exists('executors', $data) ? $data['executors'] : $this->executors;
            $this->icon = array_key_exists('icon', $data) ? $data['icon'] : $this->icon;
            $this->iconClassName = array_key_exists('iconClassName', $data) ? $data['iconClassName'] : $this->iconClassName;
            $this->idle = array_key_exists('idle', $data) ? $data['idle'] : $this->idle;
            $this->jnlpAgent = array_key_exists('jnlpAgent', $data) ? $data['jnlpAgent'] : $this->jnlpAgent;
            $this->launchSupported = array_key_exists('launchSupported', $data) ? $data['launchSupported'] : $this->launchSupported;
            $this->loadStatistics = array_key_exists('loadStatistics', $data) ? $data['loadStatistics'] : $this->loadStatistics;
            $this->manualLaunchAllowed = array_key_exists('manualLaunchAllowed', $data) ? $data['manualLaunchAllowed'] : $this->manualLaunchAllowed;
            $this->monitorData = array_key_exists('monitorData', $data) ? $data['monitorData'] : $this->monitorData;
            $this->numExecutors = array_key_exists('numExecutors', $data) ? $data['numExecutors'] : $this->numExecutors;
            $this->offline = array_key_exists('offline', $data) ? $data['offline'] : $this->offline;
            $this->offlineCause = array_key_exists('offlineCause', $data) ? $data['offlineCause'] : $this->offlineCause;
            $this->offlineCauseReason = array_key_exists('offlineCauseReason', $data) ? $data['offlineCauseReason'] : $this->offlineCauseReason;
            $this->temporarilyOffline = array_key_exists('temporarilyOffline', $data) ? $data['temporarilyOffline'] : $this->temporarilyOffline;
        }
    }

    /**
     * Gets class.
     *
     * @return string|null
     */
    public function getClass(): ?string
    {
        return $this->class;
    }



    /**
     * Sets class.
     *
     * @param string|null $class
     *
     * @return $this
     */
    public function setClass(?string $class = null): self
    {
        $this->class = $class;

        return $this;
    }

    /**
     * Gets displayName.
     *
     * @return string|null
     */
    public function getDisplayName(): ?string
    {
        return $this->displayName;
    }



    /**
     * Sets displayName.
     *
     * @param string|null $displayName
     *
     * @return $this
     */
    public function setDisplayName(?string $displayName = null): self
    {
        $this->displayName = $displayName;

        return $this;
    }

    /**
     * Gets executors.
     *
     * @return HudsonMasterComputerexecutors[]|null
     */
    public function getExecutors(): ?array
    {
        return $this->executors;
    }



    /**
     * Sets executors.
     *
     * @param HudsonMasterComputerexecutors[]|null $executors
     *
     * @return $this
     */
    public function setExecutors(?array $executors = null): self
    {
        $this->executors = $executors;

        return $this;
    }

    /**
     * Gets icon.
     *
     * @return string|null
     */
    public function getIcon(): ?string
    {
        return $this->icon;
    }



    /**
     * Sets icon.
     *
     * @param string|null $icon
     *
     * @return $this
     */
    public function setIcon(?string $icon = null): self
    {
        $this->icon = $icon;

        return $this;
    }

    /**
     * Gets iconClassName.
     *
     * @return string|null
     */
    public function getIconClassName(): ?string
    {
        return $this->iconClassName;
    }



    /**
     * Sets iconClassName.
     *
     * @param string|null $iconClassName
     *
     * @return $this
     */
    public function setIconClassName(?string $iconClassName = null): self
    {
        $this->iconClassName = $iconClassName;

        return $this;
    }

    /**
     * Gets idle.
     *
     * @return bool|null
     */
    public function isIdle(): ?bool
    {
        return $this->idle;
    }



    /**
     * Sets idle.
     *
     * @param bool|null $idle
     *
     * @return $this
     */
    public function setIdle(?bool $idle = null): self
    {
        $this->idle = $idle;

        return $this;
    }

    /**
     * Gets jnlpAgent.
     *
     * @return bool|null
     */
    public function isJnlpAgent(): ?bool
    {
        return $this->jnlpAgent;
    }



    /**
     * Sets jnlpAgent.
     *
     * @param bool|null $jnlpAgent
     *
     * @return $this
     */
    public function setJnlpAgent(?bool $jnlpAgent = null): self
    {
        $this->jnlpAgent = $jnlpAgent;

        return $this;
    }

    /**
     * Gets launchSupported.
     *
     * @return bool|null
     */
    public function isLaunchSupported(): ?bool
    {
        return $this->launchSupported;
    }



    /**
     * Sets launchSupported.
     *
     * @param bool|null $launchSupported
     *
     * @return $this
     */
    public function setLaunchSupported(?bool $launchSupported = null): self
    {
        $this->launchSupported = $launchSupported;

        return $this;
    }

    /**
     * Gets loadStatistics.
     *
     * @return Label1|null
     */
    public function getLoadStatistics(): ?Label1
    {
        return $this->loadStatistics;
    }



    /**
     * Sets loadStatistics.
     *
     * @param Label1|null $loadStatistics
     *
     * @return $this
     */
    public function setLoadStatistics(?Label1 $loadStatistics = null): self
    {
        $this->loadStatistics = $loadStatistics;

        return $this;
    }

    /**
     * Gets manualLaunchAllowed.
     *
     * @return bool|null
     */
    public function isManualLaunchAllowed(): ?bool
    {
        return $this->manualLaunchAllowed;
    }



    /**
     * Sets manualLaunchAllowed.
     *
     * @param bool|null $manualLaunchAllowed
     *
     * @return $this
     */
    public function setManualLaunchAllowed(?bool $manualLaunchAllowed = null): self
    {
        $this->manualLaunchAllowed = $manualLaunchAllowed;

        return $this;
    }

    /**
     * Gets monitorData.
     *
     * @return HudsonMasterComputermonitorData|null
     */
    public function getMonitorData(): ?HudsonMasterComputermonitorData
    {
        return $this->monitorData;
    }



    /**
     * Sets monitorData.
     *
     * @param HudsonMasterComputermonitorData|null $monitorData
     *
     * @return $this
     */
    public function setMonitorData(?HudsonMasterComputermonitorData $monitorData = null): self
    {
        $this->monitorData = $monitorData;

        return $this;
    }

    /**
     * Gets numExecutors.
     *
     * @return int|null
     */
    public function getNumExecutors(): ?int
    {
        return $this->numExecutors;
    }



    /**
     * Sets numExecutors.
     *
     * @param int|null $numExecutors
     *
     * @return $this
     */
    public function setNumExecutors(?int $numExecutors = null): self
    {
        $this->numExecutors = $numExecutors;

        return $this;
    }

    /**
     * Gets offline.
     *
     * @return bool|null
     */
    public function isOffline(): ?bool
    {
        return $this->offline;
    }



    /**
     * Sets offline.
     *
     * @param bool|null $offline
     *
     * @return $this
     */
    public function setOffline(?bool $offline = null): self
    {
        $this->offline = $offline;

        return $this;
    }

    /**
     * Gets offlineCause.
     *
     * @return string|null
     */
    public function getOfflineCause(): ?string
    {
        return $this->offlineCause;
    }



    /**
     * Sets offlineCause.
     *
     * @param string|null $offlineCause
     *
     * @return $this
     */
    public function setOfflineCause(?string $offlineCause = null): self
    {
        $this->offlineCause = $offlineCause;

        return $this;
    }

    /**
     * Gets offlineCauseReason.
     *
     * @return string|null
     */
    public function getOfflineCauseReason(): ?string
    {
        return $this->offlineCauseReason;
    }



    /**
     * Sets offlineCauseReason.
     *
     * @param string|null $offlineCauseReason
     *
     * @return $this
     */
    public function setOfflineCauseReason(?string $offlineCauseReason = null): self
    {
        $this->offlineCauseReason = $offlineCauseReason;

        return $this;
    }

    /**
     * Gets temporarilyOffline.
     *
     * @return bool|null
     */
    public function isTemporarilyOffline(): ?bool
    {
        return $this->temporarilyOffline;
    }



    /**
     * Sets temporarilyOffline.
     *
     * @param bool|null $temporarilyOffline
     *
     * @return $this
     */
    public function setTemporarilyOffline(?bool $temporarilyOffline = null): self
    {
        $this->temporarilyOffline = $temporarilyOffline;

        return $this;
    }
}


