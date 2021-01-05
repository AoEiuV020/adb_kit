import 'package:permission_handler/permission_handler.dart';

class PermissionUtil {
  static Future<bool> request() async {
    var status = await Permission.camera.status;
    print(status);
    if (status.isUndetermined) {
      await Permission.camera.request();
      // We didn't ask for permission yet.
    } else if (status.isPermanentlyDenied) {
      await Permission.camera.request();
      // We didn't ask for permission yet.
    }
    status = await Permission.camera.status;
    return status.isGranted;
  }
}
