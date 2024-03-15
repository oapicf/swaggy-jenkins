const utils = require('../utils/utils');
const BranchImpllinks = require('../models/BranchImpllinks');
const BranchImplpermissions = require('../models/BranchImplpermissions');
const PipelineRunImpl = require('../models/PipelineRunImpl');
const StringParameterDefinition = require('../models/StringParameterDefinition');

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
                key: `${keyPrefix}fullDisplayName`,
                label: `[${labelPrefix}fullDisplayName]`,
                type: 'string',
            },
            {
                key: `${keyPrefix}fullName`,
                label: `[${labelPrefix}fullName]`,
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
                key: `${keyPrefix}parameters`,
                label: `[${labelPrefix}parameters]`,
                children: StringParameterDefinition.fields(`${keyPrefix}parameters${!isInput ? '[]' : ''}`, isInput, true), 
            },
            ...BranchImplpermissions.fields(`${keyPrefix}permissions`, isInput),
            {
                key: `${keyPrefix}weatherScore`,
                label: `[${labelPrefix}weatherScore]`,
                type: 'integer',
            },
            {
                key: `${keyPrefix}pullRequest`,
                label: `[${labelPrefix}pullRequest]`,
                type: 'string',
            },
            ...BranchImpllinks.fields(`${keyPrefix}_links`, isInput),
            ...PipelineRunImpl.fields(`${keyPrefix}latestRun`, isInput),
        ]
    },
    mapping: (bundle, prefix = '') => {
        const {keyPrefix} = utils.buildKeyAndLabel(prefix)
        return {
            '_class': bundle.inputData?.[`${keyPrefix}_class`],
            'displayName': bundle.inputData?.[`${keyPrefix}displayName`],
            'estimatedDurationInMillis': bundle.inputData?.[`${keyPrefix}estimatedDurationInMillis`],
            'fullDisplayName': bundle.inputData?.[`${keyPrefix}fullDisplayName`],
            'fullName': bundle.inputData?.[`${keyPrefix}fullName`],
            'name': bundle.inputData?.[`${keyPrefix}name`],
            'organization': bundle.inputData?.[`${keyPrefix}organization`],
            'parameters': utils.childMapping(bundle.inputData?.[`${keyPrefix}parameters`], `${keyPrefix}parameters`, StringParameterDefinition),
            'permissions': utils.removeIfEmpty(BranchImplpermissions.mapping(bundle, `${keyPrefix}permissions`)),
            'weatherScore': bundle.inputData?.[`${keyPrefix}weatherScore`],
            'pullRequest': bundle.inputData?.[`${keyPrefix}pullRequest`],
            '_links': utils.removeIfEmpty(BranchImpllinks.mapping(bundle, `${keyPrefix}_links`)),
            'latestRun': utils.removeIfEmpty(PipelineRunImpl.mapping(bundle, `${keyPrefix}latestRun`)),
        }
    },
}
