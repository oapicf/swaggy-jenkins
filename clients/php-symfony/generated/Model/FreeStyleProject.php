<?php
/**
 * FreeStyleProject
 *
 * PHP version 5
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
 * OpenAPI spec version: 1.1.1
 * Contact: blah@cliffano.com
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
use JMS\Serializer\Annotation\SerializedName;

/**
 * Class representing the FreeStyleProject model.
 *
 * @package OpenAPI\Server\Model
 * @author  OpenAPI Generator team
 */
class FreeStyleProject 
{
        /**
     * @var string|null
     * @SerializedName("_class")
     * @Assert\Type("string")
     * @Type("string")
     */
    protected $class;

    /**
     * @var string|null
     * @SerializedName("name")
     * @Assert\Type("string")
     * @Type("string")
     */
    protected $name;

    /**
     * @var string|null
     * @SerializedName("url")
     * @Assert\Type("string")
     * @Type("string")
     */
    protected $url;

    /**
     * @var string|null
     * @SerializedName("color")
     * @Assert\Type("string")
     * @Type("string")
     */
    protected $color;

    /**
     * @var OpenAPI\Server\Model\FreeStyleProjectactions[]|null
     * @SerializedName("actions")
     * @Assert\All({
     *   @Assert\Type("OpenAPI\Server\Model\FreeStyleProjectactions")
     * })
     * @Type("array<OpenAPI\Server\Model\FreeStyleProjectactions>")
     */
    protected $actions;

    /**
     * @var string|null
     * @SerializedName("description")
     * @Assert\Type("string")
     * @Type("string")
     */
    protected $description;

    /**
     * @var string|null
     * @SerializedName("displayName")
     * @Assert\Type("string")
     * @Type("string")
     */
    protected $displayName;

    /**
     * @var string|null
     * @SerializedName("displayNameOrNull")
     * @Assert\Type("string")
     * @Type("string")
     */
    protected $displayNameOrNull;

    /**
     * @var string|null
     * @SerializedName("fullDisplayName")
     * @Assert\Type("string")
     * @Type("string")
     */
    protected $fullDisplayName;

    /**
     * @var string|null
     * @SerializedName("fullName")
     * @Assert\Type("string")
     * @Type("string")
     */
    protected $fullName;

    /**
     * @var bool|null
     * @SerializedName("buildable")
     * @Assert\Type("bool")
     * @Type("bool")
     */
    protected $buildable;

    /**
     * @var OpenAPI\Server\Model\FreeStyleBuild[]|null
     * @SerializedName("builds")
     * @Assert\All({
     *   @Assert\Type("OpenAPI\Server\Model\FreeStyleBuild")
     * })
     * @Type("array<OpenAPI\Server\Model\FreeStyleBuild>")
     */
    protected $builds;

    /**
     * @var OpenAPI\Server\Model\FreeStyleBuild|null
     * @SerializedName("firstBuild")
     * @Assert\Type("OpenAPI\Server\Model\FreeStyleBuild")
     * @Type("OpenAPI\Server\Model\FreeStyleBuild")
     */
    protected $firstBuild;

    /**
     * @var OpenAPI\Server\Model\FreeStyleProjecthealthReport[]|null
     * @SerializedName("healthReport")
     * @Assert\All({
     *   @Assert\Type("OpenAPI\Server\Model\FreeStyleProjecthealthReport")
     * })
     * @Type("array<OpenAPI\Server\Model\FreeStyleProjecthealthReport>")
     */
    protected $healthReport;

    /**
     * @var bool|null
     * @SerializedName("inQueue")
     * @Assert\Type("bool")
     * @Type("bool")
     */
    protected $inQueue;

    /**
     * @var bool|null
     * @SerializedName("keepDependencies")
     * @Assert\Type("bool")
     * @Type("bool")
     */
    protected $keepDependencies;

    /**
     * @var OpenAPI\Server\Model\FreeStyleBuild|null
     * @SerializedName("lastBuild")
     * @Assert\Type("OpenAPI\Server\Model\FreeStyleBuild")
     * @Type("OpenAPI\Server\Model\FreeStyleBuild")
     */
    protected $lastBuild;

