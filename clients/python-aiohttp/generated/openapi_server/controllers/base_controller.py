from typing import List, Dict
from aiohttp import web

from openapi_server.models.default_crumb_issuer import DefaultCrumbIssuer
from openapi_server import util


async def get_crumb(request: web.Request, ) -> web.Response:
    """get_crumb

    Retrieve CSRF protection token


    """
    return web.Response(status=200)
