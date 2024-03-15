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
                key: `${keyPrefix}displayName`,
                label: `[${labelPrefix}displayName]`,
                type: 'string',
            },
            {
                key: `${keyPrefix}fullName`,
                label: `[${labelPrefix}fullName]`,
                type: 'string',
            },
            {
                key: `${keyPrefix}name`,
                label: `[${labelPrefix}name]`,
                type: 'string',
            },
            {
                key: `${keyPrefix}organization`,
                label: `[${labelPrefix}organization]`,
                type: 'string',
            },
            {
                key: `${keyPrefix}numberOfFolders`,
                label: `[${labelPrefix}numberOfFolders]`,
                type: 'integer',
            },
            {
                key: `${keyPrefix}numberOfPipelines`,
                label: `[${labelPrefix}numberOfPipelines]`,
                type: 'integer',
            },
        ]
    },
    mapping: (bundle, prefix = '') => {
        const {keyPrefix} = utils.buildKeyAndLabel(prefix)
        return {
            '_class': bundle.inputData?.[`${keyPrefix}_class`],
            'displayName': bundle.inputData?.[`${keyPrefix}displayName`],
            'fullName': bundle.inputData?.[`${keyPrefix}fullName`],
            'name': bundle.inputData?.[`${keyPrefix}name`],
            'organization': bundle.inputData?.[`${keyPrefix}organization`],
            'numberOfFolders': bundle.inputData?.[`${keyPrefix}numberOfFolders`],
            'numberOfPipelines': bundle.inputData?.[`${keyPrefix}numberOfPipelines`],
        }
    },
}
