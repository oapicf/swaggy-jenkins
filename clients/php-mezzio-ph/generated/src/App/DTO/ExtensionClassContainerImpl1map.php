<?php
declare(strict_types=1);

namespace App\DTO;

use Articus\DataTransfer\Annotation as DTA;

/**
 */
class ExtensionClassContainerImpl1map
{
    /**
     * @DTA\Data(field="io.jenkins.blueocean.service.embedded.rest.PipelineImpl", nullable=true)
     * @DTA\Strategy(name="Object", options={"type":\App\DTO\ExtensionClassImpl::class})
     * @DTA\Validator(name="TypeCompliant", options={"type":\App\DTO\ExtensionClassImpl::class})
     * @var \App\DTO\ExtensionClassImpl|null
     */
    public $io_jenkins_blueocean_service_embedded_rest_pipeline_impl;

    /**
     * @DTA\Data(field="io.jenkins.blueocean.service.embedded.rest.MultiBranchPipelineImpl", nullable=true)
     * @DTA\Strategy(name="Object", options={"type":\App\DTO\ExtensionClassImpl::class})
     * @DTA\Validator(name="TypeCompliant", options={"type":\App\DTO\ExtensionClassImpl::class})
     * @var \App\DTO\ExtensionClassImpl|null
     */
    public $io_jenkins_blueocean_service_embedded_rest_multi_branch_pipeline_impl;

    /**
     * @DTA\Data(field="_class", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"string"})
     * @var string|null
     */
    public $_class;

}
