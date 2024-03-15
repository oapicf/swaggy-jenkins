import connexion

from app.openapi_server.models.default_crumb_issuer import DefaultCrumbIssuer  # noqa: E501
from openapi_server import util


def get_crumb():  # noqa: E501
    """get_crumb

    Retrieve CSRF protection token # noqa: E501


    :rtype: DefaultCrumbIssuer
    """
    return 'do some magic!'
