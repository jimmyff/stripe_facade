@JS()
library stripe_facade;

import "package:js/js.dart";
import "package:func/func.dart";

/// Type definitions for stripe
/// Project: https://stripe.com/
/// Definitions by: Andy Hawkins <https://github.com/a904guy/,http://a904guy.com>, Eric J. Smith <https://github.com/ejsmith/>, Amrit Kahlon <https://github.com/amritk/>, Adam Cmiel <https://github.com/adamcmiel>
/// Definitions: https://github.com/DefinitelyTyped/DefinitelyTyped
@anonymous
@JS()
abstract class StripeStatic {
  external StripeApplePay get applePay;
  external set applePay(StripeApplePay v);
  external void setPublishableKey(String key);
  external bool validateCardNumber(String cardNumber);
  external bool validateExpiry(String month, String year);
  external bool validateCVC(String cardCVC);
  external String cardType(String cardNumber);
  external void getToken(String token,
      void responseHandler(num status, StripeTokenResponse response));
  external StripeCardData get card;
  external set card(StripeCardData v);
  external void createToken(StripeTokenData data,
      void responseHandler(num status, StripeTokenResponse response));
  external StripeBankAccount get bankAccount;
  external set bankAccount(StripeBankAccount v);
}

@anonymous
@JS()
abstract class StripeTokenData {
  external String get number;
  external set number(String v);
  external num get exp_month;
  external set exp_month(num v);
  external num get exp_year;
  external set exp_year(num v);
  external String get exp;
  external set exp(String v);
  external String get cvc;
  external set cvc(String v);
  external String get name;
  external set name(String v);
  external String get address_line1;
  external set address_line1(String v);
  external String get address_line2;
  external set address_line2(String v);
  external String get address_city;
  external set address_city(String v);
  external String get address_state;
  external set address_state(String v);
  external String get address_zip;
  external set address_zip(String v);
  external String get address_country;
  external set address_country(String v);
  external factory StripeTokenData(
      {String number,
      num exp_month,
      num exp_year,
      String exp,
      String cvc,
      String name,
      String address_line1,
      String address_line2,
      String address_city,
      String address_state,
      String address_zip,
      String address_country});
}

@anonymous
@JS()
abstract class StripeTokenResponse {
  external String get id;
  external set id(String v);
  external StripeCardData get card;
  external set card(StripeCardData v);
  external num get created;
  external set created(num v);
  external bool get livemode;
  external set livemode(bool v);
  external String get object;
  external set object(String v);
  external String get type;
  external set type(String v);
  external bool get used;
  external set used(bool v);
  external StripeError get error;
  external set error(StripeError v);
  external factory StripeTokenResponse(
      {String id,
      StripeCardData card,
      num created,
      bool livemode,
      String object,
      String type,
      bool used,
      StripeError error});
}

@anonymous
@JS()
abstract class StripeError {
  external String get type;
  external set type(String v);
  external String get code;
  external set code(String v);
  external String get message;
  external set message(String v);
  external String get param;
  external set param(String v);
  external factory StripeError(
      {String type, String code, String message, String param});
}

@anonymous
@JS()
abstract class StripeCardData {
  external String get object;
  external set object(String v);
  external String get last4;
  external set last4(String v);
  external num get exp_month;
  external set exp_month(num v);
  external num get exp_year;
  external set exp_year(num v);
  external String get country;
  external set country(String v);
  external String get name;
  external set name(String v);
  external String get address_line1;
  external set address_line1(String v);
  external String get address_line2;
  external set address_line2(String v);
  external String get address_city;
  external set address_city(String v);
  external String get address_state;
  external set address_state(String v);
  external String get address_zip;
  external set address_zip(String v);
  external String get address_country;
  external set address_country(String v);
  external void createToken(StripeTokenData data,
      void responseHandler(num status, StripeTokenResponse response));
}

@anonymous
@JS()
abstract class StripeBankAccount {
  external void createToken(StripeBankTokenParams params,
      void stripeResponseHandler(num status, StripeBankTokenResponse response));
  external bool validateRoutingNumber(
      dynamic /*num|String*/ routingNumber, String countryCode);
  external bool validateAccountNumber(
      dynamic /*num|String*/ accountNumber, String countryCode);
}

