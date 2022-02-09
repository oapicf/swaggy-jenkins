<?php
/**
 * PipelineBranchesitem
 *
 * PHP version 7.1.3
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
 * The version of the OpenAPI document: 1.1.2-pre.0
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
 * Class representing the PipelineBranchesitem model.
 *
 * @package OpenAPI\Server\Model
 * @author  OpenAPI Generator team
 */
class PipelineBranchesitem 
{
        /**
     * @var string|null
     * @SerializedName("displayName")
     * @Assert\Type("string")
     * @Type("string")
     */
    protected $displayName;

    /**
     * @var int|null
     * @SerializedName("estimatedDurationInMillis")
     * @Assert\Type("int")
     * @Type("int")
     */
    protected $estimatedDurationInMillis;

    /**
     * @var string|null
     * @SerializedName("name")
     * @Assert\Type("string")
     * @Type("string")
     */
    protected $name;

    /**
     * @var int|null
     * @SerializedName("weatherScore")
     * @Assert\Type("int")
     * @Type("int")
     */
    protected $weatherScore;

    /**
     * @var OpenAPI\Server\Model\PipelineBranchesitemlatestRun|null
     * @SerializedName("latestRun")
     * @Assert\Type("OpenAPI\Server\Model\PipelineBranchesitemlatestRun")
     * @Type("OpenAPI\Server\Model\PipelineBranchesitemlatestRun")
     */
    protected $latestRun;

    /**
     * @var string|null
     * @SerializedName("organization")
     * @Assert\Type("string")
     * @Type("string")
     */
    protected $organization;

    /**
     * @var OpenAPI\Server\Model\PipelineBranchesitempullRequest|null
     * @SerializedName("pullRequest")
     * @Assert\Type("OpenAPI\Server\Model\PipelineBranchesitempullRequest")
     * @Type("OpenAPI\Server\Model\PipelineBranchesitempullRequest")
     */
    protected $pullRequest;

    /**
     * @var int|null
     * @SerializedName("totalNumberOfPullRequests")
     * @Assert\Type("int")
     * @Type("int")
     */
    protected $totalNumberOfPullRequests;

    /**
     * @var string|null
     * @SerializedName("_class")
     * @Assert\Type("string")
     * @Type("string")
     */
    protected $class;

    /**
     * Constructor
     * @param mixed[] $data Associated array of property values initializing the model
     */
    public function __construct(array $data = null)
    {
        $this->displayName = isset($data['displayName']) ? $data['displayName'] : null;
        $this->estimatedDurationInMillis = isset($data['estimatedDurationInMillis']) ? $data['estimatedDurationInMillis'] : null;
        $this->name = isset($data['name']) ? $data['name'] : null;
        $this->weatherScore = isset($data['weatherScore']) ? $data['weatherScore'] : null;
        $this->latestRun = isset($data['latestRun']) ? $data['latestRun'] : null;
        $this->organization = isset($data['organization']) ? $data['organization'] : null;
        $this->pullRequest = isset($data['pullRequest']) ? $data['pullRequest'] : null;
        $this->totalNumberOfPullRequests = isset($data['totalNumberOfPullRequests']) ? $data['totalNumberOfPullRequests'] : null;
        $this->class = isset($data['class']) ? $data['class'] : null;
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
     * Gets estimatedDurationInMillis.
     *
     * @return int|null
     */
    public function getEstimatedDurationInMillis()
    {
        return $this->estimatedDurationInMillis;
    }

    /**
     * Sets estimatedDurationInMillis.
     *
     * @param int|null $estimatedDurationInMillis
     *
     * @return $this
     */
    public function setEstimatedDurationInMillis($estimatedDurationInMillis = null)
    {
        $this->estimatedDurationInMillis = $estimatedDurationInMillis;

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
     * Gets weatherScore.
     *
     * @return int|null
     */
    public function getWeatherScore()
    {
        return $this->weatherScore;
    }

    /**
     * Sets weatherScore.
     *
     * @param int|null $weatherScore
     *
     * @return $this
     */
    public function setWeatherScore($weatherScore = null)
    {
        $this->weatherScore = $weatherScore;

        return $this;
    }

    /**
     * Gets latestRun.
     *
     * @return OpenAPI\Server\Model\PipelineBranchesitemlatestRun|null
     */
    public function getLatestRun(): ?PipelineBranchesitemlatestRun
    {
        return $this->latestRun;
    }

    /**
     * Sets latestRun.
     *
     * @param OpenAPI\Server\Model\PipelineBranchesitemlatestRun|null $latestRun
     *
     * @return $this
     */
    public function setLatestRun(PipelineBranchesitemlatestRun $latestRun = null)
    {
        $this->latestRun = $latestRun;

        return $this;
    }

    /**
     * Gets organization.
     *
     * @return string|null
     */
    public function getOrganization()
    {
        return $this->organization;
    }

    /**
     * Sets organization.
     *
     * @param string|null $organization
     *
     * @return $this
     */
    public function setOrganization($organization = null)
    {
        $this->organization = $organization;

        return $this;
    }

    /**
     * Gets pullRequest.
     *
     * @return OpenAPI\Server\Model\PipelineBranchesitempullRequest|null
     */
    public function getPullRequest(): ?PipelineBranchesitempullRequest
    {
        return $this->pullRequest;
    }

    /**
     * Sets pullRequest.
     *
     * @param OpenAPI\Server\Model\PipelineBranchesitempullRequest|null $pullRequest
     *
     * @return $this
     */
    public function setPullRequest(PipelineBranchesitempullRequest $pullRequest = null)
    {
        $this->pullRequest = $pullRequest;

        return $this;
    }

    /**
     * Gets totalNumberOfPullRequests.
     *
     * @return int|null
     */
    public function getTotalNumberOfPullRequests()
    {
        return $this->totalNumberOfPullRequests;
    }

    /**
     * Sets totalNumberOfPullRequests.
     *
     * @param int|null $totalNumberOfPullRequests
     *
     * @return $this
     */
    public function setTotalNumberOfPullRequests($totalNumberOfPullRequests = null)
    {
        $this->totalNumberOfPullRequests = $totalNumberOfPullRequests;

        return $this;
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
}


