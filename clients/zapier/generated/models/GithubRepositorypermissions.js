const utils = require('../utils/utils');

module.exports = {
    fields: (prefix = '', isInput = true, isArrayChild = false) => {
        const {keyPrefix, labelPrefix} = utils.buildKeyAndLabel(prefix, isInput, isArrayChild)
        return [
            {
                key: `${keyPrefix}admin`,
                label: `[${labelPrefix}admin]`,
                type: 'boolean',
            },
            {
                key: `${keyPrefix}push`,
                label: `[${labelPrefix}push]`,
                type: 'boolean',
            },
            {
                key: `${keyPrefix}pull`,
                label: `[${labelPrefix}pull]`,
                type: 'boolean',
            },
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
            'admin': bundle.inputData?.[`${keyPrefix}admin`],
            'push': bundle.inputData?.[`${keyPrefix}push`],
            'pull': bundle.inputData?.[`${keyPrefix}pull`],
            '_class': bundle.inputData?.[`${keyPrefix}_class`],
        }
    },
}
