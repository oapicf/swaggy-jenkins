<?php

namespace App\DTO;

use Articus\DataTransfer\Annotation as DTA;

/**
 */
class GithubScm
{
    /**
     * @DTA\Data(field="_class", nullable=true)
     * @DTA\Validator(name="Type", options={"type":"string"})
     * @var string
     */
    public $_class;
    /**
     * @DTA\Data(field="_links", nullable=true)
     * @DTA\Strategy(name="Object", options={"type":\App\DTO\GithubScmlinks::class})
     * @DTA\Validator(name="Dictionary", options={"type":\App\DTO\GithubScmlinks::class})
     * @var \App\DTO\GithubScmlinks
     */
    public $_links;
    /**
     * @DTA\Data(field="credentialId", nullable=true)
     * @DTA\Validator(name="Type", options={"type":"string"})
     * @var string
     */
    public $credential_id;
    /**
     * @DTA\Data(field="id", nullable=true)
     * @DTA\Validator(name="Type", options={"type":"string"})
     * @var string
     */
    public $id;
    /**
     * @DTA\Data(field="uri", nullable=true)
     * @DTA\Validator(name="Type", options={"type":"string"})
     * @var string
     */
    public $uri;
}
