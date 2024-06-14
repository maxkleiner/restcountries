REST Countries
=======

Get information about countries via a RESTful API https://restcountries.eu

[![Build Status](https://travis-ci.org/fayder/restcountries.svg?branch=master)](https://travis-ci.org/fayder/restcountries)

Donate!
---------------
The restcountries project has been acquired by apilayer, one of the leading providers of API microservices. We will keep supporting restcountries and providing it as a free solution for developers. We will finance this project fully and have turned off the donations feature.

Users
---------------
RESTCountries has over 1200 users, including:

[TTÜ]

[Spotify International Pricing Index]

[Gorillaz]

[Wanderlust]

[Xero]

[FxPro]

[SKROSS]

[onefinestay]

[Much Better Adventures]

Stay up-to-date
---------------
Follow RESTCountries on [Twitter]

Or subscribe to the [mailing list]

API Endpoints
=======

Below are described the REST endpoints available that you can use to search for countries
The Json routine goes as follow:
``` code
       jo:= TJSONObject.Create4(''+tmpstr+'}');  
       jo2:= jo.getjsonobject('translations');
        writeln('languages: '+itoa(jo2.length));
         for it:= 0 to jo2.length-1 do begin
           writeln(jo2.keys[it]+','+JSONUnescape(jo2.getstring(jo2.keys[it]),#13#10));
         end; 
```

As raw characters:

ara,{"official":"الاتحاد السويسري","common":"سويسرا"}
bre,{"official":"Kengevredad Suis","common":"Suis"}
ces,{"official":"Švýcarská konfederace","common":"Švýcarsko"}
cym,{"official":"Swiss Confederation","common":"Switzerland"}
deu,{"official":"Schweizerische Eidgenossenschaft","common":"Schweiz"}
est,{"official":"Šveitsi Konföderatsioon","common":"Šveits"}
fin,{"official":"Sveitsin valaliitto","common":"Sveitsi"}
fra,{"official":"Confédération suisse","common":"Suisse"}
hrv,{"official":"švicarska Konfederacija","common":"Švicarska"}
hun,{"official":"Svájc","common":"Svájc"}
ita,{"official":"Confederazione svizzera","common":"Svizzera"}
jpn,{"official":"スイス連邦","common":"スイス"}
nld,{"official":"Zwitserse Confederatie","common":"Zwitserland"}
per,{"official":"کنفدراسیون سوئیس","common":"سوئیس"}
pol,{"official":"Konfederacja Szwajcarska","common":"Szwajcaria"}
por,{"official":"Confederação Suíça","common":"Suíça"}

languages: 25 JSON Unescaped
ara,{"official":"Ø§Ù„Ø§ØªØ­Ø§Ø¯ Ø§Ù„Ø³ÙˆÙŠØ³Ø±ÙŠ","common":"Ø³ÙˆÙŠØ³Ø±Ø§"}
bre,{"official":"Kengevredad Suis","common":"Suis"}
ces,{"official":"Å vÃ½carskÃ¡ konfederace","common":"Å vÃ½carsko"}
cym,{"official":"Swiss Confederation","common":"Switzerland"}
deu,{"official":"Schweizerische Eidgenossenschaft","common":"Schweiz"}
est,{"official":"Å veitsi KonfÃ¶deratsioon","common":"Å veits"}
fin,{"official":"Sveitsin valaliitto","common":"Sveitsi"}
fra,{"official":"ConfÃ©dÃ©ration suisse","common":"Suisse"}
hrv,{"official":"Å¡vicarska Konfederacija","common":"Å vicarska"}
hun,{"official":"SvÃ¡jc","common":"SvÃ¡jc"}
ita,{"official":"Confederazione svizzera","common":"Svizzera"}
jpn,{"official":"ã‚¹ã‚¤ã‚¹é€£é‚¦","common":"ã‚¹ã‚¤ã‚¹"}
kor,{"official":"ìŠ¤ìœ„ìŠ¤ ì—°ë°©","common":"ìŠ¤ìœ„ìŠ¤"}
nld,{"official":"Zwitserse Confederatie","common":"Zwitserland"}
per,{"official":"Ú©Ù†ÙØ¯Ø±Ø§Ø³ÛŒÙˆÙ† Ø³ÙˆØ¦ÛŒØ³","common":"Ø³ÙˆØ¦ÛŒØ³"}
pol,{"official":"Konfederacja Szwajcarska","common":"Szwajcaria"}
por,{"official":"ConfederaÃ§Ã£o SuÃ­Ã§a","common":"SuÃ­Ã§a"}
rus,{"official":"Ð¨Ð²ÐµÐ¹Ñ†Ð°Ñ€ÑÐºÐ°Ñ ÐšÐ¾Ð½Ñ„ÐµÐ´ÐµÑ€Ð°Ñ†Ð¸Ñ","common":"Ð¨Ð²ÐµÐ¹Ñ†Ð°Ñ€Ð¸Ñ"}
slk,{"official":"Å vajÄiarska konfederÃ¡cia","common":"Å vajÄiarsko"}
spa,{"official":"ConfederaciÃ³n Suiza","common":"Suiza"}
srp,{"official":"Ð¨Ð²Ð°Ñ˜Ñ†Ð°Ñ€ÑÐºÐ° ÐšÐ¾Ð½Ñ„ÐµÐ´ÐµÑ€Ð°Ñ†Ð¸Ñ˜Ð°","common":"Ð¨Ð²Ð°Ñ˜Ñ†Ð°Ñ€ÑÐºÐ°"}
swe,{"official":"Schweiziska edsfÃ¶rbundet","common":"Schweiz"}
tur,{"official":"Ä°sviÃ§re Konfederasyonu","common":"Ä°sviÃ§re"}
urd,{"official":"Ø³ÙˆØ¦ÛŒØ³  Ù…ØªØ­Ø¯Û","common":"Ø³ÙˆÛŒÙ¹Ø°Ø±Ù„ÛŒÙ†Úˆ"}
zho,{"official":"ç‘žå£«è”é‚¦","common":"ç‘žå£«"}

All
---------------

``` html
https://restcountries.eu/rest/v2/all
```

Name
---------------

Search by country name. It can be the native name or partial name

``` javascript
https://restcountries.eu/rest/v2/name/{name}
```

``` html
https://restcountries.eu/rest/v2/name/eesti
```

``` html
https://restcountries.eu/rest/v2/name/united
```

Full Name
---------------

Search by country full name

``` javascript
https://restcountries.eu/rest/v2/name/{name}?fullText=true
```

``` html
https://restcountries.eu/rest/v2/name/aruba?fullText=true
```

Code
---------------

Search by ISO 3166-1 2-letter or 3-letter country code

``` javascript
https://restcountries.eu/rest/v2/alpha/{code}
```

``` html
https://restcountries.eu/rest/v2/alpha/co
```

``` html
https://restcountries.eu/rest/v2/alpha/col
```

List of codes
---------------

Search by list of ISO 3166-1 2-letter or 3-letter country codes

``` javascript
https://restcountries.eu/rest/v2/alpha?codes={code};{code};{code}
```

``` html
https://restcountries.eu/rest/v2/alpha?codes=col;no;ee
```

Currency
---------------

Search by ISO 4217 currency code

``` javascript
https://restcountries.eu/rest/v2/currency/{currency}
```
``` html
https://restcountries.eu/rest/v2/currency/cop
```

Language
---------------

Search by ISO 639-1 language code

``` javascript
https://restcountries.eu/rest/v2/lang/{et}
```
``` html
https://restcountries.eu/rest/v2/lang/es
```

Capital city
---------------

Search by capital city

``` javascript
https://restcountries.eu/rest/v2/capital/{capital}
```
``` html
https://restcountries.eu/rest/v2/capital/tallinn
```

Calling code
---------------

Search by calling code

``` javascript
https://restcountries.eu/rest/v2/callingcode/{callingcode}
```
``` html
https://restcountries.eu/rest/v2/callingcode/372
```

Region
---------------

Search by region: Africa, Americas, Asia, Europe, Oceania

``` javascript
https://restcountries.eu/rest/v2/region/{region}
```
``` html
https://restcountries.eu/rest/v2/region/europe
```

Regional Bloc
---------------

Search by regional bloc:

- EU (European Union)
- EFTA (European Free Trade Association)
- CARICOM (Caribbean Community)
- PA (Pacific Alliance)
- AU (African Union)
- USAN (Union of South American Nations)
- EEU (Eurasian Economic Union)
- AL (Arab League)
- ASEAN (Association of Southeast Asian Nations)
- CAIS (Central American Integration System)
- CEFTA (Central European Free Trade Agreement)
- NAFTA (North American Free Trade Agreement)
- SAARC (South Asian Association for Regional Cooperation)

``` javascript
https://restcountries.eu/rest/v2/regionalbloc/{regionalbloc}
```
``` html
https://restcountries.eu/rest/v2/regionalbloc/eu
```

Response Example
---------------

``` html
https://restcountries.eu/rest/v2/alpha/col
```

``` json
[[{
	"name": "Colombia",
	"topLevelDomain": [".co"],
	"alpha2Code": "CO",
	"alpha3Code": "COL",
	"callingCodes": ["57"],
	"capital": "Bogotá",
	"altSpellings": ["CO", "Republic of Colombia", "República de Colombia"],
	"region": "Americas",
	"subregion": "South America",
	"population": 48759958,
	"latlng": [4.0, -72.0],
	"demonym": "Colombian",
	"area": 1141748.0,
	"gini": 55.9,
	"timezones": ["UTC-05:00"],
	"borders": ["BRA", "ECU", "PAN", "PER", "VEN"],
	"nativeName": "Colombia",
	"numericCode": "170",
	"currencies": [{
		"code": "COP",
		"name": "Colombian peso",
		"symbol": "$"
	}],
	"languages": [{
		"iso639_1": "es",
		"iso639_2": "spa",
		"name": "Spanish",
		"nativeName": "Español"
	}],
	"translations": {
		"de": "Kolumbien",
		"es": "Colombia",
		"fr": "Colombie",
		"ja": "コロンビア",
		"it": "Colombia",
		"br": "Colômbia",
		"pt": "Colômbia"
	},
	"flag": "https://restcountries.eu/data/col.svg",
	"regionalBlocs": [{
		"acronym": "PA",
		"name": "Pacific Alliance",
		"otherAcronyms": [],
		"otherNames": ["Alianza del Pacífico"]
	}, {
		"acronym": "USAN",
		"name": "Union of South American Nations",
		"otherAcronyms": ["UNASUR", "UNASUL", "UZAN"],
		"otherNames": ["Unión de Naciones Suramericanas", "União de Nações Sul-Americanas", "Unie van Zuid-Amerikaanse Naties", "South American Union"]
	}]
}]
```

Filter Response
=======

You can filter the output of your request to include only the specified fields.

``` javascript
https://restcountries.eu/rest/v2/{service}?fields={field};{field};{field}
```
``` html
https://restcountries.eu/rest/v2/all?fields=name;capital;currencies
```

Sources
=======
* [@mledoze]
* [List of countries]
* [Languages]
* [Currencies]
* [Area]

Similar projects
=======
* [Countries of the world]
* [REST Countries Node.js]
* [REST Countries Ruby]
* [REST Countries Go]
* [REST Countries Python]
* [world-currencies]
* [REST Countries C#](https://github.com/egbakou/RESTCountries.NET)

License
=======
[Mozilla Public License] MPL 2.0

[dist]: https://github.com/fayder/restcountries/
[Twitter]: https://twitter.com/restcountries
[mailing list]: http://eepurl.com/cC-h2v
[Donate]: https://www.paypal.com/cgi-bin/webscr?cmd=_s-xclick&hosted_button_id=V5AJAEMKE6A3E
[@mledoze]: https://github.com/mledoze/countries
[List of countries]: https://en.wikipedia.org/wiki/ISO_3166-1#Current_codes
[Languages]: https://en.wikipedia.org/wiki/List_of_ISO_639-1_codes
[Currencies]: https://en.wikipedia.org/wiki/List_of_circulating_currencies
[Area]: https://en.wikipedia.org/wiki/List_of_countries_and_dependencies_by_area
[Population]: https://en.wikipedia.org/wiki/List_of_countries_by_population
[Gini coefficient]: http://en.wikipedia.org/wiki/List_of_countries_by_income_equality
[Mozilla Public License]: https://www.mozilla.org/en-US/MPL/2.0/
[world-currencies]: https://github.com/wiredmax/world-currencies
[REST Countries Node.js]: https://github.com/aredo/restcountries
[REST Countries Ruby]: https://github.com/davidesantangelo/restcountry
[REST Countries Go]: https://github.com/alediaferia/gocountries
[REST Countries Python]: https://github.com/SteinRobert/python-restcountries
[Countries of the world]: http://countries.petethompson.net
[TTÜ]: https://www.ttu.ee/studying/tut_admission/programmes-in-tut/ask-us/
[Spotify International Pricing Index]: http://mts.io/2014/05/07/spotify-pricing-index/
[Gorillaz]: http://www.gorillaz.com/
[Wanderlust]: https://wanderlust.com/
[Xero]: https://www.xero.com/
[FxPro]: http://www.fxpro.com/
[onefinestay]: https://www.onefinestay.com/
[Much Better Adventures]: https://www.muchbetteradventures.com
[SKROSS]: http://www.skross.com/en
