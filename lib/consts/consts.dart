import 'package:test_task_privat/data/models/search_result.dart';

final class AppConsts {
  AppConsts._();
  static const pathForGoRouter = 'info_screen';
  static const pathToDeepLinkScreen = 'checkinfopage';
  static const hintTextForSearch = 'Search...';
  static const textForInputData = 'pls enter data...';
  static const apiKey = 'Api_key';
  static const emptyResult = 'empty result';
  static const berearToken = 'Berear_token';
  static const getListFilmsUrl = 'Get_list_films_url';
  static const imageBaseUrl = 'Image_base_url';
  static final deepLinkMovie = Result(
    posterPath: '/74xTEgt7R36Fpooo50r9T25onhq.jpg',
    adult: false,
    originalLanguage: 'en',
    backdropPath: '/tRS6jvPM9qPrrnx2KRp3ew96Yot.jpg',
    genreIds: [80, 9648, 53],
    id: 414906,
    originalTitle: 'The Batman',
    overview:
        'In his second year of fighting crime, Batman uncovers corruption in Gotham City that connects to his own family while facing a s…',
    popularity: 139.565,
    releaseDate: '2022-03-01',
    title: 'The Batman',
    video: false,
    voteAverage: 7.639,
    voteCount: 9132,
  );
}
