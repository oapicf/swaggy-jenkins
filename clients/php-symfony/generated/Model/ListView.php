<?php
/**
 * ListView
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
 * The version of the OpenAPI document: 1.5.1-pre.0
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
 * Class representing the ListView model.
 *
 * @package OpenAPI\Server\Model
 * @author  OpenAPI Generator team
 */
class ListView 
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
     * @SerializedName("description")
     * @Assert\Type("string")
     * @Type("string")
     */
    protected $description;

    /**
     * @var OpenAPI\Server\Model\FreeStyleProject[]|null
     * @SerializedName("jobs")
     * @Assert\All({
     *   @Assert\Type("OpenAPI\Server\Model\FreeStyleProject")
     * })
     * @Type("array<OpenAPI\Server\Model\FreeStyleProject>")
     */
    protected $jobs;

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
     * Constructor
     * @param mixed[] $data Associated array of property values initializing the model
     */
    public function __construct(array $data = null)
    {
        $this->class = isset($data['class']) ? $data['class'] : null;
        $this->description = isset($data['description']) ? $data['description'] : null;
        $this->jobs = isset($data['jobs']) ? $data['jobs'] : null;
        $this->name = isset($data['name']) ? $data['name'] : null;
        $this->url = isset($data['url']) ? $data['url'] : null;
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
     * Gets jobs.
     *
     * @return OpenAPI\Server\Model\FreeStyleProject[]|null
     */
    public function getJobs(): ?array
    {
        return $this->jobs;
    }

    /**
     * Sets jobs.
     *
     * @param OpenAPI\Server\Model\FreeStyleProject[]|null $jobs
     *
     * @return $this
     */
    public function setJobs(array $jobs = null)
    {
        $this->jobs = $jobs;

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
}


