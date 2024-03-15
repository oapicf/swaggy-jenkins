const utils = require('../utils/utils');
const GithubRepositorylinks = require('../models/GithubRepositorylinks');
const GithubRepositorypermissions = require('../models/GithubRepositorypermissions');

module.exports = {
    fields: (prefix = '', isInput = true, isArrayChild = false) => {
        const {keyPrefix, labelPrefix} = utils.buildKeyAndLabel(prefix, isInput, isArrayChild)
        return [
            {
                key: `${keyPrefix}_class`,
                label: `[${labelPrefix}_class]`,
                type: 'string',
            },
            ...GithubRepositorylinks.fields(`${keyPrefix}_links`, isInput),
            {
                key: `${keyPrefix}defaultBranch`,
                label: `[${labelPrefix}defaultBranch]`,
                type: 'string',
            },
            {
                key: `${keyPrefix}description`,
                label: `[${labelPrefix}description]`,
                type: 'string',
            },
            {
                key: `${keyPrefix}name`,
                label: `[${labelPrefix}name]`,
                type: 'string',
            },
            ...GithubRepositorypermissions.fields(`${keyPrefix}permissions`, isInput),
            {
                key: `${keyPrefix}private`,
                label: `[${labelPrefix}private]`,
                type: 'boolean',
            },
            {
                key: `${keyPrefix}fullName`,
                label: `[${labelPrefix}fullName]`,
                type: 'string',
            },
        ]
    },
    mapping: (bundle, prefix = '') => {
        const {keyPrefix} = utils.buildKeyAndLabel(prefix)
        return {
            '_class': bundle.inputData?.[`${keyPrefix}_class`],
            '_links': utils.removeIfEmpty(GithubRepositorylinks.mapping(bundle, `${keyPrefix}_links`)),
            'defaultBranch': bundle.inputData?.[`${keyPrefix}defaultBranch`],
            'description': bundle.inputData?.[`${keyPrefix}description`],
            'name': bundle.inputData?.[`${keyPrefix}name`],
            'permissions': utils.removeIfEmpty(GithubRepositorypermissions.mapping(bundle, `${keyPrefix}permissions`)),
            'private': bundle.inputData?.[`${keyPrefix}private`],
            'fullName': bundle.inputData?.[`${keyPrefix}fullName`],
        }
    },
}
