const utils = require('../utils/utils');

module.exports = {
    fields: (prefix = '', isInput = true, isArrayChild = false) => {
        const {keyPrefix, labelPrefix} = utils.buildKeyAndLabel(prefix, isInput, isArrayChild)
        return [
            {
                key: `${keyPrefix}create`,
                label: `[${labelPrefix}create]`,
                type: 'boolean',
            },
            {
                key: `${keyPrefix}read`,
                label: `[${labelPrefix}read]`,
                type: 'boolean',
            },
            {
                key: `${keyPrefix}start`,
                label: `[${labelPrefix}start]`,
                type: 'boolean',
            },
            {
                key: `${keyPrefix}stop`,
                label: `[${labelPrefix}stop]`,
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
            'create': bundle.inputData?.[`${keyPrefix}create`],
            'read': bundle.inputData?.[`${keyPrefix}read`],
            'start': bundle.inputData?.[`${keyPrefix}start`],
            'stop': bundle.inputData?.[`${keyPrefix}stop`],
            '_class': bundle.inputData?.[`${keyPrefix}_class`],
        }
    },
}
