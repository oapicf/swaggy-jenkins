const utils = require('../utils/utils');
const ExtensionClassImpl = require('../models/ExtensionClassImpl');

module.exports = {
    fields: (prefix = '', isInput = true, isArrayChild = false) => {
        const {keyPrefix, labelPrefix} = utils.buildKeyAndLabel(prefix, isInput, isArrayChild)
        return [
            ...ExtensionClassImpl.fields(`${keyPrefix}io.jenkins.blueocean.service.embedded.rest.PipelineImpl`, isInput),
            ...ExtensionClassImpl.fields(`${keyPrefix}io.jenkins.blueocean.service.embedded.rest.MultiBranchPipelineImpl`, isInput),
            {
                key: `${keyPrefix}_class`,
                label: `[${labelPrefix}_class]`,
                type: 'string',
            },
        ]
    },
    mapping: (bundle, prefix = '') => {
        const {keyPrefix} = utils.buildKeyAndLabel(prefix)
        return {
            'io.jenkins.blueocean.service.embedded.rest.PipelineImpl': utils.removeIfEmpty(ExtensionClassImpl.mapping(bundle, `${keyPrefix}io.jenkins.blueocean.service.embedded.rest.PipelineImpl`)),
            'io.jenkins.blueocean.service.embedded.rest.MultiBranchPipelineImpl': utils.removeIfEmpty(ExtensionClassImpl.mapping(bundle, `${keyPrefix}io.jenkins.blueocean.service.embedded.rest.MultiBranchPipelineImpl`)),
            '_class': bundle.inputData?.[`${keyPrefix}_class`],
        }
    },
}
