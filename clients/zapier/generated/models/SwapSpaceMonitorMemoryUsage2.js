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
                key: `${keyPrefix}availablePhysicalMemory`,
                label: `[${labelPrefix}availablePhysicalMemory]`,
                type: 'integer',
            },
            {
                key: `${keyPrefix}availableSwapSpace`,
                label: `[${labelPrefix}availableSwapSpace]`,
                type: 'integer',
            },
            {
                key: `${keyPrefix}totalPhysicalMemory`,
                label: `[${labelPrefix}totalPhysicalMemory]`,
                type: 'integer',
            },
            {
                key: `${keyPrefix}totalSwapSpace`,
                label: `[${labelPrefix}totalSwapSpace]`,
                type: 'integer',
            },
        ]
    },
    mapping: (bundle, prefix = '') => {
        const {keyPrefix} = utils.buildKeyAndLabel(prefix)
        return {
            '_class': bundle.inputData?.[`${keyPrefix}_class`],
            'availablePhysicalMemory': bundle.inputData?.[`${keyPrefix}availablePhysicalMemory`],
            'availableSwapSpace': bundle.inputData?.[`${keyPrefix}availableSwapSpace`],
            'totalPhysicalMemory': bundle.inputData?.[`${keyPrefix}totalPhysicalMemory`],
            'totalSwapSpace': bundle.inputData?.[`${keyPrefix}totalSwapSpace`],
        }
    },
}