@anonymous
@JS()
abstract class StripeBankTokenParams {
  external String get country;
  external set country(String v);
  external String get currency;
  external set currency(String v);
  external dynamic /*num|String*/ get account_number;
  external set account_number(dynamic /*num|String*/ v);
  external dynamic /*num|String*/ get routing_number;
  external set routing_number(dynamic /*num|String*/ v);
  external String get account_holder_name;
  external set account_holder_name(String v);
  external String get account_holder_type;
  external set account_holder_type(String v);
  external factory StripeBankTokenParams(
      {String country,
      String currency,
      dynamic /*num|String*/ account_number,
      dynamic /*num|String*/ routing_number,
      String account_holder_name,
      String account_holder_type});
}

@anonymous
@JS()
abstract class StripeBankTokenResponse {
  external String get id;
  external set id(String v);
  external dynamic
      /*{
        country: string;
        bank_name: string;
        last4: number;
        validated: boolean;
        object: string;
    }*/
      get bank_account;
  external set bank_account(
      dynamic /*{
        country: string;
        bank_name: string;
        last4: number;
        validated: boolean;
        object: string;
    }*/
      v);
  external num get created;
  external set created(num v);
  external bool get livemode;
  external set livemode(bool v);
  external String get type;
  external set type(String v);
  external String get object;
  external set object(String v);
  external bool get used;
  external set used(bool v);
  external StripeError get error;
  external set error(StripeError v);
  external factory StripeBankTokenResponse(
      {String id,
      dynamic /*{
        country: string;
        bank_name: string;
        last4: number;
        validated: boolean;
        object: string;
    }*/
      bank_account,
      num created,
      bool livemode,
      String type,
      String object,
      bool used,
      StripeError error});
}

@JS()
external StripeStatic get Stripe;
@JS()
external set Stripe(StripeStatic v);
// Module Stripe
/* WARNING: export assignment not yet supported. */

// End module Stripe
@anonymous
@JS()
abstract class StripeApplePay {
  external void checkAvailability(void resopnseHandler(bool result));
  external dynamic buildSession(
      StripeApplePayPaymentRequest data,
      void onSuccessHandler(
          StripeApplePaySessionResult result, VoidFunc1<dynamic> completion),
      void onErrorHanlder(dynamic /*{ message: string }*/ error));
}

/*type StripeApplePayBillingContactField = 'postalAddress' | 'name';*/
/*type StripeApplePayShippingContactField =
    StripeApplePayBillingContactField | 'phone' | 'email';*/
/*type StripeApplePayShipping =
    'shipping' | 'delivery' | 'storePickup' | 'servicePickup';*/
@anonymous
@JS()
abstract class StripeApplePayPaymentRequest {
  external StripeApplePayPaymentContact get billingContact;
  external set billingContact(StripeApplePayPaymentContact v);
  external String get countryCode;
  external set countryCode(String v);
  external String get currencyCode;
  external set currencyCode(String v);
  external StripeApplePayLineItem get total;
  external set total(StripeApplePayLineItem v);
  external List<StripeApplePayLineItem> get lineItems;
  external set lineItems(List<StripeApplePayLineItem> v);
  external List<String /*'postalAddress'|'name'*/ >
      get requiredBillingContactFields;
  external set requiredBillingContactFields(
      List<String /*'postalAddress'|'name'*/ > v);
  external List<String /*'postalAddress'|'name'|'phone'|'email'*/ >
      get requiredShippingContactFields;
  external set requiredShippingContactFields(
      List<String /*'postalAddress'|'name'|'phone'|'email'*/ > v);
  external StripeApplePayPaymentContact get shippingContact;
  external set shippingContact(StripeApplePayPaymentContact v);
  external List<StripeApplePayShippingMethod> get shippingMethods;
  external set shippingMethods(List<StripeApplePayShippingMethod> v);
  external List<String /*'shipping'|'delivery'|'storePickup'|'servicePickup'*/ >
      get shippingType;
  external set shippingType(
      List<String /*'shipping'|'delivery'|'storePickup'|'servicePickup'*/ > v);
  external factory StripeApplePayPaymentRequest(
      {StripeApplePayPaymentContact billingContact,
      String countryCode,
      String currencyCode,
      StripeApplePayLineItem total,
      List<StripeApplePayLineItem> lineItems,
      List<String /*'postalAddress'|'name'*/ > requiredBillingContactFields,
      List<
          String /*'postalAddress'|'name'|'phone'|'email'*/ > requiredShippingContactFields,
      StripeApplePayPaymentContact shippingContact,
      List<StripeApplePayShippingMethod> shippingMethods,
      List<
          String /*'shipping'|'delivery'|'storePickup'|'servicePickup'*/ > shippingType});
}

