// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'qr_picross_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(QrPicrossNotifier)
const qrPicrossProvider = QrPicrossNotifierProvider._();

final class QrPicrossNotifierProvider
    extends $NotifierProvider<QrPicrossNotifier, QrPicrossInfo> {
  const QrPicrossNotifierProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'qrPicrossProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$qrPicrossNotifierHash();

  @$internal
  @override
  QrPicrossNotifier create() => QrPicrossNotifier();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(QrPicrossInfo value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<QrPicrossInfo>(value),
    );
  }
}

String _$qrPicrossNotifierHash() => r'd96a6849131374a92eabe96621bf402eab554778';

abstract class _$QrPicrossNotifier extends $Notifier<QrPicrossInfo> {
  QrPicrossInfo build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<QrPicrossInfo, QrPicrossInfo>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<QrPicrossInfo, QrPicrossInfo>,
              QrPicrossInfo,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
