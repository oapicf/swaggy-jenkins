const utils = require('../utils/utils');
const HudsonMasterComputerexecutors = require('../models/HudsonMasterComputerexecutors');
const HudsonMasterComputermonitorData = require('../models/HudsonMasterComputermonitorData');
const Label1 = require('../models/Label1');

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
                key: `${keyPrefix}executors`,
                label: `[${labelPrefix}executors]`,
                children: HudsonMasterComputerexecutors.fields(`${keyPrefix}executors${!isInput ? '[]' : ''}`, isInput, true), 
            },
            {
                key: `${keyPrefix}icon`,
                label: `[${labelPrefix}icon]`,
                type: 'string',
            },
            {
                key: `${keyPrefix}iconClassName`,
                label: `[${labelPrefix}iconClassName]`,
                type: 'string',
            },
            {
                key: `${keyPrefix}idle`,
                label: `[${labelPrefix}idle]`,
                type: 'boolean',
            },
            {
                key: `${keyPrefix}jnlpAgent`,
                label: `[${labelPrefix}jnlpAgent]`,
                type: 'boolean',
            },
            {
                key: `${keyPrefix}launchSupported`,
                label: `[${labelPrefix}launchSupported]`,
                type: 'boolean',
            },
            ...Label1.fields(`${keyPrefix}loadStatistics`, isInput),
            {
                key: `${keyPrefix}manualLaunchAllowed`,
                label: `[${labelPrefix}manualLaunchAllowed]`,
                type: 'boolean',
            },
            ...HudsonMasterComputermonitorData.fields(`${keyPrefix}monitorData`, isInput),
            {
                key: `${keyPrefix}numExecutors`,
                label: `[${labelPrefix}numExecutors]`,
                type: 'integer',
            },
            {
                key: `${keyPrefix}offline`,
                label: `[${labelPrefix}offline]`,
                type: 'boolean',
            },
            {
                key: `${keyPrefix}offlineCause`,
                label: `[${labelPrefix}offlineCause]`,
                type: 'string',
            },
            {
                key: `${keyPrefix}offlineCauseReason`,
                label: `[${labelPrefix}offlineCauseReason]`,
                type: 'string',
            },
            {
                key: `${keyPrefix}temporarilyOffline`,
                label: `[${labelPrefix}temporarilyOffline]`,
                type: 'boolean',
            },
        ]
    },
    mapping: (bundle, prefix = '') => {
        const {keyPrefix} = utils.buildKeyAndLabel(prefix)
        return {
            '_class': bundle.inputData?.[`${keyPrefix}_class`],
            'displayName': bundle.inputData?.[`${keyPrefix}displayName`],
            'executors': utils.childMapping(bundle.inputData?.[`${keyPrefix}executors`], `${keyPrefix}executors`, HudsonMasterComputerexecutors),
            'icon': bundle.inputData?.[`${keyPrefix}icon`],
            'iconClassName': bundle.inputData?.[`${keyPrefix}iconClassName`],
            'idle': bundle.inputData?.[`${keyPrefix}idle`],
            'jnlpAgent': bundle.inputData?.[`${keyPrefix}jnlpAgent`],
            'launchSupported': bundle.inputData?.[`${keyPrefix}launchSupported`],
            'loadStatistics': utils.removeIfEmpty(Label1.mapping(bundle, `${keyPrefix}loadStatistics`)),
            'manualLaunchAllowed': bundle.inputData?.[`${keyPrefix}manualLaunchAllowed`],
            'monitorData': utils.removeIfEmpty(HudsonMasterComputermonitorData.mapping(bundle, `${keyPrefix}monitorData`)),
            'numExecutors': bundle.inputData?.[`${keyPrefix}numExecutors`],
            'offline': bundle.inputData?.[`${keyPrefix}offline`],
            'offlineCause': bundle.inputData?.[`${keyPrefix}offlineCause`],
            'offlineCauseReason': bundle.inputData?.[`${keyPrefix}offlineCauseReason`],
            'temporarilyOffline': bundle.inputData?.[`${keyPrefix}temporarilyOffline`],
        }
    },
}
