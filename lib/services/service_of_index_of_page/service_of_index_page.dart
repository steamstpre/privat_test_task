final class ServiceOfIndexPage {
  int _indexOfPage = 1;
  String _nameOfMovie = '';

  int changeIndexOfPage(String nameOfMovie) {
    if (_nameOfMovie == nameOfMovie) {
      _indexOfPage++;
    } else {
      _nameOfMovie = nameOfMovie;
      _indexOfPage = 1;
    }
    return _indexOfPage;
  }
}
