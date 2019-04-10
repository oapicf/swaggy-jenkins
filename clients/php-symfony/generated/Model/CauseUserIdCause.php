<?php
/**
 * CauseUserIdCause
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
 * Class representing the CauseUserIdCause model.
 *
 * @package OpenAPI\Server\Model
 * @author  OpenAPI Generator team
 */
class CauseUserIdCause 
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
     * @SerializedName("shortDescription")
     * @Assert\Type("string")
     * @Type("string")
     */
    protected $shortDescription;

    /**
     * @var string|null
     * @SerializedName("userId")
     * @Assert\Type("string")
     * @Type("string")
     */
    protected $userId;

    /**
     * @var string|null
     * @SerializedName("userName")
     * @Assert\Type("string")
     * @Type("string")
     */
    protected $userName;

    /**
     * Constructor
     * @param mixed[] $data Associated array of property values initializing the model
     */
    public function __construct(array $data = null)
    {
        $this->class = isset($data['class']) ? $data['class'] : null;
        $this->shortDescription = isset($data['shortDescription']) ? $data['shortDescription'] : null;
        $this->userId = isset($data['userId']) ? $data['userId'] : null;
        $this->userName = isset($data['userName']) ? $data['userName'] : null;
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
     * Gets shortDescription.
     *
     * @return string|null
     */
    public function getShortDescription()
    {
        return $this->shortDescription;
    }

    /**
     * Sets shortDescription.
     *
     * @param string|null $shortDescription
     *
     * @return $this
     */
    public function setShortDescription($shortDescription = null)
    {
        $this->shortDescription = $shortDescription;

        return $this;
    }

    /**
     * Gets userId.
     *
     * @return string|null
     */
    public function getUserId()
    {
        return $this->userId;
    }

    /**
     * Sets userId.
     *
     * @param string|null $userId
     *
     * @return $this
     */
    public function setUserId($userId = null)
    {
        $this->userId = $userId;

        return $this;
    }

    /**
     * Gets userName.
     *
     * @return string|null
     */
    public function getUserName()
    {
        return $this->userName;
    }

    /**
     * Sets userName.
     *
     * @param string|null $userName
     *
     * @return $this
     */
    public function setUserName($userName = null)
    {
        $this->userName = $userName;

        return $this;
    }
}


