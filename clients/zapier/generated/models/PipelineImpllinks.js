const utils = require('../utils/utils');
const Link = require('../models/Link');

module.exports = {
    fields: (prefix = '', isInput = true, isArrayChild = false) => {
        const {keyPrefix, labelPrefix} = utils.buildKeyAndLabel(prefix, isInput, isArrayChild)
        return [
            ...Link.fields(`${keyPrefix}self`, isInput),
            ...Link.fields(`${keyPrefix}actions`, isInput),
            ...Link.fields(`${keyPrefix}runs`, isInput),
            ...Link.fields(`${keyPrefix}queue`, isInput),
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
            'actions': utils.removeIfEmpty(Link.mapping(bundle, `${keyPrefix}actions`)),
            'runs': utils.removeIfEmpty(Link.mapping(bundle, `${keyPrefix}runs`)),
            'queue': utils.removeIfEmpty(Link.mapping(bundle, `${keyPrefix}queue`)),
            '_class': bundle.inputData?.[`${keyPrefix}_class`],
        }
    },
}
