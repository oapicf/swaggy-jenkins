from typing import List


def info_from_jenkins_auth(username, password, required_scopes):
    """
    Check and retrieve authentication information from basic auth.
    Returned value will be passed in 'token_info' parameter of your operation function, if there is one.
    'sub' or 'uid' will be set in 'user' parameter of your operation function, if there is one.

    :param username login provided by Authorization header
    :type username: str
    :param password password provided by Authorization header
    :type password: str
    :param required_scopes Always None. Used for other authentication method
    :type required_scopes: None
    :return: Information attached to user or None if credentials are invalid or does not allow access to called API
    :rtype: dict | None
    """
    return {'uid': 'user_id'}


def info_from_jwt_auth(api_key, required_scopes):
    """
    Check and retrieve authentication information from api_key.
    Returned value will be passed in 'token_info' parameter of your operation function, if there is one.
    'sub' or 'uid' will be set in 'user' parameter of your operation function, if there is one.

    :param api_key API key provided by Authorization header
    :type api_key: str
    :param required_scopes Always None. Used for other authentication method
    :type required_scopes: None
    :return: Information attached to provided api_key or None if api_key is invalid or does not allow access to called API
    :rtype: dict | None
    """
    return {'uid': 'user_id'}