/// https://developer.apple.com/reference/applepayjs/1916082-applepay_js_data_types
@anonymous
@JS()
abstract class StripeApplePayLineItem {
  external String /*'pending'|'final'*/ get type;
  external set type(String /*'pending'|'final'*/ v);
  external String get label;
  external set label(String v);
  external num get amount;
  external set amount(num v);
  external factory StripeApplePayLineItem(
      {String /*'pending'|'final'*/ type, String label, num amount});
}

@anonymous
@JS()
abstract class StripeApplePaySessionResult {
  external StripeTokenResponse get token;
  external set token(StripeTokenResponse v);
  external StripeApplePayPaymentContact get shippingContact;
  external set shippingContact(StripeApplePayPaymentContact v);
  external StripeApplePayShippingMethod get shippingMethod;
  external set shippingMethod(StripeApplePayShippingMethod v);
  external factory StripeApplePaySessionResult(
      {StripeTokenResponse token,
      StripeApplePayPaymentContact shippingContact,
      StripeApplePayShippingMethod shippingMethod});
}

@anonymous
@JS()
abstract class StripeApplePayShippingMethod {
  external String get label;
  external set label(String v);
  external String get detail;
  external set detail(String v);
  external num get amount;
  external set amount(num v);
  external String get identifier;
  external set identifier(String v);
  external factory StripeApplePayShippingMethod(
      {String label, String detail, num amount, String identifier});
}

@anonymous
@JS()
abstract class StripeApplePayPaymentContact {
  external String get emailAddress;
  external set emailAddress(String v);
  external String get phoneNumber;
  external set phoneNumber(String v);
  external String get givenName;
  external set givenName(String v);
  external String get familyName;
  external set familyName(String v);
  external List<String> get addressLines;
  external set addressLines(List<String> v);
  external String get locality;
  external set locality(String v);
  external String get administrativeArea;
  external set administrativeArea(String v);
  external String get postalCode;
  external set postalCode(String v);
  external String get countryCode;
  external set countryCode(String v);
  external factory StripeApplePayPaymentContact(
      {String emailAddress,
      String phoneNumber,
      String givenName,
      String familyName,
      List<String> addressLines,
      String locality,
      String administrativeArea,
      String postalCode,
      String countryCode});
}

/// Type definitions for Stripe Checkout
/// Project: https://stripe.com/checkout
/// Definitions by: Chris Wrench <https://github.com/cgwrench>
/// Definitions: https://github.com/DefinitelyTyped/DefinitelyTyped

/// <reference types="stripe"/>
@anonymous
@JS()
abstract class StripeCheckoutStatic {
  external StripeCheckoutHandler configure(StripeCheckoutOptions options);
}

@anonymous
@JS()
abstract class StripeCheckoutHandler {
  external void open([StripeCheckoutOptions options]);
  external void close();
}

@anonymous
@JS()
abstract class StripeCheckoutOptions {
  external String get key;
  external set key(String v);
  external VoidFunc1<StripeTokenResponse> get token;
  external set token(VoidFunc1<StripeTokenResponse> v);
  external String get image;
  external set image(String v);
  external String get name;
  external set name(String v);
  external String get description;
  external set description(String v);
  external num get amount;
  external set amount(num v);
  external String get locale;
  external set locale(String v);
  external String get currency;
  external set currency(String v);
  external String get panelLabel;
  external set panelLabel(String v);
  external bool get zipCode;
  external set zipCode(bool v);
  external bool get billingAddress;
  external set billingAddress(bool v);
  external String get email;
  external set email(String v);
  external bool get shippingAddress;
  external set shippingAddress(bool v);
  external String get label;
  external set label(String v);
  external bool get allowRememberMe;
  external set allowRememberMe(bool v);
  external bool get bitcoin;
  external set bitcoin(bool v);
  external dynamic /*bool|'auto'*/ get alipay;
  external set alipay(dynamic /*bool|'auto'*/ v);
  external bool get alipayReusable;
  external set alipayReusable(bool v);
  external VoidFunc0 get opened;
  external set opened(VoidFunc0 v);
  external VoidFunc0 get closed;
  external set closed(VoidFunc0 v);
  external factory StripeCheckoutOptions(
      {String key,
      VoidFunc1<StripeTokenResponse> token,
      String image,
      String name,
      String description,
      num amount,
      String locale,
      String currency,
      String panelLabel,
      bool zipCode,
      bool billingAddress,
      String email,
      bool shippingAddress,
      String label,
      bool allowRememberMe,
      bool bitcoin,
      dynamic /*bool|'auto'*/ alipay,
      bool alipayReusable,
      VoidFunc0 opened,
      VoidFunc0 closed});
}

@JS()
external StripeCheckoutStatic get StripeCheckout;
@JS()
external set StripeCheckout(StripeCheckoutStatic v);

