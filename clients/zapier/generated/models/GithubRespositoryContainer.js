const utils = require('../utils/utils');
const GithubRepositories = require('../models/GithubRepositories');
const GithubRespositoryContainerlinks = require('../models/GithubRespositoryContainerlinks');

module.exports = {
    fields: (prefix = '', isInput = true, isArrayChild = false) => {
        const {keyPrefix, labelPrefix} = utils.buildKeyAndLabel(prefix, isInput, isArrayChild)
        return [
            {
                key: `${keyPrefix}_class`,
                label: `[${labelPrefix}_class]`,
                type: 'string',
            },
            ...GithubRespositoryContainerlinks.fields(`${keyPrefix}_links`, isInput),
            ...GithubRepositories.fields(`${keyPrefix}repositories`, isInput),
        ]
    },
    mapping: (bundle, prefix = '') => {
        const {keyPrefix} = utils.buildKeyAndLabel(prefix)
        return {
            '_class': bundle.inputData?.[`${keyPrefix}_class`],
            '_links': utils.removeIfEmpty(GithubRespositoryContainerlinks.mapping(bundle, `${keyPrefix}_links`)),
            'repositories': utils.removeIfEmpty(GithubRepositories.mapping(bundle, `${keyPrefix}repositories`)),
        }
    },
}
