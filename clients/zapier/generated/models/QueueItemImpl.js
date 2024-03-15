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
                key: `${keyPrefix}expectedBuildNumber`,
                label: `[${labelPrefix}expectedBuildNumber]`,
                type: 'integer',
            },
            {
                key: `${keyPrefix}id`,
                label: `[${labelPrefix}id]`,
                type: 'string',
            },
            {
                key: `${keyPrefix}pipeline`,
                label: `[${labelPrefix}pipeline]`,
                type: 'string',
            },
            {
                key: `${keyPrefix}queuedTime`,
                label: `[${labelPrefix}queuedTime]`,
                type: 'integer',
            },
        ]
    },
    mapping: (bundle, prefix = '') => {
        const {keyPrefix} = utils.buildKeyAndLabel(prefix)
        return {
            '_class': bundle.inputData?.[`${keyPrefix}_class`],
            'expectedBuildNumber': bundle.inputData?.[`${keyPrefix}expectedBuildNumber`],
            'id': bundle.inputData?.[`${keyPrefix}id`],
            'pipeline': bundle.inputData?.[`${keyPrefix}pipeline`],
            'queuedTime': bundle.inputData?.[`${keyPrefix}queuedTime`],
        }
    },
}
