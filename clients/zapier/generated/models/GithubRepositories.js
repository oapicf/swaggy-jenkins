const utils = require('../utils/utils');
const GithubRepositorieslinks = require('../models/GithubRepositorieslinks');
const GithubRepository = require('../models/GithubRepository');

module.exports = {
    fields: (prefix = '', isInput = true, isArrayChild = false) => {
        const {keyPrefix, labelPrefix} = utils.buildKeyAndLabel(prefix, isInput, isArrayChild)
        return [
            {
                key: `${keyPrefix}_class`,
                label: `[${labelPrefix}_class]`,
                type: 'string',
            },
            ...GithubRepositorieslinks.fields(`${keyPrefix}_links`, isInput),
            {
                key: `${keyPrefix}items`,
                label: `[${labelPrefix}items]`,
                children: GithubRepository.fields(`${keyPrefix}items${!isInput ? '[]' : ''}`, isInput, true), 
            },
            {
                key: `${keyPrefix}lastPage`,
                label: `[${labelPrefix}lastPage]`,
                type: 'integer',
            },
            {
                key: `${keyPrefix}nextPage`,
                label: `[${labelPrefix}nextPage]`,
                type: 'integer',
            },
            {
                key: `${keyPrefix}pageSize`,
                label: `[${labelPrefix}pageSize]`,
                type: 'integer',
            },
        ]
    },
    mapping: (bundle, prefix = '') => {
        const {keyPrefix} = utils.buildKeyAndLabel(prefix)
        return {
            '_class': bundle.inputData?.[`${keyPrefix}_class`],
            '_links': utils.removeIfEmpty(GithubRepositorieslinks.mapping(bundle, `${keyPrefix}_links`)),
            'items': utils.childMapping(bundle.inputData?.[`${keyPrefix}items`], `${keyPrefix}items`, GithubRepository),
            'lastPage': bundle.inputData?.[`${keyPrefix}lastPage`],
            'nextPage': bundle.inputData?.[`${keyPrefix}nextPage`],
            'pageSize': bundle.inputData?.[`${keyPrefix}pageSize`],
        }
    },
}
