const utils = require('../utils/utils');

module.exports = {
    fields: (prefix = '', isInput = true, isArrayChild = false) => {
        const {keyPrefix, labelPrefix} = utils.buildKeyAndLabel(prefix, isInput, isArrayChild)
        return [
            {
                key: `${keyPrefix}_class`,
                label: `[${labelPrefix}_class]`,
                type: 'string',
            },
            {
                key: `${keyPrefix}crumb`,
                label: `[${labelPrefix}crumb]`,
                type: 'string',
            },
            {
                key: `${keyPrefix}crumbRequestField`,
                label: `[${labelPrefix}crumbRequestField]`,
                type: 'string',
            },
        ]
    },
    mapping: (bundle, prefix = '') => {
        const {keyPrefix} = utils.buildKeyAndLabel(prefix)
        return {
            '_class': bundle.inputData?.[`${keyPrefix}_class`],
            'crumb': bundle.inputData?.[`${keyPrefix}crumb`],
            'crumbRequestField': bundle.inputData?.[`${keyPrefix}crumbRequestField`],
        }
    },
}
