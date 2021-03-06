import 'package:flutter/material.dart';
import 'package:toggle/Models/error_messages.dart';
import 'package:toggle/Utils/login_dialog.dart';

class ErrorActions {
  final String errorMessages;

  ErrorActions({this.errorMessages});

  void errorHandler(context) {
    switch (errorMessages) {
      case 'There is no user record corresponding to this identifier. The user may have been deleted.':
        showDialog(
          context: context,
          child: LoginDialog(
            title: ErrorData.userNotFound,
            buttonText: 'Ok',
            description: ErrorData.userNotFoundMessage,
          ),
        );
        break;
      case 'The password is invalid or the user does not have a password.':
        showDialog(
          context: context,
          child: LoginDialog(
            title: ErrorData.userNotFound,
            buttonText: 'Ok',
            description: ErrorData.userNotFoundMessage,
          ),
        );
        break;

      case 'A network error (such as timeout, interrupted connection or unreachable host) has occurred.':
        showDialog(
          context: context,
          child: LoginDialog(
            title: ErrorData.internet,
            buttonText: 'Ok',
            description: ErrorData.internetConnectionMessage,
          ),
        );
        break;
      case 'An internal error has occurred.':
        showDialog(
          context: context,
          child: LoginDialog(
            title: ErrorData.internalError,
            buttonText: 'Ok',
            description: ErrorData.someError,
          ),
        );
        break;

      case 'The email address is badly formatted.':
        showDialog(
          context: context,
          child: LoginDialog(
            title: 'Email not valid',
            buttonText: 'Ok',
            description: ErrorData.emailFormatedMessage,
          ),
        );
        break;

      case 'We have blocked all requests from this device due to unusual activity. Try again later. [ Too many unsuccessful login attempts. Please try again later. ]':
        showDialog(
          context: context,
          child: LoginDialog(
            title: ErrorData.internalError,
            buttonText: 'Ok',
            description: ErrorData.someError,
          ),
        );
        break;
      case 'The email address is already in use by another account.':
        showDialog(
          context: context,
          child: LoginDialog(
            title: ErrorData.sorry,
            buttonText: 'Ok',
            description: ErrorData.inuse,
          ),
        );
        break;

      case 'An internal error has occurred.':
        showDialog(
          context: context,
          child: LoginDialog(
            title: ErrorData.internalError,
            buttonText: 'Ok',
            description: ErrorData.someError,
          ),
        );
        break;

      case 'The email address is badly formatted.':
        showDialog(
          context: context,
          child: LoginDialog(
            title: 'Email not valid',
            buttonText: 'Ok',
            description: ErrorData.emailFormatedMessage,
          ),
        );
        break;

      case 'We have blocked all requests from this device due to unusual activity. Try again later. [ Too many unsuccessful login attempts. Please try again later. ]':
        showDialog(
          context: context,
          child: LoginDialog(
            title: ErrorData.internalError,
            buttonText: 'Ok',
            description: ErrorData.someError,
          ),
        );
        break;
      case 'The password must be 6 characters long or more.':
        showDialog(
          context: context,
          child: LoginDialog(
            title: '',
            buttonText: 'Ok',
            description: 'The password must be 6 characters long or more.',
          ),
        );
    }
  }
}
