const utils = require('../utils/utils');
const FreeStyleBuild = require('../models/FreeStyleBuild');
const FreeStyleProjectactions = require('../models/FreeStyleProjectactions');
const FreeStyleProjecthealthReport = require('../models/FreeStyleProjecthealthReport');
const NullSCM = require('../models/NullSCM');

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
                key: `${keyPrefix}name`,
                label: `[${labelPrefix}name]`,
                type: 'string',
            },
            {
                key: `${keyPrefix}url`,
                label: `[${labelPrefix}url]`,
                type: 'string',
            },
            {
                key: `${keyPrefix}color`,
                label: `[${labelPrefix}color]`,
                type: 'string',
            },
            {
                key: `${keyPrefix}actions`,
                label: `[${labelPrefix}actions]`,
                children: FreeStyleProjectactions.fields(`${keyPrefix}actions${!isInput ? '[]' : ''}`, isInput, true), 
            },
            {
                key: `${keyPrefix}description`,
                label: `[${labelPrefix}description]`,
                type: 'string',
            },
            {
                key: `${keyPrefix}displayName`,
                label: `[${labelPrefix}displayName]`,
                type: 'string',
            },
            {
                key: `${keyPrefix}displayNameOrNull`,
                label: `[${labelPrefix}displayNameOrNull]`,
                type: 'string',
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
                key: `${keyPrefix}buildable`,
                label: `[${labelPrefix}buildable]`,
                type: 'boolean',
            },
            {
                key: `${keyPrefix}builds`,
                label: `[${labelPrefix}builds]`,
                children: FreeStyleBuild.fields(`${keyPrefix}builds${!isInput ? '[]' : ''}`, isInput, true), 
            },
            ...FreeStyleBuild.fields(`${keyPrefix}firstBuild`, isInput),
            {
                key: `${keyPrefix}healthReport`,
                label: `[${labelPrefix}healthReport]`,
                children: FreeStyleProjecthealthReport.fields(`${keyPrefix}healthReport${!isInput ? '[]' : ''}`, isInput, true), 
            },
            {
                key: `${keyPrefix}inQueue`,
                label: `[${labelPrefix}inQueue]`,
                type: 'boolean',
            },
            {
                key: `${keyPrefix}keepDependencies`,
                label: `[${labelPrefix}keepDependencies]`,
                type: 'boolean',
            },
            ...FreeStyleBuild.fields(`${keyPrefix}lastBuild`, isInput),
            ...FreeStyleBuild.fields(`${keyPrefix}lastCompletedBuild`, isInput),
            {
                key: `${keyPrefix}lastFailedBuild`,
                label: `[${labelPrefix}lastFailedBuild]`,
                type: 'string',
            },
            ...FreeStyleBuild.fields(`${keyPrefix}lastStableBuild`, isInput),
            ...FreeStyleBuild.fields(`${keyPrefix}lastSuccessfulBuild`, isInput),
            {
                key: `${keyPrefix}lastUnstableBuild`,
                label: `[${labelPrefix}lastUnstableBuild]`,
                type: 'string',
            },
            {
                key: `${keyPrefix}lastUnsuccessfulBuild`,
                label: `[${labelPrefix}lastUnsuccessfulBuild]`,
                type: 'string',
            },
            {
                key: `${keyPrefix}nextBuildNumber`,
                label: `[${labelPrefix}nextBuildNumber]`,
                type: 'integer',
            },
            {
                key: `${keyPrefix}queueItem`,
                label: `[${labelPrefix}queueItem]`,
                type: 'string',
            },
            {
                key: `${keyPrefix}concurrentBuild`,
                label: `[${labelPrefix}concurrentBuild]`,
                type: 'boolean',
            },
            ...NullSCM.fields(`${keyPrefix}scm`, isInput),
        ]
    },
    mapping: (bundle, prefix = '') => {
        const {keyPrefix} = utils.buildKeyAndLabel(prefix)
        return {
            '_class': bundle.inputData?.[`${keyPrefix}_class`],
            'name': bundle.inputData?.[`${keyPrefix}name`],
            'url': bundle.inputData?.[`${keyPrefix}url`],
            'color': bundle.inputData?.[`${keyPrefix}color`],
            'actions': utils.childMapping(bundle.inputData?.[`${keyPrefix}actions`], `${keyPrefix}actions`, FreeStyleProjectactions),
            'description': bundle.inputData?.[`${keyPrefix}description`],
            'displayName': bundle.inputData?.[`${keyPrefix}displayName`],
            'displayNameOrNull': bundle.inputData?.[`${keyPrefix}displayNameOrNull`],
            'fullDisplayName': bundle.inputData?.[`${keyPrefix}fullDisplayName`],
            'fullName': bundle.inputData?.[`${keyPrefix}fullName`],
            'buildable': bundle.inputData?.[`${keyPrefix}buildable`],
            'builds': utils.childMapping(bundle.inputData?.[`${keyPrefix}builds`], `${keyPrefix}builds`, FreeStyleBuild),
            'firstBuild': utils.removeIfEmpty(FreeStyleBuild.mapping(bundle, `${keyPrefix}firstBuild`)),
            'healthReport': utils.childMapping(bundle.inputData?.[`${keyPrefix}healthReport`], `${keyPrefix}healthReport`, FreeStyleProjecthealthReport),
            'inQueue': bundle.inputData?.[`${keyPrefix}inQueue`],
            'keepDependencies': bundle.inputData?.[`${keyPrefix}keepDependencies`],
            'lastBuild': utils.removeIfEmpty(FreeStyleBuild.mapping(bundle, `${keyPrefix}lastBuild`)),
            'lastCompletedBuild': utils.removeIfEmpty(FreeStyleBuild.mapping(bundle, `${keyPrefix}lastCompletedBuild`)),
            'lastFailedBuild': bundle.inputData?.[`${keyPrefix}lastFailedBuild`],
            'lastStableBuild': utils.removeIfEmpty(FreeStyleBuild.mapping(bundle, `${keyPrefix}lastStableBuild`)),
            'lastSuccessfulBuild': utils.removeIfEmpty(FreeStyleBuild.mapping(bundle, `${keyPrefix}lastSuccessfulBuild`)),
            'lastUnstableBuild': bundle.inputData?.[`${keyPrefix}lastUnstableBuild`],
            'lastUnsuccessfulBuild': bundle.inputData?.[`${keyPrefix}lastUnsuccessfulBuild`],
            'nextBuildNumber': bundle.inputData?.[`${keyPrefix}nextBuildNumber`],
            'queueItem': bundle.inputData?.[`${keyPrefix}queueItem`],
            'concurrentBuild': bundle.inputData?.[`${keyPrefix}concurrentBuild`],
            'scm': utils.removeIfEmpty(NullSCM.mapping(bundle, `${keyPrefix}scm`)),
        }
    },
}
