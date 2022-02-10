//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'all_view.g.dart';

/// AllView
///
/// Properties:
/// * [class_] 
/// * [name] 
/// * [url] 
abstract class AllView implements Built<AllView, AllViewBuilder> {
    @BuiltValueField(wireName: r'_class')
    String? get class_;

    @BuiltValueField(wireName: r'name')
    String? get name;

    @BuiltValueField(wireName: r'url')
    String? get url;

    AllView._();

    @BuiltValueHook(initializeBuilder: true)
    static void _defaults(AllViewBuilder b) => b;

    factory AllView([void updates(AllViewBuilder b)]) = _$AllView;

    @BuiltValueSerializer(custom: true)
    static Serializer<AllView> get serializer => _$AllViewSerializer();
}

class _$AllViewSerializer implements StructuredSerializer<AllView> {
    @override
    final Iterable<Type> types = const [AllView, _$AllView];

    @override
    final String wireName = r'AllView';

    @override
    Iterable<Object?> serialize(Serializers serializers, AllView object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object?>[];
        if (object.class_ != null) {
            result
                ..add(r'_class')
                ..add(serializers.serialize(object.class_,
                    specifiedType: const FullType(String)));
        }
        if (object.name != null) {
            result
                ..add(r'name')
                ..add(serializers.serialize(object.name,
                    specifiedType: const FullType(String)));
        }
        if (object.url != null) {
            result
                ..add(r'url')
                ..add(serializers.serialize(object.url,
                    specifiedType: const FullType(String)));
        }
        return result;
    }

    @override
    AllView deserialize(Serializers serializers, Iterable<Object?> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = AllViewBuilder();

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
                case r'name':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.name = valueDes;
                    break;
                case r'url':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.url = valueDes;
                    break;
            }
        }
        return result.build();
    }
}

