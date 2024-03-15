const utils = require('../utils/utils');
const PipelineBranchesitemlatestRun = require('../models/PipelineBranchesitemlatestRun');
const PipelineBranchesitempullRequest = require('../models/PipelineBranchesitempullRequest');

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
                key: `${keyPrefix}name`,
                label: `[${labelPrefix}name]`,
                type: 'string',
            },
            {
                key: `${keyPrefix}weatherScore`,
                label: `[${labelPrefix}weatherScore]`,
                type: 'integer',
            },
            ...PipelineBranchesitemlatestRun.fields(`${keyPrefix}latestRun`, isInput),
            {
                key: `${keyPrefix}organization`,
                label: `[${labelPrefix}organization]`,
                type: 'string',
            },
            ...PipelineBranchesitempullRequest.fields(`${keyPrefix}pullRequest`, isInput),
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
            'name': bundle.inputData?.[`${keyPrefix}name`],
            'weatherScore': bundle.inputData?.[`${keyPrefix}weatherScore`],
            'latestRun': utils.removeIfEmpty(PipelineBranchesitemlatestRun.mapping(bundle, `${keyPrefix}latestRun`)),
            'organization': bundle.inputData?.[`${keyPrefix}organization`],
            'pullRequest': utils.removeIfEmpty(PipelineBranchesitempullRequest.mapping(bundle, `${keyPrefix}pullRequest`)),
            'totalNumberOfPullRequests': bundle.inputData?.[`${keyPrefix}totalNumberOfPullRequests`],
            '_class': bundle.inputData?.[`${keyPrefix}_class`],
        }
    },
}