    /**
     * @var OpenAPI\Server\Model\FreeStyleBuild|null
     * @SerializedName("lastCompletedBuild")
     * @Assert\Type("OpenAPI\Server\Model\FreeStyleBuild")
     * @Type("OpenAPI\Server\Model\FreeStyleBuild")
     */
    protected $lastCompletedBuild;

    /**
     * @var string|null
     * @SerializedName("lastFailedBuild")
     * @Assert\Type("string")
     * @Type("string")
     */
    protected $lastFailedBuild;

    /**
     * @var OpenAPI\Server\Model\FreeStyleBuild|null
     * @SerializedName("lastStableBuild")
     * @Assert\Type("OpenAPI\Server\Model\FreeStyleBuild")
     * @Type("OpenAPI\Server\Model\FreeStyleBuild")
     */
    protected $lastStableBuild;

    /**
     * @var OpenAPI\Server\Model\FreeStyleBuild|null
     * @SerializedName("lastSuccessfulBuild")
     * @Assert\Type("OpenAPI\Server\Model\FreeStyleBuild")
     * @Type("OpenAPI\Server\Model\FreeStyleBuild")
     */
    protected $lastSuccessfulBuild;

    /**
     * @var string|null
     * @SerializedName("lastUnstableBuild")
     * @Assert\Type("string")
     * @Type("string")
     */
    protected $lastUnstableBuild;

    /**
     * @var string|null
     * @SerializedName("lastUnsuccessfulBuild")
     * @Assert\Type("string")
     * @Type("string")
     */
    protected $lastUnsuccessfulBuild;

    /**
     * @var int|null
     * @SerializedName("nextBuildNumber")
     * @Assert\Type("int")
     * @Type("int")
     */
    protected $nextBuildNumber;

    /**
     * @var string|null
     * @SerializedName("queueItem")
     * @Assert\Type("string")
     * @Type("string")
     */
    protected $queueItem;

    /**
     * @var bool|null
     * @SerializedName("concurrentBuild")
     * @Assert\Type("bool")
     * @Type("bool")
     */
    protected $concurrentBuild;

    /**
     * @var OpenAPI\Server\Model\NullSCM|null
     * @SerializedName("scm")
     * @Assert\Type("OpenAPI\Server\Model\NullSCM")
     * @Type("OpenAPI\Server\Model\NullSCM")
     */
    protected $scm;

    /**
     * Constructor
     * @param mixed[] $data Associated array of property values initializing the model
     */
    public function __construct(array $data = null)
    {
        $this->class = isset($data['class']) ? $data['class'] : null;
        $this->name = isset($data['name']) ? $data['name'] : null;
        $this->url = isset($data['url']) ? $data['url'] : null;
        $this->color = isset($data['color']) ? $data['color'] : null;
        $this->actions = isset($data['actions']) ? $data['actions'] : null;
        $this->description = isset($data['description']) ? $data['description'] : null;
        $this->displayName = isset($data['displayName']) ? $data['displayName'] : null;
        $this->displayNameOrNull = isset($data['displayNameOrNull']) ? $data['displayNameOrNull'] : null;
        $this->fullDisplayName = isset($data['fullDisplayName']) ? $data['fullDisplayName'] : null;
        $this->fullName = isset($data['fullName']) ? $data['fullName'] : null;
        $this->buildable = isset($data['buildable']) ? $data['buildable'] : null;
        $this->builds = isset($data['builds']) ? $data['builds'] : null;
        $this->firstBuild = isset($data['firstBuild']) ? $data['firstBuild'] : null;
        $this->healthReport = isset($data['healthReport']) ? $data['healthReport'] : null;
        $this->inQueue = isset($data['inQueue']) ? $data['inQueue'] : null;
        $this->keepDependencies = isset($data['keepDependencies']) ? $data['keepDependencies'] : null;
        $this->lastBuild = isset($data['lastBuild']) ? $data['lastBuild'] : null;
        $this->lastCompletedBuild = isset($data['lastCompletedBuild']) ? $data['lastCompletedBuild'] : null;
        $this->lastFailedBuild = isset($data['lastFailedBuild']) ? $data['lastFailedBuild'] : null;
        $this->lastStableBuild = isset($data['lastStableBuild']) ? $data['lastStableBuild'] : null;
        $this->lastSuccessfulBuild = isset($data['lastSuccessfulBuild']) ? $data['lastSuccessfulBuild'] : null;
        $this->lastUnstableBuild = isset($data['lastUnstableBuild']) ? $data['lastUnstableBuild'] : null;
        $this->lastUnsuccessfulBuild = isset($data['lastUnsuccessfulBuild']) ? $data['lastUnsuccessfulBuild'] : null;
        $this->nextBuildNumber = isset($data['nextBuildNumber']) ? $data['nextBuildNumber'] : null;
        $this->queueItem = isset($data['queueItem']) ? $data['queueItem'] : null;
        $this->concurrentBuild = isset($data['concurrentBuild']) ? $data['concurrentBuild'] : null;
        $this->scm = isset($data['scm']) ? $data['scm'] : null;
    }

