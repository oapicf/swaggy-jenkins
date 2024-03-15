const utils = require('../utils/utils');
const GithubScmlinks = require('../models/GithubScmlinks');

module.exports = {
    fields: (prefix = '', isInput = true, isArrayChild = false) => {
        const {keyPrefix, labelPrefix} = utils.buildKeyAndLabel(prefix, isInput, isArrayChild)
        return [
            {
                key: `${keyPrefix}_class`,
                label: `[${labelPrefix}_class]`,
                type: 'string',
            },
            ...GithubScmlinks.fields(`${keyPrefix}_links`, isInput),
            {
                key: `${keyPrefix}credentialId`,
                label: `[${labelPrefix}credentialId]`,
                type: 'string',
            },
            {
                key: `${keyPrefix}id`,
                label: `[${labelPrefix}id]`,
                type: 'string',
            },
            {
                key: `${keyPrefix}uri`,
                label: `[${labelPrefix}uri]`,
                type: 'string',
            },
        ]
    },
    mapping: (bundle, prefix = '') => {
        const {keyPrefix} = utils.buildKeyAndLabel(prefix)
        return {
            '_class': bundle.inputData?.[`${keyPrefix}_class`],
            '_links': utils.removeIfEmpty(GithubScmlinks.mapping(bundle, `${keyPrefix}_links`)),
            'credentialId': bundle.inputData?.[`${keyPrefix}credentialId`],
            'id': bundle.inputData?.[`${keyPrefix}id`],
            'uri': bundle.inputData?.[`${keyPrefix}uri`],
        }
    },
}
