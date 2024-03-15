const utils = require('../utils/utils');
const ClockDifference = require('../models/ClockDifference');
const DiskSpaceMonitorDescriptorDiskSpace = require('../models/DiskSpaceMonitorDescriptorDiskSpace');
const ResponseTimeMonitorData = require('../models/ResponseTimeMonitorData');
const SwapSpaceMonitorMemoryUsage2 = require('../models/SwapSpaceMonitorMemoryUsage2');

module.exports = {
    fields: (prefix = '', isInput = true, isArrayChild = false) => {
        const {keyPrefix, labelPrefix} = utils.buildKeyAndLabel(prefix, isInput, isArrayChild)
        return [
            ...SwapSpaceMonitorMemoryUsage2.fields(`${keyPrefix}hudson.node_monitors.SwapSpaceMonitor`, isInput),
            ...DiskSpaceMonitorDescriptorDiskSpace.fields(`${keyPrefix}hudson.node_monitors.TemporarySpaceMonitor`, isInput),
            ...DiskSpaceMonitorDescriptorDiskSpace.fields(`${keyPrefix}hudson.node_monitors.DiskSpaceMonitor`, isInput),
            {
                key: `${keyPrefix}hudson.node_monitors.ArchitectureMonitor`,
                label: `[${labelPrefix}hudson.node_monitors.ArchitectureMonitor]`,
                type: 'string',
            },
            ...ResponseTimeMonitorData.fields(`${keyPrefix}hudson.node_monitors.ResponseTimeMonitor`, isInput),
            ...ClockDifference.fields(`${keyPrefix}hudson.node_monitors.ClockMonitor`, isInput),
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
            'hudson.node_monitors.SwapSpaceMonitor': utils.removeIfEmpty(SwapSpaceMonitorMemoryUsage2.mapping(bundle, `${keyPrefix}hudson.node_monitors.SwapSpaceMonitor`)),
            'hudson.node_monitors.TemporarySpaceMonitor': utils.removeIfEmpty(DiskSpaceMonitorDescriptorDiskSpace.mapping(bundle, `${keyPrefix}hudson.node_monitors.TemporarySpaceMonitor`)),
            'hudson.node_monitors.DiskSpaceMonitor': utils.removeIfEmpty(DiskSpaceMonitorDescriptorDiskSpace.mapping(bundle, `${keyPrefix}hudson.node_monitors.DiskSpaceMonitor`)),
            'hudson.node_monitors.ArchitectureMonitor': bundle.inputData?.[`${keyPrefix}hudson.node_monitors.ArchitectureMonitor`],
            'hudson.node_monitors.ResponseTimeMonitor': utils.removeIfEmpty(ResponseTimeMonitorData.mapping(bundle, `${keyPrefix}hudson.node_monitors.ResponseTimeMonitor`)),
            'hudson.node_monitors.ClockMonitor': utils.removeIfEmpty(ClockDifference.mapping(bundle, `${keyPrefix}hudson.node_monitors.ClockMonitor`)),
            '_class': bundle.inputData?.[`${keyPrefix}_class`],
        }
    },
}
