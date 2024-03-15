const utils = require('../utils/utils');
const HudsonMasterComputer = require('../models/HudsonMasterComputer');

module.exports = {
    fields: (prefix = '', isInput = true, isArrayChild = false) => {
        const {keyPrefix, labelPrefix} = utils.buildKeyAndLabel(prefix, isInput, isArrayChild)
        return [
            {
                key: `${keyPrefix}_class`,
                label: `[${labelPrefix}_class]`,
                type: 'string',
            },
            {
                key: `${keyPrefix}busyExecutors`,
                label: `[${labelPrefix}busyExecutors]`,
                type: 'integer',
            },
            {
                key: `${keyPrefix}computer`,
                label: `[${labelPrefix}computer]`,
                children: HudsonMasterComputer.fields(`${keyPrefix}computer${!isInput ? '[]' : ''}`, isInput, true), 
            },
            {
                key: `${keyPrefix}displayName`,
                label: `[${labelPrefix}displayName]`,
                type: 'string',
            },
            {
                key: `${keyPrefix}totalExecutors`,
                label: `[${labelPrefix}totalExecutors]`,
                type: 'integer',
            },
        ]
    },
    mapping: (bundle, prefix = '') => {
        const {keyPrefix} = utils.buildKeyAndLabel(prefix)
        return {
            '_class': bundle.inputData?.[`${keyPrefix}_class`],
            'busyExecutors': bundle.inputData?.[`${keyPrefix}busyExecutors`],
            'computer': utils.childMapping(bundle.inputData?.[`${keyPrefix}computer`], `${keyPrefix}computer`, HudsonMasterComputer),
            'displayName': bundle.inputData?.[`${keyPrefix}displayName`],
            'totalExecutors': bundle.inputData?.[`${keyPrefix}totalExecutors`],
        }
    },
}
