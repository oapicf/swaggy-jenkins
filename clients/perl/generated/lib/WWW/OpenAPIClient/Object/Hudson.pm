=begin comment

Swaggy Jenkins

Jenkins API clients generated from Swagger / Open API specification

The version of the OpenAPI document: 1.5.1-pre.0
Contact: blah@cliffano.com
Generated by: https://openapi-generator.tech

=end comment

=cut

#
# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# Do not edit the class manually.
# Ref: https://openapi-generator.tech
#
package WWW::OpenAPIClient::Object::Hudson;

require 5.6.0;
use strict;
use warnings;
use utf8;
use JSON qw(decode_json);
use Data::Dumper;
use Module::Runtime qw(use_module);
use Log::Any qw($log);
use Date::Parse;
use DateTime;

use WWW::OpenAPIClient::Object::AllView;
use WWW::OpenAPIClient::Object::FreeStyleProject;
use WWW::OpenAPIClient::Object::HudsonassignedLabels;
use WWW::OpenAPIClient::Object::UnlabeledLoadStatistics;

use base ("Class::Accessor", "Class::Data::Inheritable");

#
#
#
# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech). Do not edit the class manually.
# REF: https://openapi-generator.tech
#

=begin comment

Swaggy Jenkins

Jenkins API clients generated from Swagger / Open API specification

The version of the OpenAPI document: 1.5.1-pre.0
Contact: blah@cliffano.com
Generated by: https://openapi-generator.tech

=end comment

=cut

#
# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# Do not edit the class manually.
# Ref: https://openapi-generator.tech
#
__PACKAGE__->mk_classdata('attribute_map' => {});
__PACKAGE__->mk_classdata('openapi_types' => {});
__PACKAGE__->mk_classdata('method_documentation' => {});
__PACKAGE__->mk_classdata('class_documentation' => {});

# new plain object
sub new {
    my ($class, %args) = @_;

    my $self = bless {}, $class;

    $self->init(%args);

    return $self;
}

# initialize the object
sub init
{
    my ($self, %args) = @_;

    foreach my $attribute (keys %{$self->attribute_map}) {
        my $args_key = $self->attribute_map->{$attribute};
        $self->$attribute( $args{ $args_key } );
    }
}

# return perl hash
sub to_hash {
    my $self = shift;
    my $_hash = decode_json(JSON->new->convert_blessed->encode($self));

    return $_hash;
}

# used by JSON for serialization
sub TO_JSON {
    my $self = shift;
    my $_data = {};
    foreach my $_key (keys %{$self->attribute_map}) {
        if (defined $self->{$_key}) {
            $_data->{$self->attribute_map->{$_key}} = $self->{$_key};
        }
    }

    return $_data;
}

# from Perl hashref
sub from_hash {
    my ($self, $hash) = @_;

    # loop through attributes and use openapi_types to deserialize the data
    while ( my ($_key, $_type) = each %{$self->openapi_types} ) {
        my $_json_attribute = $self->attribute_map->{$_key};
        if ($_type =~ /^array\[(.+)\]$/i) { # array
            my $_subclass = $1;
            my @_array = ();
            foreach my $_element (@{$hash->{$_json_attribute}}) {
                push @_array, $self->_deserialize($_subclass, $_element);
            }
            $self->{$_key} = \@_array;
        } elsif ($_type =~ /^hash\[string,(.+)\]$/i) { # hash
            my $_subclass = $1;
            my %_hash = ();
            while (my($_key, $_element) = each %{$hash->{$_json_attribute}}) {
                $_hash{$_key} = $self->_deserialize($_subclass, $_element);
            }
            $self->{$_key} = \%_hash;
        } elsif (exists $hash->{$_json_attribute}) { #hash(model), primitive, datetime
            $self->{$_key} = $self->_deserialize($_type, $hash->{$_json_attribute});
        } else {
            $log->debugf("Warning: %s (%s) does not exist in input hash\n", $_key, $_json_attribute);
        }
    }

    return $self;
}

