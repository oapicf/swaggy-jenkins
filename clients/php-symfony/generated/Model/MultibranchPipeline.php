<?php
/**
 * MultibranchPipeline
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
 * Class representing the MultibranchPipeline model.
 *
 * @package OpenAPI\Server\Model
 * @author  OpenAPI Generator team
 */

class MultibranchPipeline 
{
        /**
     * @var string|null
     * @SerializedName("displayName")
     * @Assert\Type("string")
     * @Type("string")
     */
    protected ?string $displayName = null;

    /**
     * @var int|null
     * @SerializedName("estimatedDurationInMillis")
     * @Assert\Type("int")
     * @Type("int")
     */
    protected ?int $estimatedDurationInMillis = null;

    /**
     * @var string|null
     * @SerializedName("latestRun")
     * @Assert\Type("string")
     * @Type("string")
     */
    protected ?string $latestRun = null;

    /**
     * @var string|null
     * @SerializedName("name")
     * @Assert\Type("string")
     * @Type("string")
     */
    protected ?string $name = null;

    /**
     * @var string|null
     * @SerializedName("organization")
     * @Assert\Type("string")
     * @Type("string")
     */
    protected ?string $organization = null;

    /**
     * @var int|null
     * @SerializedName("weatherScore")
     * @Assert\Type("int")
     * @Type("int")
     */
    protected ?int $weatherScore = null;

    /**
     * @var string[]|null
     * @SerializedName("branchNames")
     * @Assert\All({
     *   @Assert\Type("string")
     * })
     * @Type("array<string>")
     */
    protected ?array $branchNames = null;

    /**
     * @var int|null
     * @SerializedName("numberOfFailingBranches")
     * @Assert\Type("int")
     * @Type("int")
     */
    protected ?int $numberOfFailingBranches = null;

    /**
     * @var int|null
     * @SerializedName("numberOfFailingPullRequests")
     * @Assert\Type("int")
     * @Type("int")
     */
    protected ?int $numberOfFailingPullRequests = null;

    /**
     * @var int|null
     * @SerializedName("numberOfSuccessfulBranches")
     * @Assert\Type("int")
     * @Type("int")
     */
    protected ?int $numberOfSuccessfulBranches = null;

    /**
     * @var int|null
     * @SerializedName("numberOfSuccessfulPullRequests")
     * @Assert\Type("int")
     * @Type("int")
     */
    protected ?int $numberOfSuccessfulPullRequests = null;

    /**
     * @var int|null
     * @SerializedName("totalNumberOfBranches")
     * @Assert\Type("int")
     * @Type("int")
     */
    protected ?int $totalNumberOfBranches = null;

    /**
     * @var int|null
     * @SerializedName("totalNumberOfPullRequests")
     * @Assert\Type("int")
     * @Type("int")
     */
    protected ?int $totalNumberOfPullRequests = null;

    /**
     * @var string|null
     * @SerializedName("_class")
     * @Assert\Type("string")
     * @Type("string")
     */
    protected ?string $class = null;

