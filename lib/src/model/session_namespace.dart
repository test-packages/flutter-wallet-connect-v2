import 'package:json_annotation/json_annotation.dart';

import 'extension.dart';

part 'session_namespace.g.dart';

@JsonSerializable(explicitToJson: true)
class SessionNamespace {
  @JsonKey(includeIfNull: false)
  final List<String>? chains;
  final List<String> accounts;
  final List<String> methods;
  final List<String> events;
  final List<Extension>? extensions;

  SessionNamespace(
      {required this.accounts,
      required this.methods,
      required this.events,
      this.extensions,
      this.chains});

  factory SessionNamespace.fromJson(Map<String, dynamic> json) =>
      _$SessionNamespaceFromJson(json);

  Map<String, dynamic> toJson() => _$SessionNamespaceToJson(this);
}
