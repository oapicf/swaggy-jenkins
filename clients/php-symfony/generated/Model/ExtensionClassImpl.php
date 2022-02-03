<?php
/**
 * ExtensionClassImpl
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
 * The version of the OpenAPI document: 1.1.1
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
 * Class representing the ExtensionClassImpl model.
 *
 * @package OpenAPI\Server\Model
 * @author  OpenAPI Generator team
 */
class ExtensionClassImpl 
{
        /**
     * @var string|null
     * @SerializedName("_class")
     * @Assert\Type("string")
     * @Type("string")
     */
    protected $class;

    /**
     * @var OpenAPI\Server\Model\ExtensionClassImpllinks|null
     * @SerializedName("_links")
     * @Assert\Type("OpenAPI\Server\Model\ExtensionClassImpllinks")
     * @Type("OpenAPI\Server\Model\ExtensionClassImpllinks")
     */
    protected $links;

    /**
     * @var string[]|null
     * @SerializedName("classes")
     * @Assert\All({
     *   @Assert\Type("string")
     * })
     * @Type("array<string>")
     */
    protected $classes;

    /**
     * Constructor
     * @param mixed[] $data Associated array of property values initializing the model
     */
    public function __construct(array $data = null)
    {
        $this->class = isset($data['class']) ? $data['class'] : null;
        $this->links = isset($data['links']) ? $data['links'] : null;
        $this->classes = isset($data['classes']) ? $data['classes'] : null;
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
     * @return OpenAPI\Server\Model\ExtensionClassImpllinks|null
     */
    public function getLinks(): ?ExtensionClassImpllinks
    {
        return $this->links;
    }

    /**
     * Sets links.
     *
     * @param OpenAPI\Server\Model\ExtensionClassImpllinks|null $links
     *
     * @return $this
     */
    public function setLinks(ExtensionClassImpllinks $links = null)
    {
        $this->links = $links;

        return $this;
    }

    /**
     * Gets classes.
     *
     * @return string[]|null
     */
    public function getClasses(): ?array
    {
        return $this->classes;
    }

    /**
     * Sets classes.
     *
     * @param string[]|null $classes
     *
     * @return $this
     */
    public function setClasses(array $classes = null)
    {
        $this->classes = $classes;

        return $this;
    }
}


