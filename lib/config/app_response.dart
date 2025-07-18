import 'dart:convert';

import 'package:d_method/d_method.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:pasti_laundry/config/failure.dart';

class AppResponse {
  static Map data(Response response) {
    DMethod.printResponse(response);
    switch (response.statusCode) {
      case 200: //read
      case 201: //create, update
        var responseJson = jsonDecode(response.body);
        return responseJson;
      case 204: //delete
        return {'success': true};
      case 400: //bad request
        throw BadRequest(message: response.body);
      case 401: //unauthorized
        throw Unauthorized(message: response.body);
      case 422: //validation error
        throw InvalidInputFailure(message: response.body);
      case 403: //forbidden
        throw Forbidden(message: response.body);
      case 404: //not found
        throw NotFound(message: response.body);
      case 500: //server error
        throw ServerFailure(message: response.body);
      default:
        throw FetchFailure(message: response.body);
    }
  }

  static invalidInput(BuildContext context, String messageBody) {
    Map errors = jsonDecode(messageBody)['errors'];
    showDialog(
      context: context,
      builder: (context) {
        return SimpleDialog(
          titlePadding: const EdgeInsetsGeometry.fromLTRB(16, 16, 16, 0),
          title: const Text('Invalid Input'),
          children: [
            ...errors.entries.map((e) {
              return ListTile(
                title: Text(e.key),
                subtitle: Column(
                  children: (e.value as List).map((itemError) {
                    return Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text('- '),
                        Expanded(child: Text(itemError)),
                      ],
                    );
                  }).toList(),
                ),
              );
            }),
            Padding(
              padding: const EdgeInsets.all(16),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text(
                  'Close',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
