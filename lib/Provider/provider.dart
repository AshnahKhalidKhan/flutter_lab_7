import 'package:flutter_lab_7/Core/Network/api.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:http/http.dart' as http;

final clientProvider = Provider<ApiClient>((_) => ApiClient(http.Client()));