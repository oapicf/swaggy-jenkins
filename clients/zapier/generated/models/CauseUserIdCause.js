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
                key: `${keyPrefix}shortDescription`,
                label: `[${labelPrefix}shortDescription]`,
                type: 'string',
            },
            {
                key: `${keyPrefix}userId`,
                label: `[${labelPrefix}userId]`,
                type: 'string',
            },
            {
                key: `${keyPrefix}userName`,
                label: `[${labelPrefix}userName]`,
                type: 'string',
            },
        ]
    },
    mapping: (bundle, prefix = '') => {
        const {keyPrefix} = utils.buildKeyAndLabel(prefix)
        return {
            '_class': bundle.inputData?.[`${keyPrefix}_class`],
            'shortDescription': bundle.inputData?.[`${keyPrefix}shortDescription`],
            'userId': bundle.inputData?.[`${keyPrefix}userId`],
            'userName': bundle.inputData?.[`${keyPrefix}userName`],
        }
    },
}
