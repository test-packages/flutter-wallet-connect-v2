// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'session_namespace.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SessionNamespace _$SessionNamespaceFromJson(Map<String, dynamic> json) =>
    SessionNamespace(
      accounts:
          (json['accounts'] as List<dynamic>).map((e) => e as String).toList(),
      methods:
          (json['methods'] as List<dynamic>).map((e) => e as String).toList(),
      events:
          (json['events'] as List<dynamic>).map((e) => e as String).toList(),
      chains:
          (json['chains'] as List<dynamic>?)?.map((e) => e as String).toList(),
      extensions: (json['extensions'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$SessionNamespaceToJson(SessionNamespace instance) {
  final val = <String, dynamic>{
    'extensions': instance.extensions?.map((e) => e.toJson()).toList(),
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('chains', instance.chains);
  val['accounts'] = instance.accounts;
  val['methods'] = instance.methods;
  val['events'] = instance.events;
  return val;
}
