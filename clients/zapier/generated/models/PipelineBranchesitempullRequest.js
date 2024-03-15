const utils = require('../utils/utils');
const PipelineBranchesitempullRequestlinks = require('../models/PipelineBranchesitempullRequestlinks');

module.exports = {
    fields: (prefix = '', isInput = true, isArrayChild = false) => {
        const {keyPrefix, labelPrefix} = utils.buildKeyAndLabel(prefix, isInput, isArrayChild)
        return [
            ...PipelineBranchesitempullRequestlinks.fields(`${keyPrefix}_links`, isInput),
            {
                key: `${keyPrefix}author`,
                label: `[${labelPrefix}author]`,
                type: 'string',
            },
            {
                key: `${keyPrefix}id`,
                label: `[${labelPrefix}id]`,
                type: 'string',
            },
            {
                key: `${keyPrefix}title`,
                label: `[${labelPrefix}title]`,
                type: 'string',
            },
            {
                key: `${keyPrefix}url`,
                label: `[${labelPrefix}url]`,
                type: 'string',
            },
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
            '_links': utils.removeIfEmpty(PipelineBranchesitempullRequestlinks.mapping(bundle, `${keyPrefix}_links`)),
            'author': bundle.inputData?.[`${keyPrefix}author`],
            'id': bundle.inputData?.[`${keyPrefix}id`],
            'title': bundle.inputData?.[`${keyPrefix}title`],
            'url': bundle.inputData?.[`${keyPrefix}url`],
            '_class': bundle.inputData?.[`${keyPrefix}_class`],
        }
    },
}
