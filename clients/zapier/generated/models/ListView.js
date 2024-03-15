const utils = require('../utils/utils');
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
                key: `${keyPrefix}description`,
                label: `[${labelPrefix}description]`,
                type: 'string',
            },
            {
                key: `${keyPrefix}jobs`,
                label: `[${labelPrefix}jobs]`,
                children: FreeStyleProject.fields(`${keyPrefix}jobs${!isInput ? '[]' : ''}`, isInput, true), 
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
        ]
    },
    mapping: (bundle, prefix = '') => {
        const {keyPrefix} = utils.buildKeyAndLabel(prefix)
        return {
            '_class': bundle.inputData?.[`${keyPrefix}_class`],
            'description': bundle.inputData?.[`${keyPrefix}description`],
            'jobs': utils.childMapping(bundle.inputData?.[`${keyPrefix}jobs`], `${keyPrefix}jobs`, FreeStyleProject),
            'name': bundle.inputData?.[`${keyPrefix}name`],
            'url': bundle.inputData?.[`${keyPrefix}url`],
        }
    },
}
