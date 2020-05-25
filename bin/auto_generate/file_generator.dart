import 'dart:io';

import 'package:dartpoet/dartpoet.dart';
import 'package:html/dom.dart';
import 'auto_generate_files.dart';
import 'package:named_mode/named_mode.dart';
import 'mapped.dart';

const String exportModelPath = "./lib/src/model";
const String exportModelFilename = "export.dart";
const String exportClientPath = "./lib/src/bot";

class FileGenerator {
  final Map<Element, List<TelegramField>> objectsMap;
  final Map<Element, List<TelegramField>> methodsMap;

  FileGenerator.from(this.objectsMap, this.methodsMap);

  void generate() {
    _generateObjects();
    _generateMethods();
  }

  void _generateObjects() {
    FileSpec exportFileSpec = FileSpec.build();
    objectsMap.forEach((host, fields) {
      String className = objectsNameMap.containsKey(host.text) ? objectsNameMap[host.text] : host.text;
      ClassSpec classSpec = ClassSpec.build(
        className,
        metas: [
          MetaSpec.ofConstructor(
            TypeToken.ofName("JsonSerializable"),
            parameters: [
              ParameterSpec.named(
                "includeIfNull",
                isValue: true,
                value: false,
              ),
            ],
          ),
        ],
        constructorBuilder: (context) sync* {
          yield ConstructorSpec.normal(
            context,
            parameters: fields?.map((field) {
                  return ParameterSpec.named(
                    renameTo__anApple(field.name),
                    isSelfParameter: true,
                    type: field.guessType,
                  );
                })?.toList() ??
                [],
          );
          yield ConstructorSpec.namedFactory(
            context,
            "fromJson",
            parameters: [
              ParameterSpec.normal(
                "json",
                type: TypeToken.ofMap<String, dynamic>(),
              ),
            ],
            codeBlock: CodeBlockSpec.line("_\$${className}FromJson(json);"),
          );
        },
        methods: [
          MethodSpec.build(
            "toJson",
            returnType: TypeToken.ofMap<String, dynamic>(),
            codeBlock: CodeBlockSpec.line("_\$${className}ToJson(this);"),
          ),
          MethodSpec.build(
            "toString",
            returnType: TypeToken.ofString(),
            codeBlock: CodeBlockSpec.line("jsonEncode(toJson());"),
          ),
        ],
        properties: fields?.map((field) {
              return PropertySpec.of(
                renameTo__anApple(field.name),
                type: field.guessType,
                doc: DocSpec.text(field.description),
                metas: [
                  MetaSpec.ofConstructor(
                    TypeToken.ofFullName("JsonKey"),
                    parameters: [
                      ParameterSpec.named(
                        "name",
                        isValue: true,
                        value: field.name,
                      ),
                    ],
                  ),
                ],
              );
            })?.toList() ??
            [],
      );
      FileSpec fileSpec = FileSpec.build(
        classes: [classSpec],
        dependencies: [
          DependencySpec.import(exportModelFilename),
          DependencySpec.import("package:meta/meta.dart"),
          DependencySpec.import("package:json_annotation/json_annotation.dart"),
          DependencySpec.import("dart:convert"),
          DependencySpec.part("${renameTo__an_apple(className)}.g.dart"),
        ],
      );
      String exportFileName = "${renameTo__an_apple(className)}.dart";
      String path = "$exportModelPath/$exportFileName";
      File(path).createSync(recursive: true);
      DartFile.fromFileSpec(fileSpec).outputSync(path);
      print("Generate $path");
      exportFileSpec.dependencies.add(DependencySpec.export(exportFileName));
    });
    String path = "$exportModelPath/$exportModelFilename";
    File(path).createSync(recursive: true);
    DartFile.fromFileSpec(exportFileSpec).outputSync(path);
  }

  void _generateMethods() {
    String className = "TelegramBotClient";

    ClassSpec classSpec = ClassSpec.build(
      className,
      isAbstract: true,
      metas: [MetaSpec.ofConstructor(TypeToken.ofName("RestApi"))],
    );

    methodsMap.forEach((host, fields) {
      String methodName = host.text;
      String httpMethod = httpMethodMap[methodName] ?? "GET";
      bool isMethodGet = httpMethod == "GET";
      TypeToken baseReturnType;
      baseReturnType = TypeToken.ofDynamic();
      if (returnsMap.containsKey(methodName)) {
        var r = returnsMap[methodName];
        baseReturnType = r is TypeToken ? r : TypeToken.ofDynamic();
      } else {
        baseReturnType = TypeToken.ofDynamic();
      }

      MethodSpec api = MethodSpec.build(
        methodName,
        metas: [
          MetaSpec.ofConstructor(
            TypeToken.ofFullName(httpMethod),
            parameters: [
              ParameterSpec.normal(null, isValue: true, value: "/$methodName"),
            ],
          )
        ],
        returnType: TypeToken.ofFullName("Future<${baseReturnType.fullTypeName}>"),
        parameters: fields?.map((field) {
              var parameter = ParameterSpec.named(
                renameTo__anApple(field.name),
                type: field.guessType,
                metas: [
                  MetaSpec.ofConstructor(
                    TypeToken.ofFullName(isMethodGet ? "Query" : "Field"),
                    parameters: [
                      ParameterSpec.build(
                        null,
                        isValue: true,
                        value: field.name,
                      ),
                    ],
                  ),
                ],
              );
              if (field.isRequired) parameter.metas.add(MetaSpec.ofInstance("required"));
              return parameter;
            })?.toList() ??
            [],
      );
      classSpec.methods.add(api);
    });

    String path = "$exportClientPath/telegram_bot_client.dart";
    File(path).createSync(recursive: true);
    DartFile.fromFileSpec(
      FileSpec.build(
        classes: [classSpec],
        dependencies: [
          DependencySpec.import("dart:io"),
          DependencySpec.import("package:dio/dio.dart"),
          DependencySpec.import("package:retrofit/retrofit.dart"),
          DependencySpec.import("package:meta/meta.dart"),
          DependencySpec.import("package:telebot/src/model/export.dart"),
          DependencySpec.part("telegram_bot_client.g.dart"),
        ],
      ),
    ).outputSync(path);
  }
}
