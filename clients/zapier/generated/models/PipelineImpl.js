const utils = require('../utils/utils');
const PipelineImpllinks = require('../models/PipelineImpllinks');

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
                key: `${keyPrefix}estimatedDurationInMillis`,
                label: `[${labelPrefix}estimatedDurationInMillis]`,
                type: 'integer',
            },
            {
                key: `${keyPrefix}fullName`,
                label: `[${labelPrefix}fullName]`,
                type: 'string',
            },
            {
                key: `${keyPrefix}latestRun`,
                label: `[${labelPrefix}latestRun]`,
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
                key: `${keyPrefix}weatherScore`,
                label: `[${labelPrefix}weatherScore]`,
                type: 'integer',
            },
            ...PipelineImpllinks.fields(`${keyPrefix}_links`, isInput),
        ]
    },
    mapping: (bundle, prefix = '') => {
        const {keyPrefix} = utils.buildKeyAndLabel(prefix)
        return {
            '_class': bundle.inputData?.[`${keyPrefix}_class`],
            'displayName': bundle.inputData?.[`${keyPrefix}displayName`],
            'estimatedDurationInMillis': bundle.inputData?.[`${keyPrefix}estimatedDurationInMillis`],
            'fullName': bundle.inputData?.[`${keyPrefix}fullName`],
            'latestRun': bundle.inputData?.[`${keyPrefix}latestRun`],
            'name': bundle.inputData?.[`${keyPrefix}name`],
            'organization': bundle.inputData?.[`${keyPrefix}organization`],
            'weatherScore': bundle.inputData?.[`${keyPrefix}weatherScore`],
            '_links': utils.removeIfEmpty(PipelineImpllinks.mapping(bundle, `${keyPrefix}_links`)),
        }
    },
}
