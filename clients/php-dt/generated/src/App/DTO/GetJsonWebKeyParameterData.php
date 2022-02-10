<?php
declare(strict_types=1);

namespace App\DTO;

use Articus\DataTransfer\Annotation as DTA;

/**
 * Parameters for getJsonWebKey
 */
class GetJsonWebKeyParameterData
{
    /**
     * Key ID received as part of JWT header field kid
     * @DTA\Data(subset="path", field="key")
     * @DTA\Strategy(subset="path", name="QueryStringScalar", options={"type":"int"})
     * @DTA\Validator(subset="path", name="QueryStringScalar", options={"type":"int"})
     * @var int|null
     */
    public $key;

}
