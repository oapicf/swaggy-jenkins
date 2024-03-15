const utils = require('../utils/utils');
const ExtensionClassImpllinks = require('../models/ExtensionClassImpllinks');

module.exports = {
    fields: (prefix = '', isInput = true, isArrayChild = false) => {
        const {keyPrefix, labelPrefix} = utils.buildKeyAndLabel(prefix, isInput, isArrayChild)
        return [
            {
                key: `${keyPrefix}_class`,
                label: `[${labelPrefix}_class]`,
                type: 'string',
            },
            ...ExtensionClassImpllinks.fields(`${keyPrefix}_links`, isInput),
            {
                key: `${keyPrefix}classes`,
                label: `[${labelPrefix}classes]`,
                list: true,
                type: 'string',
            },
        ]
    },
    mapping: (bundle, prefix = '') => {
        const {keyPrefix} = utils.buildKeyAndLabel(prefix)
        return {
            '_class': bundle.inputData?.[`${keyPrefix}_class`],
            '_links': utils.removeIfEmpty(ExtensionClassImpllinks.mapping(bundle, `${keyPrefix}_links`)),
            'classes': bundle.inputData?.[`${keyPrefix}classes`],
        }
    },
}
