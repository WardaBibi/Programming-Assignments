(: William Thing (1266987)
   CSE 414
   Homework 5
:)

(: Problem 6. :)

<html>
	<head>
		<title>Rivers</title>
	</head>
	<body>
		<h1>Crossing rivers:</h1>
		<ul>
		{
		for $r in doc("mondial.xml")/mondial//river
		let $c := doc("mondial.xml")/mondial//country
		let $crossed := fn:tokenize($r/@country, " ")	
		where count ($crossed) >= 2
		order by count($crossed) descending
		return
			<li>
				<div>{$r/name/text()}</div>
				<ol>
				{ 
					for $cr in $crossed
					return 
						<li>{$c[@car_code = $cr]/name/text()}</li>
						
				}
				</ol>
			</li>
		}

		</ul>
	</body>
</html>

(: Results
<?xml version="1.0" encoding="UTF-8"?>
<html>
  <head>
    <title>Rivers</title>
  </head>
  <body>
    <h1>Crossing rivers:</h1>
    <ul>
      <li>
        <div>Donau</div>
        <ol>
          <li>Serbia</li>
          <li>Austria</li>
          <li>Germany</li>
          <li>Hungary</li>
          <li>Croatia</li>
          <li>Slovakia</li>
          <li>Bulgaria</li>
          <li>Romania</li>
          <li>Moldova</li>
          <li>Ukraine</li>
        </ol>
      </li>
      <li>
        <div>Rhein</div>
        <ol>
          <li>Germany</li>
          <li>Switzerland</li>
          <li>Liechtenstein</li>
          <li>Austria</li>
          <li>France</li>
          <li>Netherlands</li>
        </ol>
      </li>
      <li>
        <div>Drau</div>
        <ol>
          <li>Italy</li>
          <li>Austria</li>
          <li>Slovenia</li>
          <li>Croatia</li>
          <li>Hungary</li>
        </ol>
      </li>
      <li>
        <div>Jordan</div>
        <ol>
          <li>Israel</li>
          <li>West Bank</li>
          <li>Jordan</li>
          <li>Syria</li>
          <li>Lebanon</li>
        </ol>
      </li>
      <li>
        <div>Mekong</div>
        <ol>
          <li>China</li>
          <li>Laos</li>
          <li>Thailand</li>
          <li>Cambodia</li>
          <li>Vietnam</li>
        </ol>
      </li>
      <li>
        <div>Mur</div>
        <ol>
          <li>Austria</li>
          <li>Hungary</li>
          <li>Slovenia</li>
          <li>Croatia</li>
        </ol>
      </li>
      <li>
        <div>Save</div>
        <ol>
          <li>Slovenia</li>
          <li>Croatia</li>
          <li>Bosnia and Herzegovina</li>
          <li>Serbia</li>
        </ol>
      </li>
      <li>
        <div>Amudarja</div>
        <ol>
          <li>Tajikistan</li>
          <li>Afghanistan</li>
          <li>Turkmenistan</li>
          <li>Uzbekistan</li>
        </ol>
      </li>
      <li>
        <div>Paraguay</div>
        <ol>
          <li>Argentina</li>
          <li>Brazil</li>
          <li>Paraguay</li>
          <li>Bolivia</li>
        </ol>
      </li>
      <li>
        <div>Senegal</div>
        <ol>
          <li>Mali</li>
          <li>Mauritania</li>
          <li>Senegal</li>
          <li>Guinea</li>
        </ol>
      </li>
      <li>
        <div>Niger</div>
        <ol>
          <li>Mali</li>
          <li>Niger</li>
          <li>Nigeria</li>
          <li>Guinea</li>
        </ol>
      </li>
      <li>
        <div>Zambezi</div>
        <ol>
          <li>Angola</li>
          <li>Zambia</li>
          <li>Zimbabwe</li>
          <li>Mozambique</li>
        </ol>
      </li>
      <li>
        <div>Limpopo</div>
        <ol>
          <li>South Africa</li>
          <li>Mozambique</li>
          <li>Zimbabwe</li>
          <li>Botswana</li>
        </ol>
      </li>
      <li>
        <div>Paatsjoki</div>
        <ol>
          <li>Finland</li>
          <li>Norway</li>
          <li>Russia</li>
        </ol>
      </li>
      <li>
        <div>Maas</div>
        <ol>
          <li>Netherlands</li>
          <li>Belgium</li>
          <li>France</li>
        </ol>
      </li>
      <li>
        <div>Inn</div>
        <ol>
          <li>Switzerland</li>
          <li>Austria</li>
          <li>Germany</li>
        </ol>
      </li>
      <li>
        <div>March</div>
        <ol>
          <li>Czech Republic</li>
          <li>Slovakia</li>
          <li>Austria</li>
        </ol>
      </li>
      <li>
        <div>Theiss</div>
        <ol>
          <li>Hungary</li>
          <li>Ukraine</li>
          <li>Serbia</li>
        </ol>
      </li>
      <li>
        <div>Southern Morava</div>
        <ol>
          <li>Serbia</li>
          <li>Kosovo</li>
          <li>Macedonia</li>
        </ol>
      </li>
      <li>
        <div>Pruth</div>
        <ol>
          <li>Romania</li>
          <li>Moldova</li>
          <li>Ukraine</li>
        </ol>
      </li>
      <li>
        <div>Mosel</div>
        <ol>
          <li>Germany</li>
          <li>Luxembourg</li>
          <li>France</li>
        </ol>
      </li>
      <li>
        <div>Oder</div>
        <ol>
          <li>Germany</li>
          <li>Poland</li>
          <li>Czech Republic</li>
        </ol>
      </li>
      <li>
        <div>Kura</div>
        <ol>
          <li>Turkey</li>
          <li>Georgia</li>
          <li>Azerbaijan</li>
        </ol>
      </li>
      <li>
        <div>Tigris</div>
        <ol>
          <li>Turkey</li>
          <li>Syria</li>
          <li>Iraq</li>
        </ol>
      </li>
      <li>
        <div>Euphrat</div>
        <ol>
          <li>Turkey</li>
          <li>Syria</li>
          <li>Iraq</li>
        </ol>
      </li>
      <li>
        <div>Western Dwina</div>
        <ol>
          <li>Belarus</li>
          <li>Latvia</li>
          <li>Russia</li>
        </ol>
      </li>
      <li>
        <div>Dnepr</div>
        <ol>
          <li>Belarus</li>
          <li>Ukraine</li>
          <li>Russia</li>
        </ol>
      </li>
      <li>
        <div>Irtysch</div>
        <ol>
          <li>Russia</li>
          <li>Kazakstan</li>
          <li>China</li>
        </ol>
      </li>
      <li>
        <div>Syrdarja</div>
        <ol>
          <li>Kazakstan</li>
          <li>Uzbekistan</li>
          <li>Tajikistan</li>
        </ol>
      </li>
      <li>
        <div>Brahmaputra</div>
        <ol>
          <li>China</li>
          <li>India</li>
          <li>Bangladesh</li>
        </ol>
      </li>
      <li>
        <div>Indus</div>
        <ol>
          <li>Pakistan</li>
          <li>India</li>
          <li>China</li>
        </ol>
      </li>
      <li>
        <div>Amazonas</div>
        <ol>
          <li>Colombia</li>
          <li>Brazil</li>
          <li>Peru</li>
        </ol>
      </li>
      <li>
        <div>Parana</div>
        <ol>
          <li>Argentina</li>
          <li>Brazil</li>
          <li>Paraguay</li>
        </ol>
      </li>
      <li>
        <div>Uruguay</div>
        <ol>
          <li>Brazil</li>
          <li>Uruguay</li>
          <li>Argentina</li>
        </ol>
      </li>
      <li>
        <div>Gambia</div>
        <ol>
          <li>Guinea</li>
          <li>Gambia</li>
          <li>Senegal</li>
        </ol>
      </li>
      <li>
        <div>Schari</div>
        <ol>
          <li>Chad</li>
          <li>Cameroon</li>
          <li>Central African Republic</li>
        </ol>
      </li>
      <li>
        <div>Sanga</div>
        <ol>
          <li>Cameroon</li>
          <li>Central African Republic</li>
          <li>Congo</li>
        </ol>
      </li>
      <li>
        <div>Ubangi</div>
        <ol>
          <li>Zaire</li>
          <li>Central African Republic</li>
          <li>Congo</li>
        </ol>
      </li>
      <li>
        <div>Ruzizi</div>
        <ol>
          <li>Zaire</li>
          <li>Rwanda</li>
          <li>Burundi</li>
        </ol>
      </li>
      <li>
        <div>Oranje</div>
        <ol>
          <li>Lesotho</li>
          <li>Namibia</li>
          <li>South Africa</li>
        </ol>
      </li>
      <li>
        <div>Klaraelv</div>
        <ol>
          <li>Norway</li>
          <li>Sweden</li>
        </ol>
      </li>
      <li>
        <div>Vuoksi</div>
        <ol>
          <li>Finland</li>
          <li>Russia</li>
        </ol>
      </li>
      <li>
        <div>Garonne</div>
        <ol>
          <li>France</li>
          <li>Spain</li>
        </ol>
      </li>
      <li>
        <div>Rhone</div>
        <ol>
          <li>France</li>
          <li>Switzerland</li>
        </ol>
      </li>
      <li>
        <div>Doubs</div>
        <ol>
          <li>France</li>
          <li>Switzerland</li>
        </ol>
      </li>
      <li>
        <div>Tajo</div>
        <ol>
          <li>Spain</li>
          <li>Portugal</li>
        </ol>
      </li>
      <li>
        <div>Douro</div>
        <ol>
          <li>Spain</li>
          <li>Portugal</li>
        </ol>
      </li>
      <li>
        <div>Guadiana</div>
        <ol>
          <li>Spain</li>
          <li>Portugal</li>
        </ol>
      </li>
      <li>
        <div>Ticino</div>
        <ol>
          <li>Switzerland</li>
          <li>Italy</li>
        </ol>
      </li>
      <li>
        <div>Iller</div>
        <ol>
          <li>Germany</li>
          <li>Austria</li>
        </ol>
      </li>
      <li>
        <div>Lech</div>
        <ol>
          <li>Germany</li>
          <li>Austria</li>
        </ol>
      </li>
      <li>
        <div>Isar</div>
        <ol>
          <li>Germany</li>
          <li>Austria</li>
        </ol>
      </li>
      <li>
        <div>Salzach</div>
        <ol>
          <li>Austria</li>
          <li>Germany</li>
        </ol>
      </li>
      <li>
        <div>Raab</div>
        <ol>
          <li>Austria</li>
          <li>Hungary</li>
        </ol>
      </li>
      <li>
        <div>Dnjestr</div>
        <ol>
          <li>Ukraine</li>
          <li>Moldova</li>
        </ol>
      </li>
      <li>
        <div>Elbe</div>
        <ol>
          <li>Germany</li>
          <li>Czech Republic</li>
        </ol>
      </li>
      <li>
        <div>Saar</div>
        <ol>
          <li>Germany</li>
          <li>France</li>
        </ol>
      </li>
      <li>
        <div>White Drin</div>
        <ol>
          <li>Albania</li>
          <li>Kosovo</li>
        </ol>
      </li>
      <li>
        <div>Black Drin</div>
        <ol>
          <li>Albania</li>
          <li>Macedonia</li>
        </ol>
      </li>
      <li>
        <div>Schatt al Arab</div>
        <ol>
          <li>Iraq</li>
          <li>Iran</li>
        </ol>
      </li>
      <li>
        <div>Narva</div>
        <ol>
          <li>Russia</li>
          <li>Estonia</li>
        </ol>
      </li>
      <li>
        <div>Ural</div>
        <ol>
          <li>Russia</li>
          <li>Kazakstan</li>
        </ol>
      </li>
      <li>
        <div>Tobol</div>
        <ol>
          <li>Russia</li>
          <li>Kazakstan</li>
        </ol>
      </li>
      <li>
        <div>Ischim</div>
        <ol>
          <li>Russia</li>
          <li>Kazakstan</li>
        </ol>
      </li>
      <li>
        <div>Amur</div>
        <ol>
          <li>Russia</li>
          <li>China</li>
        </ol>
      </li>
      <li>
        <div>Argun</div>
        <ol>
          <li>Russia</li>
          <li>China</li>
        </ol>
      </li>
      <li>
        <div>Naryn</div>
        <ol>
          <li>Uzbekistan</li>
          <li>Kyrgyzstan</li>
        </ol>
      </li>
      <li>
        <div>Pjandsh</div>
        <ol>
          <li>Afghanistan</li>
          <li>Tajikistan</li>
        </ol>
      </li>
      <li>
        <div>Saluen</div>
        <ol>
          <li>Myanmar</li>
          <li>China</li>
        </ol>
      </li>
      <li>
        <div>Irawaddy</div>
        <ol>
          <li>Myanmar</li>
          <li>China</li>
        </ol>
      </li>
      <li>
        <div>Ganges</div>
        <ol>
          <li>India</li>
          <li>Bangladesh</li>
        </ol>
      </li>
      <li>
        <div>Yukon River</div>
        <ol>
          <li>Canada</li>
          <li>United States</li>
        </ol>
      </li>
      <li>
        <div>Saint Lawrence River</div>
        <ol>
          <li>Canada</li>
          <li>United States</li>
        </ol>
      </li>
      <li>
        <div>Niagara River</div>
        <ol>
          <li>Canada</li>
          <li>United States</li>
        </ol>
      </li>
      <li>
        <div>Detroit River</div>
        <ol>
          <li>Canada</li>
          <li>United States</li>
        </ol>
      </li>
      <li>
        <div>Columbia River</div>
        <ol>
          <li>Canada</li>
          <li>United States</li>
        </ol>
      </li>
      <li>
        <div>Colorado</div>
        <ol>
          <li>Mexico</li>
          <li>United States</li>
        </ol>
      </li>
      <li>
        <div>Rio Grande</div>
        <ol>
          <li>Mexico</li>
          <li>United States</li>
        </ol>
      </li>
      <li>
        <div>Rio San Juan</div>
        <ol>
          <li>Nicaragua</li>
          <li>Costa Rica</li>
        </ol>
      </li>
      <li>
        <div>Orinoco</div>
        <ol>
          <li>Venezuela</li>
          <li>Colombia</li>
        </ol>
      </li>
      <li>
        <div>Rio Negro</div>
        <ol>
          <li>Brazil</li>
          <li>Colombia</li>
        </ol>
      </li>
      <li>
        <div>Rio Madeira</div>
        <ol>
          <li>Brazil</li>
          <li>Bolivia</li>
        </ol>
      </li>
      <li>
        <div>Volta</div>
        <ol>
          <li>Ghana</li>
          <li>Burkina Faso</li>
        </ol>
      </li>
      <li>
        <div>Bani</div>
        <ol>
          <li>Mali</li>
          <li>Cote dIvoire</li>
        </ol>
      </li>
      <li>
        <div>Benue</div>
        <ol>
          <li>Nigeria</li>
          <li>Cameroon</li>
        </ol>
      </li>
      <li>
        <div>Nile</div>
        <ol>
          <li>Egypt</li>
          <li>Sudan</li>
        </ol>
      </li>
      <li>
        <div>Atbara</div>
        <ol>
          <li>Sudan</li>
          <li>Ethiopia</li>
        </ol>
      </li>
      <li>
        <div>Blue Nile</div>
        <ol>
          <li>Sudan</li>
          <li>Ethiopia</li>
        </ol>
      </li>
      <li>
        <div>Sobat</div>
        <ol>
          <li>Sudan</li>
          <li>Ethiopia</li>
        </ol>
      </li>
      <li>
        <div>Bahr el-Djebel/Albert-Nil</div>
        <ol>
          <li>Sudan</li>
          <li>Uganda</li>
        </ol>
      </li>
      <li>
        <div>Semliki</div>
        <ol>
          <li>Zaire</li>
          <li>Uganda</li>
        </ol>
      </li>
      <li>
        <div>Akagera</div>
        <ol>
          <li>Tanzania</li>
          <li>Rwanda</li>
        </ol>
      </li>
      <li>
        <div>Jubba</div>
        <ol>
          <li>Ethiopia</li>
          <li>Somalia</li>
        </ol>
      </li>
      <li>
        <div>Shabelle</div>
        <ol>
          <li>Ethiopia</li>
          <li>Somalia</li>
        </ol>
      </li>
      <li>
        <div>Zaire</div>
        <ol>
          <li>Congo</li>
          <li>Zaire</li>
        </ol>
      </li>
      <li>
        <div>Bomu</div>
        <ol>
          <li>Zaire</li>
          <li>Central African Republic</li>
        </ol>
      </li>
      <li>
        <div>Kasai</div>
        <ol>
          <li>Angola</li>
          <li>Zaire</li>
        </ol>
      </li>
      <li>
        <div>Cuango</div>
        <ol>
          <li>Angola</li>
          <li>Zaire</li>
        </ol>
      </li>
      <li>
        <div>Cuilo</div>
        <ol>
          <li>Angola</li>
          <li>Zaire</li>
        </ol>
      </li>
      <li>
        <div>Luapula</div>
        <ol>
          <li>Zaire</li>
          <li>Zambia</li>
        </ol>
      </li>
      <li>
        <div>Chire</div>
        <ol>
          <li>Malawi</li>
          <li>Mozambique</li>
        </ol>
      </li>
    </ul>
  </body>
</html>
:)