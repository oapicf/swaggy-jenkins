const utils = require('../utils/utils');
const CauseUserIdCause = require('../models/CauseUserIdCause');

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
                key: `${keyPrefix}causes`,
                label: `[${labelPrefix}causes]`,
                children: CauseUserIdCause.fields(`${keyPrefix}causes${!isInput ? '[]' : ''}`, isInput, true), 
            },
        ]
    },
    mapping: (bundle, prefix = '') => {
        const {keyPrefix} = utils.buildKeyAndLabel(prefix)
        return {
            '_class': bundle.inputData?.[`${keyPrefix}_class`],
            'causes': utils.childMapping(bundle.inputData?.[`${keyPrefix}causes`], `${keyPrefix}causes`, CauseUserIdCause),
        }
    },
}
