const utils = require('../utils/utils');
const Link = require('../models/Link');

module.exports = {
    fields: (prefix = '', isInput = true, isArrayChild = false) => {
        const {keyPrefix, labelPrefix} = utils.buildKeyAndLabel(prefix, isInput, isArrayChild)
        return [
            ...Link.fields(`${keyPrefix}nodes`, isInput),
            ...Link.fields(`${keyPrefix}log`, isInput),
            ...Link.fields(`${keyPrefix}self`, isInput),
            ...Link.fields(`${keyPrefix}actions`, isInput),
            ...Link.fields(`${keyPrefix}steps`, isInput),
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
            'nodes': utils.removeIfEmpty(Link.mapping(bundle, `${keyPrefix}nodes`)),
            'log': utils.removeIfEmpty(Link.mapping(bundle, `${keyPrefix}log`)),
            'self': utils.removeIfEmpty(Link.mapping(bundle, `${keyPrefix}self`)),
            'actions': utils.removeIfEmpty(Link.mapping(bundle, `${keyPrefix}actions`)),
            'steps': utils.removeIfEmpty(Link.mapping(bundle, `${keyPrefix}steps`)),
            '_class': bundle.inputData?.[`${keyPrefix}_class`],
        }
    },
}
