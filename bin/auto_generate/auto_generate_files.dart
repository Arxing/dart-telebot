import 'package:dartpoet/dartpoet.dart';
import 'package:dio/dio.dart';
import 'package:html/dom.dart';
import 'package:html/parser.dart';

import 'file_generator.dart';

const TELEGRAM_BOT_API_URL = "https://core.telegram.org/bots/api";

void main(List<String> args) async {
  Map<Element, List<TelegramField>> objectsMap = {};
  Map<Element, List<TelegramField>> methodsMap = {};

  Dio dio = Dio(BaseOptions());
  Response response = await dio.get(TELEGRAM_BOT_API_URL);
  String html = response.data;
  var doc = parse(html);
  var targets = doc.querySelectorAll("h4").where((o) => !o.text.contains(" ")).toList();
  print("Found ${targets.length} targets.");
  var objects = targets.where((o) => o.text.startsWith(RegExp("[A-Z]"))).toList();
  var methods = targets.where((o) => o.text.startsWith(RegExp("[a-z]"))).toList();
  print("Total are ${objects.length} objects and ${methods.length} methods.");

  objects.forEach((object) => objectsMap[object] = null);
  methods.forEach((method) => methodsMap[method] = null);

  var tables = doc.querySelectorAll("table.table");
  print("Found ${tables.length} field tables.");

  tables.forEach((table) {
    var mappedResult = findMapped(table, objects, methods);
    bool mappedObject = mappedResult[0] == 0;
    bool mappedMethod = mappedResult[0] == 1;
    Element mappedHost = mappedResult[1];

    var fields = analyzeTable(table);
    if (mappedObject) {
      objectsMap[mappedHost] = fields;
    } else if (mappedMethod) {
      methodsMap[mappedHost] = fields;
    }
  });

  var sizeOfObjects = objectsMap.values.where((value) => value != null).length;
  var sizeOfMethods = methodsMap.values.where((value) => value != null).length;
  print("$sizeOfObjects tables bound to object and $sizeOfMethods tables bound to method.");
  FileGenerator.from(objectsMap, methodsMap).generate();
}

List findMapped(Element table, List<Element> objects, List<Element> methods) {
  if (objects.contains(table)) return [0, table];
  if (methods.contains(table)) {
    return [1, table];
  }
  if (table.previousElementSibling != null) return findMapped(table.previousElementSibling, objects, methods);
  return [-1, null];
}

List<TelegramField> analyzeTable(Element tableElement) {
  var tr = tableElement.querySelector("thead tr");
  bool isObject = tr.children.length == 3;
  List<TelegramField> result = [];
  var tbody = tableElement.querySelector("tbody");
  tbody.children.forEach((tr) {
    var tds = tr.children;
    var fullTypeString = tds[1].text;
    var types = fullTypeString.split(" or ").map((s) => s.trim()).map((s) => parseType(s)).toList();

    if (isObject) {
      result.add(TelegramField(
        name: tds[0].text,
        types: types,
        description: tds[2].text,
      ));
    } else {
      result.add(TelegramField(
        name: tds[0].text,
        types: types,
        isRequired: tds[2].text == "Yes",
        description: tds[3].text,
      ));
    }
  });
  return result;
}

String parseType(String type) {
  switch (type) {
    case "String":
      return "String";
    case "Integer":
      return "int";
    case "True":
    case "Boolean":
      return "bool";
    case "Float":
    case "Float number":
      return "double";
    case "InputFile":
      return "File";
  }
  print("======================  $type");
  var regexList = RegExp("Array of (.+)");
  bool isArray = regexList.hasMatch(type);
  if (isArray) {
    var group = regexList.firstMatch(type).group(1);
    return "List<${parseType(group)}>";
  } else {
    var regexMultiType = RegExp("(.+) and (.+)");
    if (regexMultiType.hasMatch(type)) return "dynamic";
    return type;
  }
}

class TelegramField {
  final String name;
  final List<String> types = [];
  final bool isRequired;
  final String description;

  TelegramField({
    this.name,
    List<String> types,
    this.isRequired = true,
    this.description,
  }) {
    this.types.addAll(types);
  }

  TypeToken get guessType {
    if (types.length == 0) throw "Types must not be null";
    if (types.length == 1) return TypeToken.ofFullName(types.single);
    if (types.contains("File")) return TypeToken.ofString();
    return TypeToken.ofDynamic();
  }
}
