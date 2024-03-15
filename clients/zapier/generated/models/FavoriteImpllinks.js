const utils = require('../utils/utils');
const Link = require('../models/Link');

module.exports = {
    fields: (prefix = '', isInput = true, isArrayChild = false) => {
        const {keyPrefix, labelPrefix} = utils.buildKeyAndLabel(prefix, isInput, isArrayChild)
        return [
            ...Link.fields(`${keyPrefix}self`, isInput),
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
            'self': utils.removeIfEmpty(Link.mapping(bundle, `${keyPrefix}self`)),
            '_class': bundle.inputData?.[`${keyPrefix}_class`],
        }
    },
}
