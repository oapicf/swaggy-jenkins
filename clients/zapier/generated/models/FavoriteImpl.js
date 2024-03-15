const utils = require('../utils/utils');
const FavoriteImpllinks = require('../models/FavoriteImpllinks');
const PipelineImpl = require('../models/PipelineImpl');

module.exports = {
    fields: (prefix = '', isInput = true, isArrayChild = false) => {
        const {keyPrefix, labelPrefix} = utils.buildKeyAndLabel(prefix, isInput, isArrayChild)
        return [
            {
                key: `${keyPrefix}_class`,
                label: `[${labelPrefix}_class]`,
                type: 'string',
            },
            ...FavoriteImpllinks.fields(`${keyPrefix}_links`, isInput),
            ...PipelineImpl.fields(`${keyPrefix}item`, isInput),
        ]
    },
    mapping: (bundle, prefix = '') => {
        const {keyPrefix} = utils.buildKeyAndLabel(prefix)
        return {
            '_class': bundle.inputData?.[`${keyPrefix}_class`],
            '_links': utils.removeIfEmpty(FavoriteImpllinks.mapping(bundle, `${keyPrefix}_links`)),
            'item': utils.removeIfEmpty(PipelineImpl.mapping(bundle, `${keyPrefix}item`)),
        }
    },
}
