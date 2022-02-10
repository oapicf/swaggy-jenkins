import 'package:jaguar_retrofit/annotations/annotations.dart';
import 'package:jaguar_retrofit/jaguar_retrofit.dart';
import 'package:jaguar_serializer/jaguar_serializer.dart';
import 'package:jaguar_mimetype/jaguar_mimetype.dart';
import 'dart:async';

import 'package:openapi/model/default_crumb_issuer.dart';

part 'base_api.jretro.dart';

@GenApiClient()
class BaseApi extends ApiClient with _$BaseApiClient {
    final Route base;
    final Map<String, CodecRepo> converters;
    final Duration timeout;

    BaseApi({this.base, this.converters, this.timeout = const Duration(minutes: 2)});

    /// 
    ///
    /// Retrieve CSRF protection token
    @GetReq(path: "/crumbIssuer/api/json", metadata: {"auth": [ {"type": "http", "name": "jenkins_auth" }]})
    Future<DefaultCrumbIssuer> getCrumb(
        ) {
        return super.getCrumb(

        ).timeout(timeout);
    }


}
