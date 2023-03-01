abstract class ApiInterface {
  static const apiUrl = "https://api.unsplash.com/photos/?client_id=vLg_xPb3nzDhGz57hy8X8YKXOHD5pvhA2cBjBX2OZ8s";

  Future<dynamic>? getTrendingWallpapers();
  Future<dynamic>? getSearchWallpapers(String query);
}
