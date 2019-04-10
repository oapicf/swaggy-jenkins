<?php
/**
 * GithubOrganization
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
 * Class representing the GithubOrganization model.
 *
 * @package OpenAPI\Server\Model
 * @author  OpenAPI Generator team
 */
class GithubOrganization 
{
        /**
     * @var string|null
     * @SerializedName("_class")
     * @Assert\Type("string")
     * @Type("string")
     */
    protected $class;

    /**
     * @var OpenAPI\Server\Model\GithubOrganizationlinks|null
     * @SerializedName("_links")
     * @Assert\Type("OpenAPI\Server\Model\GithubOrganizationlinks")
     * @Type("OpenAPI\Server\Model\GithubOrganizationlinks")
     */
    protected $links;

    /**
     * @var bool|null
     * @SerializedName("jenkinsOrganizationPipeline")
     * @Assert\Type("bool")
     * @Type("bool")
     */
    protected $jenkinsOrganizationPipeline;

    /**
     * @var string|null
     * @SerializedName("name")
     * @Assert\Type("string")
     * @Type("string")
     */
    protected $name;

    /**
     * Constructor
     * @param mixed[] $data Associated array of property values initializing the model
     */
    public function __construct(array $data = null)
    {
        $this->class = isset($data['class']) ? $data['class'] : null;
        $this->links = isset($data['links']) ? $data['links'] : null;
        $this->jenkinsOrganizationPipeline = isset($data['jenkinsOrganizationPipeline']) ? $data['jenkinsOrganizationPipeline'] : null;
        $this->name = isset($data['name']) ? $data['name'] : null;
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
     * Gets links.
     *
     * @return OpenAPI\Server\Model\GithubOrganizationlinks|null
     */
    public function getLinks()
    {
        return $this->links;
    }

    /**
     * Sets links.
     *
     * @param OpenAPI\Server\Model\GithubOrganizationlinks|null $links
     *
     * @return $this
     */
    public function setLinks(GithubOrganizationlinks $links = null)
    {
        $this->links = $links;

        return $this;
    }

    /**
     * Gets jenkinsOrganizationPipeline.
     *
     * @return bool|null
     */
    public function isJenkinsOrganizationPipeline()
    {
        return $this->jenkinsOrganizationPipeline;
    }

    /**
     * Sets jenkinsOrganizationPipeline.
     *
     * @param bool|null $jenkinsOrganizationPipeline
     *
     * @return $this
     */
    public function setJenkinsOrganizationPipeline($jenkinsOrganizationPipeline = null)
    {
        $this->jenkinsOrganizationPipeline = $jenkinsOrganizationPipeline;

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
}


