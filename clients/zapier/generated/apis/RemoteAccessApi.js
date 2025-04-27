const samples = require('../samples/RemoteAccessApi');
const ComputerSet = require('../models/ComputerSet');
const FreeStyleBuild = require('../models/FreeStyleBuild');
const FreeStyleProject = require('../models/FreeStyleProject');
const Hudson = require('../models/Hudson');
const ListView = require('../models/ListView');
const Queue = require('../models/Queue');
const utils = require('../utils/utils');

module.exports = {
    getComputer: {
        key: 'getComputer',
        noun: 'remoteAccess',
        display: {
            label: '',
            description: 'Retrieve computer details',
            hidden: false,
        },
        operation: {
            inputFields: [
                {
                    key: 'depth',
                    label: 'Recursion depth in response model',
                    type: 'integer',
                    required: true,
                },
            ],
            outputFields: [
                ...ComputerSet.fields('', false),
            ],
            perform: async (z, bundle) => {
                const options = {
                    url: utils.replacePathParameters('http://localhost/computer/api/json'),
                    method: 'GET',
                    removeMissingValuesFrom: { params: true, body: true },
                    headers: {
                        'Content-Type': '',
                        'Accept': 'application/json',
                    },
                    params: {
                        'depth': bundle.inputData?.['depth'],
                    },
                    body: {
                    },
                }
                return z.request(utils.requestOptionsMiddleware(z, bundle, options)).then((response) => {
                    response.throwForStatus();
                    const results = utils.responseOptionsMiddleware(z, bundle, 'getComputer', response.json);
                    return results;
                })
            },
            sample: samples['ComputerSetSample']
        }
    },
    getJenkins: {
        key: 'getJenkins',
        noun: 'remoteAccess',
        display: {
            label: '',
            description: 'Retrieve Jenkins details',
            hidden: false,
        },
        operation: {
            inputFields: [
            ],
            outputFields: [
                ...Hudson.fields('', false),
            ],
            perform: async (z, bundle) => {
                const options = {
                    url: utils.replacePathParameters('http://localhost/api/json'),
                    method: 'GET',
                    removeMissingValuesFrom: { params: true, body: true },
                    headers: {
                        'Content-Type': '',
                        'Accept': 'application/json',
                    },
                    params: {
                    },
                    body: {
                    },
                }
                return z.request(utils.requestOptionsMiddleware(z, bundle, options)).then((response) => {
                    response.throwForStatus();
                    const results = utils.responseOptionsMiddleware(z, bundle, 'getJenkins', response.json);
                    return results;
                })
            },
            sample: samples['HudsonSample']
        }
    },
    getJob: {
        key: 'getJob',
        noun: 'remoteAccess',
        display: {
            label: '',
            description: 'Retrieve job details',
            hidden: false,
        },
        operation: {
            inputFields: [
                {
                    key: 'name',
                    label: 'Name of the job',
                    type: 'string',
                    required: true,
                },
            ],
            outputFields: [
                ...FreeStyleProject.fields('', false),
            ],
            perform: async (z, bundle) => {
                const options = {
                    url: utils.replacePathParameters('http://localhost/job/{name}/api/json'),
                    method: 'GET',
                    removeMissingValuesFrom: { params: true, body: true },
                    headers: {
                        'Content-Type': '',
                        'Accept': 'application/json',
                    },
                    params: {
                    },
                    body: {
                    },
                }
                return z.request(utils.requestOptionsMiddleware(z, bundle, options)).then((response) => {
                    response.throwForStatus();
                    const results = utils.responseOptionsMiddleware(z, bundle, 'getJob', response.json);
                    return results;
                })
            },
            sample: samples['FreeStyleProjectSample']
        }
    },
    getJobConfig: {
        key: 'getJobConfig',
        noun: 'remoteAccess',
        display: {
            label: '',
            description: 'Retrieve job configuration',
            hidden: false,
        },
        operation: {
            inputFields: [
                {
                    key: 'name',
                    label: 'Name of the job',
                    type: 'string',
                    required: true,
                },
            ],
            outputFields: [
            ],
            perform: async (z, bundle) => {
                const options = {
                    url: utils.replacePathParameters('http://localhost/job/{name}/config.xml'),
                    method: 'GET',
                    removeMissingValuesFrom: { params: true, body: true },
                    headers: {
                        'Content-Type': '',
                        'Accept': 'text/xml',
                    },
                    params: {
                    },
                    body: {
                    },
                }
                return z.request(utils.requestOptionsMiddleware(z, bundle, options)).then((response) => {
                    response.throwForStatus();
                    const results = utils.responseOptionsMiddleware(z, bundle, 'getJobConfig', response.json);
                    return { data: results };
                })
            },
            sample: { data: {} }
        }
    },
    getJobLastBuild: {
        key: 'getJobLastBuild',
        noun: 'remoteAccess',
        display: {
            label: '',
            description: 'Retrieve job&#39;s last build details',
            hidden: false,
        },
        operation: {
            inputFields: [
                {
                    key: 'name',
                    label: 'Name of the job',
                    type: 'string',
                    required: true,
                },
            ],
            outputFields: [
                ...FreeStyleBuild.fields('', false),
            ],
            perform: async (z, bundle) => {
                const options = {
                    url: utils.replacePathParameters('http://localhost/job/{name}/lastBuild/api/json'),
                    method: 'GET',
                    removeMissingValuesFrom: { params: true, body: true },
                    headers: {
                        'Content-Type': '',
                        'Accept': 'application/json',
                    },
                    params: {
                    },
                    body: {
                    },
                }
                return z.request(utils.requestOptionsMiddleware(z, bundle, options)).then((response) => {
                    response.throwForStatus();
                    const results = utils.responseOptionsMiddleware(z, bundle, 'getJobLastBuild', response.json);
                    return results;
                })
            },
            sample: samples['FreeStyleBuildSample']
        }
    },
    getJobProgressiveText: {
        key: 'getJobProgressiveText',
        noun: 'remoteAccess',
        display: {
            label: '',
            description: 'Retrieve job&#39;s build progressive text output',
            hidden: false,
        },
        operation: {
            inputFields: [
                {
                    key: 'name',
                    label: 'Name of the job',
                    type: 'string',
                    required: true,
                },
                {
                    key: 'number',
                    label: 'Build number',
                    type: 'string',
                    required: true,
                },
                {
                    key: 'start',
                    label: 'Starting point of progressive text output',
                    type: 'string',
                    required: true,
                },
            ],
            outputFields: [
            ],
            perform: async (z, bundle) => {
                const options = {
                    url: utils.replacePathParameters('http://localhost/job/{name}/{number}/logText/progressiveText'),
                    method: 'GET',
                    removeMissingValuesFrom: { params: true, body: true },
                    headers: {
                        'Content-Type': '',
                        'Accept': '',
                    },
                    params: {
                        'start': bundle.inputData?.['start'],
                    },
                    body: {
                    },
                }
                return z.request(utils.requestOptionsMiddleware(z, bundle, options)).then((response) => {
                    response.throwForStatus();
                    const results = utils.responseOptionsMiddleware(z, bundle, 'getJobProgressiveText', response.json);
                    return results;
                })
            },
            sample: { data: {} }
        }
    },
    getQueue: {
        key: 'getQueue',
        noun: 'remoteAccess',
        display: {
            label: '',
            description: 'Retrieve queue details',
            hidden: false,
        },
        operation: {
            inputFields: [
            ],
            outputFields: [
                ...Queue.fields('', false),
            ],
            perform: async (z, bundle) => {
                const options = {
                    url: utils.replacePathParameters('http://localhost/queue/api/json'),
                    method: 'GET',
                    removeMissingValuesFrom: { params: true, body: true },
                    headers: {
                        'Content-Type': '',
                        'Accept': 'application/json',
                    },
                    params: {
                    },
                    body: {
                    },
                }
                return z.request(utils.requestOptionsMiddleware(z, bundle, options)).then((response) => {
                    response.throwForStatus();
                    const results = utils.responseOptionsMiddleware(z, bundle, 'getQueue', response.json);
                    return results;
                })
            },
            sample: samples['QueueSample']
        }
    },
    getQueueItem: {
        key: 'getQueueItem',
        noun: 'remoteAccess',
        display: {
            label: '',
            description: 'Retrieve queued item details',
            hidden: false,
        },
        operation: {
            inputFields: [
                {
                    key: 'number',
                    label: 'Queue number',
                    type: 'string',
                    required: true,
                },
            ],
            outputFields: [
                ...Queue.fields('', false),
            ],
            perform: async (z, bundle) => {
                const options = {
                    url: utils.replacePathParameters('http://localhost/queue/item/{number}/api/json'),
                    method: 'GET',
                    removeMissingValuesFrom: { params: true, body: true },
                    headers: {
                        'Content-Type': '',
                        'Accept': 'application/json',
                    },
                    params: {
                    },
                    body: {
                    },
                }
                return z.request(utils.requestOptionsMiddleware(z, bundle, options)).then((response) => {
                    response.throwForStatus();
                    const results = utils.responseOptionsMiddleware(z, bundle, 'getQueueItem', response.json);
                    return results;
                })
            },
            sample: samples['QueueSample']
        }
    },
    getView: {
        key: 'getView',
        noun: 'remoteAccess',
        display: {
            label: '',
            description: 'Retrieve view details',
            hidden: false,
        },
        operation: {
            inputFields: [
                {
                    key: 'name',
                    label: 'Name of the view',
                    type: 'string',
                    required: true,
                },
            ],
            outputFields: [
                ...ListView.fields('', false),
            ],
            perform: async (z, bundle) => {
                const options = {
                    url: utils.replacePathParameters('http://localhost/view/{name}/api/json'),
                    method: 'GET',
                    removeMissingValuesFrom: { params: true, body: true },
                    headers: {
                        'Content-Type': '',
                        'Accept': 'application/json',
                    },
                    params: {
                    },
                    body: {
                    },
                }
                return z.request(utils.requestOptionsMiddleware(z, bundle, options)).then((response) => {
                    response.throwForStatus();
                    const results = utils.responseOptionsMiddleware(z, bundle, 'getView', response.json);
                    return results;
                })
            },
            sample: samples['ListViewSample']
        }
    },
    getViewConfig: {
        key: 'getViewConfig',
        noun: 'remoteAccess',
        display: {
            label: '',
            description: 'Retrieve view configuration',
            hidden: false,
        },
        operation: {
            inputFields: [
                {
                    key: 'name',
                    label: 'Name of the view',
                    type: 'string',
                    required: true,
                },
            ],
            outputFields: [
            ],
            perform: async (z, bundle) => {
                const options = {
                    url: utils.replacePathParameters('http://localhost/view/{name}/config.xml'),
                    method: 'GET',
                    removeMissingValuesFrom: { params: true, body: true },
                    headers: {
                        'Content-Type': '',
                        'Accept': 'text/xml',
                    },
                    params: {
                    },
                    body: {
                    },
                }
                return z.request(utils.requestOptionsMiddleware(z, bundle, options)).then((response) => {
                    response.throwForStatus();
                    const results = utils.responseOptionsMiddleware(z, bundle, 'getViewConfig', response.json);
                    return { data: results };
                })
            },
            sample: { data: {} }
        }
    },
    headJenkins: {
        key: 'headJenkins',
        noun: 'remoteAccess',
        display: {
            label: '',
            description: 'Retrieve Jenkins headers',
            hidden: false,
        },
        operation: {
            inputFields: [
            ],
            outputFields: [
            ],
            perform: async (z, bundle) => {
                const options = {
                    url: utils.replacePathParameters('http://localhost/api/json'),
                    method: 'HEAD',
                    removeMissingValuesFrom: { params: true, body: true },
                    headers: {
                        'Content-Type': '',
                        'Accept': '',
                    },
                    params: {
                    },
                    body: {
                    },
                }
                return z.request(utils.requestOptionsMiddleware(z, bundle, options)).then((response) => {
                    response.throwForStatus();
                    const results = utils.responseOptionsMiddleware(z, bundle, 'headJenkins', response.json);
                    return results;
                })
            },
            sample: { data: {} }
        }
    },
    postCreateItem: {
        key: 'postCreateItem',
        noun: 'remoteAccess',
        display: {
            label: '',
            description: 'Create a new job using job configuration, or copied from an existing job',
            hidden: false,
        },
        operation: {
            inputFields: [
                {
                    key: 'name',
                    label: 'Name of the new job',
                    type: 'string',
                    required: true,
                },
                {
                    key: 'from',
                    label: 'Existing job to copy from',
                    type: 'string',
                },
                {
                    key: 'mode',
                    label: 'Set to &#39;copy&#39; for copying an existing job',
                    type: 'string',
                },
                {
                    key: 'Jenkins-Crumb',
                    label: 'CSRF protection token',
                    type: 'string',
                },
                {
                    key: 'Content-Type',
                    label: 'Content type header application/xml',
                    type: 'string',
                },
                {
                    key: 'body',
                    label: 'Job configuration in config.xml format',
                    type: 'string',
                },
            ],
            outputFields: [
            ],
            perform: async (z, bundle) => {
                const options = {
                    url: utils.replacePathParameters('http://localhost/createItem'),
                    method: 'POST',
                    removeMissingValuesFrom: { params: true, body: true },
                    headers: {
                        'Content-Type': 'application/json',
                        'Accept': '*/*',
                    },
                    params: {
                        'name': bundle.inputData?.['name'],
                        'from': bundle.inputData?.['from'],
                        'mode': bundle.inputData?.['mode'],
                    },
                    body: {
                        'body': bundle.inputData?.['body'],
                    },
                }
                return z.request(utils.requestOptionsMiddleware(z, bundle, options)).then((response) => {
                    response.throwForStatus();
                    const results = utils.responseOptionsMiddleware(z, bundle, 'postCreateItem', response.json);
                    return results;
                })
            },
            sample: { data: {} }
        }
    },
    postCreateView: {
        key: 'postCreateView',
        noun: 'remoteAccess',
        display: {
            label: '',
            description: 'Create a new view using view configuration',
            hidden: false,
        },
        operation: {
            inputFields: [
                {
                    key: 'name',
                    label: 'Name of the new view',
                    type: 'string',
                    required: true,
                },
                {
                    key: 'Jenkins-Crumb',
                    label: 'CSRF protection token',
                    type: 'string',
                },
                {
                    key: 'Content-Type',
                    label: 'Content type header application/xml',
                    type: 'string',
                },
                {
                    key: 'body',
                    label: 'View configuration in config.xml format',
                    type: 'string',
                },
            ],
            outputFields: [
            ],
            perform: async (z, bundle) => {
                const options = {
                    url: utils.replacePathParameters('http://localhost/createView'),
                    method: 'POST',
                    removeMissingValuesFrom: { params: true, body: true },
                    headers: {
                        'Content-Type': 'application/json',
                        'Accept': '*/*',
                    },
                    params: {
                        'name': bundle.inputData?.['name'],
                    },
                    body: {
                        'body': bundle.inputData?.['body'],
                    },
                }
                return z.request(utils.requestOptionsMiddleware(z, bundle, options)).then((response) => {
                    response.throwForStatus();
                    const results = utils.responseOptionsMiddleware(z, bundle, 'postCreateView', response.json);
                    return results;
                })
            },
            sample: { data: {} }
        }
    },
    postJobBuild: {
        key: 'postJobBuild',
        noun: 'remoteAccess',
        display: {
            label: '',
            description: 'Build a job',
            hidden: false,
        },
        operation: {
            inputFields: [
                {
                    key: 'name',
                    label: 'Name of the job',
                    type: 'string',
                    required: true,
                },
                {
                    key: 'json',
                    label: '',
                    type: 'string',
                    required: true,
                },
                {
                    key: 'token',
                    label: '',
                    type: 'string',
                },
                {
                    key: 'Jenkins-Crumb',
                    label: 'CSRF protection token',
                    type: 'string',
                },
            ],
            outputFields: [
            ],
            perform: async (z, bundle) => {
                const options = {
                    url: utils.replacePathParameters('http://localhost/job/{name}/build'),
                    method: 'POST',
                    removeMissingValuesFrom: { params: true, body: true },
                    headers: {
                        'Content-Type': '',
                        'Accept': '',
                    },
                    params: {
                        'json': bundle.inputData?.['json'],
                        'token': bundle.inputData?.['token'],
                    },
                    body: {
                    },
                }
                return z.request(utils.requestOptionsMiddleware(z, bundle, options)).then((response) => {
                    response.throwForStatus();
                    const results = utils.responseOptionsMiddleware(z, bundle, 'postJobBuild', response.json);
                    return results;
                })
            },
            sample: { data: {} }
        }
    },
    postJobConfig: {
        key: 'postJobConfig',
        noun: 'remoteAccess',
        display: {
            label: '',
            description: 'Update job configuration',
            hidden: false,
        },
        operation: {
            inputFields: [
                {
                    key: 'name',
                    label: 'Name of the job',
                    type: 'string',
                    required: true,
                },
                {
                    key: 'body',
                    label: 'Job configuration in config.xml format',
                    type: 'string',
                    required: true,
                },
                {
                    key: 'Jenkins-Crumb',
                    label: 'CSRF protection token',
                    type: 'string',
                },
            ],
            outputFields: [
            ],
            perform: async (z, bundle) => {
                const options = {
                    url: utils.replacePathParameters('http://localhost/job/{name}/config.xml'),
                    method: 'POST',
                    removeMissingValuesFrom: { params: true, body: true },
                    headers: {
                        'Content-Type': 'application/json',
                        'Accept': '*/*',
                    },
                    params: {
                    },
                    body: {
                        'body': bundle.inputData?.['body'],
                    },
                }
                return z.request(utils.requestOptionsMiddleware(z, bundle, options)).then((response) => {
                    response.throwForStatus();
                    const results = utils.responseOptionsMiddleware(z, bundle, 'postJobConfig', response.json);
                    return results;
                })
            },
            sample: { data: {} }
        }
    },
    postJobDelete: {
        key: 'postJobDelete',
        noun: 'remoteAccess',
        display: {
            label: '',
            description: 'Delete a job',
            hidden: false,
        },
        operation: {
            inputFields: [
                {
                    key: 'name',
                    label: 'Name of the job',
                    type: 'string',
                    required: true,
                },
                {
                    key: 'Jenkins-Crumb',
                    label: 'CSRF protection token',
                    type: 'string',
                },
            ],
            outputFields: [
            ],
            perform: async (z, bundle) => {
                const options = {
                    url: utils.replacePathParameters('http://localhost/job/{name}/doDelete'),
                    method: 'POST',
                    removeMissingValuesFrom: { params: true, body: true },
                    headers: {
                        'Content-Type': '',
                        'Accept': '',
                    },
                    params: {
                    },
                    body: {
                    },
                }
                return z.request(utils.requestOptionsMiddleware(z, bundle, options)).then((response) => {
                    response.throwForStatus();
                    const results = utils.responseOptionsMiddleware(z, bundle, 'postJobDelete', response.json);
                    return results;
                })
            },
            sample: { data: {} }
        }
    },
    postJobDisable: {
        key: 'postJobDisable',
        noun: 'remoteAccess',
        display: {
            label: '',
            description: 'Disable a job',
            hidden: false,
        },
        operation: {
            inputFields: [
                {
                    key: 'name',
                    label: 'Name of the job',
                    type: 'string',
                    required: true,
                },
                {
                    key: 'Jenkins-Crumb',
                    label: 'CSRF protection token',
                    type: 'string',
                },
            ],
            outputFields: [
            ],
            perform: async (z, bundle) => {
                const options = {
                    url: utils.replacePathParameters('http://localhost/job/{name}/disable'),
                    method: 'POST',
                    removeMissingValuesFrom: { params: true, body: true },
                    headers: {
                        'Content-Type': '',
                        'Accept': '',
                    },
                    params: {
                    },
                    body: {
                    },
                }
                return z.request(utils.requestOptionsMiddleware(z, bundle, options)).then((response) => {
                    response.throwForStatus();
                    const results = utils.responseOptionsMiddleware(z, bundle, 'postJobDisable', response.json);
                    return results;
                })
            },
            sample: { data: {} }
        }
    },
    postJobEnable: {
        key: 'postJobEnable',
        noun: 'remoteAccess',
        display: {
            label: '',
            description: 'Enable a job',
            hidden: false,
        },
        operation: {
            inputFields: [
                {
                    key: 'name',
                    label: 'Name of the job',
                    type: 'string',
                    required: true,
                },
                {
                    key: 'Jenkins-Crumb',
                    label: 'CSRF protection token',
                    type: 'string',
                },
            ],
            outputFields: [
            ],
            perform: async (z, bundle) => {
                const options = {
                    url: utils.replacePathParameters('http://localhost/job/{name}/enable'),
                    method: 'POST',
                    removeMissingValuesFrom: { params: true, body: true },
                    headers: {
                        'Content-Type': '',
                        'Accept': '',
                    },
                    params: {
                    },
                    body: {
                    },
                }
                return z.request(utils.requestOptionsMiddleware(z, bundle, options)).then((response) => {
                    response.throwForStatus();
                    const results = utils.responseOptionsMiddleware(z, bundle, 'postJobEnable', response.json);
                    return results;
                })
            },
            sample: { data: {} }
        }
    },
    postJobLastBuildStop: {
        key: 'postJobLastBuildStop',
        noun: 'remoteAccess',
        display: {
            label: '',
            description: 'Stop a job',
            hidden: false,
        },
        operation: {
            inputFields: [
                {
                    key: 'name',
                    label: 'Name of the job',
                    type: 'string',
                    required: true,
                },
                {
                    key: 'Jenkins-Crumb',
                    label: 'CSRF protection token',
                    type: 'string',
                },
            ],
            outputFields: [
            ],
            perform: async (z, bundle) => {
                const options = {
                    url: utils.replacePathParameters('http://localhost/job/{name}/lastBuild/stop'),
                    method: 'POST',
                    removeMissingValuesFrom: { params: true, body: true },
                    headers: {
                        'Content-Type': '',
                        'Accept': '',
                    },
                    params: {
                    },
                    body: {
                    },
                }
                return z.request(utils.requestOptionsMiddleware(z, bundle, options)).then((response) => {
                    response.throwForStatus();
                    const results = utils.responseOptionsMiddleware(z, bundle, 'postJobLastBuildStop', response.json);
                    return results;
                })
            },
            sample: { data: {} }
        }
    },
    postViewConfig: {
        key: 'postViewConfig',
        noun: 'remoteAccess',
        display: {
            label: '',
            description: 'Update view configuration',
            hidden: false,
        },
        operation: {
            inputFields: [
                {
                    key: 'name',
                    label: 'Name of the view',
                    type: 'string',
                    required: true,
                },
                {
                    key: 'body',
                    label: 'View configuration in config.xml format',
                    type: 'string',
                    required: true,
                },
                {
                    key: 'Jenkins-Crumb',
                    label: 'CSRF protection token',
                    type: 'string',
                },
            ],
            outputFields: [
            ],
            perform: async (z, bundle) => {
                const options = {
                    url: utils.replacePathParameters('http://localhost/view/{name}/config.xml'),
                    method: 'POST',
                    removeMissingValuesFrom: { params: true, body: true },
                    headers: {
                        'Content-Type': 'application/json',
                        'Accept': '*/*',
                    },
                    params: {
                    },
                    body: {
                        'body': bundle.inputData?.['body'],
                    },
                }
                return z.request(utils.requestOptionsMiddleware(z, bundle, options)).then((response) => {
                    response.throwForStatus();
                    const results = utils.responseOptionsMiddleware(z, bundle, 'postViewConfig', response.json);
                    return results;
                })
            },
            sample: { data: {} }
        }
    },
}
