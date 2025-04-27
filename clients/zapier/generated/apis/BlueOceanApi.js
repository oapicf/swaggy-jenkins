const samples = require('../samples/BlueOceanApi');
const BranchImpl = require('../models/BranchImpl');
const FavoriteImpl = require('../models/FavoriteImpl');
const GithubOrganization = require('../models/GithubOrganization');
const GithubScm = require('../models/GithubScm');
const MultibranchPipeline = require('../models/MultibranchPipeline');
const Organisation = require('../models/Organisation');
const Pipeline = require('../models/Pipeline');
const PipelineActivity = require('../models/PipelineActivity');
const PipelineFolderImpl = require('../models/PipelineFolderImpl');
const PipelineImpl = require('../models/PipelineImpl');
const PipelineRun = require('../models/PipelineRun');
const PipelineRunNode = require('../models/PipelineRunNode');
const PipelineStepImpl = require('../models/PipelineStepImpl');
const QueueItemImpl = require('../models/QueueItemImpl');
const User = require('../models/User');
const utils = require('../utils/utils');

module.exports = {
    deletePipelineQueueItem: {
        key: 'deletePipelineQueueItem',
        noun: 'blueOcean',
        display: {
            label: '',
            description: 'Delete queue item from an organization pipeline queue',
            hidden: false,
        },
        operation: {
            inputFields: [
                {
                    key: 'organization',
                    label: 'Name of the organization',
                    type: 'string',
                    required: true,
                },
                {
                    key: 'pipeline',
                    label: 'Name of the pipeline',
                    type: 'string',
                    required: true,
                },
                {
                    key: 'queue',
                    label: 'Name of the queue item',
                    type: 'string',
                    required: true,
                },
            ],
            outputFields: [
            ],
            perform: async (z, bundle) => {
                const options = {
                    url: utils.replacePathParameters('http://localhost/blue/rest/organizations/{organization}/pipelines/{pipeline}/queue/{queue}'),
                    method: 'DELETE',
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
                    const results = utils.responseOptionsMiddleware(z, bundle, 'deletePipelineQueueItem', response.json);
                    return results;
                })
            },
            sample: { data: {} }
        }
    },
    getAuthenticatedUser: {
        key: 'getAuthenticatedUser',
        noun: 'blueOcean',
        display: {
            label: '',
            description: 'Retrieve authenticated user details for an organization',
            hidden: false,
        },
        operation: {
            inputFields: [
                {
                    key: 'organization',
                    label: 'Name of the organization',
                    type: 'string',
                    required: true,
                },
            ],
            outputFields: [
                ...User.fields('', false),
            ],
            perform: async (z, bundle) => {
                const options = {
                    url: utils.replacePathParameters('http://localhost/blue/rest/organizations/{organization}/user/'),
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
                    const results = utils.responseOptionsMiddleware(z, bundle, 'getAuthenticatedUser', response.json);
                    return results;
                })
            },
            sample: samples['UserSample']
        }
    },
    getClasses: {
        key: 'getClasses',
        noun: 'blueOcean',
        display: {
            label: '',
            description: 'Get a list of class names supported by a given class',
            hidden: false,
        },
        operation: {
            inputFields: [
                {
                    key: 'class',
                    label: 'Name of the class',
                    type: 'string',
                    required: true,
                },
            ],
            outputFields: [
            ],
            perform: async (z, bundle) => {
                const options = {
                    url: utils.replacePathParameters('http://localhost/blue/rest/classes/{class}'),
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
                    const results = utils.responseOptionsMiddleware(z, bundle, 'getClasses', response.json);
                    return { data: results };
                })
            },
            sample: { data: {} }
        }
    },
    getJsonWebKey: {
        key: 'getJsonWebKey',
        noun: 'blueOcean',
        display: {
            label: '',
            description: 'Retrieve JSON Web Key',
            hidden: false,
        },
        operation: {
            inputFields: [
                {
                    key: 'key',
                    label: 'Key ID received as part of JWT header field kid',
                    type: 'integer',
                    required: true,
                },
            ],
            outputFields: [
            ],
            perform: async (z, bundle) => {
                const options = {
                    url: utils.replacePathParameters('http://localhost/jwt-auth/jwks/{key}'),
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
                    const results = utils.responseOptionsMiddleware(z, bundle, 'getJsonWebKey', response.json);
                    return { data: results };
                })
            },
            sample: { data: {} }
        }
    },
    getJsonWebToken: {
        key: 'getJsonWebToken',
        noun: 'blueOcean',
        display: {
            label: '',
            description: 'Retrieve JSON Web Token',
            hidden: false,
        },
        operation: {
            inputFields: [
                {
                    key: 'expiryTimeInMins',
                    label: 'Token expiry time in minutes, default: 30 minutes',
                    type: 'integer',
                },
                {
                    key: 'maxExpiryTimeInMins',
                    label: 'Maximum token expiry time in minutes, default: 480 minutes',
                    type: 'integer',
                },
            ],
            outputFields: [
            ],
            perform: async (z, bundle) => {
                const options = {
                    url: utils.replacePathParameters('http://localhost/jwt-auth/token'),
                    method: 'GET',
                    removeMissingValuesFrom: { params: true, body: true },
                    headers: {
                        'Content-Type': '',
                        'Accept': 'application/json',
                    },
                    params: {
                        'expiryTimeInMins': bundle.inputData?.['expiryTimeInMins'],
                        'maxExpiryTimeInMins': bundle.inputData?.['maxExpiryTimeInMins'],
                    },
                    body: {
                    },
                }
                return z.request(utils.requestOptionsMiddleware(z, bundle, options)).then((response) => {
                    response.throwForStatus();
                    const results = utils.responseOptionsMiddleware(z, bundle, 'getJsonWebToken', response.json);
                    return { data: results };
                })
            },
            sample: { data: {} }
        }
    },
    getOrganisation: {
        key: 'getOrganisation',
        noun: 'blueOcean',
        display: {
            label: '',
            description: 'Retrieve organization details',
            hidden: false,
        },
        operation: {
            inputFields: [
                {
                    key: 'organization',
                    label: 'Name of the organization',
                    type: 'string',
                    required: true,
                },
            ],
            outputFields: [
                ...Organisation.fields('', false),
            ],
            perform: async (z, bundle) => {
                const options = {
                    url: utils.replacePathParameters('http://localhost/blue/rest/organizations/{organization}'),
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
                    const results = utils.responseOptionsMiddleware(z, bundle, 'getOrganisation', response.json);
                    return results;
                })
            },
            sample: samples['OrganisationSample']
        }
    },
    getOrganisations: {
        key: 'getOrganisations',
        noun: 'blueOcean',
        display: {
            label: '',
            description: 'Retrieve all organizations details',
            hidden: false,
        },
        operation: {
            inputFields: [
            ],
            outputFields: [
            ],
            perform: async (z, bundle) => {
                const options = {
                    url: utils.replacePathParameters('http://localhost/blue/rest/organizations/'),
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
                    const results = utils.responseOptionsMiddleware(z, bundle, 'getOrganisations', response.json);
                    return results;
                })
            },
            sample: samples['OrganisationSample']
        }
    },
    getPipeline: {
        key: 'getPipeline',
        noun: 'blueOcean',
        display: {
            label: '',
            description: 'Retrieve pipeline details for an organization',
            hidden: false,
        },
        operation: {
            inputFields: [
                {
                    key: 'organization',
                    label: 'Name of the organization',
                    type: 'string',
                    required: true,
                },
                {
                    key: 'pipeline',
                    label: 'Name of the pipeline',
                    type: 'string',
                    required: true,
                },
            ],
            outputFields: [
                ...Pipeline.fields('', false),
            ],
            perform: async (z, bundle) => {
                const options = {
                    url: utils.replacePathParameters('http://localhost/blue/rest/organizations/{organization}/pipelines/{pipeline}'),
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
                    const results = utils.responseOptionsMiddleware(z, bundle, 'getPipeline', response.json);
                    return results;
                })
            },
            sample: samples['PipelineSample']
        }
    },
    getPipelineActivities: {
        key: 'getPipelineActivities',
        noun: 'blueOcean',
        display: {
            label: '',
            description: 'Retrieve all activities details for an organization pipeline',
            hidden: false,
        },
        operation: {
            inputFields: [
                {
                    key: 'organization',
                    label: 'Name of the organization',
                    type: 'string',
                    required: true,
                },
                {
                    key: 'pipeline',
                    label: 'Name of the pipeline',
                    type: 'string',
                    required: true,
                },
            ],
            outputFields: [
            ],
            perform: async (z, bundle) => {
                const options = {
                    url: utils.replacePathParameters('http://localhost/blue/rest/organizations/{organization}/pipelines/{pipeline}/activities'),
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
                    const results = utils.responseOptionsMiddleware(z, bundle, 'getPipelineActivities', response.json);
                    return results;
                })
            },
            sample: samples['PipelineActivitySample']
        }
    },
    getPipelineBranch: {
        key: 'getPipelineBranch',
        noun: 'blueOcean',
        display: {
            label: '',
            description: 'Retrieve branch details for an organization pipeline',
            hidden: false,
        },
        operation: {
            inputFields: [
                {
                    key: 'organization',
                    label: 'Name of the organization',
                    type: 'string',
                    required: true,
                },
                {
                    key: 'pipeline',
                    label: 'Name of the pipeline',
                    type: 'string',
                    required: true,
                },
                {
                    key: 'branch',
                    label: 'Name of the branch',
                    type: 'string',
                    required: true,
                },
            ],
            outputFields: [
                ...BranchImpl.fields('', false),
            ],
            perform: async (z, bundle) => {
                const options = {
                    url: utils.replacePathParameters('http://localhost/blue/rest/organizations/{organization}/pipelines/{pipeline}/branches/{branch}/'),
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
                    const results = utils.responseOptionsMiddleware(z, bundle, 'getPipelineBranch', response.json);
                    return results;
                })
            },
            sample: samples['BranchImplSample']
        }
    },
    getPipelineBranchRun: {
        key: 'getPipelineBranchRun',
        noun: 'blueOcean',
        display: {
            label: '',
            description: 'Retrieve branch run details for an organization pipeline',
            hidden: false,
        },
        operation: {
            inputFields: [
                {
                    key: 'organization',
                    label: 'Name of the organization',
                    type: 'string',
                    required: true,
                },
                {
                    key: 'pipeline',
                    label: 'Name of the pipeline',
                    type: 'string',
                    required: true,
                },
                {
                    key: 'branch',
                    label: 'Name of the branch',
                    type: 'string',
                    required: true,
                },
                {
                    key: 'run',
                    label: 'Name of the run',
                    type: 'string',
                    required: true,
                },
            ],
            outputFields: [
                ...PipelineRun.fields('', false),
            ],
            perform: async (z, bundle) => {
                const options = {
                    url: utils.replacePathParameters('http://localhost/blue/rest/organizations/{organization}/pipelines/{pipeline}/branches/{branch}/runs/{run}'),
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
                    const results = utils.responseOptionsMiddleware(z, bundle, 'getPipelineBranchRun', response.json);
                    return results;
                })
            },
            sample: samples['PipelineRunSample']
        }
    },
    getPipelineBranches: {
        key: 'getPipelineBranches',
        noun: 'blueOcean',
        display: {
            label: '',
            description: 'Retrieve all branches details for an organization pipeline',
            hidden: false,
        },
        operation: {
            inputFields: [
                {
                    key: 'organization',
                    label: 'Name of the organization',
                    type: 'string',
                    required: true,
                },
                {
                    key: 'pipeline',
                    label: 'Name of the pipeline',
                    type: 'string',
                    required: true,
                },
            ],
            outputFields: [
                ...MultibranchPipeline.fields('', false),
            ],
            perform: async (z, bundle) => {
                const options = {
                    url: utils.replacePathParameters('http://localhost/blue/rest/organizations/{organization}/pipelines/{pipeline}/branches'),
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
                    const results = utils.responseOptionsMiddleware(z, bundle, 'getPipelineBranches', response.json);
                    return results;
                })
            },
            sample: samples['MultibranchPipelineSample']
        }
    },
    getPipelineFolder: {
        key: 'getPipelineFolder',
        noun: 'blueOcean',
        display: {
            label: '',
            description: 'Retrieve pipeline folder for an organization',
            hidden: false,
        },
        operation: {
            inputFields: [
                {
                    key: 'organization',
                    label: 'Name of the organization',
                    type: 'string',
                    required: true,
                },
                {
                    key: 'folder',
                    label: 'Name of the folder',
                    type: 'string',
                    required: true,
                },
            ],
            outputFields: [
                ...PipelineFolderImpl.fields('', false),
            ],
            perform: async (z, bundle) => {
                const options = {
                    url: utils.replacePathParameters('http://localhost/blue/rest/organizations/{organization}/pipelines/{folder}/'),
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
                    const results = utils.responseOptionsMiddleware(z, bundle, 'getPipelineFolder', response.json);
                    return results;
                })
            },
            sample: samples['PipelineFolderImplSample']
        }
    },
    getPipelineFolderPipeline: {
        key: 'getPipelineFolderPipeline',
        noun: 'blueOcean',
        display: {
            label: '',
            description: 'Retrieve pipeline details for an organization folder',
            hidden: false,
        },
        operation: {
            inputFields: [
                {
                    key: 'organization',
                    label: 'Name of the organization',
                    type: 'string',
                    required: true,
                },
                {
                    key: 'pipeline',
                    label: 'Name of the pipeline',
                    type: 'string',
                    required: true,
                },
                {
                    key: 'folder',
                    label: 'Name of the folder',
                    type: 'string',
                    required: true,
                },
            ],
            outputFields: [
                ...PipelineImpl.fields('', false),
            ],
            perform: async (z, bundle) => {
                const options = {
                    url: utils.replacePathParameters('http://localhost/blue/rest/organizations/{organization}/pipelines/{folder}/pipelines/{pipeline}'),
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
                    const results = utils.responseOptionsMiddleware(z, bundle, 'getPipelineFolderPipeline', response.json);
                    return results;
                })
            },
            sample: samples['PipelineImplSample']
        }
    },
    getPipelineQueue: {
        key: 'getPipelineQueue',
        noun: 'blueOcean',
        display: {
            label: '',
            description: 'Retrieve queue details for an organization pipeline',
            hidden: false,
        },
        operation: {
            inputFields: [
                {
                    key: 'organization',
                    label: 'Name of the organization',
                    type: 'string',
                    required: true,
                },
                {
                    key: 'pipeline',
                    label: 'Name of the pipeline',
                    type: 'string',
                    required: true,
                },
            ],
            outputFields: [
            ],
            perform: async (z, bundle) => {
                const options = {
                    url: utils.replacePathParameters('http://localhost/blue/rest/organizations/{organization}/pipelines/{pipeline}/queue'),
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
                    const results = utils.responseOptionsMiddleware(z, bundle, 'getPipelineQueue', response.json);
                    return results;
                })
            },
            sample: samples['QueueItemImplSample']
        }
    },
    getPipelineRun: {
        key: 'getPipelineRun',
        noun: 'blueOcean',
        display: {
            label: '',
            description: 'Retrieve run details for an organization pipeline',
            hidden: false,
        },
        operation: {
            inputFields: [
                {
                    key: 'organization',
                    label: 'Name of the organization',
                    type: 'string',
                    required: true,
                },
                {
                    key: 'pipeline',
                    label: 'Name of the pipeline',
                    type: 'string',
                    required: true,
                },
                {
                    key: 'run',
                    label: 'Name of the run',
                    type: 'string',
                    required: true,
                },
            ],
            outputFields: [
                ...PipelineRun.fields('', false),
            ],
            perform: async (z, bundle) => {
                const options = {
                    url: utils.replacePathParameters('http://localhost/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}'),
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
                    const results = utils.responseOptionsMiddleware(z, bundle, 'getPipelineRun', response.json);
                    return results;
                })
            },
            sample: samples['PipelineRunSample']
        }
    },
    getPipelineRunLog: {
        key: 'getPipelineRunLog',
        noun: 'blueOcean',
        display: {
            label: '',
            description: 'Get log for a pipeline run',
            hidden: false,
        },
        operation: {
            inputFields: [
                {
                    key: 'organization',
                    label: 'Name of the organization',
                    type: 'string',
                    required: true,
                },
                {
                    key: 'pipeline',
                    label: 'Name of the pipeline',
                    type: 'string',
                    required: true,
                },
                {
                    key: 'run',
                    label: 'Name of the run',
                    type: 'string',
                    required: true,
                },
                {
                    key: 'start',
                    label: 'Start position of the log',
                    type: 'integer',
                },
                {
                    key: 'download',
                    label: 'Set to true in order to download the file, otherwise it&#39;s passed as a response body',
                    type: 'boolean',
                },
            ],
            outputFields: [
            ],
            perform: async (z, bundle) => {
                const options = {
                    url: utils.replacePathParameters('http://localhost/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/log'),
                    method: 'GET',
                    removeMissingValuesFrom: { params: true, body: true },
                    headers: {
                        'Content-Type': '',
                        'Accept': 'application/json',
                    },
                    params: {
                        'start': bundle.inputData?.['start'],
                        'download': bundle.inputData?.['download'],
                    },
                    body: {
                    },
                }
                return z.request(utils.requestOptionsMiddleware(z, bundle, options)).then((response) => {
                    response.throwForStatus();
                    const results = utils.responseOptionsMiddleware(z, bundle, 'getPipelineRunLog', response.json);
                    return { data: results };
                })
            },
            sample: { data: {} }
        }
    },
    getPipelineRunNode: {
        key: 'getPipelineRunNode',
        noun: 'blueOcean',
        display: {
            label: '',
            description: 'Retrieve run node details for an organization pipeline',
            hidden: false,
        },
        operation: {
            inputFields: [
                {
                    key: 'organization',
                    label: 'Name of the organization',
                    type: 'string',
                    required: true,
                },
                {
                    key: 'pipeline',
                    label: 'Name of the pipeline',
                    type: 'string',
                    required: true,
                },
                {
                    key: 'run',
                    label: 'Name of the run',
                    type: 'string',
                    required: true,
                },
                {
                    key: 'node',
                    label: 'Name of the node',
                    type: 'string',
                    required: true,
                },
            ],
            outputFields: [
                ...PipelineRunNode.fields('', false),
            ],
            perform: async (z, bundle) => {
                const options = {
                    url: utils.replacePathParameters('http://localhost/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes/{node}'),
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
                    const results = utils.responseOptionsMiddleware(z, bundle, 'getPipelineRunNode', response.json);
                    return results;
                })
            },
            sample: samples['PipelineRunNodeSample']
        }
    },
    getPipelineRunNodeStep: {
        key: 'getPipelineRunNodeStep',
        noun: 'blueOcean',
        display: {
            label: '',
            description: 'Retrieve run node details for an organization pipeline',
            hidden: false,
        },
        operation: {
            inputFields: [
                {
                    key: 'organization',
                    label: 'Name of the organization',
                    type: 'string',
                    required: true,
                },
                {
                    key: 'pipeline',
                    label: 'Name of the pipeline',
                    type: 'string',
                    required: true,
                },
                {
                    key: 'run',
                    label: 'Name of the run',
                    type: 'string',
                    required: true,
                },
                {
                    key: 'node',
                    label: 'Name of the node',
                    type: 'string',
                    required: true,
                },
                {
                    key: 'step',
                    label: 'Name of the step',
                    type: 'string',
                    required: true,
                },
            ],
            outputFields: [
                ...PipelineStepImpl.fields('', false),
            ],
            perform: async (z, bundle) => {
                const options = {
                    url: utils.replacePathParameters('http://localhost/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes/{node}/steps/{step}'),
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
                    const results = utils.responseOptionsMiddleware(z, bundle, 'getPipelineRunNodeStep', response.json);
                    return results;
                })
            },
            sample: samples['PipelineStepImplSample']
        }
    },
    getPipelineRunNodeStepLog: {
        key: 'getPipelineRunNodeStepLog',
        noun: 'blueOcean',
        display: {
            label: '',
            description: 'Get log for a pipeline run node step',
            hidden: false,
        },
        operation: {
            inputFields: [
                {
                    key: 'organization',
                    label: 'Name of the organization',
                    type: 'string',
                    required: true,
                },
                {
                    key: 'pipeline',
                    label: 'Name of the pipeline',
                    type: 'string',
                    required: true,
                },
                {
                    key: 'run',
                    label: 'Name of the run',
                    type: 'string',
                    required: true,
                },
                {
                    key: 'node',
                    label: 'Name of the node',
                    type: 'string',
                    required: true,
                },
                {
                    key: 'step',
                    label: 'Name of the step',
                    type: 'string',
                    required: true,
                },
            ],
            outputFields: [
            ],
            perform: async (z, bundle) => {
                const options = {
                    url: utils.replacePathParameters('http://localhost/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes/{node}/steps/{step}/log'),
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
                    const results = utils.responseOptionsMiddleware(z, bundle, 'getPipelineRunNodeStepLog', response.json);
                    return { data: results };
                })
            },
            sample: { data: {} }
        }
    },
    getPipelineRunNodeSteps: {
        key: 'getPipelineRunNodeSteps',
        noun: 'blueOcean',
        display: {
            label: '',
            description: 'Retrieve run node steps details for an organization pipeline',
            hidden: false,
        },
        operation: {
            inputFields: [
                {
                    key: 'organization',
                    label: 'Name of the organization',
                    type: 'string',
                    required: true,
                },
                {
                    key: 'pipeline',
                    label: 'Name of the pipeline',
                    type: 'string',
                    required: true,
                },
                {
                    key: 'run',
                    label: 'Name of the run',
                    type: 'string',
                    required: true,
                },
                {
                    key: 'node',
                    label: 'Name of the node',
                    type: 'string',
                    required: true,
                },
            ],
            outputFields: [
            ],
            perform: async (z, bundle) => {
                const options = {
                    url: utils.replacePathParameters('http://localhost/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes/{node}/steps'),
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
                    const results = utils.responseOptionsMiddleware(z, bundle, 'getPipelineRunNodeSteps', response.json);
                    return results;
                })
            },
            sample: samples['PipelineStepImplSample']
        }
    },
    getPipelineRunNodes: {
        key: 'getPipelineRunNodes',
        noun: 'blueOcean',
        display: {
            label: '',
            description: 'Retrieve run nodes details for an organization pipeline',
            hidden: false,
        },
        operation: {
            inputFields: [
                {
                    key: 'organization',
                    label: 'Name of the organization',
                    type: 'string',
                    required: true,
                },
                {
                    key: 'pipeline',
                    label: 'Name of the pipeline',
                    type: 'string',
                    required: true,
                },
                {
                    key: 'run',
                    label: 'Name of the run',
                    type: 'string',
                    required: true,
                },
            ],
            outputFields: [
            ],
            perform: async (z, bundle) => {
                const options = {
                    url: utils.replacePathParameters('http://localhost/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes'),
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
                    const results = utils.responseOptionsMiddleware(z, bundle, 'getPipelineRunNodes', response.json);
                    return results;
                })
            },
            sample: samples['PipelineRunNodeSample']
        }
    },
    getPipelineRuns: {
        key: 'getPipelineRuns',
        noun: 'blueOcean',
        display: {
            label: '',
            description: 'Retrieve all runs details for an organization pipeline',
            hidden: false,
        },
        operation: {
            inputFields: [
                {
                    key: 'organization',
                    label: 'Name of the organization',
                    type: 'string',
                    required: true,
                },
                {
                    key: 'pipeline',
                    label: 'Name of the pipeline',
                    type: 'string',
                    required: true,
                },
            ],
            outputFields: [
            ],
            perform: async (z, bundle) => {
                const options = {
                    url: utils.replacePathParameters('http://localhost/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs'),
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
                    const results = utils.responseOptionsMiddleware(z, bundle, 'getPipelineRuns', response.json);
                    return results;
                })
            },
            sample: samples['PipelineRunSample']
        }
    },
    getPipelines: {
        key: 'getPipelines',
        noun: 'blueOcean',
        display: {
            label: '',
            description: 'Retrieve all pipelines details for an organization',
            hidden: false,
        },
        operation: {
            inputFields: [
                {
                    key: 'organization',
                    label: 'Name of the organization',
                    type: 'string',
                    required: true,
                },
            ],
            outputFields: [
            ],
            perform: async (z, bundle) => {
                const options = {
                    url: utils.replacePathParameters('http://localhost/blue/rest/organizations/{organization}/pipelines/'),
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
                    const results = utils.responseOptionsMiddleware(z, bundle, 'getPipelines', response.json);
                    return results;
                })
            },
            sample: samples['PipelineSample']
        }
    },
    getSCM: {
        key: 'getSCM',
        noun: 'blueOcean',
        display: {
            label: '',
            description: 'Retrieve SCM details for an organization',
            hidden: false,
        },
        operation: {
            inputFields: [
                {
                    key: 'organization',
                    label: 'Name of the organization',
                    type: 'string',
                    required: true,
                },
                {
                    key: 'scm',
                    label: 'Name of SCM',
                    type: 'string',
                    required: true,
                },
            ],
            outputFields: [
                ...GithubScm.fields('', false),
            ],
            perform: async (z, bundle) => {
                const options = {
                    url: utils.replacePathParameters('http://localhost/blue/rest/organizations/{organization}/scm/{scm}'),
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
                    const results = utils.responseOptionsMiddleware(z, bundle, 'getSCM', response.json);
                    return results;
                })
            },
            sample: samples['GithubScmSample']
        }
    },
    getSCMOrganisationRepositories: {
        key: 'getSCMOrganisationRepositories',
        noun: 'blueOcean',
        display: {
            label: '',
            description: 'Retrieve SCM organization repositories details for an organization',
            hidden: false,
        },
        operation: {
            inputFields: [
                {
                    key: 'organization',
                    label: 'Name of the organization',
                    type: 'string',
                    required: true,
                },
                {
                    key: 'scm',
                    label: 'Name of SCM',
                    type: 'string',
                    required: true,
                },
                {
                    key: 'scmOrganisation',
                    label: 'Name of the SCM organization',
                    type: 'string',
                    required: true,
                },
                {
                    key: 'credentialId',
                    label: 'Credential ID',
                    type: 'string',
                },
                {
                    key: 'pageSize',
                    label: 'Number of items in a page',
                    type: 'integer',
                },
                {
                    key: 'pageNumber',
                    label: 'Page number',
                    type: 'integer',
                },
            ],
            outputFields: [
            ],
            perform: async (z, bundle) => {
                const options = {
                    url: utils.replacePathParameters('http://localhost/blue/rest/organizations/{organization}/scm/{scm}/organizations/{scmOrganisation}/repositories'),
                    method: 'GET',
                    removeMissingValuesFrom: { params: true, body: true },
                    headers: {
                        'Content-Type': '',
                        'Accept': 'application/json',
                    },
                    params: {
                        'credentialId': bundle.inputData?.['credentialId'],
                        'pageSize': bundle.inputData?.['pageSize'],
                        'pageNumber': bundle.inputData?.['pageNumber'],
                    },
                    body: {
                    },
                }
                return z.request(utils.requestOptionsMiddleware(z, bundle, options)).then((response) => {
                    response.throwForStatus();
                    const results = utils.responseOptionsMiddleware(z, bundle, 'getSCMOrganisationRepositories', response.json);
                    return results;
                })
            },
            sample: samples['GithubOrganizationSample']
        }
    },
    getSCMOrganisationRepository: {
        key: 'getSCMOrganisationRepository',
        noun: 'blueOcean',
        display: {
            label: '',
            description: 'Retrieve SCM organization repository details for an organization',
            hidden: false,
        },
        operation: {
            inputFields: [
                {
                    key: 'organization',
                    label: 'Name of the organization',
                    type: 'string',
                    required: true,
                },
                {
                    key: 'scm',
                    label: 'Name of SCM',
                    type: 'string',
                    required: true,
                },
                {
                    key: 'scmOrganisation',
                    label: 'Name of the SCM organization',
                    type: 'string',
                    required: true,
                },
                {
                    key: 'repository',
                    label: 'Name of the SCM repository',
                    type: 'string',
                    required: true,
                },
                {
                    key: 'credentialId',
                    label: 'Credential ID',
                    type: 'string',
                },
            ],
            outputFields: [
            ],
            perform: async (z, bundle) => {
                const options = {
                    url: utils.replacePathParameters('http://localhost/blue/rest/organizations/{organization}/scm/{scm}/organizations/{scmOrganisation}/repositories/{repository}'),
                    method: 'GET',
                    removeMissingValuesFrom: { params: true, body: true },
                    headers: {
                        'Content-Type': '',
                        'Accept': 'application/json',
                    },
                    params: {
                        'credentialId': bundle.inputData?.['credentialId'],
                    },
                    body: {
                    },
                }
                return z.request(utils.requestOptionsMiddleware(z, bundle, options)).then((response) => {
                    response.throwForStatus();
                    const results = utils.responseOptionsMiddleware(z, bundle, 'getSCMOrganisationRepository', response.json);
                    return results;
                })
            },
            sample: samples['GithubOrganizationSample']
        }
    },
    getSCMOrganisations: {
        key: 'getSCMOrganisations',
        noun: 'blueOcean',
        display: {
            label: '',
            description: 'Retrieve SCM organizations details for an organization',
            hidden: false,
        },
        operation: {
            inputFields: [
                {
                    key: 'organization',
                    label: 'Name of the organization',
                    type: 'string',
                    required: true,
                },
                {
                    key: 'scm',
                    label: 'Name of SCM',
                    type: 'string',
                    required: true,
                },
                {
                    key: 'credentialId',
                    label: 'Credential ID',
                    type: 'string',
                },
            ],
            outputFields: [
            ],
            perform: async (z, bundle) => {
                const options = {
                    url: utils.replacePathParameters('http://localhost/blue/rest/organizations/{organization}/scm/{scm}/organizations'),
                    method: 'GET',
                    removeMissingValuesFrom: { params: true, body: true },
                    headers: {
                        'Content-Type': '',
                        'Accept': 'application/json',
                    },
                    params: {
                        'credentialId': bundle.inputData?.['credentialId'],
                    },
                    body: {
                    },
                }
                return z.request(utils.requestOptionsMiddleware(z, bundle, options)).then((response) => {
                    response.throwForStatus();
                    const results = utils.responseOptionsMiddleware(z, bundle, 'getSCMOrganisations', response.json);
                    return results;
                })
            },
            sample: samples['GithubOrganizationSample']
        }
    },
    getUser: {
        key: 'getUser',
        noun: 'blueOcean',
        display: {
            label: '',
            description: 'Retrieve user details for an organization',
            hidden: false,
        },
        operation: {
            inputFields: [
                {
                    key: 'organization',
                    label: 'Name of the organization',
                    type: 'string',
                    required: true,
                },
                {
                    key: 'user',
                    label: 'Name of the user',
                    type: 'string',
                    required: true,
                },
            ],
            outputFields: [
                ...User.fields('', false),
            ],
            perform: async (z, bundle) => {
                const options = {
                    url: utils.replacePathParameters('http://localhost/blue/rest/organizations/{organization}/users/{user}'),
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
                    const results = utils.responseOptionsMiddleware(z, bundle, 'getUser', response.json);
                    return results;
                })
            },
            sample: samples['UserSample']
        }
    },
    getUserFavorites: {
        key: 'getUserFavorites',
        noun: 'blueOcean',
        display: {
            label: '',
            description: 'Retrieve user favorites details for an organization',
            hidden: false,
        },
        operation: {
            inputFields: [
                {
                    key: 'user',
                    label: 'Name of the user',
                    type: 'string',
                    required: true,
                },
            ],
            outputFields: [
            ],
            perform: async (z, bundle) => {
                const options = {
                    url: utils.replacePathParameters('http://localhost/blue/rest/users/{user}/favorites'),
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
                    const results = utils.responseOptionsMiddleware(z, bundle, 'getUserFavorites', response.json);
                    return results;
                })
            },
            sample: samples['FavoriteImplSample']
        }
    },
    getUsers: {
        key: 'getUsers',
        noun: 'blueOcean',
        display: {
            label: '',
            description: 'Retrieve users details for an organization',
            hidden: false,
        },
        operation: {
            inputFields: [
                {
                    key: 'organization',
                    label: 'Name of the organization',
                    type: 'string',
                    required: true,
                },
            ],
            outputFields: [
                ...User.fields('', false),
            ],
            perform: async (z, bundle) => {
                const options = {
                    url: utils.replacePathParameters('http://localhost/blue/rest/organizations/{organization}/users/'),
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
                    const results = utils.responseOptionsMiddleware(z, bundle, 'getUsers', response.json);
                    return results;
                })
            },
            sample: samples['UserSample']
        }
    },
    postPipelineRun: {
        key: 'postPipelineRun',
        noun: 'blueOcean',
        display: {
            label: '',
            description: 'Replay an organization pipeline run',
            hidden: false,
        },
        operation: {
            inputFields: [
                {
                    key: 'organization',
                    label: 'Name of the organization',
                    type: 'string',
                    required: true,
                },
                {
                    key: 'pipeline',
                    label: 'Name of the pipeline',
                    type: 'string',
                    required: true,
                },
                {
                    key: 'run',
                    label: 'Name of the run',
                    type: 'string',
                    required: true,
                },
            ],
            outputFields: [
                ...QueueItemImpl.fields('', false),
            ],
            perform: async (z, bundle) => {
                const options = {
                    url: utils.replacePathParameters('http://localhost/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/replay'),
                    method: 'POST',
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
                    const results = utils.responseOptionsMiddleware(z, bundle, 'postPipelineRun', response.json);
                    return results;
                })
            },
            sample: samples['QueueItemImplSample']
        }
    },
    postPipelineRuns: {
        key: 'postPipelineRuns',
        noun: 'blueOcean',
        display: {
            label: '',
            description: 'Start a build for an organization pipeline',
            hidden: false,
        },
        operation: {
            inputFields: [
                {
                    key: 'organization',
                    label: 'Name of the organization',
                    type: 'string',
                    required: true,
                },
                {
                    key: 'pipeline',
                    label: 'Name of the pipeline',
                    type: 'string',
                    required: true,
                },
            ],
            outputFields: [
                ...QueueItemImpl.fields('', false),
            ],
            perform: async (z, bundle) => {
                const options = {
                    url: utils.replacePathParameters('http://localhost/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs'),
                    method: 'POST',
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
                    const results = utils.responseOptionsMiddleware(z, bundle, 'postPipelineRuns', response.json);
                    return results;
                })
            },
            sample: samples['QueueItemImplSample']
        }
    },
    putPipelineFavorite: {
        key: 'putPipelineFavorite',
        noun: 'blueOcean',
        display: {
            label: '',
            description: 'Favorite/unfavorite a pipeline',
            hidden: false,
        },
        operation: {
            inputFields: [
                {
                    key: 'organization',
                    label: 'Name of the organization',
                    type: 'string',
                    required: true,
                },
                {
                    key: 'pipeline',
                    label: 'Name of the pipeline',
                    type: 'string',
                    required: true,
                },
                {
                    key: 'body',
                    label: 'Set JSON string body to {\&quot;favorite\&quot;: true} to favorite, set value to false to unfavorite',
                    type: 'boolean',
                    required: true,
                },
            ],
            outputFields: [
                ...FavoriteImpl.fields('', false),
            ],
            perform: async (z, bundle) => {
                const options = {
                    url: utils.replacePathParameters('http://localhost/blue/rest/organizations/{organization}/pipelines/{pipeline}/favorite'),
                    method: 'PUT',
                    removeMissingValuesFrom: { params: true, body: true },
                    headers: {
                        'Content-Type': 'application/json',
                        'Accept': 'application/json',
                    },
                    params: {
                    },
                    body: {
                        'body': bundle.inputData?.['body'],
                    },
                }
                return z.request(utils.requestOptionsMiddleware(z, bundle, options)).then((response) => {
                    response.throwForStatus();
                    const results = utils.responseOptionsMiddleware(z, bundle, 'putPipelineFavorite', response.json);
                    return results;
                })
            },
            sample: samples['FavoriteImplSample']
        }
    },
    putPipelineRun: {
        key: 'putPipelineRun',
        noun: 'blueOcean',
        display: {
            label: '',
            description: 'Stop a build of an organization pipeline',
            hidden: false,
        },
        operation: {
            inputFields: [
                {
                    key: 'organization',
                    label: 'Name of the organization',
                    type: 'string',
                    required: true,
                },
                {
                    key: 'pipeline',
                    label: 'Name of the pipeline',
                    type: 'string',
                    required: true,
                },
                {
                    key: 'run',
                    label: 'Name of the run',
                    type: 'string',
                    required: true,
                },
                {
                    key: 'blocking',
                    label: 'Set to true to make blocking stop, default: false',
                    type: 'string',
                },
                {
                    key: 'timeOutInSecs',
                    label: 'Timeout in seconds, default: 10 seconds',
                    type: 'integer',
                },
            ],
            outputFields: [
                ...PipelineRun.fields('', false),
            ],
            perform: async (z, bundle) => {
                const options = {
                    url: utils.replacePathParameters('http://localhost/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/stop'),
                    method: 'PUT',
                    removeMissingValuesFrom: { params: true, body: true },
                    headers: {
                        'Content-Type': '',
                        'Accept': 'application/json',
                    },
                    params: {
                        'blocking': bundle.inputData?.['blocking'],
                        'timeOutInSecs': bundle.inputData?.['timeOutInSecs'],
                    },
                    body: {
                    },
                }
                return z.request(utils.requestOptionsMiddleware(z, bundle, options)).then((response) => {
                    response.throwForStatus();
                    const results = utils.responseOptionsMiddleware(z, bundle, 'putPipelineRun', response.json);
                    return results;
                })
            },
            sample: samples['PipelineRunSample']
        }
    },
    search: {
        key: 'search',
        noun: 'blueOcean',
        display: {
            label: '',
            description: 'Search for any resource details',
            hidden: false,
        },
        operation: {
            inputFields: [
                {
                    key: 'q',
                    label: 'Query string',
                    type: 'string',
                    required: true,
                },
            ],
            outputFields: [
            ],
            perform: async (z, bundle) => {
                const options = {
                    url: utils.replacePathParameters('http://localhost/blue/rest/search/'),
                    method: 'GET',
                    removeMissingValuesFrom: { params: true, body: true },
                    headers: {
                        'Content-Type': '',
                        'Accept': 'application/json',
                    },
                    params: {
                        'q': bundle.inputData?.['q'],
                    },
                    body: {
                    },
                }
                return z.request(utils.requestOptionsMiddleware(z, bundle, options)).then((response) => {
                    response.throwForStatus();
                    const results = utils.responseOptionsMiddleware(z, bundle, 'search', response.json);
                    return { data: results };
                })
            },
            sample: { data: {} }
        }
    },
    searchClasses: {
        key: 'searchClasses',
        noun: 'blueOcean',
        display: {
            label: '',
            description: 'Get classes details',
            hidden: false,
        },
        operation: {
            inputFields: [
                {
                    key: 'q',
                    label: 'Query string containing an array of class names',
                    type: 'string',
                    required: true,
                },
            ],
            outputFields: [
            ],
            perform: async (z, bundle) => {
                const options = {
                    url: utils.replacePathParameters('http://localhost/blue/rest/classes/'),
                    method: 'GET',
                    removeMissingValuesFrom: { params: true, body: true },
                    headers: {
                        'Content-Type': '',
                        'Accept': 'application/json',
                    },
                    params: {
                        'q': bundle.inputData?.['q'],
                    },
                    body: {
                    },
                }
                return z.request(utils.requestOptionsMiddleware(z, bundle, options)).then((response) => {
                    response.throwForStatus();
                    const results = utils.responseOptionsMiddleware(z, bundle, 'searchClasses', response.json);
                    return { data: results };
                })
            },
            sample: { data: {} }
        }
    },
}
