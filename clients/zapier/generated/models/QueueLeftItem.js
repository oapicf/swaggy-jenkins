const utils = require('../utils/utils');
const CauseAction = require('../models/CauseAction');
const FreeStyleBuild = require('../models/FreeStyleBuild');
const FreeStyleProject = require('../models/FreeStyleProject');

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
                key: `${keyPrefix}actions`,
                label: `[${labelPrefix}actions]`,
                children: CauseAction.fields(`${keyPrefix}actions${!isInput ? '[]' : ''}`, isInput, true), 
            },
            {
                key: `${keyPrefix}blocked`,
                label: `[${labelPrefix}blocked]`,
                type: 'boolean',
            },
            {
                key: `${keyPrefix}buildable`,
                label: `[${labelPrefix}buildable]`,
                type: 'boolean',
            },
            {
                key: `${keyPrefix}id`,
                label: `[${labelPrefix}id]`,
                type: 'integer',
            },
            {
                key: `${keyPrefix}inQueueSince`,
                label: `[${labelPrefix}inQueueSince]`,
                type: 'integer',
            },
            {
                key: `${keyPrefix}params`,
                label: `[${labelPrefix}params]`,
                type: 'string',
            },
            {
                key: `${keyPrefix}stuck`,
                label: `[${labelPrefix}stuck]`,
                type: 'boolean',
            },
            ...FreeStyleProject.fields(`${keyPrefix}task`, isInput),
            {
                key: `${keyPrefix}url`,
                label: `[${labelPrefix}url]`,
                type: 'string',
            },
            {
                key: `${keyPrefix}why`,
                label: `[${labelPrefix}why]`,
                type: 'string',
            },
            {
                key: `${keyPrefix}cancelled`,
                label: `[${labelPrefix}cancelled]`,
                type: 'boolean',
            },
            ...FreeStyleBuild.fields(`${keyPrefix}executable`, isInput),
        ]
    },
    mapping: (bundle, prefix = '') => {
        const {keyPrefix} = utils.buildKeyAndLabel(prefix)
        return {
            '_class': bundle.inputData?.[`${keyPrefix}_class`],
            'actions': utils.childMapping(bundle.inputData?.[`${keyPrefix}actions`], `${keyPrefix}actions`, CauseAction),
            'blocked': bundle.inputData?.[`${keyPrefix}blocked`],
            'buildable': bundle.inputData?.[`${keyPrefix}buildable`],
            'id': bundle.inputData?.[`${keyPrefix}id`],
            'inQueueSince': bundle.inputData?.[`${keyPrefix}inQueueSince`],
            'params': bundle.inputData?.[`${keyPrefix}params`],
            'stuck': bundle.inputData?.[`${keyPrefix}stuck`],
            'task': utils.removeIfEmpty(FreeStyleProject.mapping(bundle, `${keyPrefix}task`)),
            'url': bundle.inputData?.[`${keyPrefix}url`],
            'why': bundle.inputData?.[`${keyPrefix}why`],
            'cancelled': bundle.inputData?.[`${keyPrefix}cancelled`],
            'executable': utils.removeIfEmpty(FreeStyleBuild.mapping(bundle, `${keyPrefix}executable`)),
        }
    },
}
