<?php
/**
 * GithubContent
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
 * Class representing the GithubContent model.
 *
 * @package OpenAPI\Server\Model
 * @author  OpenAPI Generator team
 */
class GithubContent 
{
        /**
     * @var string|null
     * @SerializedName("name")
     * @Assert\Type("string")
     * @Type("string")
     */
    protected $name;

    /**
     * @var string|null
     * @SerializedName("sha")
     * @Assert\Type("string")
     * @Type("string")
     */
    protected $sha;

    /**
     * @var string|null
     * @SerializedName("_class")
     * @Assert\Type("string")
     * @Type("string")
     */
    protected $class;

    /**
     * @var string|null
     * @SerializedName("repo")
     * @Assert\Type("string")
     * @Type("string")
     */
    protected $repo;

    /**
     * @var int|null
     * @SerializedName("size")
     * @Assert\Type("int")
     * @Type("int")
     */
    protected $size;

    /**
     * @var string|null
     * @SerializedName("owner")
     * @Assert\Type("string")
     * @Type("string")
     */
    protected $owner;

    /**
     * @var string|null
     * @SerializedName("path")
     * @Assert\Type("string")
     * @Type("string")
     */
    protected $path;

    /**
     * @var string|null
     * @SerializedName("base64Data")
     * @Assert\Type("string")
     * @Type("string")
     */
    protected $base64Data;

    /**
     * Constructor
     * @param mixed[] $data Associated array of property values initializing the model
     */
    public function __construct(array $data = null)
    {
        $this->name = isset($data['name']) ? $data['name'] : null;
        $this->sha = isset($data['sha']) ? $data['sha'] : null;
        $this->class = isset($data['class']) ? $data['class'] : null;
        $this->repo = isset($data['repo']) ? $data['repo'] : null;
        $this->size = isset($data['size']) ? $data['size'] : null;
        $this->owner = isset($data['owner']) ? $data['owner'] : null;
        $this->path = isset($data['path']) ? $data['path'] : null;
        $this->base64Data = isset($data['base64Data']) ? $data['base64Data'] : null;
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
     * Gets sha.
     *
     * @return string|null
     */
    public function getSha()
    {
        return $this->sha;
    }

    /**
     * Sets sha.
     *
     * @param string|null $sha
     *
     * @return $this
     */
    public function setSha($sha = null)
    {
        $this->sha = $sha;

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

    /**
     * Gets repo.
     *
     * @return string|null
     */
    public function getRepo()
    {
        return $this->repo;
    }

    /**
     * Sets repo.
     *
     * @param string|null $repo
     *
     * @return $this
     */
    public function setRepo($repo = null)
    {
        $this->repo = $repo;

        return $this;
    }

    /**
     * Gets size.
     *
     * @return int|null
     */
    public function getSize()
    {
        return $this->size;
    }

    /**
     * Sets size.
     *
     * @param int|null $size
     *
     * @return $this
     */
    public function setSize($size = null)
    {
        $this->size = $size;

        return $this;
    }

    /**
     * Gets owner.
     *
     * @return string|null
     */
    public function getOwner()
    {
        return $this->owner;
    }

    /**
     * Sets owner.
     *
     * @param string|null $owner
     *
     * @return $this
     */
    public function setOwner($owner = null)
    {
        $this->owner = $owner;

        return $this;
    }

    /**
     * Gets path.
     *
     * @return string|null
     */
    public function getPath()
    {
        return $this->path;
    }

    /**
     * Sets path.
     *
     * @param string|null $path
     *
     * @return $this
     */
    public function setPath($path = null)
    {
        $this->path = $path;

        return $this;
    }

    /**
     * Gets base64Data.
     *
     * @return string|null
     */
    public function getBase64Data()
    {
        return $this->base64Data;
    }

    /**
     * Sets base64Data.
     *
     * @param string|null $base64Data
     *
     * @return $this
     */
    public function setBase64Data($base64Data = null)
    {
        $this->base64Data = $base64Data;

        return $this;
    }
}


