import 'dart:io';

import 'package:dartfromxml/dartfromxml.dart' as dartfromxml;
import "package:xml/xml.dart" as xml;
import 'package:archive/archive_io.dart';

Future<void> main(List<String> arguments) async {
  var encoder = ZipDecoder();

  var files = encoder.decodeBytes(File('userdata/original.xlsx').readAsBytesSync());

  for (final file in files) {
    final filename = file.name;
    if (file.isFile) {
      final data = file.content as List<int>;
      File('currentXLSX/' + filename)
        ..createSync(recursive: true)
        ..writeAsBytesSync(data);
    } else {
      Directory('currentXLSX/' + filename).create(recursive: true);
    }
  }

  var f = File('./currentXLSX/xl/worksheets/sheet1.xml');

  var d = xml.XmlDocument.parse(f.readAsStringSync());

  var columns = d.findAllElements('c').where((element) => element.nodes
      .any((r) => r.firstChild != null && r.firstChild?.innerText != null));
  for (var i = 0; i < columns.length; i++) {
    var cur = columns.elementAt(i);
    // if(cur.childElements.any((p0) => p0.findAllElements('f') .isNotEmpty)){
    //   print(cur.children);
    // }

    if (cur.children.isNotEmpty) {
      var childrenWithFormulas =
          cur.children.where((p0) => p0.text.contains('SUM'));
      if (childrenWithFormulas.isNotEmpty) {
        print(cur.attributes);
        print(childrenWithFormulas);
        childrenWithFormulas.forEach((element) {
          element.innerText = element.innerText.replaceAll('SUM', 'PRODUCT');
        });
      }
    }
  }
  var mf = File('./currentXLSX/xl/worksheets/sheet1.xml');
  mf.writeAsStringSync(d.toXmlString(pretty: true));

  var chainFile = File('./currentXLSX/xl/calcChain.xml');
  if (chainFile.existsSync()) {
    await chainFile.delete();
  }

  var fileEncoder = ZipFileEncoder();

  fileEncoder.zipDirectory(Directory('currentXLSX'), filename: 'userdata/NewFile.xlsx');
}
