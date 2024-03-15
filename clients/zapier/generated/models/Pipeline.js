const utils = require('../utils/utils');
const PipelinelatestRun = require('../models/PipelinelatestRun');

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
                key: `${keyPrefix}organization`,
                label: `[${labelPrefix}organization]`,
                type: 'string',
            },
            {
                key: `${keyPrefix}name`,
                label: `[${labelPrefix}name]`,
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
                key: `${keyPrefix}weatherScore`,
                label: `[${labelPrefix}weatherScore]`,
                type: 'integer',
            },
            {
                key: `${keyPrefix}estimatedDurationInMillis`,
                label: `[${labelPrefix}estimatedDurationInMillis]`,
                type: 'integer',
            },
            ...PipelinelatestRun.fields(`${keyPrefix}latestRun`, isInput),
        ]
    },
    mapping: (bundle, prefix = '') => {
        const {keyPrefix} = utils.buildKeyAndLabel(prefix)
        return {
            '_class': bundle.inputData?.[`${keyPrefix}_class`],
            'organization': bundle.inputData?.[`${keyPrefix}organization`],
            'name': bundle.inputData?.[`${keyPrefix}name`],
            'displayName': bundle.inputData?.[`${keyPrefix}displayName`],
            'fullName': bundle.inputData?.[`${keyPrefix}fullName`],
            'weatherScore': bundle.inputData?.[`${keyPrefix}weatherScore`],
            'estimatedDurationInMillis': bundle.inputData?.[`${keyPrefix}estimatedDurationInMillis`],
            'latestRun': utils.removeIfEmpty(PipelinelatestRun.mapping(bundle, `${keyPrefix}latestRun`)),
        }
    },
}
