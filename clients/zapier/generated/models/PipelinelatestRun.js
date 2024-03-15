const utils = require('../utils/utils');
const PipelinelatestRunartifacts = require('../models/PipelinelatestRunartifacts');

module.exports = {
    fields: (prefix = '', isInput = true, isArrayChild = false) => {
        const {keyPrefix, labelPrefix} = utils.buildKeyAndLabel(prefix, isInput, isArrayChild)
        return [
            {
                key: `${keyPrefix}artifacts`,
                label: `[${labelPrefix}artifacts]`,
                children: PipelinelatestRunartifacts.fields(`${keyPrefix}artifacts${!isInput ? '[]' : ''}`, isInput, true), 
            },
            {
                key: `${keyPrefix}durationInMillis`,
                label: `[${labelPrefix}durationInMillis]`,
                type: 'integer',
            },
            {
                key: `${keyPrefix}estimatedDurationInMillis`,
                label: `[${labelPrefix}estimatedDurationInMillis]`,
                type: 'integer',
            },
            {
                key: `${keyPrefix}enQueueTime`,
                label: `[${labelPrefix}enQueueTime]`,
                type: 'string',
            },
            {
                key: `${keyPrefix}endTime`,
                label: `[${labelPrefix}endTime]`,
                type: 'string',
            },
            {
                key: `${keyPrefix}id`,
                label: `[${labelPrefix}id]`,
                type: 'string',
            },
            {
                key: `${keyPrefix}organization`,
                label: `[${labelPrefix}organization]`,
                type: 'string',
            },
            {
                key: `${keyPrefix}pipeline`,
                label: `[${labelPrefix}pipeline]`,
                type: 'string',
            },
            {
                key: `${keyPrefix}result`,
                label: `[${labelPrefix}result]`,
                type: 'string',
            },
            {
                key: `${keyPrefix}runSummary`,
                label: `[${labelPrefix}runSummary]`,
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
            {
                key: `${keyPrefix}type`,
                label: `[${labelPrefix}type]`,
                type: 'string',
            },
            {
                key: `${keyPrefix}commitId`,
                label: `[${labelPrefix}commitId]`,
                type: 'string',
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
            'artifacts': utils.childMapping(bundle.inputData?.[`${keyPrefix}artifacts`], `${keyPrefix}artifacts`, PipelinelatestRunartifacts),
            'durationInMillis': bundle.inputData?.[`${keyPrefix}durationInMillis`],
            'estimatedDurationInMillis': bundle.inputData?.[`${keyPrefix}estimatedDurationInMillis`],
            'enQueueTime': bundle.inputData?.[`${keyPrefix}enQueueTime`],
            'endTime': bundle.inputData?.[`${keyPrefix}endTime`],
            'id': bundle.inputData?.[`${keyPrefix}id`],
            'organization': bundle.inputData?.[`${keyPrefix}organization`],
            'pipeline': bundle.inputData?.[`${keyPrefix}pipeline`],
            'result': bundle.inputData?.[`${keyPrefix}result`],
            'runSummary': bundle.inputData?.[`${keyPrefix}runSummary`],
            'startTime': bundle.inputData?.[`${keyPrefix}startTime`],
            'state': bundle.inputData?.[`${keyPrefix}state`],
            'type': bundle.inputData?.[`${keyPrefix}type`],
            'commitId': bundle.inputData?.[`${keyPrefix}commitId`],
            '_class': bundle.inputData?.[`${keyPrefix}_class`],
        }
    },
}
