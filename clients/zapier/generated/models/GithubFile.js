const utils = require('../utils/utils');
const GithubContent = require('../models/GithubContent');

module.exports = {
    fields: (prefix = '', isInput = true, isArrayChild = false) => {
        const {keyPrefix, labelPrefix} = utils.buildKeyAndLabel(prefix, isInput, isArrayChild)
        return [
            ...GithubContent.fields(`${keyPrefix}content`, isInput),
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
            'content': utils.removeIfEmpty(GithubContent.mapping(bundle, `${keyPrefix}content`)),
            '_class': bundle.inputData?.[`${keyPrefix}_class`],
        }
    },
}
