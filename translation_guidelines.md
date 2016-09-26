# Binary.com: Translation Guidelines

## Introduction

This document explains translation process in Binary.com. As of now we use [https://hosted.weblate.org](https://hosted.weblate.org) to manage our translations. You can read about basics of weblate translation here [https://docs.weblate.org/en/latest/user/index.html](https://docs.weblate.org/en/latest/user/index.html). We may use different platform in future but guidelines below will remain same.

## Guidelines

- Don't put a space in between these tags:  %1, %2, %3.  These tags will be replaced with word/s and if a space is placed in between them, the system won't detect the code and it will show up instead as % 1 in the site.

  **Example**:

  SOURCE TEXT: %1 assumes ownership of the customer at point of first contact with the visitor.

  TRANSLATION: Zum Zeitpunkt des ersten Kontakts mit dem Besucher übernimmt % 1 die Zuständigkeit für den Kunden.

  EXPLANATION: If a space is put in between % and 1, it will show up as "Zum Zeitpunkt des ersten Kontakts mit dem Besucher übernimmt % 1 die Zuständigkeit für den Kunden."; instead of "Zum Zeitpunkt des ersten Kontakts mit dem Besucher übernimmt Binary.com die Zuständigkeit für den Kunden." in the site.

- Please ensure that all tags from the source text are included in the translation.

  **Example**:

  SOURCE TEXT: %1 %2 payout if the last tick of %3 is strictly higher than the average of the %plural(%5,%d tick,%d ticks).

  TRANSLATION: %1 %2 Auszahlung, wenn der letzte Tick von %3 eindeutig höher als der Durchschnitt des/der %plural %5,%d Tick,%d Ticks) ist.

  EXPLANATION: The ( is missing here. It should be plural(%5.

  TRANSLATION: %1 %2 Auszahlung, wenn der letzte Tick von %3 eindeutig höher als der Durchschnitt des/der %(plural ,5,%d Tick,%d Ticks) ist.

  EXPLANATION: The ( is placed before the word "plural" and a "," was used instead of % in ,5.

  TRANSLATION: %1 %2 Auszahlung, wenn der letzte Tick von %3 eindeutig höher als der Durchschnitt des/der %plural(5,%d Tick,%d Ticks) ist.

  EXPLANATION: The % is missing here. It should be plural(%5.

- Always follow the spacing before and after the tags/placeholders.

  **Example**:

  SOURCE TEXT: '&lt;strong&gt;Long&lt;/strong&gt;' contracts generate profits when the index rises and loses when it falls.

  TRANSLATION: '&lt;strong&gt;Lange&lt;/strong&gt;'Kontrakte generieren Profite, wenn der Index steigt und Verluste, wenn er fällt.

  EXPLANATION: If you take off the space in between &lt;/strong&gt;' and Kontrakte, the text would look like this in the site: **'Lange'**Kontrakte generieren Profite, wenn der Index steigt und Verluste, wenn er fällt. instead of   **'Lange'** Kontrakte generieren Profite, wenn der Index steigt und Verluste, wenn er fällt.

- Do not translate any words that start with %, e.g. %plural, %d, %1 or %ctx(If you look in the sky).

  **Example**:

  SOURCE TEXT: %ctx(If you look in the sky)You will see %plural(%1,one star, %d stars).

  TRANSLATION: %ctx(Nếu bạn nhìn lên bầu trời)bạn sẽ thấy %nhiều(%1,một ngôi sao, %d nhiều ngôi sao).

  EXPLANATION: The texts "If you look in the sky" should be left as is ideally but you can translate but please keep function same as it is in message and the tag %plural should not be translated as well. The translated text should look like this %ctx(If you look in the sky)bạn sẽ thấy %plural(%1,một ngôi sao, %d nhiều ngôi sao).

- All source texts with placeholder {JAPAN ONLY} means string will be used only for the Japanese website.  So there is also no need for us to translate them.  Kindly just copy-paste the source texts.

  **Example**:

  SOURCE TEXT: {JAPAN ONLY}Download

  TRANSLATION: {JAPAN ONLY}Herunterladen

  EXPLANATION: Instead of {JAPAN ONLY}Herunterladen it should be {JAPAN ONLY}Download for all languages other than Japanese. Japan translators will take care of this in their language.

  Don't leave it empty, else it will show as untranslated string.

- There is no need to translate the tags like &lt;strong&gt;, &lt;b&gt;, &lt;br&gt; i.e html tags

  **Example**:

  SOURCE TEXT: Session duration limit is currently set to &lt;strong&gt;

  TRANSLATION: Das Limit für die Sitzungslaufzeit liegt derzeit bei &lt;stark
  &gt;%1 Minuten.&lt;/stark&gt;

  EXPLANATION: These tags are html tags ( [https://developer.mozilla.org/en/docs/Web/HTML/Element](https://developer.mozilla.org/en/docs/Web/HTML/Element)) so don't translate these as they are placeholders. Correct form is Das Limit für die Sitzungslaufzeit liegt derzeit bei &lt;strong&gt;%1 Minuten.&lt;/strong&gt;

## Plural forms

- Arabic (ar)

  Plural-Forms: nplurals=6; plural=n==0 ? 0 : n==1 ? 1 : n==2 ? 2 : n%100>=3 && n%100<=10 ? 3 : n%100>=11 ? 4 : 5;

  Arabic has 6 forms:

  * First form: for 0 (the "n==0 ? 0" part)
  * Second form: for 1 (": n==1 ? 1")
  * Third form: for 2 (": n==2 ? 2")
  * Fourth form: for numbers that end with a number between 3 and 10 (like: 103, 1405, 23409) (": n%100>=3 && n%100<=10 ? 3")
  * Fifth form: for numbers that end with a number between 11 and 99 (like: 1099, 278) (": n%100>=11 ? 4")
  * Sixth form: for numbers above 100 ending with 0, 1 or 2 (like: 100, 232, 3001) (": 5")
  
- Deutsch (de)

  Plural-Forms: nplurals=2; plural=n != 1;
  
  It has two plural forms similar to English so its straightforward, use plural for everything except 1

- Español (es)

  Plural-Forms: nplurals=2; plural=n != 1;
  
  It has two plural forms similar to English so its straightforward, use plural for everything except 1.

- French (fr)

  Plural-Forms: nplurals=2; plural=n > 1;

  It has 2 forms just like English but unlike English it uses singular for zero quantities. In English, singular is used only for the quantity 1
  
- Indonesian (id)

  Plural-Forms: nplurals=1; plural=0;

  It has only one plural form so singular or multiple quantity will be same for translated text.
  
- Italian (it)

  Plural-Forms: nplurals=2; plural=n != 1;

  It has two plural forms similar to English so it’s straightforward, use plural for everything except 1.
  
- Japanese (ja)

  Plural-Forms: nplurals=1; plural=0;
 
  It has only one plural form so singular or multiple quantity will be same for translated text.
  
- Polish (pl)

  Plural-Forms: nplurals=3; plural=n==1 ? 0 : n%10>=2 && n%10<=4 && (n%100<10 || n%100>=20) ? 1 : 2;

  It means language have 3 forms:

  * the first form is used for the quantity 1 (1 dom)
  * the second is used for numbers ending in 2, 3 or 4 except such ending in 12, 13 and 14, like (2 domy, 23 domy, 1464 domy)
  * the third form is used for everything else (5 domów, 11 domów, 214 domów, 1235 domów, 8567 domów)
  
- Portuguese (pt)

  Plural-Forms: nplurals=2; plural=n != 1;

  It has two plural forms similar to English so its straightforward, use plural for everything except 1.
  
- Russian (ru)

  Plural-Forms: nplurals=3; plural=n%10==1 && n%100!=11 ? 0 : n%10>=2 && n%10<=4 && (n%100<10 || n%100>=20) ? 1 : 2;

  It means language have 3 forms:

  * the first form is used for the quantity 1 (1 дом)
  * the second is used for numbers ending in 2, 3 or 4 except such ending in 12, 13 and 14, like (2 дома, 23 дома, 1464 дома)
  * the third form is used for everything else (5 домов, 11 домов, 214 домов, 1235 домов, 8567 домов)
  
- Thai (th)

  Plural-Forms: nplurals=1; plural=0;

  It has only one plural form so singular or multiple quantity will be same for translated text.
  
- Vietnamese (vi)

  Plural-Forms: nplurals=1; plural=0;

  It has only one plural form so singular or multiple quantity will be same for translated text.
  
- Chinese (zh_cn)

  Plural-Forms: nplurals=1; plural=0;

  It has only one plural form so singular or multiple quantity will be same for translated text.
  
- Chinese (Taiwan) (zh_tw)

  Plural-Forms: nplurals=1; plural=0;

  It has only one plural form so singular or multiple quantity will be same for translated text.

Reference: [Plural forms](http://docs.translatehouse.org/projects/localization-guide/en/latest/l10n/pluralforms.html)

### Correct usage of plural forms

- Arabic (ar)

  **Incorrect format**:
  
  msgid "entry spot plus %plural(%1,%d pip, %d pips)"   
  msgstr "ﺲﻋﺭ ﺎﻠﺑﺩﺀ ﺯﺎﺋﺩ %plural(%1,%d ﻦﻘﻃﺓ, %d ﻦﻗﺎﻃ)"

  **Correct format**:
  
  msgid "entry spot plus %plural(%1,%d pip, %d pips)"   
  msgstr "ﺲﻋﺭ ﺎﻠﺑﺩﺀ ﺯﺎﺋﺩ %plural(%1,%d ﻦﻘﻃﺓ, %d ﻦﻗﺎﻃ, %d ﻦﻗﺎﻃ, %d ﻦﻗﺎﻃ, %d ﻦﻗﺎﻃ, %d ﻦﻗﺎﻃ)"

  As arabic language supports 6 plural form so provide 6 input variations to plural function

  So instead of this %plural(%1,%d ﻦﻘﻃﺓ, %d ﻦﻗﺎﻃ) it should be something like this   %plural(%1,%d ﻦﻘﻃﺓ,, %d <text>, %d <text>, %d <text>, %d <text>, %d <text>)

  Note: Text is placeholder, please add translated text in that place

  Reference: http://www.unicode.org/cldr/charts/29/supplemental/language_plural_rules.html#ar

- Deutsch (de)

  **Correct format**:

  msgid "entry spot plus %plural(%1,%d pip, %d pips)"
  msgstr "Startkurs plus %plural(%1,%d Pip, %d Pips)"

  Reference:  http://www.unicode.org/cldr/charts/29/supplemental/language_plural_rules.html#de

- Español (es)

  **Correct format**:
  
  msgid "entry spot plus %plural(%1,%d pip, %d pips)"                                                                                                            
  msgstr "punto de entrada positivo %plural(%1,%d pip, %d pips)"

  Reference:  http://www.unicode.org/cldr/charts/29/supplemental/language_plural_rules.html#es

- French (fr)

  **Correct format**:
  
  msgid "entry spot plus %plural(%1,%d pip, %d pips)"
  msgstr "le point d'entrée plus %plural(%1,%d pip, %d pips)"

  French has 2 forms just like English but unlike English it uses singular for zero quantities. In English, singular is used only for the quantity 1. So, you could find for instance something like this:

  This village comprises %plural(%2,one house,%d houses).

  This must be translated as
  ce village se compose de %plural(%2,%d maison,%d maisons).

  You can't translate "one house" literally as "une maison" because that string would also if 0 is passed as the number of houses.

  Reference:  http://www.unicode.org/cldr/charts/29/supplemental/language_plural_rules.html#fr

- Indonesian (id)

  **Incorrect format**:

  msgid "Win payout if %3 after %plural(%5,%d tick,%d ticks) is higher than or equal to %6."
  msgstr "Dapatkan hasil jika %3 setelah %plural(%5,%d tick,%d ticks) lebih tinggi dari atau sama dengan %6."

  **Correct format**:
  
  msgstr "Dapatkan hasil jika %3 setelah %plural(%5,%d tick) lebih tinggi dari atau sama dengan %6."

  As language only supports one plural form so it should only provide one input to plural so it can %plural(%5,%d tick) or %plural(%5,%d ticks)

  Reference:
  http://www.unicode.org/cldr/charts/29/supplemental/language_plural_rules.html#id

- Italian (it)

  **Correct format**:
  
  msgid "entry spot minus %plural(%1,%d pip, %d pips)"
  msgstr "spot d'entrata meno %plural(%1,%d pip, %d pip)"

  Reference:  http://www.unicode.org/cldr/charts/29/supplemental/language_plural_rules.html#it
  
- Japanese (ja)

**Incorrect format**:

msgid "Win payout if %3 after %plural(%5,%d tick,%d ticks) is higher than or equal to %6."
msgstr "%3が%plural(%5,%d tick,%d ticks)後に%6より高いかまたは同じ場合に、ペイアウトをお受け取りいただけます。"

**Correct format**:

msgstr "%3が%plural(%5,%d tick)後に%6より高いかまたは同じ場合に、ペイアウトをお受け取りいただけます。"

As language only supports one plural form so it should only provide one input to plural so it can %plural(%5,%d tick) or %plural(%5,%d ticks)

Reference:
http://www.unicode.org/cldr/charts/29/supplemental/language_plural_rules.html#ja
  
- Polish (pl)

  **Incorrect format**:
  
  msgid "Win payout if %3 after %plural(%5,%d tick,%d ticks) is higher than or equal to %6."
  msgstr "Wypłata nastąpi pod warunkiem, że %3 po %plural(%5,%d najmniejsza zmiana ceny,%d najmniejsze zmiany ceny) jest wyższy lub równy %6."

  **Correct format**:
  
  msgstr "Wypłata nastąpi pod warunkiem, że %3 po %plural(%5,%d najmniejsza zmiana ceny,%d najmniejsze zmiany ceny, %d najmniejsze zmiany ceny) jest wyższy lub równy %6."

  As language only supports three plural form so it should only provide three input to plural so it can %plural(%5,%d najmniejsza, %d najmniejsza, %d najmniejsza)

  Reference:
  http://www.unicode.org/cldr/charts/29/supplemental/language_plural_rules.html#pl
  
- Portuguese (pt)

  **Correct format**:
  
  msgid "entry spot plus %plural(%1,%d pip, %d pips)"
  msgstr "preço inicial mais %plural(%1,%d pip, %d pips)"

  Reference:  http://www.unicode.org/cldr/charts/29/supplemental/language_plural_rules.html#pt

- Russian (ru)

  **Incorrect format**:

  msgid "Win payout if %3 after %plural(%5,%d tick,%d ticks) is higher than or equal to %6."
  msgstr "Получить выплату, если %3 после %plural(%5,%d тика,%d тиков) будет выше или равно %6."

  **Correct format**:

  msgstr "Получить выплату, если %3 после %plural(%5,%d тика,%d тиков, %d тиков) будет выше или равно %6."

  Note: Text is placeholder, please add translated text in that place

  As language only supports three plural form so it should only provide three input to plural so it can %plural(%5,%d тика, %d тиков, %d тиков)

  In this case both second and third words are same by chance but certain words will have different grammatical form

  Reference:
  http://www.unicode.org/cldr/charts/29/supplemental/language_plural_rules.html#ru
  
- Thai (th)

  **Incorrect format**:

  msgid "Win payout if %3 after %plural(%5,%d tick,%d ticks) is higher than or equal to %6."
  msgstr "ได้รับชำระเงิน หาก %3 หลังจาก %plural(%5,%d ช่วงราคา,%d ช่วงราคา) อยู่สูงกว่า หรือเท่ากับ %6"

  **Correct format**:

  msgstr "ได้รับชำระเงิน หาก %3 หลังจาก %plural(%5,%d ช่วงราคา) อยู่สูงกว่า หรือเท่ากับ %6"

  As language only supports one plural form so it should only provide one input to plural so it can %plural(%5,%d ช่วงราคา) or %plural(%5,%d ช่วงราคา)

  Reference:
  http://www.unicode.org/cldr/charts/29/supplemental/language_plural_rules.html#th
  
- Vietnamese (vi)

  **Incorrect format**:

  msgid "Win payout if %3 after %plural(%5,%d tick,%d ticks) is higher than or equal to %6."
  msgstr "Thắng thanh toán nếu %3 sau %plural(%5,%d đánh dấu,%d đánh dấu) cao hơn hoặc bằng với %6."

  **Correct format**:

  msgstr "Thắng thanh toán nếu %3 sau %plural(%5,%d đánh dấu) cao hơn hoặc bằng với %6."

  As language only supports one plural form so it should only provide one input to plural so it can %plural(%5,%d đánh dấu)

  Reference:
  http://www.unicode.org/cldr/charts/29/supplemental/language_plural_rules.html#vi

- Chinese (zh_cn)

  **Incorrect format**:

  msgid "Win payout if %3 after %plural(%5,%d tick,%d ticks) is higher than or equal to %6."
  msgstr "如果%3在%plural(%5,%d 跳动点,%d 跳动点) 之后高于或等于%6，将获得赔付额。"

  **Correct format**:

  msgstr "如果%3在%plural(%5,%d 跳动点) 之后高于或等于%6，将获得赔付额。"

  As language only supports one plural form so it should only provide one input to plural so it can %plural(%5,%d 跳动点)

  Reference:
  http://www.unicode.org/cldr/charts/29/supplemental/language_plural_rules.html#zh

- Chinese (Taiwan) (zh_tw)

  **Incorrect format**:

  msgid "Win payout if %3 after %plural(%5,%d tick,%d ticks) is higher than or equal to %6."
  msgstr "如果%3在%plural(%5,%d 跳動點,%d 跳動點)之後高於或等於%6，將獲得賠付額。"

  **Correct format**:

  msgstr "如果%3在%plural(%5,%d 跳動點)之後高於或等於%6，將獲得賠付額。"

  As language only supports one plural form so it should only provide one input to plural so it can %plural(%5,%d 跳動點)

  Reference:
  http://www.unicode.org/cldr/charts/29/supplemental/language_plural_rules.html#zh
