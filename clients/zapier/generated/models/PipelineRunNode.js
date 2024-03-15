const utils = require('../utils/utils');
const PipelineRunNodeedges = require('../models/PipelineRunNodeedges');

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
                key: `${keyPrefix}durationInMillis`,
                label: `[${labelPrefix}durationInMillis]`,
                type: 'integer',
            },
            {
                key: `${keyPrefix}edges`,
                label: `[${labelPrefix}edges]`,
                children: PipelineRunNodeedges.fields(`${keyPrefix}edges${!isInput ? '[]' : ''}`, isInput, true), 
            },
            {
                key: `${keyPrefix}id`,
                label: `[${labelPrefix}id]`,
                type: 'string',
            },
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
            'displayName': bundle.inputData?.[`${keyPrefix}displayName`],
            'durationInMillis': bundle.inputData?.[`${keyPrefix}durationInMillis`],
            'edges': utils.childMapping(bundle.inputData?.[`${keyPrefix}edges`], `${keyPrefix}edges`, PipelineRunNodeedges),
            'id': bundle.inputData?.[`${keyPrefix}id`],
            'result': bundle.inputData?.[`${keyPrefix}result`],
            'startTime': bundle.inputData?.[`${keyPrefix}startTime`],
            'state': bundle.inputData?.[`${keyPrefix}state`],
        }
    },
}
