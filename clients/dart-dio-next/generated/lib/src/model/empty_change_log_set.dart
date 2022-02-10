//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'empty_change_log_set.g.dart';

/// EmptyChangeLogSet
///
/// Properties:
/// * [class_] 
/// * [kind] 
abstract class EmptyChangeLogSet implements Built<EmptyChangeLogSet, EmptyChangeLogSetBuilder> {
    @BuiltValueField(wireName: r'_class')
    String? get class_;

    @BuiltValueField(wireName: r'kind')
    String? get kind;

    EmptyChangeLogSet._();

    @BuiltValueHook(initializeBuilder: true)
    static void _defaults(EmptyChangeLogSetBuilder b) => b;

    factory EmptyChangeLogSet([void updates(EmptyChangeLogSetBuilder b)]) = _$EmptyChangeLogSet;

    @BuiltValueSerializer(custom: true)
    static Serializer<EmptyChangeLogSet> get serializer => _$EmptyChangeLogSetSerializer();
}

class _$EmptyChangeLogSetSerializer implements StructuredSerializer<EmptyChangeLogSet> {
    @override
    final Iterable<Type> types = const [EmptyChangeLogSet, _$EmptyChangeLogSet];

    @override
    final String wireName = r'EmptyChangeLogSet';

    @override
    Iterable<Object?> serialize(Serializers serializers, EmptyChangeLogSet object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object?>[];
        if (object.class_ != null) {
            result
                ..add(r'_class')
                ..add(serializers.serialize(object.class_,
                    specifiedType: const FullType(String)));
        }
        if (object.kind != null) {
            result
                ..add(r'kind')
                ..add(serializers.serialize(object.kind,
                    specifiedType: const FullType(String)));
        }
        return result;
    }

    @override
    EmptyChangeLogSet deserialize(Serializers serializers, Iterable<Object?> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = EmptyChangeLogSetBuilder();

        final iterator = serialized.iterator;
        while (iterator.moveNext()) {
            final key = iterator.current as String;
            iterator.moveNext();
            final Object? value = iterator.current;
            
            switch (key) {
                case r'_class':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.class_ = valueDes;
                    break;
                case r'kind':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.kind = valueDes;
                    break;
            }
        }
        return result.build();
    }
}

