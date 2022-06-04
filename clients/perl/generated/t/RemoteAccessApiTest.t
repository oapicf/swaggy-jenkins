=begin comment

Swaggy Jenkins

Jenkins API clients generated from Swagger / Open API specification

The version of the OpenAPI document: 1.5.1-pre.0
Contact: blah@cliffano.com
Generated by: https://openapi-generator.tech

=end comment

=cut

#
# NOTE: This class is auto generated by OpenAPI Generator
# Please update the test cases below to test the API endpoints.
# Ref: https://openapi-generator.tech
#
use Test::More tests => 1; #TODO update number of test cases
use Test::Exception;

use lib 'lib';
use strict;
use warnings;

use_ok('WWW::OpenAPIClient::RemoteAccessApi');

my $api = WWW::OpenAPIClient::RemoteAccessApi->new();
isa_ok($api, 'WWW::OpenAPIClient::RemoteAccessApi');

#
# get_computer test
#
# uncomment below and update the test
#my $get_computer_depth = undef; # replace NULL with a proper value
#my $get_computer_result = $api->get_computer(depth => $get_computer_depth);

#
# get_jenkins test
#
# uncomment below and update the test
#my $get_jenkins_result = $api->get_jenkins();

#
# get_job test
#
# uncomment below and update the test
#my $get_job_name = undef; # replace NULL with a proper value
#my $get_job_result = $api->get_job(name => $get_job_name);

#
# get_job_config test
#
# uncomment below and update the test
#my $get_job_config_name = undef; # replace NULL with a proper value
#my $get_job_config_result = $api->get_job_config(name => $get_job_config_name);

#
# get_job_last_build test
#
# uncomment below and update the test
#my $get_job_last_build_name = undef; # replace NULL with a proper value
#my $get_job_last_build_result = $api->get_job_last_build(name => $get_job_last_build_name);

#
# get_job_progressive_text test
#
# uncomment below and update the test
#my $get_job_progressive_text_name = undef; # replace NULL with a proper value
#my $get_job_progressive_text_number = undef; # replace NULL with a proper value
#my $get_job_progressive_text_start = undef; # replace NULL with a proper value
#my $get_job_progressive_text_result = $api->get_job_progressive_text(name => $get_job_progressive_text_name, number => $get_job_progressive_text_number, start => $get_job_progressive_text_start);

#
# get_queue test
#
# uncomment below and update the test
#my $get_queue_result = $api->get_queue();

#
# get_queue_item test
#
# uncomment below and update the test
#my $get_queue_item_number = undef; # replace NULL with a proper value
#my $get_queue_item_result = $api->get_queue_item(number => $get_queue_item_number);

#
# get_view test
#
# uncomment below and update the test
#my $get_view_name = undef; # replace NULL with a proper value
#my $get_view_result = $api->get_view(name => $get_view_name);

#
# get_view_config test
#
# uncomment below and update the test
#my $get_view_config_name = undef; # replace NULL with a proper value
#my $get_view_config_result = $api->get_view_config(name => $get_view_config_name);

#
# head_jenkins test
#
# uncomment below and update the test
#my $head_jenkins_result = $api->head_jenkins();

#
# post_create_item test
#
# uncomment below and update the test
#my $post_create_item_name = undef; # replace NULL with a proper value
#my $post_create_item_from = undef; # replace NULL with a proper value
#my $post_create_item_mode = undef; # replace NULL with a proper value
#my $post_create_item_jenkins_crumb = undef; # replace NULL with a proper value
#my $post_create_item_content_type = undef; # replace NULL with a proper value
#my $post_create_item_body = undef; # replace NULL with a proper value
#my $post_create_item_result = $api->post_create_item(name => $post_create_item_name, from => $post_create_item_from, mode => $post_create_item_mode, jenkins_crumb => $post_create_item_jenkins_crumb, content_type => $post_create_item_content_type, body => $post_create_item_body);

#
# post_create_view test
#
# uncomment below and update the test
#my $post_create_view_name = undef; # replace NULL with a proper value
#my $post_create_view_jenkins_crumb = undef; # replace NULL with a proper value
#my $post_create_view_content_type = undef; # replace NULL with a proper value
#my $post_create_view_body = undef; # replace NULL with a proper value
#my $post_create_view_result = $api->post_create_view(name => $post_create_view_name, jenkins_crumb => $post_create_view_jenkins_crumb, content_type => $post_create_view_content_type, body => $post_create_view_body);

#
# post_job_build test
#
# uncomment below and update the test
#my $post_job_build_name = undef; # replace NULL with a proper value
#my $post_job_build_json = undef; # replace NULL with a proper value
#my $post_job_build_token = undef; # replace NULL with a proper value
#my $post_job_build_jenkins_crumb = undef; # replace NULL with a proper value
#my $post_job_build_result = $api->post_job_build(name => $post_job_build_name, json => $post_job_build_json, token => $post_job_build_token, jenkins_crumb => $post_job_build_jenkins_crumb);

#
# post_job_config test
#
# uncomment below and update the test
#my $post_job_config_name = undef; # replace NULL with a proper value
#my $post_job_config_body = undef; # replace NULL with a proper value
#my $post_job_config_jenkins_crumb = undef; # replace NULL with a proper value
#my $post_job_config_result = $api->post_job_config(name => $post_job_config_name, body => $post_job_config_body, jenkins_crumb => $post_job_config_jenkins_crumb);

#
# post_job_delete test
#
# uncomment below and update the test
#my $post_job_delete_name = undef; # replace NULL with a proper value
#my $post_job_delete_jenkins_crumb = undef; # replace NULL with a proper value
#my $post_job_delete_result = $api->post_job_delete(name => $post_job_delete_name, jenkins_crumb => $post_job_delete_jenkins_crumb);

#
# post_job_disable test
#
# uncomment below and update the test
#my $post_job_disable_name = undef; # replace NULL with a proper value
#my $post_job_disable_jenkins_crumb = undef; # replace NULL with a proper value
#my $post_job_disable_result = $api->post_job_disable(name => $post_job_disable_name, jenkins_crumb => $post_job_disable_jenkins_crumb);

#
# post_job_enable test
#
# uncomment below and update the test
#my $post_job_enable_name = undef; # replace NULL with a proper value
#my $post_job_enable_jenkins_crumb = undef; # replace NULL with a proper value
#my $post_job_enable_result = $api->post_job_enable(name => $post_job_enable_name, jenkins_crumb => $post_job_enable_jenkins_crumb);

#
# post_job_last_build_stop test
#
# uncomment below and update the test
#my $post_job_last_build_stop_name = undef; # replace NULL with a proper value
#my $post_job_last_build_stop_jenkins_crumb = undef; # replace NULL with a proper value
#my $post_job_last_build_stop_result = $api->post_job_last_build_stop(name => $post_job_last_build_stop_name, jenkins_crumb => $post_job_last_build_stop_jenkins_crumb);

#
# post_view_config test
#
# uncomment below and update the test
#my $post_view_config_name = undef; # replace NULL with a proper value
#my $post_view_config_body = undef; # replace NULL with a proper value
#my $post_view_config_jenkins_crumb = undef; # replace NULL with a proper value
#my $post_view_config_result = $api->post_view_config(name => $post_view_config_name, body => $post_view_config_body, jenkins_crumb => $post_view_config_jenkins_crumb);

