// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Crear cuenta`
  String get create_account {
    return Intl.message(
      'Crear cuenta',
      name: 'create_account',
      desc: '',
      args: [],
    );
  }

  /// `¿Ya tienes una cuenta? `
  String get already_account {
    return Intl.message(
      '¿Ya tienes una cuenta? ',
      name: 'already_account',
      desc: '',
      args: [],
    );
  }

  /// `Inicia sesión`
  String get sign_in {
    return Intl.message(
      'Inicia sesión',
      name: 'sign_in',
      desc: '',
      args: [],
    );
  }

  /// `Paso 1 de 3`
  String get sign_up_create_account_step_of {
    return Intl.message(
      'Paso 1 de 3',
      name: 'sign_up_create_account_step_of',
      desc: '',
      args: [],
    );
  }

  /// `Crea tu cuenta`
  String get sign_up_create_your_account {
    return Intl.message(
      'Crea tu cuenta',
      name: 'sign_up_create_your_account',
      desc: '',
      args: [],
    );
  }

  /// `Registrate mediante`
  String get sign_up_using {
    return Intl.message(
      'Registrate mediante',
      name: 'sign_up_using',
      desc: '',
      args: [],
    );
  }

  /// `Continuar con e-mail`
  String get sign_up_continue_with_email {
    return Intl.message(
      'Continuar con e-mail',
      name: 'sign_up_continue_with_email',
      desc: '',
      args: [],
    );
  }

  /// `Crea\ntu cuenta`
  String get sign_up_create_your_account_title {
    return Intl.message(
      'Crea\ntu cuenta',
      name: 'sign_up_create_your_account_title',
      desc: '',
      args: [],
    );
  }

  /// `Nombre completo`
  String get sign_up_full_name {
    return Intl.message(
      'Nombre completo',
      name: 'sign_up_full_name',
      desc: '',
      args: [],
    );
  }

  /// `Escribe tu nombre completo`
  String get sign_up_full_name_hint {
    return Intl.message(
      'Escribe tu nombre completo',
      name: 'sign_up_full_name_hint',
      desc: '',
      args: [],
    );
  }

  /// `Correo electrónico`
  String get sign_up_email {
    return Intl.message(
      'Correo electrónico',
      name: 'sign_up_email',
      desc: '',
      args: [],
    );
  }

  /// `E-mail@hola.com`
  String get sign_up_email_hint {
    return Intl.message(
      'E-mail@hola.com',
      name: 'sign_up_email_hint',
      desc: '',
      args: [],
    );
  }

  /// `Contraseña`
  String get sign_up_password {
    return Intl.message(
      'Contraseña',
      name: 'sign_up_password',
      desc: '',
      args: [],
    );
  }

  /// `Mínimo 8 caracteres`
  String get sign_up_password_hint {
    return Intl.message(
      'Mínimo 8 caracteres',
      name: 'sign_up_password_hint',
      desc: '',
      args: [],
    );
  }

  /// `He leído y acepto la `
  String get sign_up_i_have_read_and_accept_privacy_policy_1 {
    return Intl.message(
      'He leído y acepto la ',
      name: 'sign_up_i_have_read_and_accept_privacy_policy_1',
      desc: '',
      args: [],
    );
  }

  /// `política de privacidad, `
  String get sign_up_i_have_read_and_accept_privacy_policy_2 {
    return Intl.message(
      'política de privacidad, ',
      name: 'sign_up_i_have_read_and_accept_privacy_policy_2',
      desc: '',
      args: [],
    );
  }

  /// `los `
  String get sign_up_i_have_read_and_accept_privacy_policy_3 {
    return Intl.message(
      'los ',
      name: 'sign_up_i_have_read_and_accept_privacy_policy_3',
      desc: '',
      args: [],
    );
  }

  /// `términos y condiciones `
  String get sign_up_i_have_read_and_accept_privacy_policy_4 {
    return Intl.message(
      'términos y condiciones ',
      name: 'sign_up_i_have_read_and_accept_privacy_policy_4',
      desc: '',
      args: [],
    );
  }

  /// `de uso `
  String get sign_up_i_have_read_and_accept_privacy_policy_5 {
    return Intl.message(
      'de uso ',
      name: 'sign_up_i_have_read_and_accept_privacy_policy_5',
      desc: '',
      args: [],
    );
  }

  /// `Verifica tu email`
  String get sign_up_verify_your_email {
    return Intl.message(
      'Verifica tu email',
      name: 'sign_up_verify_your_email',
      desc: '',
      args: [],
    );
  }

  /// `Te hemos enviado un correo de verificación a\n`
  String get sign_up_verify_your_email_description_1 {
    return Intl.message(
      'Te hemos enviado un correo de verificación a\n',
      name: 'sign_up_verify_your_email_description_1',
      desc: '',
      args: [],
    );
  }

  /// `Por favor clica el botón dentro de ese correo para continuar.`
  String get sign_up_verify_your_email_description_2 {
    return Intl.message(
      'Por favor clica el botón dentro de ese correo para continuar.',
      name: 'sign_up_verify_your_email_description_2',
      desc: '',
      args: [],
    );
  }

  /// `Ir al mail`
  String get sign_up_go_to_email {
    return Intl.message(
      'Ir al mail',
      name: 'sign_up_go_to_email',
      desc: '',
      args: [],
    );
  }

  /// `Si aún no recibiste el correo `
  String get sign_up_send_email_again_1 {
    return Intl.message(
      'Si aún no recibiste el correo ',
      name: 'sign_up_send_email_again_1',
      desc: '',
      args: [],
    );
  }

  /// `enviar otra vez`
  String get sign_up_send_email_again_2 {
    return Intl.message(
      'enviar otra vez',
      name: 'sign_up_send_email_again_2',
      desc: '',
      args: [],
    );
  }

  /// `Bienvenido,`
  String get sign_up_welcome {
    return Intl.message(
      'Bienvenido,',
      name: 'sign_up_welcome',
      desc: '',
      args: [],
    );
  }

  /// `Tu correo a sido verificado correctamente, \nahora solo queda verificar unos pasos más para ser parte de nombre_app`
  String get sign_up_welcome_description {
    return Intl.message(
      'Tu correo a sido verificado correctamente, \nahora solo queda verificar unos pasos más para ser parte de nombre_app',
      name: 'sign_up_welcome_description',
      desc: '',
      args: [],
    );
  }

  /// `Protege\ntu cuenta`
  String get sign_up_protect_your_account {
    return Intl.message(
      'Protege\ntu cuenta',
      name: 'sign_up_protect_your_account',
      desc: '',
      args: [],
    );
  }

  /// `Escribe tu número de teléfono`
  String get sign_up_write_your_phone_number {
    return Intl.message(
      'Escribe tu número de teléfono',
      name: 'sign_up_write_your_phone_number',
      desc: '',
      args: [],
    );
  }

  /// `Escribe tu número de teléfono, te enviaremos un código de confirmación allí.`
  String get sign_up_write_your_phone_number_description {
    return Intl.message(
      'Escribe tu número de teléfono, te enviaremos un código de confirmación allí.',
      name: 'sign_up_write_your_phone_number_description',
      desc: '',
      args: [],
    );
  }

  /// `País`
  String get sign_up_country {
    return Intl.message(
      'País',
      name: 'sign_up_country',
      desc: '',
      args: [],
    );
  }

  /// `+34`
  String get sign_up_country_hint {
    return Intl.message(
      '+34',
      name: 'sign_up_country_hint',
      desc: '',
      args: [],
    );
  }

  /// `Número de teléfono`
  String get sign_phone_number {
    return Intl.message(
      'Número de teléfono',
      name: 'sign_phone_number',
      desc: '',
      args: [],
    );
  }

  /// `000-000-000`
  String get sign_phone_number_hint {
    return Intl.message(
      '000-000-000',
      name: 'sign_phone_number_hint',
      desc: '',
      args: [],
    );
  }

  /// `Verifica tu número de teléfono`
  String get sign_up_verify_phone_number {
    return Intl.message(
      'Verifica tu número de teléfono',
      name: 'sign_up_verify_phone_number',
      desc: '',
      args: [],
    );
  }

  /// `Escribe el texto de 6 dígitos que te hemos enviado al número de teléfono +34 681656347.`
  String get sign_up_verify_phone_number_description {
    return Intl.message(
      'Escribe el texto de 6 dígitos que te hemos enviado al número de teléfono +34 681656347.',
      name: 'sign_up_verify_phone_number_description',
      desc: '',
      args: [],
    );
  }

  /// `Si aún no recibiste el código `
  String get sign_up_verify_phone_number_try_again_1 {
    return Intl.message(
      'Si aún no recibiste el código ',
      name: 'sign_up_verify_phone_number_try_again_1',
      desc: '',
      args: [],
    );
  }

  /// `enviar otra vez`
  String get sign_up_verify_phone_number_try_again_2 {
    return Intl.message(
      'enviar otra vez',
      name: 'sign_up_verify_phone_number_try_again_2',
      desc: '',
      args: [],
    );
  }

  /// `Completa la seguridad de tu cuenta`
  String get sign_up_complete_account_security {
    return Intl.message(
      'Completa la seguridad de tu cuenta',
      name: 'sign_up_complete_account_security',
      desc: '',
      args: [],
    );
  }

  /// `Finaliza el paso restante para poder continuar con la verificación`
  String get sign_up_complete_account_security_description {
    return Intl.message(
      'Finaliza el paso restante para poder continuar con la verificación',
      name: 'sign_up_complete_account_security_description',
      desc: '',
      args: [],
    );
  }

  /// `Número de teléfono confirmado`
  String get sign_up_phone_number_confirmed {
    return Intl.message(
      'Número de teléfono confirmado',
      name: 'sign_up_phone_number_confirmed',
      desc: '',
      args: [],
    );
  }

  /// `Nacionalidad`
  String get sign_up_nationality {
    return Intl.message(
      'Nacionalidad',
      name: 'sign_up_nationality',
      desc: '',
      args: [],
    );
  }

  /// `¿Cual es tu nacionalidad?`
  String get sign_up_nationality_title {
    return Intl.message(
      '¿Cual es tu nacionalidad?',
      name: 'sign_up_nationality_title',
      desc: '',
      args: [],
    );
  }

  /// `Si tienes mas de una nacionalidad, porfavor elige solo una.`
  String get sign_up_nationality_description {
    return Intl.message(
      'Si tienes mas de una nacionalidad, porfavor elige solo una.',
      name: 'sign_up_nationality_description',
      desc: '',
      args: [],
    );
  }

  /// `Peruana`
  String get sign_up_nationality_hint {
    return Intl.message(
      'Peruana',
      name: 'sign_up_nationality_hint',
      desc: '',
      args: [],
    );
  }

  /// `Verifica\ntu identidad`
  String get sign_up_verify_your_identity {
    return Intl.message(
      'Verifica\ntu identidad',
      name: 'sign_up_verify_your_identity',
      desc: '',
      args: [],
    );
  }

  /// `Para ayudar a prevenir el fraude y el robo de identidad, y para cumplir con las regulaciones federales, necesitamos algunos datos como:`
  String get sign_up_verify_your_identity_description {
    return Intl.message(
      'Para ayudar a prevenir el fraude y el robo de identidad, y para cumplir con las regulaciones federales, necesitamos algunos datos como:',
      name: 'sign_up_verify_your_identity_description',
      desc: '',
      args: [],
    );
  }

  /// `Nombre legal, domicilio \ny fecha de nacimiento`
  String get sign_up_verify_your_identity_opt_1 {
    return Intl.message(
      'Nombre legal, domicilio \ny fecha de nacimiento',
      name: 'sign_up_verify_your_identity_opt_1',
      desc: '',
      args: [],
    );
  }

  /// `Cómo utilizas Nombre marca`
  String get sign_up_verify_your_identity_opt_2 {
    return Intl.message(
      'Cómo utilizas Nombre marca',
      name: 'sign_up_verify_your_identity_opt_2',
      desc: '',
      args: [],
    );
  }

  /// `Información \npersonal`
  String get sign_up_personal_information {
    return Intl.message(
      'Información \npersonal',
      name: 'sign_up_personal_information',
      desc: '',
      args: [],
    );
  }

  /// `Nombre completo (legal)`
  String get sign_up_personal_information_full_name {
    return Intl.message(
      'Nombre completo (legal)',
      name: 'sign_up_personal_information_full_name',
      desc: '',
      args: [],
    );
  }

  /// `User_full name`
  String get sign_up_personal_information_full_name_hint {
    return Intl.message(
      'User_full name',
      name: 'sign_up_personal_information_full_name_hint',
      desc: '',
      args: [],
    );
  }

  /// `Fecha de nacimiento`
  String get sign_up_personal_information_birthdate {
    return Intl.message(
      'Fecha de nacimiento',
      name: 'sign_up_personal_information_birthdate',
      desc: '',
      args: [],
    );
  }

  /// `MM/DD/AAAA`
  String get sign_up_personal_information_birthdate_hint {
    return Intl.message(
      'MM/DD/AAAA',
      name: 'sign_up_personal_information_birthdate_hint',
      desc: '',
      args: [],
    );
  }

  /// `Pais de residencia`
  String get sign_up_personal_information_country {
    return Intl.message(
      'Pais de residencia',
      name: 'sign_up_personal_information_country',
      desc: '',
      args: [],
    );
  }

  /// `Peru`
  String get sign_up_personal_information_country_hint {
    return Intl.message(
      'Peru',
      name: 'sign_up_personal_information_country_hint',
      desc: '',
      args: [],
    );
  }

  /// `DNI/Pasaporte`
  String get sign_up_personal_information_document_number {
    return Intl.message(
      'DNI/Pasaporte',
      name: 'sign_up_personal_information_document_number',
      desc: '',
      args: [],
    );
  }

  /// `DNI/Pasaporte`
  String get sign_up_personal_information_document_number_hint {
    return Intl.message(
      'DNI/Pasaporte',
      name: 'sign_up_personal_information_document_number_hint',
      desc: '',
      args: [],
    );
  }

  /// `¿Cómo utilizarás Biyon?`
  String get sign_up_how_will_you_use {
    return Intl.message(
      '¿Cómo utilizarás Biyon?',
      name: 'sign_up_how_will_you_use',
      desc: '',
      args: [],
    );
  }

  /// `Inversión`
  String get sign_up_how_will_you_use_opt_1 {
    return Intl.message(
      'Inversión',
      name: 'sign_up_how_will_you_use_opt_1',
      desc: '',
      args: [],
    );
  }

  /// `Operar en nombre marca`
  String get sign_up_how_will_you_use_opt_2 {
    return Intl.message(
      'Operar en nombre marca',
      name: 'sign_up_how_will_you_use_opt_2',
      desc: '',
      args: [],
    );
  }

  /// `Compras online`
  String get sign_up_how_will_you_use_opt_3 {
    return Intl.message(
      'Compras online',
      name: 'sign_up_how_will_you_use_opt_3',
      desc: '',
      args: [],
    );
  }

  /// `Pagos`
  String get sign_up_how_will_you_use_opt_4 {
    return Intl.message(
      'Pagos',
      name: 'sign_up_how_will_you_use_opt_4',
      desc: '',
      args: [],
    );
  }

  /// `¿Cual es tu \nsituación laboral?`
  String get sign_up_what_is_your_work_situation {
    return Intl.message(
      '¿Cual es tu \nsituación laboral?',
      name: 'sign_up_what_is_your_work_situation',
      desc: '',
      args: [],
    );
  }

  /// `Empleado`
  String get sign_up_what_is_your_work_situation_opt_1 {
    return Intl.message(
      'Empleado',
      name: 'sign_up_what_is_your_work_situation_opt_1',
      desc: '',
      args: [],
    );
  }

  /// `Trabajador por cuenta propia`
  String get sign_up_what_is_your_work_situation_opt_2 {
    return Intl.message(
      'Trabajador por cuenta propia',
      name: 'sign_up_what_is_your_work_situation_opt_2',
      desc: '',
      args: [],
    );
  }

  /// `Jubilado`
  String get sign_up_what_is_your_work_situation_opt_3 {
    return Intl.message(
      'Jubilado',
      name: 'sign_up_what_is_your_work_situation_opt_3',
      desc: '',
      args: [],
    );
  }

  /// `Estudiante`
  String get sign_up_what_is_your_work_situation_opt_4 {
    return Intl.message(
      'Estudiante',
      name: 'sign_up_what_is_your_work_situation_opt_4',
      desc: '',
      args: [],
    );
  }

  /// `Añade tu dirección`
  String get sign_up_add_address {
    return Intl.message(
      'Añade tu dirección',
      name: 'sign_up_add_address',
      desc: '',
      args: [],
    );
  }

  /// `Introduce la dirección de tu residencia principal.`
  String get sign_up_add_address_description {
    return Intl.message(
      'Introduce la dirección de tu residencia principal.',
      name: 'sign_up_add_address_description',
      desc: '',
      args: [],
    );
  }

  /// `Dirección`
  String get sign_up_address {
    return Intl.message(
      'Dirección',
      name: 'sign_up_address',
      desc: '',
      args: [],
    );
  }

  /// `Buscar dirección`
  String get sign_up_address_hint {
    return Intl.message(
      'Buscar dirección',
      name: 'sign_up_address_hint',
      desc: '',
      args: [],
    );
  }

  /// `O introduce tu dirección manualmente`
  String get sign_up_address_introduce_address {
    return Intl.message(
      'O introduce tu dirección manualmente',
      name: 'sign_up_address_introduce_address',
      desc: '',
      args: [],
    );
  }

  /// `Número de casa/portal`
  String get sign_up_home_number {
    return Intl.message(
      'Número de casa/portal',
      name: 'sign_up_home_number',
      desc: '',
      args: [],
    );
  }

  /// `23`
  String get sign_up_home_number_hint {
    return Intl.message(
      '23',
      name: 'sign_up_home_number_hint',
      desc: '',
      args: [],
    );
  }

  /// `Nombre de la calle`
  String get sign_up_street_number {
    return Intl.message(
      'Nombre de la calle',
      name: 'sign_up_street_number',
      desc: '',
      args: [],
    );
  }

  /// `Calle Reina maria`
  String get sign_up_street_number_hint {
    return Intl.message(
      'Calle Reina maria',
      name: 'sign_up_street_number_hint',
      desc: '',
      args: [],
    );
  }

  /// `Información adicional (opcional)`
  String get sign_up_additional_information {
    return Intl.message(
      'Información adicional (opcional)',
      name: 'sign_up_additional_information',
      desc: '',
      args: [],
    );
  }

  /// `23`
  String get sign_up_additional_information_hint {
    return Intl.message(
      '23',
      name: 'sign_up_additional_information_hint',
      desc: '',
      args: [],
    );
  }

  /// `Ciudad o localidad`
  String get sign_up_city {
    return Intl.message(
      'Ciudad o localidad',
      name: 'sign_up_city',
      desc: '',
      args: [],
    );
  }

  /// `Lima`
  String get sign_up_city_hint {
    return Intl.message(
      'Lima',
      name: 'sign_up_city_hint',
      desc: '',
      args: [],
    );
  }

  /// `Código postal`
  String get sign_up_zip_code {
    return Intl.message(
      'Código postal',
      name: 'sign_up_zip_code',
      desc: '',
      args: [],
    );
  }

  /// `01382`
  String get sign_up_zip_code_hint {
    return Intl.message(
      '01382',
      name: 'sign_up_zip_code_hint',
      desc: '',
      args: [],
    );
  }

  /// `Verifica tu \ndocumento`
  String get sign_up_verify_document {
    return Intl.message(
      'Verifica tu \ndocumento',
      name: 'sign_up_verify_document',
      desc: '',
      args: [],
    );
  }

  /// `Esto nos ayuda a evitar que otra persona cree una cuenta en la aplicación en tu nombre.\n\nDespués de realizar este paso,\n¡Podrás comenzar a operar en la app!`
  String get sign_up_verify_document_description {
    return Intl.message(
      'Esto nos ayuda a evitar que otra persona cree una cuenta en la aplicación en tu nombre.\n\nDespués de realizar este paso,\n¡Podrás comenzar a operar en la app!',
      name: 'sign_up_verify_document_description',
      desc: '',
      args: [],
    );
  }

  /// `Iniciar sesión`
  String get login_title {
    return Intl.message(
      'Iniciar sesión',
      name: 'login_title',
      desc: '',
      args: [],
    );
  }

  /// `Correo electrónico`
  String get login_email {
    return Intl.message(
      'Correo electrónico',
      name: 'login_email',
      desc: '',
      args: [],
    );
  }

  /// `E-mail@hola.com`
  String get login_email_hint {
    return Intl.message(
      'E-mail@hola.com',
      name: 'login_email_hint',
      desc: '',
      args: [],
    );
  }

  /// `Contraseña`
  String get login_password {
    return Intl.message(
      'Contraseña',
      name: 'login_password',
      desc: '',
      args: [],
    );
  }

  /// `*********`
  String get login_password_hint {
    return Intl.message(
      '*********',
      name: 'login_password_hint',
      desc: '',
      args: [],
    );
  }

  /// `¿Has olvidado tu contraseña? `
  String get login_forgot_password_1 {
    return Intl.message(
      '¿Has olvidado tu contraseña? ',
      name: 'login_forgot_password_1',
      desc: '',
      args: [],
    );
  }

  /// `Restablecerla`
  String get login_forgot_password_2 {
    return Intl.message(
      'Restablecerla',
      name: 'login_forgot_password_2',
      desc: '',
      args: [],
    );
  }

  /// `Iniciar sesión`
  String get login_option {
    return Intl.message(
      'Iniciar sesión',
      name: 'login_option',
      desc: '',
      args: [],
    );
  }

  /// `Continuar`
  String get continue_option {
    return Intl.message(
      'Continuar',
      name: 'continue_option',
      desc: '',
      args: [],
    );
  }

  /// `Enviar`
  String get send_option {
    return Intl.message(
      'Enviar',
      name: 'send_option',
      desc: '',
      args: [],
    );
  }

  /// `Omitir`
  String get skip_option {
    return Intl.message(
      'Omitir',
      name: 'skip_option',
      desc: '',
      args: [],
    );
  }

  /// `Empezar`
  String get begin_option {
    return Intl.message(
      'Empezar',
      name: 'begin_option',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'es'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