# deserialize non-array data
sub _deserialize {
    my ($self, $type, $data) = @_;
    $log->debugf("deserializing %s with %s",Dumper($data), $type);

    if ($type eq 'DateTime') {
        return DateTime->from_epoch(epoch => str2time($data));
    } elsif ( grep( /^$type$/, ('int', 'double', 'string', 'boolean'))) {
        return $data;
    } else { # hash(model)
        my $_instance = eval "WWW::OpenAPIClient::Object::$type->new()";
        return $_instance->from_hash($data);
    }
}


__PACKAGE__->class_documentation({description => '',
                                  class => 'Hudson',
                                  required => [], # TODO
}                                 );

__PACKAGE__->method_documentation({
    '_class' => {
        datatype => 'string',
        base_name => '_class',
        description => '',
        format => '',
        read_only => '',
            },
    'assigned_labels' => {
        datatype => 'ARRAY[HudsonassignedLabels]',
        base_name => 'assignedLabels',
        description => '',
        format => '',
        read_only => '',
            },
    'mode' => {
        datatype => 'string',
        base_name => 'mode',
        description => '',
        format => '',
        read_only => '',
            },
    'node_description' => {
        datatype => 'string',
        base_name => 'nodeDescription',
        description => '',
        format => '',
        read_only => '',
            },
    'node_name' => {
        datatype => 'string',
        base_name => 'nodeName',
        description => '',
        format => '',
        read_only => '',
            },
    'num_executors' => {
        datatype => 'int',
        base_name => 'numExecutors',
        description => '',
        format => '',
        read_only => '',
            },
    'description' => {
        datatype => 'string',
        base_name => 'description',
        description => '',
        format => '',
        read_only => '',
            },
    'jobs' => {
        datatype => 'ARRAY[FreeStyleProject]',
        base_name => 'jobs',
        description => '',
        format => '',
        read_only => '',
            },
    'primary_view' => {
        datatype => 'AllView',
        base_name => 'primaryView',
        description => '',
        format => '',
        read_only => '',
            },
    'quieting_down' => {
        datatype => 'boolean',
        base_name => 'quietingDown',
        description => '',
        format => '',
        read_only => '',
            },
    'slave_agent_port' => {
        datatype => 'int',
        base_name => 'slaveAgentPort',
        description => '',
        format => '',
        read_only => '',
            },
    'unlabeled_load' => {
        datatype => 'UnlabeledLoadStatistics',
        base_name => 'unlabeledLoad',
        description => '',
        format => '',
        read_only => '',
            },
    'use_crumbs' => {
        datatype => 'boolean',
        base_name => 'useCrumbs',
        description => '',
        format => '',
        read_only => '',
            },
    'use_security' => {
        datatype => 'boolean',
        base_name => 'useSecurity',
        description => '',
        format => '',
        read_only => '',
            },
    'views' => {
        datatype => 'ARRAY[AllView]',
        base_name => 'views',
        description => '',
        format => '',
        read_only => '',
            },
});

__PACKAGE__->openapi_types( {
    '_class' => 'string',
    'assigned_labels' => 'ARRAY[HudsonassignedLabels]',
    'mode' => 'string',
    'node_description' => 'string',
    'node_name' => 'string',
    'num_executors' => 'int',
    'description' => 'string',
    'jobs' => 'ARRAY[FreeStyleProject]',
    'primary_view' => 'AllView',
    'quieting_down' => 'boolean',
    'slave_agent_port' => 'int',
    'unlabeled_load' => 'UnlabeledLoadStatistics',
    'use_crumbs' => 'boolean',
    'use_security' => 'boolean',
    'views' => 'ARRAY[AllView]'
} );

__PACKAGE__->attribute_map( {
    '_class' => '_class',
    'assigned_labels' => 'assignedLabels',
    'mode' => 'mode',
    'node_description' => 'nodeDescription',
    'node_name' => 'nodeName',
    'num_executors' => 'numExecutors',
    'description' => 'description',
    'jobs' => 'jobs',
    'primary_view' => 'primaryView',
    'quieting_down' => 'quietingDown',
    'slave_agent_port' => 'slaveAgentPort',
    'unlabeled_load' => 'unlabeledLoad',
    'use_crumbs' => 'useCrumbs',
    'use_security' => 'useSecurity',
    'views' => 'views'
} );

__PACKAGE__->mk_accessors(keys %{__PACKAGE__->attribute_map});


1;
