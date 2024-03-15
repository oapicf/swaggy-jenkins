const utils = require('../utils/utils');
const PipelineRunImpllinks = require('../models/PipelineRunImpllinks');

module.exports = {
    fields: (prefix = '', isInput = true, isArrayChild = false) => {
        const {keyPrefix, labelPrefix} = utils.buildKeyAndLabel(prefix, isInput, isArrayChild)
        return [
            {
                key: `${keyPrefix}_class`,
                label: `[${labelPrefix}_class]`,
                type: 'string',
            },
            ...PipelineRunImpllinks.fields(`${keyPrefix}_links`, isInput),
            {
                key: `${keyPrefix}durationInMillis`,
                label: `[${labelPrefix}durationInMillis]`,
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
                key: `${keyPrefix}estimatedDurationInMillis`,
                label: `[${labelPrefix}estimatedDurationInMillis]`,
                type: 'integer',
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
        ]
    },
    mapping: (bundle, prefix = '') => {
        const {keyPrefix} = utils.buildKeyAndLabel(prefix)
        return {
            '_class': bundle.inputData?.[`${keyPrefix}_class`],
            '_links': utils.removeIfEmpty(PipelineRunImpllinks.mapping(bundle, `${keyPrefix}_links`)),
            'durationInMillis': bundle.inputData?.[`${keyPrefix}durationInMillis`],
            'enQueueTime': bundle.inputData?.[`${keyPrefix}enQueueTime`],
            'endTime': bundle.inputData?.[`${keyPrefix}endTime`],
            'estimatedDurationInMillis': bundle.inputData?.[`${keyPrefix}estimatedDurationInMillis`],
            'id': bundle.inputData?.[`${keyPrefix}id`],
            'organization': bundle.inputData?.[`${keyPrefix}organization`],
            'pipeline': bundle.inputData?.[`${keyPrefix}pipeline`],
            'result': bundle.inputData?.[`${keyPrefix}result`],
            'runSummary': bundle.inputData?.[`${keyPrefix}runSummary`],
            'startTime': bundle.inputData?.[`${keyPrefix}startTime`],
            'state': bundle.inputData?.[`${keyPrefix}state`],
            'type': bundle.inputData?.[`${keyPrefix}type`],
            'commitId': bundle.inputData?.[`${keyPrefix}commitId`],
        }
    },
}
