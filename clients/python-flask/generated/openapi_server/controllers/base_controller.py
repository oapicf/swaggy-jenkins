import connexion
import six
from typing import Dict
from typing import Tuple
from typing import Union

from openapi_server.models.default_crumb_issuer import DefaultCrumbIssuer  # noqa: E501
from openapi_server import util


def get_crumb():  # noqa: E501
    """get_crumb

    Retrieve CSRF protection token # noqa: E501


    :rtype: Union[DefaultCrumbIssuer, Tuple[DefaultCrumbIssuer, int], Tuple[DefaultCrumbIssuer, int, Dict[str, str]]
    """
    return 'do some magic!'
