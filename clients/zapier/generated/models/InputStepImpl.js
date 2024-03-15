const utils = require('../utils/utils');
const InputStepImpllinks = require('../models/InputStepImpllinks');
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
            ...InputStepImpllinks.fields(`${keyPrefix}_links`, isInput),
            {
                key: `${keyPrefix}id`,
                label: `[${labelPrefix}id]`,
                type: 'string',
            },
            {
                key: `${keyPrefix}message`,
                label: `[${labelPrefix}message]`,
                type: 'string',
            },
            {
                key: `${keyPrefix}ok`,
                label: `[${labelPrefix}ok]`,
                type: 'string',
            },
            {
                key: `${keyPrefix}parameters`,
                label: `[${labelPrefix}parameters]`,
                children: StringParameterDefinition.fields(`${keyPrefix}parameters${!isInput ? '[]' : ''}`, isInput, true), 
            },
            {
                key: `${keyPrefix}submitter`,
                label: `[${labelPrefix}submitter]`,
                type: 'string',
            },
        ]
    },
    mapping: (bundle, prefix = '') => {
        const {keyPrefix} = utils.buildKeyAndLabel(prefix)
        return {
            '_class': bundle.inputData?.[`${keyPrefix}_class`],
            '_links': utils.removeIfEmpty(InputStepImpllinks.mapping(bundle, `${keyPrefix}_links`)),
            'id': bundle.inputData?.[`${keyPrefix}id`],
            'message': bundle.inputData?.[`${keyPrefix}message`],
            'ok': bundle.inputData?.[`${keyPrefix}ok`],
            'parameters': utils.childMapping(bundle.inputData?.[`${keyPrefix}parameters`], `${keyPrefix}parameters`, StringParameterDefinition),
            'submitter': bundle.inputData?.[`${keyPrefix}submitter`],
        }
    },
}
