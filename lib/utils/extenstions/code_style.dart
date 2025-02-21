import 'package:flutter/material.dart';

import '../constants/color_constants.dart';



Map<String, TextStyle> githubThemeLightCustom(BuildContext context) {
  return {
    'root': const TextStyle(
      color: LightColorConstants.codeRoot,
      backgroundColor: LightColorConstants.background,
    ),
    'comment': const TextStyle(
      color: LightColorConstants.codeComment,
      fontStyle: FontStyle.italic,
    ),
    'quote': const TextStyle(
      color: LightColorConstants.codeComment,
      fontStyle: FontStyle.italic,
    ),
    'keyword': const TextStyle(
      color: LightColorConstants.codeKeyword,
      fontWeight: FontWeight.bold,
    ),
    'selector-tag': const TextStyle(
      color: LightColorConstants.codeKeyword,
      fontWeight: FontWeight.bold,
    ),
    'subst': const TextStyle(
      color: LightColorConstants.codeKeyword,
      fontWeight: FontWeight.normal,
    ),
    'number': const TextStyle(color: LightColorConstants.codeNumber),
    'literal': const TextStyle(color: LightColorConstants.codeNumber),
    'variable': const TextStyle(color: LightColorConstants.codeNumber),
    'template-variable': const TextStyle(color: LightColorConstants.codeNumber),
    'string': const TextStyle(color: LightColorConstants.codeString),
    'doctag': const TextStyle(color: LightColorConstants.codeString),
    'title': const TextStyle(
      color: LightColorConstants.codeTitle,
      fontWeight: FontWeight.bold,
    ),
    'section': const TextStyle(
      color: LightColorConstants.codeTitle,
      fontWeight: FontWeight.bold,
    ),
    'selector-id': const TextStyle(
      color: LightColorConstants.codeTitle,
      fontWeight: FontWeight.bold,
    ),
    'type': const TextStyle(
      color: LightColorConstants.codeType,
      fontWeight: FontWeight.bold,
    ),
    'tag': const TextStyle(
      color: LightColorConstants.codeTag,
      fontWeight: FontWeight.normal,
    ),
    'name': const TextStyle(
      color: LightColorConstants.codeTag,
      fontWeight: FontWeight.normal,
    ),
    'attribute': const TextStyle(
      color: LightColorConstants.codeTag,
      fontWeight: FontWeight.normal,
    ),
    'regexp': const TextStyle(color: LightColorConstants.codeRegexp),
    'link': const TextStyle(color: LightColorConstants.codeRegexp),
    'symbol': const TextStyle(color: LightColorConstants.codeSymbol),
    'bullet': const TextStyle(color: LightColorConstants.codeSymbol),
    'built_in': const TextStyle(color: LightColorConstants.codeBuiltIn),
    'builtin-name': const TextStyle(color: LightColorConstants.codeBuiltIn),
    'meta': const TextStyle(
      color: LightColorConstants.codeMeta,
      fontWeight: FontWeight.bold,
    ),
    'deletion':
        const TextStyle(backgroundColor: LightColorConstants.codeDeletionBg),
    'addition':
        const TextStyle(backgroundColor: LightColorConstants.codeAdditionBg),
    'emphasis': const TextStyle(fontStyle: FontStyle.italic),
    'strong': const TextStyle(fontWeight: FontWeight.bold),
  };
}

/// Dark theme syntax-highlighting
Map<String, TextStyle> githubThemeDarkCustom(BuildContext context) {
  return {
    'root': const TextStyle(
      color: DarkColorConstants.codeRoot,
      backgroundColor: DarkColorConstants.background,
    ),
    'comment': const TextStyle(
      color: DarkColorConstants.codeComment,
      fontStyle: FontStyle.italic,
    ),
    'quote': const TextStyle(
      color: DarkColorConstants.codeComment,
      fontStyle: FontStyle.italic,
    ),
    'keyword': const TextStyle(
      color: DarkColorConstants.codeKeyword,
      fontWeight: FontWeight.bold,
    ),
    'selector-tag': const TextStyle(
      color: DarkColorConstants.codeKeyword,
      fontWeight: FontWeight.bold,
    ),
    'subst': const TextStyle(
      color: DarkColorConstants.codeKeyword,
      fontWeight: FontWeight.normal,
    ),
    'number': const TextStyle(color: DarkColorConstants.codeNumber),
    'literal': const TextStyle(color: DarkColorConstants.codeNumber),
    'variable': const TextStyle(color: DarkColorConstants.codeNumber),
    'template-variable': const TextStyle(color: DarkColorConstants.codeNumber),
    'string': const TextStyle(color: DarkColorConstants.codeString),
    'doctag': const TextStyle(color: DarkColorConstants.codeString),
    'title': const TextStyle(
      color: DarkColorConstants.codeTitle,
      fontWeight: FontWeight.bold,
    ),
    'section': const TextStyle(
      color: DarkColorConstants.codeTitle,
      fontWeight: FontWeight.bold,
    ),
    'selector-id': const TextStyle(
      color: DarkColorConstants.codeTitle,
      fontWeight: FontWeight.bold,
    ),
    'type': const TextStyle(
      color: DarkColorConstants.codeType,
      fontWeight: FontWeight.bold,
    ),
    'tag': const TextStyle(
      color: DarkColorConstants.codeTag,
      fontWeight: FontWeight.normal,
    ),
    'name': const TextStyle(
      color: DarkColorConstants.codeTag,
      fontWeight: FontWeight.normal,
    ),
    'attribute': const TextStyle(
      color: DarkColorConstants.codeTag,
      fontWeight: FontWeight.normal,
    ),
    'regexp': const TextStyle(color: DarkColorConstants.codeRegexp),
    'link': const TextStyle(color: DarkColorConstants.codeRegexp),
    'symbol': const TextStyle(color: DarkColorConstants.codeSymbol),
    'bullet': const TextStyle(color: DarkColorConstants.codeSymbol),
    'built_in': const TextStyle(color: DarkColorConstants.codeBuiltIn),
    'builtin-name': const TextStyle(color: DarkColorConstants.codeBuiltIn),
    'meta': const TextStyle(
      color: DarkColorConstants.codeMeta,
      fontWeight: FontWeight.bold,
    ),
    'deletion':
        const TextStyle(backgroundColor: DarkColorConstants.codeDeletionBg),
    'addition':
        const TextStyle(backgroundColor: DarkColorConstants.codeAdditionBg),
    'emphasis': const TextStyle(fontStyle: FontStyle.italic),
    'strong': const TextStyle(fontWeight: FontWeight.bold),
  };
}
