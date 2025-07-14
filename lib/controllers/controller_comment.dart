import 'package:belajar2/models/model_comment.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

Future<List<Comment>> fetchComments(int postId) async {
  final response = await http.get(
    Uri.parse('https://jsonplaceholder.typicode.com/posts/$postId/comments'),
  );

  if (response.statusCode == 200) {
    List<dynamic> jsonList = jsonDecode(response.body) as List<dynamic>;
    return jsonList
        .map((json) => Comment.fromJson(json as Map<String, dynamic>))
        .toList();
  } else {
    throw Exception('Failed to load comments');
  }
}

Future<List<Comment>> fetchAllComments() async {
  final response = await http.get(
    Uri.parse('https://jsonplaceholder.typicode.com/comments'),
  );

  if (response.statusCode == 200) {
    List<dynamic> jsonList = jsonDecode(response.body) as List<dynamic>;
    return jsonList
        .map((json) => Comment.fromJson(json as Map<String, dynamic>))
        .toList();
  } else {
    throw Exception('Failed to load comments');
  }
}