import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'cell_info_platform_interface.dart';

/// An implementation of [CellInfoPlatform] that uses method channels.
class MethodChannelCellInfo extends CellInfoPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('cell_info');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
