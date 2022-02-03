//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

import 'package:openapi/api.dart';
import 'package:test/test.dart';


/// tests for RemoteAccessApi
void main() {
  final instance = RemoteAccessApi();

  group('tests for RemoteAccessApi', () {
    // Retrieve computer details
    //
    //Future<ComputerSet> getComputer(int depth) async
    test('test getComputer', () async {
      // TODO
    });

    // Retrieve Jenkins details
    //
    //Future<Hudson> getJenkins() async
    test('test getJenkins', () async {
      // TODO
    });

    // Retrieve job details
    //
    //Future<FreeStyleProject> getJob(String name) async
    test('test getJob', () async {
      // TODO
    });

    // Retrieve job configuration
    //
    //Future<String> getJobConfig(String name) async
    test('test getJobConfig', () async {
      // TODO
    });

    // Retrieve job's last build details
    //
    //Future<FreeStyleBuild> getJobLastBuild(String name) async
    test('test getJobLastBuild', () async {
      // TODO
    });

    // Retrieve job's build progressive text output
    //
    //Future getJobProgressiveText(String name, String number, String start) async
    test('test getJobProgressiveText', () async {
      // TODO
    });

    // Retrieve queue details
    //
    //Future<Queue> getQueue() async
    test('test getQueue', () async {
      // TODO
    });

    // Retrieve queued item details
    //
    //Future<Queue> getQueueItem(String number) async
    test('test getQueueItem', () async {
      // TODO
    });

    // Retrieve view details
    //
    //Future<ListView> getView(String name) async
    test('test getView', () async {
      // TODO
    });

    // Retrieve view configuration
    //
    //Future<String> getViewConfig(String name) async
    test('test getViewConfig', () async {
      // TODO
    });

    // Retrieve Jenkins headers
    //
    //Future headJenkins() async
    test('test headJenkins', () async {
      // TODO
    });

    // Create a new job using job configuration, or copied from an existing job
    //
    //Future postCreateItem(String name, { String from, String mode, String jenkinsCrumb, String contentType, String body }) async
    test('test postCreateItem', () async {
      // TODO
    });

    // Create a new view using view configuration
    //
    //Future postCreateView(String name, { String jenkinsCrumb, String contentType, String body }) async
    test('test postCreateView', () async {
      // TODO
    });

    // Build a job
    //
    //Future postJobBuild(String name, String json, { String token, String jenkinsCrumb }) async
    test('test postJobBuild', () async {
      // TODO
    });

    // Update job configuration
    //
    //Future postJobConfig(String name, String body, { String jenkinsCrumb }) async
    test('test postJobConfig', () async {
      // TODO
    });

    // Delete a job
    //
    //Future postJobDelete(String name, { String jenkinsCrumb }) async
    test('test postJobDelete', () async {
      // TODO
    });

    // Disable a job
    //
    //Future postJobDisable(String name, { String jenkinsCrumb }) async
    test('test postJobDisable', () async {
      // TODO
    });

    // Enable a job
    //
    //Future postJobEnable(String name, { String jenkinsCrumb }) async
    test('test postJobEnable', () async {
      // TODO
    });

    // Stop a job
    //
    //Future postJobLastBuildStop(String name, { String jenkinsCrumb }) async
    test('test postJobLastBuildStop', () async {
      // TODO
    });

    // Update view configuration
    //
    //Future postViewConfig(String name, String body, { String jenkinsCrumb }) async
    test('test postViewConfig', () async {
      // TODO
    });

  });
}
