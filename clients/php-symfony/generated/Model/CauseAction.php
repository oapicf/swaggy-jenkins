<?php
/**
 * CauseAction
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
 * Class representing the CauseAction model.
 *
 * @package OpenAPI\Server\Model
 * @author  OpenAPI Generator team
 */

class CauseAction 
{
        /**
     * @var string|null
     * @SerializedName("_class")
     * @Assert\Type("string")
     * @Type("string")
     */
    protected ?string $class = null;

    /**
     * @var CauseUserIdCause[]|null
     * @SerializedName("causes")
     * @Assert\All({
     *   @Assert\Type("OpenAPI\Server\Model\CauseUserIdCause")
     * })
     * @Type("array<OpenAPI\Server\Model\CauseUserIdCause>")
     */
    protected ?array $causes = null;

    /**
     * Constructor
     * @param array|null $data Associated array of property values initializing the model
     */
    public function __construct(array $data = null)
    {
        if (is_array($data)) {
            $this->class = array_key_exists('class', $data) ? $data['class'] : $this->class;
            $this->causes = array_key_exists('causes', $data) ? $data['causes'] : $this->causes;
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
     * Gets causes.
     *
     * @return CauseUserIdCause[]|null
     */
    public function getCauses(): ?array
    {
        return $this->causes;
    }



    /**
     * Sets causes.
     *
     * @param CauseUserIdCause[]|null $causes
     *
     * @return $this
     */
    public function setCauses(?array $causes = null): self
    {
        $this->causes = $causes;

        return $this;
    }
}


