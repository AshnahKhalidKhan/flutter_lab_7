import 'package:flutter_lab_7/Core/Model/user_model.dart';
import 'package:flutter_lab_7/Core/Network/api.dart';
import 'package:flutter_lab_7/Provider/provider.dart';
import 'package:flutter_lab_7/User/States/states.dart';
import 'package:riverpod/riverpod.dart';
import 'package:http/http.dart' as http;

//independent sources
final clientProvider = Provider<ApiClient>((_) => ApiClient(http.Client()));

//dependent sources


// final userFutureProvider = FutureProvider<ApiClient>((ref) async {return getUser();});


final userStateNotifierProvider = StateNotifierProvider((ref) => UserStateNotifier(ref.watch(clientProvider)));

class UserStateNotifier extends StateNotifier<UserState> 
{
  final ApiClient apiClient;
  UserStateNotifier(this.apiClient) : super(UserState.initial());

  getUser() async
  {
    try
    {
      state = UserState.loading();
      var data = await apiClient.getUser();
      return state = UserState.success(data);
    }
    catch(e)
    {
      return state = UserState.error("$e");
    }
  }
}