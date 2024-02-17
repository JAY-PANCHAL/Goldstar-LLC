class Endpoints {
  Endpoints._();
  // base url
  static const String baseUrl =
      "https://mindtechsolutions.com/SmartBagTrack/API/api";
  // receiveTimeout
  static const int receiveTimeout = 15000;
  // connectTimeout
  static const int connectionTimeout = 15000;
  static const String languageCode = 'en';
  static const String login = '/authenticationLLCMindCube/login';
  static const String styleDetails = '/Masters/getAllStyleDetail';
  static const String notes = '/Masters/getdata_notes_mob';
  static const String addNotes = '/Masters/addUpdatenote';
  static const String deleteNotes= '/Masters/delete_note_note_master';

}