    /**
     * Gets class.
     *
     * @return string|null
     */
    public function getClass()
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
    public function setClass($class = null)
    {
        $this->class = $class;

        return $this;
    }

    /**
     * Gets name.
     *
     * @return string|null
     */
    public function getName()
    {
        return $this->name;
    }

    /**
     * Sets name.
     *
     * @param string|null $name
     *
     * @return $this
     */
    public function setName($name = null)
    {
        $this->name = $name;

        return $this;
    }

    /**
     * Gets url.
     *
     * @return string|null
     */
    public function getUrl()
    {
        return $this->url;
    }

    /**
     * Sets url.
     *
     * @param string|null $url
     *
     * @return $this
     */
    public function setUrl($url = null)
    {
        $this->url = $url;

        return $this;
    }

    /**
     * Gets color.
     *
     * @return string|null
     */
    public function getColor()
    {
        return $this->color;
    }

    /**
     * Sets color.
     *
     * @param string|null $color
     *
     * @return $this
     */
    public function setColor($color = null)
    {
        $this->color = $color;

        return $this;
    }

    /**
     * Gets actions.
     *
     * @return OpenAPI\Server\Model\FreeStyleProjectactions[]|null
     */
    public function getActions()
    {
        return $this->actions;
    }

    /**
     * Sets actions.
     *
     * @param OpenAPI\Server\Model\FreeStyleProjectactions[]|null $actions
     *
     * @return $this
     */
    public function setActions(FreeStyleProjectactions $actions = null)
    {
        $this->actions = $actions;

        return $this;
    }

    /**
     * Gets description.
     *
     * @return string|null
     */
    public function getDescription()
    {
        return $this->description;
    }

    /**
     * Sets description.
     *
     * @param string|null $description
     *
     * @return $this
     */
    public function setDescription($description = null)
    {
        $this->description = $description;

        return $this;
    }

    /**
     * Gets displayName.
     *
     * @return string|null
     */
    public function getDisplayName()
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
    public function setDisplayName($displayName = null)
    {
        $this->displayName = $displayName;

        return $this;
    }

    /**
     * Gets displayNameOrNull.
     *
     * @return string|null
     */
    public function getDisplayNameOrNull()
    {
        return $this->displayNameOrNull;
    }

    /**
     * Sets displayNameOrNull.
     *
     * @param string|null $displayNameOrNull
     *
     * @return $this
     */
    public function setDisplayNameOrNull($displayNameOrNull = null)
    {
        $this->displayNameOrNull = $displayNameOrNull;

        return $this;
    }

    /**
     * Gets fullDisplayName.
     *
     * @return string|null
     */
    public function getFullDisplayName()
    {
        return $this->fullDisplayName;
    }

    /**
     * Sets fullDisplayName.
     *
     * @param string|null $fullDisplayName
     *
     * @return $this
     */
    public function setFullDisplayName($fullDisplayName = null)
    {
        $this->fullDisplayName = $fullDisplayName;

        return $this;
    }

    /**
     * Gets fullName.
     *
     * @return string|null
     */
    public function getFullName()
    {
        return $this->fullName;
    }

    /**
     * Sets fullName.
     *
     * @param string|null $fullName
     *
     * @return $this
     */
    public function setFullName($fullName = null)
    {
        $this->fullName = $fullName;

        return $this;
    }

