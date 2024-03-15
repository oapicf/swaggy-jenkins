const utils = require('../utils/utils');

module.exports = {
    fields: (prefix = '', isInput = true, isArrayChild = false) => {
        const {keyPrefix, labelPrefix} = utils.buildKeyAndLabel(prefix, isInput, isArrayChild)
        return [
            {
                key: `${keyPrefix}name`,
                label: `[${labelPrefix}name]`,
                type: 'string',
            },
            {
                key: `${keyPrefix}sha`,
                label: `[${labelPrefix}sha]`,
                type: 'string',
            },
            {
                key: `${keyPrefix}_class`,
                label: `[${labelPrefix}_class]`,
                type: 'string',
            },
            {
                key: `${keyPrefix}repo`,
                label: `[${labelPrefix}repo]`,
                type: 'string',
            },
            {
                key: `${keyPrefix}size`,
                label: `[${labelPrefix}size]`,
                type: 'integer',
            },
            {
                key: `${keyPrefix}owner`,
                label: `[${labelPrefix}owner]`,
                type: 'string',
            },
            {
                key: `${keyPrefix}path`,
                label: `[${labelPrefix}path]`,
                type: 'string',
            },
            {
                key: `${keyPrefix}base64Data`,
                label: `[${labelPrefix}base64Data]`,
                type: 'string',
            },
        ]
    },
    mapping: (bundle, prefix = '') => {
        const {keyPrefix} = utils.buildKeyAndLabel(prefix)
        return {
            'name': bundle.inputData?.[`${keyPrefix}name`],
            'sha': bundle.inputData?.[`${keyPrefix}sha`],
            '_class': bundle.inputData?.[`${keyPrefix}_class`],
            'repo': bundle.inputData?.[`${keyPrefix}repo`],
            'size': bundle.inputData?.[`${keyPrefix}size`],
            'owner': bundle.inputData?.[`${keyPrefix}owner`],
            'path': bundle.inputData?.[`${keyPrefix}path`],
            'base64Data': bundle.inputData?.[`${keyPrefix}base64Data`],
        }
    },
}
