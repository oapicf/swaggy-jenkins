<?php
/**
 * GithubRepositorieslinks
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
 * Class representing the GithubRepositorieslinks model.
 *
 * @package OpenAPI\Server\Model
 * @author  OpenAPI Generator team
 */

class GithubRepositorieslinks 
{
        /**
     * @var Link|null
     * @SerializedName("self")
     * @Assert\Type("OpenAPI\Server\Model\Link")
     * @Type("OpenAPI\Server\Model\Link")
     */
    protected ?Link $self = null;

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
            $this->self = array_key_exists('self', $data) ? $data['self'] : $this->self;
            $this->class = array_key_exists('class', $data) ? $data['class'] : $this->class;
        }
    }

    /**
     * Gets self.
     *
     * @return Link|null
     */
    public function getSelf(): ?Link
    {
        return $this->self;
    }



    /**
     * Sets self.
     *
     * @param Link|null $self
     *
     * @return $this
     */
    public function setSelf(?Link $self = null): self
    {
        $this->self = $self;

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


