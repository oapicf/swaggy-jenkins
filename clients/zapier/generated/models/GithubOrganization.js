const utils = require('../utils/utils');
const GithubOrganizationlinks = require('../models/GithubOrganizationlinks');

module.exports = {
    fields: (prefix = '', isInput = true, isArrayChild = false) => {
        const {keyPrefix, labelPrefix} = utils.buildKeyAndLabel(prefix, isInput, isArrayChild)
        return [
            {
                key: `${keyPrefix}_class`,
                label: `[${labelPrefix}_class]`,
                type: 'string',
            },
            ...GithubOrganizationlinks.fields(`${keyPrefix}_links`, isInput),
            {
                key: `${keyPrefix}jenkinsOrganizationPipeline`,
                label: `[${labelPrefix}jenkinsOrganizationPipeline]`,
                type: 'boolean',
            },
            {
                key: `${keyPrefix}name`,
                label: `[${labelPrefix}name]`,
                type: 'string',
            },
        ]
    },
    mapping: (bundle, prefix = '') => {
        const {keyPrefix} = utils.buildKeyAndLabel(prefix)
        return {
            '_class': bundle.inputData?.[`${keyPrefix}_class`],
            '_links': utils.removeIfEmpty(GithubOrganizationlinks.mapping(bundle, `${keyPrefix}_links`)),
            'jenkinsOrganizationPipeline': bundle.inputData?.[`${keyPrefix}jenkinsOrganizationPipeline`],
            'name': bundle.inputData?.[`${keyPrefix}name`],
        }
    },
}
