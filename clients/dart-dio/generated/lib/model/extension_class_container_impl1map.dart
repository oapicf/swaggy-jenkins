//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.7

// ignore_for_file: unused_import

import 'package:openapi/model/extension_class_impl.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'extension_class_container_impl1map.g.dart';

abstract class ExtensionClassContainerImpl1map implements Built<ExtensionClassContainerImpl1map, ExtensionClassContainerImpl1mapBuilder> {

    @nullable
    @BuiltValueField(wireName: r'io.jenkins.blueocean.service.embedded.rest.PipelineImpl')
    ExtensionClassImpl get ioPeriodJenkinsPeriodBlueoceanPeriodServicePeriodEmbeddedPeriodRestPeriodPipelineImpl;

    @nullable
    @BuiltValueField(wireName: r'io.jenkins.blueocean.service.embedded.rest.MultiBranchPipelineImpl')
    ExtensionClassImpl get ioPeriodJenkinsPeriodBlueoceanPeriodServicePeriodEmbeddedPeriodRestPeriodMultiBranchPipelineImpl;

    @nullable
    @BuiltValueField(wireName: r'_class')
    String get class_;

    ExtensionClassContainerImpl1map._();

    static void _initializeBuilder(ExtensionClassContainerImpl1mapBuilder b) => b;

    factory ExtensionClassContainerImpl1map([void updates(ExtensionClassContainerImpl1mapBuilder b)]) = _$ExtensionClassContainerImpl1map;

    @BuiltValueSerializer(custom: true)
    static Serializer<ExtensionClassContainerImpl1map> get serializer => _$ExtensionClassContainerImpl1mapSerializer();
}

class _$ExtensionClassContainerImpl1mapSerializer implements StructuredSerializer<ExtensionClassContainerImpl1map> {

    @override
    final Iterable<Type> types = const [ExtensionClassContainerImpl1map, _$ExtensionClassContainerImpl1map];
    @override
    final String wireName = r'ExtensionClassContainerImpl1map';

    @override
    Iterable<Object> serialize(Serializers serializers, ExtensionClassContainerImpl1map object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object>[];
        if (object.ioPeriodJenkinsPeriodBlueoceanPeriodServicePeriodEmbeddedPeriodRestPeriodPipelineImpl != null) {
            result
                ..add(r'io.jenkins.blueocean.service.embedded.rest.PipelineImpl')
                ..add(serializers.serialize(object.ioPeriodJenkinsPeriodBlueoceanPeriodServicePeriodEmbeddedPeriodRestPeriodPipelineImpl,
                    specifiedType: const FullType(ExtensionClassImpl)));
        }
        if (object.ioPeriodJenkinsPeriodBlueoceanPeriodServicePeriodEmbeddedPeriodRestPeriodMultiBranchPipelineImpl != null) {
            result
                ..add(r'io.jenkins.blueocean.service.embedded.rest.MultiBranchPipelineImpl')
                ..add(serializers.serialize(object.ioPeriodJenkinsPeriodBlueoceanPeriodServicePeriodEmbeddedPeriodRestPeriodMultiBranchPipelineImpl,
                    specifiedType: const FullType(ExtensionClassImpl)));
        }
        if (object.class_ != null) {
            result
                ..add(r'_class')
                ..add(serializers.serialize(object.class_,
                    specifiedType: const FullType(String)));
        }
        return result;
    }

    @override
    ExtensionClassContainerImpl1map deserialize(Serializers serializers, Iterable<Object> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = ExtensionClassContainerImpl1mapBuilder();

        final iterator = serialized.iterator;
        while (iterator.moveNext()) {
            final key = iterator.current as String;
            iterator.moveNext();
            final dynamic value = iterator.current;
            switch (key) {
                case r'io.jenkins.blueocean.service.embedded.rest.PipelineImpl':
                    result.ioPeriodJenkinsPeriodBlueoceanPeriodServicePeriodEmbeddedPeriodRestPeriodPipelineImpl.replace(serializers.deserialize(value,
                        specifiedType: const FullType(ExtensionClassImpl)) as ExtensionClassImpl);
                    break;
                case r'io.jenkins.blueocean.service.embedded.rest.MultiBranchPipelineImpl':
                    result.ioPeriodJenkinsPeriodBlueoceanPeriodServicePeriodEmbeddedPeriodRestPeriodMultiBranchPipelineImpl.replace(serializers.deserialize(value,
                        specifiedType: const FullType(ExtensionClassImpl)) as ExtensionClassImpl);
                    break;
                case r'_class':
                    result.class_ = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    break;
            }
        }
        return result.build();
    }
}

