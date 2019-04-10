<?php
/**
 * BranchImpl
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
 * Class representing the BranchImpl model.
 *
 * @package OpenAPI\Server\Model
 * @author  OpenAPI Generator team
 */
class BranchImpl 
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
     * @var string|null
     * @SerializedName("name")
     * @Assert\Type("string")
     * @Type("string")
     */
    protected $name;

    /**
     * @var string|null
     * @SerializedName("organization")
     * @Assert\Type("string")
     * @Type("string")
     */
    protected $organization;

    /**
     * @var OpenAPI\Server\Model\StringParameterDefinition[]|null
     * @SerializedName("parameters")
     * @Assert\All({
     *   @Assert\Type("OpenAPI\Server\Model\StringParameterDefinition")
     * })
     * @Type("array<OpenAPI\Server\Model\StringParameterDefinition>")
     */
    protected $parameters;

    /**
     * @var OpenAPI\Server\Model\BranchImplpermissions|null
     * @SerializedName("permissions")
     * @Assert\Type("OpenAPI\Server\Model\BranchImplpermissions")
     * @Type("OpenAPI\Server\Model\BranchImplpermissions")
     */
    protected $permissions;

    /**
     * @var int|null
     * @SerializedName("weatherScore")
     * @Assert\Type("int")
     * @Type("int")
     */
    protected $weatherScore;

    /**
     * @var string|null
     * @SerializedName("pullRequest")
     * @Assert\Type("string")
     * @Type("string")
     */
    protected $pullRequest;

    /**
     * @var OpenAPI\Server\Model\BranchImpllinks|null
     * @SerializedName("_links")
     * @Assert\Type("OpenAPI\Server\Model\BranchImpllinks")
     * @Type("OpenAPI\Server\Model\BranchImpllinks")
     */
    protected $links;

    /**
     * @var OpenAPI\Server\Model\PipelineRunImpl|null
     * @SerializedName("latestRun")
     * @Assert\Type("OpenAPI\Server\Model\PipelineRunImpl")
     * @Type("OpenAPI\Server\Model\PipelineRunImpl")
     */
    protected $latestRun;

    /**
     * Constructor
     * @param mixed[] $data Associated array of property values initializing the model
     */
    public function __construct(array $data = null)
    {
        $this->class = isset($data['class']) ? $data['class'] : null;
        $this->displayName = isset($data['displayName']) ? $data['displayName'] : null;
        $this->estimatedDurationInMillis = isset($data['estimatedDurationInMillis']) ? $data['estimatedDurationInMillis'] : null;
        $this->fullDisplayName = isset($data['fullDisplayName']) ? $data['fullDisplayName'] : null;
        $this->fullName = isset($data['fullName']) ? $data['fullName'] : null;
        $this->name = isset($data['name']) ? $data['name'] : null;
        $this->organization = isset($data['organization']) ? $data['organization'] : null;
        $this->parameters = isset($data['parameters']) ? $data['parameters'] : null;
        $this->permissions = isset($data['permissions']) ? $data['permissions'] : null;
        $this->weatherScore = isset($data['weatherScore']) ? $data['weatherScore'] : null;
        $this->pullRequest = isset($data['pullRequest']) ? $data['pullRequest'] : null;
        $this->links = isset($data['links']) ? $data['links'] : null;
        $this->latestRun = isset($data['latestRun']) ? $data['latestRun'] : null;
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
     * Gets parameters.
     *
     * @return OpenAPI\Server\Model\StringParameterDefinition[]|null
     */
    public function getParameters()
    {
        return $this->parameters;
    }

    /**
     * Sets parameters.
     *
     * @param OpenAPI\Server\Model\StringParameterDefinition[]|null $parameters
     *
     * @return $this
     */
    public function setParameters(StringParameterDefinition $parameters = null)
    {
        $this->parameters = $parameters;

        return $this;
    }

    /**
     * Gets permissions.
     *
     * @return OpenAPI\Server\Model\BranchImplpermissions|null
     */
    public function getPermissions()
    {
        return $this->permissions;
    }

    /**
     * Sets permissions.
     *
     * @param OpenAPI\Server\Model\BranchImplpermissions|null $permissions
     *
     * @return $this
     */
    public function setPermissions(BranchImplpermissions $permissions = null)
    {
        $this->permissions = $permissions;

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
     * Gets pullRequest.
     *
     * @return string|null
     */
    public function getPullRequest()
    {
        return $this->pullRequest;
    }

    /**
     * Sets pullRequest.
     *
     * @param string|null $pullRequest
     *
     * @return $this
     */
    public function setPullRequest($pullRequest = null)
    {
        $this->pullRequest = $pullRequest;

        return $this;
    }

    /**
     * Gets links.
     *
     * @return OpenAPI\Server\Model\BranchImpllinks|null
     */
    public function getLinks()
    {
        return $this->links;
    }

    /**
     * Sets links.
     *
     * @param OpenAPI\Server\Model\BranchImpllinks|null $links
     *
     * @return $this
     */
    public function setLinks(BranchImpllinks $links = null)
    {
        $this->links = $links;

        return $this;
    }

    /**
     * Gets latestRun.
     *
     * @return OpenAPI\Server\Model\PipelineRunImpl|null
     */
    public function getLatestRun()
    {
        return $this->latestRun;
    }

    /**
     * Sets latestRun.
     *
     * @param OpenAPI\Server\Model\PipelineRunImpl|null $latestRun
     *
     * @return $this
     */
    public function setLatestRun(PipelineRunImpl $latestRun = null)
    {
        $this->latestRun = $latestRun;

        return $this;
    }
}


