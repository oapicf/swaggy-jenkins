from typing import List


def info_from_jenkins_auth(username: str, password: str, required_scopes: None) -> dict:
    """
    Check and retrieve authentication information from basic auth.
    Returned value will be passed in 'token_info' parameter of your operation function, if there is one.
    'sub' or 'uid' will be set in 'user' parameter of your operation function, if there is one.
    Should return None if auth is invalid or does not allow access to called API.
    """
    return {'uid': 'user_id'}


def info_from_jwt_auth(api_key: str, required_scopes: None) -> dict:
    """
    Check and retrieve authentication information from api_key.
    Returned value will be passed in 'token_info' parameter of your operation function, if there is one.
    'sub' or 'uid' will be set in 'user' parameter of your operation function, if there is one.
    Should return None if api_key is invalid or does not allow access to called API.
    """
    return {'uid': 'user_id'}