    /**
     * Gets buildable.
     *
     * @return bool|null
     */
    public function isBuildable()
    {
        return $this->buildable;
    }

    /**
     * Sets buildable.
     *
     * @param bool|null $buildable
     *
     * @return $this
     */
    public function setBuildable($buildable = null)
    {
        $this->buildable = $buildable;

        return $this;
    }

    /**
     * Gets builds.
     *
     * @return OpenAPI\Server\Model\FreeStyleBuild[]|null
     */
    public function getBuilds()
    {
        return $this->builds;
    }

    /**
     * Sets builds.
     *
     * @param OpenAPI\Server\Model\FreeStyleBuild[]|null $builds
     *
     * @return $this
     */
    public function setBuilds(FreeStyleBuild $builds = null)
    {
        $this->builds = $builds;

        return $this;
    }

    /**
     * Gets firstBuild.
     *
     * @return OpenAPI\Server\Model\FreeStyleBuild|null
     */
    public function getFirstBuild()
    {
        return $this->firstBuild;
    }

    /**
     * Sets firstBuild.
     *
     * @param OpenAPI\Server\Model\FreeStyleBuild|null $firstBuild
     *
     * @return $this
     */
    public function setFirstBuild(FreeStyleBuild $firstBuild = null)
    {
        $this->firstBuild = $firstBuild;

        return $this;
    }

    /**
     * Gets healthReport.
     *
     * @return OpenAPI\Server\Model\FreeStyleProjecthealthReport[]|null
     */
    public function getHealthReport()
    {
        return $this->healthReport;
    }

    /**
     * Sets healthReport.
     *
     * @param OpenAPI\Server\Model\FreeStyleProjecthealthReport[]|null $healthReport
     *
     * @return $this
     */
    public function setHealthReport(FreeStyleProjecthealthReport $healthReport = null)
    {
        $this->healthReport = $healthReport;

        return $this;
    }

    /**
     * Gets inQueue.
     *
     * @return bool|null
     */
    public function isInQueue()
    {
        return $this->inQueue;
    }

    /**
     * Sets inQueue.
     *
     * @param bool|null $inQueue
     *
     * @return $this
     */
    public function setInQueue($inQueue = null)
    {
        $this->inQueue = $inQueue;

        return $this;
    }

    /**
     * Gets keepDependencies.
     *
     * @return bool|null
     */
    public function isKeepDependencies()
    {
        return $this->keepDependencies;
    }

    /**
     * Sets keepDependencies.
     *
     * @param bool|null $keepDependencies
     *
     * @return $this
     */
    public function setKeepDependencies($keepDependencies = null)
    {
        $this->keepDependencies = $keepDependencies;

        return $this;
    }

    /**
     * Gets lastBuild.
     *
     * @return OpenAPI\Server\Model\FreeStyleBuild|null
     */
    public function getLastBuild()
    {
        return $this->lastBuild;
    }

    /**
     * Sets lastBuild.
     *
     * @param OpenAPI\Server\Model\FreeStyleBuild|null $lastBuild
     *
     * @return $this
     */
    public function setLastBuild(FreeStyleBuild $lastBuild = null)
    {
        $this->lastBuild = $lastBuild;

        return $this;
    }

    /**
     * Gets lastCompletedBuild.
     *
     * @return OpenAPI\Server\Model\FreeStyleBuild|null
     */
    public function getLastCompletedBuild()
    {
        return $this->lastCompletedBuild;
    }

    /**
     * Sets lastCompletedBuild.
     *
     * @param OpenAPI\Server\Model\FreeStyleBuild|null $lastCompletedBuild
     *
     * @return $this
     */
    public function setLastCompletedBuild(FreeStyleBuild $lastCompletedBuild = null)
    {
        $this->lastCompletedBuild = $lastCompletedBuild;

        return $this;
    }

    /**
     * Gets lastFailedBuild.
     *
     * @return string|null
     */
    public function getLastFailedBuild()
    {
        return $this->lastFailedBuild;
    }

