import 'package:get_it/get_it.dart';
import 'package:http_interceptor/http/intercepted_client.dart';
import 'package:nft_stock/src/remote/opensea_api.dart';

import 'logger_interceptor.dart';

GetIt locator = GetIt.instance;

void setupLocator() {
  // Api Client
  locator.registerLazySingleton<InterceptedClient>(() => InterceptedClient.build(interceptors: [LoggerInterceptor()]));
  locator.registerFactory<OpenSeaApi>(() => OpenSeaApiImpl(locator.get()));
}