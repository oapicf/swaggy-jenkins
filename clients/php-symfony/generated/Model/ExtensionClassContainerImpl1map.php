<?php
/**
 * ExtensionClassContainerImpl1map
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
 * Class representing the ExtensionClassContainerImpl1map model.
 *
 * @package OpenAPI\Server\Model
 * @author  OpenAPI Generator team
 */
class ExtensionClassContainerImpl1map 
{
        /**
     * @var OpenAPI\Server\Model\ExtensionClassImpl|null
     * @SerializedName("io.jenkins.blueocean.service.embedded.rest.PipelineImpl")
     * @Assert\Type("OpenAPI\Server\Model\ExtensionClassImpl")
     * @Type("OpenAPI\Server\Model\ExtensionClassImpl")
     */
    protected $ioJenkinsBlueoceanServiceEmbeddedRestPipelineImpl;

    /**
     * @var OpenAPI\Server\Model\ExtensionClassImpl|null
     * @SerializedName("io.jenkins.blueocean.service.embedded.rest.MultiBranchPipelineImpl")
     * @Assert\Type("OpenAPI\Server\Model\ExtensionClassImpl")
     * @Type("OpenAPI\Server\Model\ExtensionClassImpl")
     */
    protected $ioJenkinsBlueoceanServiceEmbeddedRestMultiBranchPipelineImpl;

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
        $this->ioJenkinsBlueoceanServiceEmbeddedRestPipelineImpl = isset($data['ioJenkinsBlueoceanServiceEmbeddedRestPipelineImpl']) ? $data['ioJenkinsBlueoceanServiceEmbeddedRestPipelineImpl'] : null;
        $this->ioJenkinsBlueoceanServiceEmbeddedRestMultiBranchPipelineImpl = isset($data['ioJenkinsBlueoceanServiceEmbeddedRestMultiBranchPipelineImpl']) ? $data['ioJenkinsBlueoceanServiceEmbeddedRestMultiBranchPipelineImpl'] : null;
        $this->class = isset($data['class']) ? $data['class'] : null;
    }

    /**
     * Gets ioJenkinsBlueoceanServiceEmbeddedRestPipelineImpl.
     *
     * @return OpenAPI\Server\Model\ExtensionClassImpl|null
     */
    public function getIoJenkinsBlueoceanServiceEmbeddedRestPipelineImpl(): ?ExtensionClassImpl
    {
        return $this->ioJenkinsBlueoceanServiceEmbeddedRestPipelineImpl;
    }

    /**
     * Sets ioJenkinsBlueoceanServiceEmbeddedRestPipelineImpl.
     *
     * @param OpenAPI\Server\Model\ExtensionClassImpl|null $ioJenkinsBlueoceanServiceEmbeddedRestPipelineImpl
     *
     * @return $this
     */
    public function setIoJenkinsBlueoceanServiceEmbeddedRestPipelineImpl(ExtensionClassImpl $ioJenkinsBlueoceanServiceEmbeddedRestPipelineImpl = null)
    {
        $this->ioJenkinsBlueoceanServiceEmbeddedRestPipelineImpl = $ioJenkinsBlueoceanServiceEmbeddedRestPipelineImpl;

        return $this;
    }

    /**
     * Gets ioJenkinsBlueoceanServiceEmbeddedRestMultiBranchPipelineImpl.
     *
     * @return OpenAPI\Server\Model\ExtensionClassImpl|null
     */
    public function getIoJenkinsBlueoceanServiceEmbeddedRestMultiBranchPipelineImpl(): ?ExtensionClassImpl
    {
        return $this->ioJenkinsBlueoceanServiceEmbeddedRestMultiBranchPipelineImpl;
    }

    /**
     * Sets ioJenkinsBlueoceanServiceEmbeddedRestMultiBranchPipelineImpl.
     *
     * @param OpenAPI\Server\Model\ExtensionClassImpl|null $ioJenkinsBlueoceanServiceEmbeddedRestMultiBranchPipelineImpl
     *
     * @return $this
     */
    public function setIoJenkinsBlueoceanServiceEmbeddedRestMultiBranchPipelineImpl(ExtensionClassImpl $ioJenkinsBlueoceanServiceEmbeddedRestMultiBranchPipelineImpl = null)
    {
        $this->ioJenkinsBlueoceanServiceEmbeddedRestMultiBranchPipelineImpl = $ioJenkinsBlueoceanServiceEmbeddedRestMultiBranchPipelineImpl;

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


