class AppConstants {
  static const String appName = 'PASTI LAUNDRY';

  static const _host = 'http://192.168.100.126:8000';

  /// ``` baseUrl = 'http://192.168.100.126:8000/api' ```
  static const String baseUrl = '$_host/api';

  /// ``` baseImageUrl = 'http://192.168.100.126:8000/storage' ```
  static const baseImageUrl = '$_host/storage';

  static const laundryStatusCategory = [
    'All',
    'Pickup',
    'Queue',
    'Process',
    'Washing',
    'Dried',
    'Ironed',
    'Done',
    'Delivery',
  ];
}
