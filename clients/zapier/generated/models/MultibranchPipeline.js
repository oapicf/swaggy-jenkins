const utils = require('../utils/utils');

module.exports = {
    fields: (prefix = '', isInput = true, isArrayChild = false) => {
        const {keyPrefix, labelPrefix} = utils.buildKeyAndLabel(prefix, isInput, isArrayChild)
        return [
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
            {
                key: `${keyPrefix}branchNames`,
                label: `[${labelPrefix}branchNames]`,
                list: true,
                type: 'string',
            },
            {
                key: `${keyPrefix}numberOfFailingBranches`,
                label: `[${labelPrefix}numberOfFailingBranches]`,
                type: 'integer',
            },
            {
                key: `${keyPrefix}numberOfFailingPullRequests`,
                label: `[${labelPrefix}numberOfFailingPullRequests]`,
                type: 'integer',
            },
            {
                key: `${keyPrefix}numberOfSuccessfulBranches`,
                label: `[${labelPrefix}numberOfSuccessfulBranches]`,
                type: 'integer',
            },
            {
                key: `${keyPrefix}numberOfSuccessfulPullRequests`,
                label: `[${labelPrefix}numberOfSuccessfulPullRequests]`,
                type: 'integer',
            },
            {
                key: `${keyPrefix}totalNumberOfBranches`,
                label: `[${labelPrefix}totalNumberOfBranches]`,
                type: 'integer',
            },
            {
                key: `${keyPrefix}totalNumberOfPullRequests`,
                label: `[${labelPrefix}totalNumberOfPullRequests]`,
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
            'displayName': bundle.inputData?.[`${keyPrefix}displayName`],
            'estimatedDurationInMillis': bundle.inputData?.[`${keyPrefix}estimatedDurationInMillis`],
            'latestRun': bundle.inputData?.[`${keyPrefix}latestRun`],
            'name': bundle.inputData?.[`${keyPrefix}name`],
            'organization': bundle.inputData?.[`${keyPrefix}organization`],
            'weatherScore': bundle.inputData?.[`${keyPrefix}weatherScore`],
            'branchNames': bundle.inputData?.[`${keyPrefix}branchNames`],
            'numberOfFailingBranches': bundle.inputData?.[`${keyPrefix}numberOfFailingBranches`],
            'numberOfFailingPullRequests': bundle.inputData?.[`${keyPrefix}numberOfFailingPullRequests`],
            'numberOfSuccessfulBranches': bundle.inputData?.[`${keyPrefix}numberOfSuccessfulBranches`],
            'numberOfSuccessfulPullRequests': bundle.inputData?.[`${keyPrefix}numberOfSuccessfulPullRequests`],
            'totalNumberOfBranches': bundle.inputData?.[`${keyPrefix}totalNumberOfBranches`],
            'totalNumberOfPullRequests': bundle.inputData?.[`${keyPrefix}totalNumberOfPullRequests`],
            '_class': bundle.inputData?.[`${keyPrefix}_class`],
        }
    },
}
