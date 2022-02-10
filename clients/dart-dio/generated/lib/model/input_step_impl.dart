//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.7

// ignore_for_file: unused_import

import 'package:openapi/model/input_step_impllinks.dart';
import 'package:built_collection/built_collection.dart';
import 'package:openapi/model/string_parameter_definition.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'input_step_impl.g.dart';

abstract class InputStepImpl implements Built<InputStepImpl, InputStepImplBuilder> {

    @nullable
    @BuiltValueField(wireName: r'_class')
    String get class_;

    @nullable
    @BuiltValueField(wireName: r'_links')
    InputStepImpllinks get links;

    @nullable
    @BuiltValueField(wireName: r'id')
    String get id;

    @nullable
    @BuiltValueField(wireName: r'message')
    String get message;

    @nullable
    @BuiltValueField(wireName: r'ok')
    String get ok;

    @nullable
    @BuiltValueField(wireName: r'parameters')
    BuiltList<StringParameterDefinition> get parameters;

    @nullable
    @BuiltValueField(wireName: r'submitter')
    String get submitter;

    InputStepImpl._();

    static void _initializeBuilder(InputStepImplBuilder b) => b;

    factory InputStepImpl([void updates(InputStepImplBuilder b)]) = _$InputStepImpl;

    @BuiltValueSerializer(custom: true)
    static Serializer<InputStepImpl> get serializer => _$InputStepImplSerializer();
}

class _$InputStepImplSerializer implements StructuredSerializer<InputStepImpl> {

    @override
    final Iterable<Type> types = const [InputStepImpl, _$InputStepImpl];
    @override
    final String wireName = r'InputStepImpl';

    @override
    Iterable<Object> serialize(Serializers serializers, InputStepImpl object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object>[];
        if (object.class_ != null) {
            result
                ..add(r'_class')
                ..add(serializers.serialize(object.class_,
                    specifiedType: const FullType(String)));
        }
        if (object.links != null) {
            result
                ..add(r'_links')
                ..add(serializers.serialize(object.links,
                    specifiedType: const FullType(InputStepImpllinks)));
        }
        if (object.id != null) {
            result
                ..add(r'id')
                ..add(serializers.serialize(object.id,
                    specifiedType: const FullType(String)));
        }
        if (object.message != null) {
            result
                ..add(r'message')
                ..add(serializers.serialize(object.message,
                    specifiedType: const FullType(String)));
        }
        if (object.ok != null) {
            result
                ..add(r'ok')
                ..add(serializers.serialize(object.ok,
                    specifiedType: const FullType(String)));
        }
        if (object.parameters != null) {
            result
                ..add(r'parameters')
                ..add(serializers.serialize(object.parameters,
                    specifiedType: const FullType(BuiltList, [FullType(StringParameterDefinition)])));
        }
        if (object.submitter != null) {
            result
                ..add(r'submitter')
                ..add(serializers.serialize(object.submitter,
                    specifiedType: const FullType(String)));
        }
        return result;
    }

    @override
    InputStepImpl deserialize(Serializers serializers, Iterable<Object> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = InputStepImplBuilder();

        final iterator = serialized.iterator;
        while (iterator.moveNext()) {
            final key = iterator.current as String;
            iterator.moveNext();
            final dynamic value = iterator.current;
            switch (key) {
                case r'_class':
                    result.class_ = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    break;
                case r'_links':
                    result.links.replace(serializers.deserialize(value,
                        specifiedType: const FullType(InputStepImpllinks)) as InputStepImpllinks);
                    break;
                case r'id':
                    result.id = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    break;
                case r'message':
                    result.message = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    break;
                case r'ok':
                    result.ok = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    break;
                case r'parameters':
                    result.parameters.replace(serializers.deserialize(value,
                        specifiedType: const FullType(BuiltList, [FullType(StringParameterDefinition)])) as BuiltList<StringParameterDefinition>);
                    break;
                case r'submitter':
                    result.submitter = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    break;
            }
        }
        return result.build();
    }
}

