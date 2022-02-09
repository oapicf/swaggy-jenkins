<?php
/**
 * InputStepImpllinks
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
 * Class representing the InputStepImpllinks model.
 *
 * @package OpenAPI\Server\Model
 * @author  OpenAPI Generator team
 */
class InputStepImpllinks 
{
        /**
     * @var OpenAPI\Server\Model\Link|null
     * @SerializedName("self")
     * @Assert\Type("OpenAPI\Server\Model\Link")
     * @Type("OpenAPI\Server\Model\Link")
     */
    protected $self;

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
        $this->self = isset($data['self']) ? $data['self'] : null;
        $this->class = isset($data['class']) ? $data['class'] : null;
    }

    /**
     * Gets self.
     *
     * @return OpenAPI\Server\Model\Link|null
     */
    public function getSelf(): ?Link
    {
        return $this->self;
    }

    /**
     * Sets self.
     *
     * @param OpenAPI\Server\Model\Link|null $self
     *
     * @return $this
     */
    public function setSelf(Link $self = null)
    {
        $this->self = $self;

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


