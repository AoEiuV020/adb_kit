import 'dart:io';

import 'package:adb_kit/config/config.dart';
import 'package:adb_library/adb_library.dart';
import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
import 'package:global_repository/global_repository.dart';

List<String> androidFiles = [
  'libadb.so',
  'libtermux-api.so',
  'libtermux-toast.so',
  'libtermux-usb.so',
];

const List<String> globalFiles = [
  'app_server',
];

class ADBInstaller {
  /// 复制一堆执行文件
  static Future<void> installAdbToEnvir({
    List<String> globalFiles = globalFiles,
  }) async {
    if (kIsWeb) {
      return;
    }
    await AssetsManager.copyFiles(
      localPath: '${RuntimeEnvir.binPath}/',
      macOS: [],
      global: globalFiles,
      package: Config.flutterPackage,
      forceCopy: true,
    );
  }
}
