const utils = require('../utils/utils');
const ExtensionClassContainerImpl1links = require('../models/ExtensionClassContainerImpl1links');
const ExtensionClassContainerImpl1map = require('../models/ExtensionClassContainerImpl1map');

module.exports = {
    fields: (prefix = '', isInput = true, isArrayChild = false) => {
        const {keyPrefix, labelPrefix} = utils.buildKeyAndLabel(prefix, isInput, isArrayChild)
        return [
            {
                key: `${keyPrefix}_class`,
                label: `[${labelPrefix}_class]`,
                type: 'string',
            },
            ...ExtensionClassContainerImpl1links.fields(`${keyPrefix}_links`, isInput),
            ...ExtensionClassContainerImpl1map.fields(`${keyPrefix}map`, isInput),
        ]
    },
    mapping: (bundle, prefix = '') => {
        const {keyPrefix} = utils.buildKeyAndLabel(prefix)
        return {
            '_class': bundle.inputData?.[`${keyPrefix}_class`],
            '_links': utils.removeIfEmpty(ExtensionClassContainerImpl1links.mapping(bundle, `${keyPrefix}_links`)),
            'map': utils.removeIfEmpty(ExtensionClassContainerImpl1map.mapping(bundle, `${keyPrefix}map`)),
        }
    },
}
