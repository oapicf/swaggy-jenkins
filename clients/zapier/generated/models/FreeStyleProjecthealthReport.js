const utils = require('../utils/utils');

module.exports = {
    fields: (prefix = '', isInput = true, isArrayChild = false) => {
        const {keyPrefix, labelPrefix} = utils.buildKeyAndLabel(prefix, isInput, isArrayChild)
        return [
            {
                key: `${keyPrefix}description`,
                label: `[${labelPrefix}description]`,
                type: 'string',
            },
            {
                key: `${keyPrefix}iconClassName`,
                label: `[${labelPrefix}iconClassName]`,
                type: 'string',
            },
            {
                key: `${keyPrefix}iconUrl`,
                label: `[${labelPrefix}iconUrl]`,
                type: 'string',
            },
            {
                key: `${keyPrefix}score`,
                label: `[${labelPrefix}score]`,
                type: 'integer',
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
            'description': bundle.inputData?.[`${keyPrefix}description`],
            'iconClassName': bundle.inputData?.[`${keyPrefix}iconClassName`],
            'iconUrl': bundle.inputData?.[`${keyPrefix}iconUrl`],
            'score': bundle.inputData?.[`${keyPrefix}score`],
            '_class': bundle.inputData?.[`${keyPrefix}_class`],
        }
    },
}
