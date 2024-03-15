const utils = require('../utils/utils');
const AllView = require('../models/AllView');
const FreeStyleProject = require('../models/FreeStyleProject');
const HudsonassignedLabels = require('../models/HudsonassignedLabels');
const UnlabeledLoadStatistics = require('../models/UnlabeledLoadStatistics');

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
                key: `${keyPrefix}assignedLabels`,
                label: `[${labelPrefix}assignedLabels]`,
                children: HudsonassignedLabels.fields(`${keyPrefix}assignedLabels${!isInput ? '[]' : ''}`, isInput, true), 
            },
            {
                key: `${keyPrefix}mode`,
                label: `[${labelPrefix}mode]`,
                type: 'string',
            },
            {
                key: `${keyPrefix}nodeDescription`,
                label: `[${labelPrefix}nodeDescription]`,
                type: 'string',
            },
            {
                key: `${keyPrefix}nodeName`,
                label: `[${labelPrefix}nodeName]`,
                type: 'string',
            },
            {
                key: `${keyPrefix}numExecutors`,
                label: `[${labelPrefix}numExecutors]`,
                type: 'integer',
            },
            {
                key: `${keyPrefix}description`,
                label: `[${labelPrefix}description]`,
                type: 'string',
            },
            {
                key: `${keyPrefix}jobs`,
                label: `[${labelPrefix}jobs]`,
                children: FreeStyleProject.fields(`${keyPrefix}jobs${!isInput ? '[]' : ''}`, isInput, true), 
            },
            ...AllView.fields(`${keyPrefix}primaryView`, isInput),
            {
                key: `${keyPrefix}quietingDown`,
                label: `[${labelPrefix}quietingDown]`,
                type: 'boolean',
            },
            {
                key: `${keyPrefix}slaveAgentPort`,
                label: `[${labelPrefix}slaveAgentPort]`,
                type: 'integer',
            },
            ...UnlabeledLoadStatistics.fields(`${keyPrefix}unlabeledLoad`, isInput),
            {
                key: `${keyPrefix}useCrumbs`,
                label: `[${labelPrefix}useCrumbs]`,
                type: 'boolean',
            },
            {
                key: `${keyPrefix}useSecurity`,
                label: `[${labelPrefix}useSecurity]`,
                type: 'boolean',
            },
            {
                key: `${keyPrefix}views`,
                label: `[${labelPrefix}views]`,
                children: AllView.fields(`${keyPrefix}views${!isInput ? '[]' : ''}`, isInput, true), 
            },
        ]
    },
    mapping: (bundle, prefix = '') => {
        const {keyPrefix} = utils.buildKeyAndLabel(prefix)
        return {
            '_class': bundle.inputData?.[`${keyPrefix}_class`],
            'assignedLabels': utils.childMapping(bundle.inputData?.[`${keyPrefix}assignedLabels`], `${keyPrefix}assignedLabels`, HudsonassignedLabels),
            'mode': bundle.inputData?.[`${keyPrefix}mode`],
            'nodeDescription': bundle.inputData?.[`${keyPrefix}nodeDescription`],
            'nodeName': bundle.inputData?.[`${keyPrefix}nodeName`],
            'numExecutors': bundle.inputData?.[`${keyPrefix}numExecutors`],
            'description': bundle.inputData?.[`${keyPrefix}description`],
            'jobs': utils.childMapping(bundle.inputData?.[`${keyPrefix}jobs`], `${keyPrefix}jobs`, FreeStyleProject),
            'primaryView': utils.removeIfEmpty(AllView.mapping(bundle, `${keyPrefix}primaryView`)),
            'quietingDown': bundle.inputData?.[`${keyPrefix}quietingDown`],
            'slaveAgentPort': bundle.inputData?.[`${keyPrefix}slaveAgentPort`],
            'unlabeledLoad': utils.removeIfEmpty(UnlabeledLoadStatistics.mapping(bundle, `${keyPrefix}unlabeledLoad`)),
            'useCrumbs': bundle.inputData?.[`${keyPrefix}useCrumbs`],
            'useSecurity': bundle.inputData?.[`${keyPrefix}useSecurity`],
            'views': utils.childMapping(bundle.inputData?.[`${keyPrefix}views`], `${keyPrefix}views`, AllView),
        }
    },
}
