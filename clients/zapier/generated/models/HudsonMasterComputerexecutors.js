const utils = require('../utils/utils');
const FreeStyleBuild = require('../models/FreeStyleBuild');

module.exports = {
    fields: (prefix = '', isInput = true, isArrayChild = false) => {
        const {keyPrefix, labelPrefix} = utils.buildKeyAndLabel(prefix, isInput, isArrayChild)
        return [
            ...FreeStyleBuild.fields(`${keyPrefix}currentExecutable`, isInput),
            {
                key: `${keyPrefix}idle`,
                label: `[${labelPrefix}idle]`,
                type: 'boolean',
            },
            {
                key: `${keyPrefix}likelyStuck`,
                label: `[${labelPrefix}likelyStuck]`,
                type: 'boolean',
            },
            {
                key: `${keyPrefix}number`,
                label: `[${labelPrefix}number]`,
                type: 'integer',
            },
            {
                key: `${keyPrefix}progress`,
                label: `[${labelPrefix}progress]`,
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
            'currentExecutable': utils.removeIfEmpty(FreeStyleBuild.mapping(bundle, `${keyPrefix}currentExecutable`)),
            'idle': bundle.inputData?.[`${keyPrefix}idle`],
            'likelyStuck': bundle.inputData?.[`${keyPrefix}likelyStuck`],
            'number': bundle.inputData?.[`${keyPrefix}number`],
            'progress': bundle.inputData?.[`${keyPrefix}progress`],
            '_class': bundle.inputData?.[`${keyPrefix}_class`],
        }
    },
}
