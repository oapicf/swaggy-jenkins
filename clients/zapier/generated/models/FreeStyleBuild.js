const utils = require('../utils/utils');
const CauseAction = require('../models/CauseAction');
const EmptyChangeLogSet = require('../models/EmptyChangeLogSet');

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
                key: `${keyPrefix}number`,
                label: `[${labelPrefix}number]`,
                type: 'integer',
            },
            {
                key: `${keyPrefix}url`,
                label: `[${labelPrefix}url]`,
                type: 'string',
            },
            {
                key: `${keyPrefix}actions`,
                label: `[${labelPrefix}actions]`,
                children: CauseAction.fields(`${keyPrefix}actions${!isInput ? '[]' : ''}`, isInput, true), 
            },
            {
                key: `${keyPrefix}building`,
                label: `[${labelPrefix}building]`,
                type: 'boolean',
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
                key: `${keyPrefix}duration`,
                label: `[${labelPrefix}duration]`,
                type: 'integer',
            },
            {
                key: `${keyPrefix}estimatedDuration`,
                label: `[${labelPrefix}estimatedDuration]`,
                type: 'integer',
            },
            {
                key: `${keyPrefix}executor`,
                label: `[${labelPrefix}executor]`,
                type: 'string',
            },
            {
                key: `${keyPrefix}fullDisplayName`,
                label: `[${labelPrefix}fullDisplayName]`,
                type: 'string',
            },
            {
                key: `${keyPrefix}id`,
                label: `[${labelPrefix}id]`,
                type: 'string',
            },
            {
                key: `${keyPrefix}keepLog`,
                label: `[${labelPrefix}keepLog]`,
                type: 'boolean',
            },
            {
                key: `${keyPrefix}queueId`,
                label: `[${labelPrefix}queueId]`,
                type: 'integer',
            },
            {
                key: `${keyPrefix}result`,
                label: `[${labelPrefix}result]`,
                type: 'string',
            },
            {
                key: `${keyPrefix}timestamp`,
                label: `[${labelPrefix}timestamp]`,
                type: 'integer',
            },
            {
                key: `${keyPrefix}builtOn`,
                label: `[${labelPrefix}builtOn]`,
                type: 'string',
            },
            ...EmptyChangeLogSet.fields(`${keyPrefix}changeSet`, isInput),
        ]
    },
    mapping: (bundle, prefix = '') => {
        const {keyPrefix} = utils.buildKeyAndLabel(prefix)
        return {
            '_class': bundle.inputData?.[`${keyPrefix}_class`],
            'number': bundle.inputData?.[`${keyPrefix}number`],
            'url': bundle.inputData?.[`${keyPrefix}url`],
            'actions': utils.childMapping(bundle.inputData?.[`${keyPrefix}actions`], `${keyPrefix}actions`, CauseAction),
            'building': bundle.inputData?.[`${keyPrefix}building`],
            'description': bundle.inputData?.[`${keyPrefix}description`],
            'displayName': bundle.inputData?.[`${keyPrefix}displayName`],
            'duration': bundle.inputData?.[`${keyPrefix}duration`],
            'estimatedDuration': bundle.inputData?.[`${keyPrefix}estimatedDuration`],
            'executor': bundle.inputData?.[`${keyPrefix}executor`],
            'fullDisplayName': bundle.inputData?.[`${keyPrefix}fullDisplayName`],
            'id': bundle.inputData?.[`${keyPrefix}id`],
            'keepLog': bundle.inputData?.[`${keyPrefix}keepLog`],
            'queueId': bundle.inputData?.[`${keyPrefix}queueId`],
            'result': bundle.inputData?.[`${keyPrefix}result`],
            'timestamp': bundle.inputData?.[`${keyPrefix}timestamp`],
            'builtOn': bundle.inputData?.[`${keyPrefix}builtOn`],
            'changeSet': utils.removeIfEmpty(EmptyChangeLogSet.mapping(bundle, `${keyPrefix}changeSet`)),
        }
    },
}