    /**
     * Sets lastFailedBuild.
     *
     * @param string|null $lastFailedBuild
     *
     * @return $this
     */
    public function setLastFailedBuild($lastFailedBuild = null)
    {
        $this->lastFailedBuild = $lastFailedBuild;

        return $this;
    }

    /**
     * Gets lastStableBuild.
     *
     * @return OpenAPI\Server\Model\FreeStyleBuild|null
     */
    public function getLastStableBuild()
    {
        return $this->lastStableBuild;
    }

    /**
     * Sets lastStableBuild.
     *
     * @param OpenAPI\Server\Model\FreeStyleBuild|null $lastStableBuild
     *
     * @return $this
     */
    public function setLastStableBuild(FreeStyleBuild $lastStableBuild = null)
    {
        $this->lastStableBuild = $lastStableBuild;

        return $this;
    }

    /**
     * Gets lastSuccessfulBuild.
     *
     * @return OpenAPI\Server\Model\FreeStyleBuild|null
     */
    public function getLastSuccessfulBuild()
    {
        return $this->lastSuccessfulBuild;
    }

    /**
     * Sets lastSuccessfulBuild.
     *
     * @param OpenAPI\Server\Model\FreeStyleBuild|null $lastSuccessfulBuild
     *
     * @return $this
     */
    public function setLastSuccessfulBuild(FreeStyleBuild $lastSuccessfulBuild = null)
    {
        $this->lastSuccessfulBuild = $lastSuccessfulBuild;

        return $this;
    }

    /**
     * Gets lastUnstableBuild.
     *
     * @return string|null
     */
    public function getLastUnstableBuild()
    {
        return $this->lastUnstableBuild;
    }

    /**
     * Sets lastUnstableBuild.
     *
     * @param string|null $lastUnstableBuild
     *
     * @return $this
     */
    public function setLastUnstableBuild($lastUnstableBuild = null)
    {
        $this->lastUnstableBuild = $lastUnstableBuild;

        return $this;
    }

    /**
     * Gets lastUnsuccessfulBuild.
     *
     * @return string|null
     */
    public function getLastUnsuccessfulBuild()
    {
        return $this->lastUnsuccessfulBuild;
    }

    /**
     * Sets lastUnsuccessfulBuild.
     *
     * @param string|null $lastUnsuccessfulBuild
     *
     * @return $this
     */
    public function setLastUnsuccessfulBuild($lastUnsuccessfulBuild = null)
    {
        $this->lastUnsuccessfulBuild = $lastUnsuccessfulBuild;

        return $this;
    }

    /**
     * Gets nextBuildNumber.
     *
     * @return int|null
     */
    public function getNextBuildNumber()
    {
        return $this->nextBuildNumber;
    }

    /**
     * Sets nextBuildNumber.
     *
     * @param int|null $nextBuildNumber
     *
     * @return $this
     */
    public function setNextBuildNumber($nextBuildNumber = null)
    {
        $this->nextBuildNumber = $nextBuildNumber;

        return $this;
    }

    /**
     * Gets queueItem.
     *
     * @return string|null
     */
    public function getQueueItem()
    {
        return $this->queueItem;
    }

    /**
     * Sets queueItem.
     *
     * @param string|null $queueItem
     *
     * @return $this
     */
    public function setQueueItem($queueItem = null)
    {
        $this->queueItem = $queueItem;

        return $this;
    }

    /**
     * Gets concurrentBuild.
     *
     * @return bool|null
     */
    public function isConcurrentBuild()
    {
        return $this->concurrentBuild;
    }

    /**
     * Sets concurrentBuild.
     *
     * @param bool|null $concurrentBuild
     *
     * @return $this
     */
    public function setConcurrentBuild($concurrentBuild = null)
    {
        $this->concurrentBuild = $concurrentBuild;

        return $this;
    }

    /**
     * Gets scm.
     *
     * @return OpenAPI\Server\Model\NullSCM|null
     */
    public function getScm()
    {
        return $this->scm;
    }

    /**
     * Sets scm.
     *
     * @param OpenAPI\Server\Model\NullSCM|null $scm
     *
     * @return $this
     */
    public function setScm(NullSCM $scm = null)
    {
        $this->scm = $scm;

        return $this;
    }
}


