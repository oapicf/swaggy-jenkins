<?php
/**
 * ExtensionClassContainerImpl1
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
 * Class representing the ExtensionClassContainerImpl1 model.
 *
 * @package OpenAPI\Server\Model
 * @author  OpenAPI Generator team
 */

class ExtensionClassContainerImpl1 
{
        /**
     * @var string|null
     * @SerializedName("_class")
     * @Assert\Type("string")
     * @Type("string")
     */
    protected ?string $class = null;

    /**
     * @var ExtensionClassContainerImpl1links|null
     * @SerializedName("_links")
     * @Assert\Type("OpenAPI\Server\Model\ExtensionClassContainerImpl1links")
     * @Type("OpenAPI\Server\Model\ExtensionClassContainerImpl1links")
     */
    protected ?ExtensionClassContainerImpl1links $links = null;

    /**
     * @var ExtensionClassContainerImpl1map|null
     * @SerializedName("map")
     * @Assert\Type("OpenAPI\Server\Model\ExtensionClassContainerImpl1map")
     * @Type("OpenAPI\Server\Model\ExtensionClassContainerImpl1map")
     */
    protected ?ExtensionClassContainerImpl1map $map = null;

    /**
     * Constructor
     * @param array|null $data Associated array of property values initializing the model
     */
    public function __construct(array $data = null)
    {
        if (is_array($data)) {
            $this->class = array_key_exists('class', $data) ? $data['class'] : $this->class;
            $this->links = array_key_exists('links', $data) ? $data['links'] : $this->links;
            $this->map = array_key_exists('map', $data) ? $data['map'] : $this->map;
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
     * Gets links.
     *
     * @return ExtensionClassContainerImpl1links|null
     */
    public function getLinks(): ?ExtensionClassContainerImpl1links
    {
        return $this->links;
    }



    /**
     * Sets links.
     *
     * @param ExtensionClassContainerImpl1links|null $links
     *
     * @return $this
     */
    public function setLinks(?ExtensionClassContainerImpl1links $links = null): self
    {
        $this->links = $links;

        return $this;
    }

    /**
     * Gets map.
     *
     * @return ExtensionClassContainerImpl1map|null
     */
    public function getMap(): ?ExtensionClassContainerImpl1map
    {
        return $this->map;
    }



    /**
     * Sets map.
     *
     * @param ExtensionClassContainerImpl1map|null $map
     *
     * @return $this
     */
    public function setMap(?ExtensionClassContainerImpl1map $map = null): self
    {
        $this->map = $map;

        return $this;
    }
}


