import 'package:new_app/admin_responsive_panel/constant/app_photo.dart';

class RecentFile {
  final String? icon, title, date, size;

  RecentFile({this.icon, this.title, this.date, this.size});
}

List demoRecentFiles = [
  RecentFile(
    icon: AppPhoto.xd_file,
    title: "XD File",
    date: "01-03-2021",
    size: "3.5mb",
  ),
  RecentFile(
    icon: AppPhoto.figma_file,
    title: "Figma File",
    date: "27-02-2021",
    size: "19.0mb",
  ),
  RecentFile(
    icon: AppPhoto.doc_file,
    title: "Document",
    date: "23-02-2021",
    size: "32.5mb",
  ),
  RecentFile(
    icon: AppPhoto.sound_file,
    title: "Sound File",
    date: "21-02-2021",
    size: "3.5mb",
  ),
  RecentFile(
    icon: AppPhoto.media_file,
    title: "Media File",
    date: "23-02-2021",
    size: "2.5gb",
  ),
  RecentFile(
    icon: AppPhoto.pdf_file,
    title: "Sales PDF",
    date: "25-02-2021",
    size: "3.5mb",
  ),
  RecentFile(
    icon: AppPhoto.excel_file,
    title: "Excel File",
    date: "25-02-2021",
    size: "34.5mb",
  ),
];
