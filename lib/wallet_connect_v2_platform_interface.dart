import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'src/model/app_metadata.dart';
import 'src/model/proposal_namespace.dart';
import 'src/model/request.dart';
import 'src/model/session.dart';
import 'src/model/session_approval.dart';
import 'wallet_connect_v2_method_channel.dart';

abstract class WalletConnectV2Platform extends PlatformInterface {
  /// Constructs a WalletConnectV2Platform.
  WalletConnectV2Platform() : super(token: _token);

  static final Object _token = Object();

  static WalletConnectV2Platform _instance = MethodChannelWalletConnectV2();

  /// The default instance of [WalletConnectV2Platform] to use.
  ///
  /// Defaults to [MethodChannelWalletConnectV2].
  static WalletConnectV2Platform get instance => _instance;

  get onEvent {
    throw UnimplementedError('onEvent has not been implemented.');
  }

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [WalletConnectV2Platform] when
  /// they register themselves.
  static set instance(WalletConnectV2Platform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<void> init(
      {required String projectId, required AppMetadata appMetadata}) {
    throw UnimplementedError('init() has not been implemented.');
  }

  Future<String?> connect() {
    throw UnimplementedError('connect() has not been implemented.');
  }

  Future<void> disconnect() {
    throw UnimplementedError('disconnect() has not been implemented.');
  }

  Future<void> pair({required String uri}) {
    throw UnimplementedError('pair() has not been implemented.');
  }

  Future<void> approve({required SessionApproval approval}) {
    throw UnimplementedError('approve() has not been implemented.');
  }

  Future<void> reject({required String proposalId}) {
    throw UnimplementedError('reject() has not been implemented.');
  }

  Future<List<Session>> getActivatedSessions() {
    throw UnimplementedError(
        'getActivatedSessions() has not been implemented.');
  }

  Future<void> rejectRequest(
      {required String topic, required String requestId}) {
    throw UnimplementedError('rejectRequest() has not been implemented.');
  }

  Future<void> approveRequest(
      {required String topic,
      required String requestId,
      required String result}) {
    throw UnimplementedError('approveRequest() has not been implemented.');
  }

  Future<void> disconnectSession({required String topic}) {
    throw UnimplementedError('disconnectSession() has not been implemented.');
  }

  Future<void> updateSession({required SessionApproval updateApproval}) {
    throw UnimplementedError('updateSession() has not been implemented.');
  }

  Future<String?> createPair(
      {required Map<String, ProposalNamespace> namespaces}) {
    throw UnimplementedError('createPair() has not been implemented.');
  }

  Future<void> sendRequest({required Request request}) {
    throw UnimplementedError('sendRequest() has not been implemented.');
  }
}
