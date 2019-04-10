<?php
/**
 * GithubRepositorypermissions
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
 * Class representing the GithubRepositorypermissions model.
 *
 * @package OpenAPI\Server\Model
 * @author  OpenAPI Generator team
 */
class GithubRepositorypermissions 
{
        /**
     * @var bool|null
     * @SerializedName("admin")
     * @Assert\Type("bool")
     * @Type("bool")
     */
    protected $admin;

    /**
     * @var bool|null
     * @SerializedName("push")
     * @Assert\Type("bool")
     * @Type("bool")
     */
    protected $push;

    /**
     * @var bool|null
     * @SerializedName("pull")
     * @Assert\Type("bool")
     * @Type("bool")
     */
    protected $pull;

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
        $this->admin = isset($data['admin']) ? $data['admin'] : null;
        $this->push = isset($data['push']) ? $data['push'] : null;
        $this->pull = isset($data['pull']) ? $data['pull'] : null;
        $this->class = isset($data['class']) ? $data['class'] : null;
    }

    /**
     * Gets admin.
     *
     * @return bool|null
     */
    public function isAdmin()
    {
        return $this->admin;
    }

    /**
     * Sets admin.
     *
     * @param bool|null $admin
     *
     * @return $this
     */
    public function setAdmin($admin = null)
    {
        $this->admin = $admin;

        return $this;
    }

    /**
     * Gets push.
     *
     * @return bool|null
     */
    public function isPush()
    {
        return $this->push;
    }

    /**
     * Sets push.
     *
     * @param bool|null $push
     *
     * @return $this
     */
    public function setPush($push = null)
    {
        $this->push = $push;

        return $this;
    }

    /**
     * Gets pull.
     *
     * @return bool|null
     */
    public function isPull()
    {
        return $this->pull;
    }

    /**
     * Sets pull.
     *
     * @param bool|null $pull
     *
     * @return $this
     */
    public function setPull($pull = null)
    {
        $this->pull = $pull;

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