    /**
     * Constructor
     * @param array|null $data Associated array of property values initializing the model
     */
    public function __construct(array $data = null)
    {
        if (is_array($data)) {
            $this->displayName = array_key_exists('displayName', $data) ? $data['displayName'] : $this->displayName;
            $this->estimatedDurationInMillis = array_key_exists('estimatedDurationInMillis', $data) ? $data['estimatedDurationInMillis'] : $this->estimatedDurationInMillis;
            $this->latestRun = array_key_exists('latestRun', $data) ? $data['latestRun'] : $this->latestRun;
            $this->name = array_key_exists('name', $data) ? $data['name'] : $this->name;
            $this->organization = array_key_exists('organization', $data) ? $data['organization'] : $this->organization;
            $this->weatherScore = array_key_exists('weatherScore', $data) ? $data['weatherScore'] : $this->weatherScore;
            $this->branchNames = array_key_exists('branchNames', $data) ? $data['branchNames'] : $this->branchNames;
            $this->numberOfFailingBranches = array_key_exists('numberOfFailingBranches', $data) ? $data['numberOfFailingBranches'] : $this->numberOfFailingBranches;
            $this->numberOfFailingPullRequests = array_key_exists('numberOfFailingPullRequests', $data) ? $data['numberOfFailingPullRequests'] : $this->numberOfFailingPullRequests;
            $this->numberOfSuccessfulBranches = array_key_exists('numberOfSuccessfulBranches', $data) ? $data['numberOfSuccessfulBranches'] : $this->numberOfSuccessfulBranches;
            $this->numberOfSuccessfulPullRequests = array_key_exists('numberOfSuccessfulPullRequests', $data) ? $data['numberOfSuccessfulPullRequests'] : $this->numberOfSuccessfulPullRequests;
            $this->totalNumberOfBranches = array_key_exists('totalNumberOfBranches', $data) ? $data['totalNumberOfBranches'] : $this->totalNumberOfBranches;
            $this->totalNumberOfPullRequests = array_key_exists('totalNumberOfPullRequests', $data) ? $data['totalNumberOfPullRequests'] : $this->totalNumberOfPullRequests;
            $this->class = array_key_exists('class', $data) ? $data['class'] : $this->class;
        }
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
     * Gets estimatedDurationInMillis.
     *
     * @return int|null
     */
    public function getEstimatedDurationInMillis(): ?int
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
    public function setEstimatedDurationInMillis(?int $estimatedDurationInMillis = null): self
    {
        $this->estimatedDurationInMillis = $estimatedDurationInMillis;

        return $this;
    }

    /**
     * Gets latestRun.
     *
     * @return string|null
     */
    public function getLatestRun(): ?string
    {
        return $this->latestRun;
    }



    /**
     * Sets latestRun.
     *
     * @param string|null $latestRun
     *
     * @return $this
     */
    public function setLatestRun(?string $latestRun = null): self
    {
        $this->latestRun = $latestRun;

        return $this;
    }

    /**
     * Gets name.
     *
     * @return string|null
     */
    public function getName(): ?string
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
    public function setName(?string $name = null): self
    {
        $this->name = $name;

        return $this;
    }

    /**
     * Gets organization.
     *
     * @return string|null
     */
    public function getOrganization(): ?string
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
    public function setOrganization(?string $organization = null): self
    {
        $this->organization = $organization;

        return $this;
    }

    /**
     * Gets weatherScore.
     *
     * @return int|null
     */
    public function getWeatherScore(): ?int
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
    public function setWeatherScore(?int $weatherScore = null): self
    {
        $this->weatherScore = $weatherScore;

        return $this;
    }

    /**
     * Gets branchNames.
     *
     * @return string[]|null
     */
    public function getBranchNames(): ?array
    {
        return $this->branchNames;
    }



    /**
     * Sets branchNames.
     *
     * @param string[]|null $branchNames
     *
     * @return $this
     */
    public function setBranchNames(?array $branchNames = null): self
    {
        $this->branchNames = $branchNames;

        return $this;
    }

    /**
     * Gets numberOfFailingBranches.
     *
     * @return int|null
     */
    public function getNumberOfFailingBranches(): ?int
    {
        return $this->numberOfFailingBranches;
    }



    /**
     * Sets numberOfFailingBranches.
     *
     * @param int|null $numberOfFailingBranches
     *
     * @return $this
     */
    public function setNumberOfFailingBranches(?int $numberOfFailingBranches = null): self
    {
        $this->numberOfFailingBranches = $numberOfFailingBranches;

        return $this;
    }

    /**
     * Gets numberOfFailingPullRequests.
     *
     * @return int|null
     */
    public function getNumberOfFailingPullRequests(): ?int
    {
        return $this->numberOfFailingPullRequests;
    }



    /**
     * Sets numberOfFailingPullRequests.
     *
     * @param int|null $numberOfFailingPullRequests
     *
     * @return $this
     */
    public function setNumberOfFailingPullRequests(?int $numberOfFailingPullRequests = null): self
    {
        $this->numberOfFailingPullRequests = $numberOfFailingPullRequests;

        return $this;
    }

    /**
     * Gets numberOfSuccessfulBranches.
     *
     * @return int|null
     */
    public function getNumberOfSuccessfulBranches(): ?int
    {
        return $this->numberOfSuccessfulBranches;
    }



    /**
     * Sets numberOfSuccessfulBranches.
     *
     * @param int|null $numberOfSuccessfulBranches
     *
     * @return $this
     */
    public function setNumberOfSuccessfulBranches(?int $numberOfSuccessfulBranches = null): self
    {
        $this->numberOfSuccessfulBranches = $numberOfSuccessfulBranches;

        return $this;
    }

    /**
     * Gets numberOfSuccessfulPullRequests.
     *
     * @return int|null
     */
    public function getNumberOfSuccessfulPullRequests(): ?int
    {
        return $this->numberOfSuccessfulPullRequests;
    }



    /**
     * Sets numberOfSuccessfulPullRequests.
     *
     * @param int|null $numberOfSuccessfulPullRequests
     *
     * @return $this
     */
    public function setNumberOfSuccessfulPullRequests(?int $numberOfSuccessfulPullRequests = null): self
    {
        $this->numberOfSuccessfulPullRequests = $numberOfSuccessfulPullRequests;

        return $this;
    }

    /**
     * Gets totalNumberOfBranches.
     *
     * @return int|null
     */
    public function getTotalNumberOfBranches(): ?int
    {
        return $this->totalNumberOfBranches;
    }



    /**
     * Sets totalNumberOfBranches.
     *
     * @param int|null $totalNumberOfBranches
     *
     * @return $this
     */
    public function setTotalNumberOfBranches(?int $totalNumberOfBranches = null): self
    {
        $this->totalNumberOfBranches = $totalNumberOfBranches;

        return $this;
    }

    /**
     * Gets totalNumberOfPullRequests.
     *
     * @return int|null
     */
    public function getTotalNumberOfPullRequests(): ?int
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
    public function setTotalNumberOfPullRequests(?int $totalNumberOfPullRequests = null): self
    {
        $this->totalNumberOfPullRequests = $totalNumberOfPullRequests;

        return $this;
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
}


