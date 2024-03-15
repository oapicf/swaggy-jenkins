const utils = require('../utils/utils');
const InputStepImpl = require('../models/InputStepImpl');
const PipelineStepImpllinks = require('../models/PipelineStepImpllinks');

module.exports = {
    fields: (prefix = '', isInput = true, isArrayChild = false) => {
        const {keyPrefix, labelPrefix} = utils.buildKeyAndLabel(prefix, isInput, isArrayChild)
        return [
            {
                key: `${keyPrefix}_class`,
                label: `[${labelPrefix}_class]`,
                type: 'string',
            },
            ...PipelineStepImpllinks.fields(`${keyPrefix}_links`, isInput),
            {
                key: `${keyPrefix}displayName`,
                label: `[${labelPrefix}displayName]`,
                type: 'string',
            },
            {
                key: `${keyPrefix}durationInMillis`,
                label: `[${labelPrefix}durationInMillis]`,
                type: 'integer',
            },
            {
                key: `${keyPrefix}id`,
                label: `[${labelPrefix}id]`,
                type: 'string',
            },
            ...InputStepImpl.fields(`${keyPrefix}input`, isInput),
            {
                key: `${keyPrefix}result`,
                label: `[${labelPrefix}result]`,
                type: 'string',
            },
            {
                key: `${keyPrefix}startTime`,
                label: `[${labelPrefix}startTime]`,
                type: 'string',
            },
            {
                key: `${keyPrefix}state`,
                label: `[${labelPrefix}state]`,
                type: 'string',
            },
        ]
    },
    mapping: (bundle, prefix = '') => {
        const {keyPrefix} = utils.buildKeyAndLabel(prefix)
        return {
            '_class': bundle.inputData?.[`${keyPrefix}_class`],
            '_links': utils.removeIfEmpty(PipelineStepImpllinks.mapping(bundle, `${keyPrefix}_links`)),
            'displayName': bundle.inputData?.[`${keyPrefix}displayName`],
            'durationInMillis': bundle.inputData?.[`${keyPrefix}durationInMillis`],
            'id': bundle.inputData?.[`${keyPrefix}id`],
            'input': utils.removeIfEmpty(InputStepImpl.mapping(bundle, `${keyPrefix}input`)),
            'result': bundle.inputData?.[`${keyPrefix}result`],
            'startTime': bundle.inputData?.[`${keyPrefix}startTime`],
            'state': bundle.inputData?.[`${keyPrefix}state`],
        }
    },
}
