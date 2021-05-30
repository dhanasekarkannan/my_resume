import 'package:dhana_resume/model/app_model.dart';
import 'package:dhana_resume/provider/app_provider.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('getAppConfigDetails', () async {
    final AppProvider appProvider = AppProvider();
    await appProvider.fetchAndSetAppData();
    AppModel appModel = appProvider.getAppListData!;
    expect(appModel.android.version, "1.2.2" );
  });
}
