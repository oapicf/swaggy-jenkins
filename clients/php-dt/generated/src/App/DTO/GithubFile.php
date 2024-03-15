<?php
declare(strict_types=1);

namespace App\DTO;

use Articus\DataTransfer\Annotation as DTA;

class GithubFile
{
    /**
     * @DTA\Data(field="content", nullable=true)
     * @DTA\Strategy(name="Object", options={"type":\App\DTO\GithubContent::class})
     * @DTA\Validator(name="TypeCompliant", options={"type":\App\DTO\GithubContent::class})
     */
    public ?\App\DTO\GithubContent $content = null;

    /**
     * @DTA\Data(field="_class", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"string"})
     */
    public ?string $_class = null;

}
