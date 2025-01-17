(: William Thing (1266987)
   CSE 414
   Homework 5
:)

(: Problem 5. :)

<result>
{
	for $x in doc("mondial.xml")/mondial
	for	$c in $x/country
	let $p := $x/mountain[located/@country = ($c/@car_code)]
	let $n := count($p[height>2000])
	where $n >= 3

	return
		<country><name> {$c/name/text()} </name>
		{
		for $mt in $p
		return
			<mountains>
			<name>{$mt/name/text()}</name>
			<height>{$mt/height/text()}</height>
			</mountains>
		}
		</country>
	}
</result>

(: Results
	<result>
	  <country>
	    <name>France</name>
	    <mountains>
	      <name>Mont Blanc</name>
	      <height>4808</height>
	    </mountains>
	    <mountains>
	      <name>Barre des Ecrins</name>
	      <height>4101</height>
	    </mountains>
	    <mountains>
	      <name>Grand Ballon</name>
	      <height>1424</height>
	    </mountains>
	    <mountains>
	      <name>Puy De Dome</name>
	      <height>1465</height>
	    </mountains>
	    <mountains>
	      <name>Puy de Sancy</name>
	      <height>1885</height>
	    </mountains>
	    <mountains>
	      <name>Vignemale</name>
	      <height>3298</height>
	    </mountains>
	    <mountains>
	      <name>Monte Cinto</name>
	      <height>2706</height>
	    </mountains>
	  </country>
	  <country>
	    <name>Spain</name>
	    <mountains>
	      <name>Vignemale</name>
	      <height>3298</height>
	    </mountains>
	    <mountains>
	      <name>Pico de Aneto</name>
	      <height>3404</height>
	    </mountains>
	    <mountains>
	      <name>Torre de Cerredo</name>
	      <height>2648</height>
	    </mountains>
	    <mountains>
	      <name>Pico de Almanzor</name>
	      <height>2648</height>
	    </mountains>
	    <mountains>
	      <name>Moncayo</name>
	      <height>2313</height>
	    </mountains>
	    <mountains>
	      <name>Mulhacen</name>
	      <height>3482</height>
	    </mountains>
	    <mountains>
	      <name>Pico de Teide</name>
	      <height>3718</height>
	    </mountains>
	    <mountains>
	      <name>Pico de los Nieves</name>
	      <height>1949</height>
	    </mountains>
	    <mountains>
	      <name>Roque de los Muchachos</name>
	      <height>2426</height>
	    </mountains>
	  </country>
	  <country>
	    <name>Austria</name>
	    <mountains>
	      <name>Zugspitze</name>
	      <height>2963</height>
	    </mountains>
	    <mountains>
	      <name>Grossglockner</name>
	      <height>3797</height>
	    </mountains>
	    <mountains>
	      <name>Hochgolling</name>
	      <height>2862</height>
	    </mountains>
	  </country>
	  <country>
	    <name>Italy</name>
	    <mountains>
	      <name>Mont Blanc</name>
	      <height>4808</height>
	    </mountains>
	    <mountains>
	      <name>Matterhorn</name>
	      <height>4478</height>
	    </mountains>
	    <mountains>
	      <name>Monte Rosa</name>
	      <height>4634</height>
	    </mountains>
	    <mountains>
	      <name>GranParadiso</name>
	      <height>4061</height>
	    </mountains>
	    <mountains>
	      <name>Piz Bernina</name>
	      <height>4048</height>
	    </mountains>
	    <mountains>
	      <name>Marmolata</name>
	      <height>3343</height>
	    </mountains>
	    <mountains>
	      <name>Gran Sasso</name>
	      <height>2912</height>
	    </mountains>
	    <mountains>
	      <name>Monte Falterona</name>
	      <height>1654</height>
	    </mountains>
	    <mountains>
	      <name>Vesuv</name>
	      <height>1281</height>
	    </mountains>
	    <mountains>
	      <name>Etna</name>
	      <height>3323</height>
	    </mountains>
	  </country>
	  <country>
	    <name>Switzerland</name>
	    <mountains>
	      <name>GrandCombin</name>
	      <height>4314</height>
	    </mountains>
	    <mountains>
	      <name>Matterhorn</name>
	      <height>4478</height>
	    </mountains>
	    <mountains>
	      <name>Monte Rosa</name>
	      <height>4634</height>
	    </mountains>
	    <mountains>
	      <name>Finsteraarhorn</name>
	      <height>4274</height>
	    </mountains>
	    <mountains>
	      <name>Piz Bernina</name>
	      <height>4048</height>
	    </mountains>
	    <mountains>
	      <name>Crap_Sogn_Gion</name>
	      <height>2228</height>
	    </mountains>
	  </country>
	  <country>
	    <name>Russia</name>
	    <mountains>
	      <name>Narodnaja</name>
	      <height>1895</height>
	    </mountains>
	    <mountains>
	      <name>Elbrus</name>
	      <height>5642</height>
	    </mountains>
	    <mountains>
	      <name>Kasbek</name>
	      <height>5033</height>
	    </mountains>
	    <mountains>
	      <name>Zhima</name>
	      <height>1276</height>
	    </mountains>
	    <mountains>
	      <name>Bjelucha</name>
	      <height>4506</height>
	    </mountains>
	    <mountains>
	      <name>Kljutschewskaja Sopka</name>
	      <height>4750</height>
	    </mountains>
	  </country>
	  <country>
	    <name>Norway</name>
	    <mountains>
	      <name>Sulitjelma</name>
	      <height>1914</height>
	    </mountains>
	    <mountains>
	      <name>Galdhoeppig</name>
	      <height>2469</height>
	    </mountains>
	    <mountains>
	      <name>Jostedalsbre</name>
	      <height>2083</height>
	    </mountains>
	    <mountains>
	      <name>Glittertind</name>
	      <height>2452</height>
	    </mountains>
	    <mountains>
	      <name>Joekul</name>
	      <height>1876</height>
	    </mountains>
	    <mountains>
	      <name>Snoehetta</name>
	      <height>2286</height>
	    </mountains>
	  </country>
	  <country>
	    <name>Sweden</name>
	    <mountains>
	      <name>Kebnekaise</name>
	      <height>2114</height>
	    </mountains>
	    <mountains>
	      <name>Sarektjokko</name>
	      <height>2090</height>
	    </mountains>
	    <mountains>
	      <name>Portefjaellen</name>
	      <height>2021</height>
	    </mountains>
	    <mountains>
	      <name>Tarrekaise</name>
	      <height>1850</height>
	    </mountains>
	    <mountains>
	      <name>Sulitjelma</name>
	      <height>1914</height>
	    </mountains>
	  </country>
	  <country>
	    <name>China</name>
	    <mountains>
	      <name>Pik Pobeda</name>
	      <height>7439</height>
	    </mountains>
	    <mountains>
	      <name>K2</name>
	      <height>8611</height>
	    </mountains>
	    <mountains>
	      <name>Gasherbrum II</name>
	      <height>8034</height>
	    </mountains>
	    <mountains>
	      <name>Gasherbrum I</name>
	      <height>8080</height>
	    </mountains>
	    <mountains>
	      <name>Broad Peak</name>
	      <height>8051</height>
	    </mountains>
	    <mountains>
	      <name>Shishapangma</name>
	      <height>8027</height>
	    </mountains>
	    <mountains>
	      <name>Kailash</name>
	      <height>6714</height>
	    </mountains>
	    <mountains>
	      <name>Cho Oyu</name>
	      <height>8188</height>
	    </mountains>
	    <mountains>
	      <name>Mount Everest</name>
	      <height>8848</height>
	    </mountains>
	    <mountains>
	      <name>Lhotse</name>
	      <height>8516</height>
	    </mountains>
	    <mountains>
	      <name>Makalu</name>
	      <height>8485</height>
	    </mountains>
	    <mountains>
	      <name>Changbai Shan</name>
	      <height>2744</height>
	    </mountains>
	  </country>
	  <country>
	    <name>Iran</name>
	    <mountains>
	      <name>Damavand</name>
	      <height>5610</height>
	    </mountains>
	    <mountains>
	      <name>Sabalan</name>
	      <height>4811</height>
	    </mountains>
	    <mountains>
	      <name>Zard Kuh</name>
	      <height>4550</height>
	    </mountains>
	  </country>
	  <country>
	    <name>Tajikistan</name>
	    <mountains>
	      <name>Pik Kommunizma</name>
	      <height>7494</height>
	    </mountains>
	    <mountains>
	      <name>Pik Lenina</name>
	      <height>7134</height>
	    </mountains>
	    <mountains>
	      <name>Pik Revoluzija</name>
	      <height>6974</height>
	    </mountains>
	    <mountains>
	      <name>Pik Moskva</name>
	      <height>6785</height>
	    </mountains>
	    <mountains>
	      <name>Pik Karl-Marx</name>
	      <height>6726</height>
	    </mountains>
	  </country>
	  <country>
	    <name>India</name>
	    <mountains>
	      <name>Dodabetta</name>
	      <height>2636</height>
	    </mountains>
	    <mountains>
	      <name>Nanda Devi</name>
	      <height>7816</height>
	    </mountains>
	    <mountains>
	      <name>Kangchendzonga</name>
	      <height>8586</height>
	    </mountains>
	  </country>
	  <country>
	    <name>Japan</name>
	    <mountains>
	      <name>Asahi-Dake</name>
	      <height>2290</height>
	    </mountains>
	    <mountains>
	      <name>Fujisan</name>
	      <height>3776</height>
	    </mountains>
	    <mountains>
	      <name>Hotaka-Dake</name>
	      <height>3190</height>
	    </mountains>
	  </country>
	  <country>
	    <name>Mexico</name>
	    <mountains>
	      <name>Citlaltepetl (Pico de Orizaba)</name>
	      <height>5700</height>
	    </mountains>
	    <mountains>
	      <name>Popocatepetl</name>
	      <height>5450</height>
	    </mountains>
	    <mountains>
	      <name>Iztaccihuatl</name>
	      <height>5286</height>
	    </mountains>
	    <mountains>
	      <name>Nevado de Toluca</name>
	      <height>4558</height>
	    </mountains>
	    <mountains>
	      <name>Nevado de Colima</name>
	      <height>4330</height>
	    </mountains>
	  </country>
	  <country>
	    <name>Canada</name>
	    <mountains>
	      <name>Mt Bona</name>
	      <height>5005</height>
	    </mountains>
	    <mountains>
	      <name>Mt St.Elias</name>
	      <height>5489</height>
	    </mountains>
	    <mountains>
	      <name>Mt Logan</name>
	      <height>5959</height>
	    </mountains>
	    <mountains>
	      <name>Mt Fairweather</name>
	      <height>4663</height>
	    </mountains>
	    <mountains>
	      <name>Mt Waddington</name>
	      <height>4019</height>
	    </mountains>
	    <mountains>
	      <name>Mt Robson</name>
	      <height>3954</height>
	    </mountains>
	    <mountains>
	      <name>Mt Columbia</name>
	      <height>3747</height>
	    </mountains>
	    <mountains>
	      <name>Barbeau Peak</name>
	      <height>2616</height>
	    </mountains>
	    <mountains>
	      <name>Mt. Odin</name>
	      <height>2147</height>
	    </mountains>
	    <mountains>
	      <name>Mt. Babel</name>
	      <height>952</height>
	    </mountains>
	  </country>
	  <country>
	    <name>United States</name>
	    <mountains>
	      <name>Mauna Kea</name>
	      <height>4214</height>
	    </mountains>
	    <mountains>
	      <name>Mauna Loa</name>
	      <height>4170</height>
	    </mountains>
	    <mountains>
	      <name>Haleakala</name>
	      <height>3055</height>
	    </mountains>
	    <mountains>
	      <name>Mt Redoubt</name>
	      <height>3108</height>
	    </mountains>
	    <mountains>
	      <name>Mt McKinley</name>
	      <height>6193</height>
	    </mountains>
	    <mountains>
	      <name>Mt Blackburn</name>
	      <height>4996</height>
	    </mountains>
	    <mountains>
	      <name>Mt Bona</name>
	      <height>5005</height>
	    </mountains>
	    <mountains>
	      <name>Mt St.Elias</name>
	      <height>5489</height>
	    </mountains>
	    <mountains>
	      <name>Mt Fairweather</name>
	      <height>4663</height>
	    </mountains>
	    <mountains>
	      <name>Granite Peak</name>
	      <height>3901</height>
	    </mountains>
	    <mountains>
	      <name>Borah Peak</name>
	      <height>3859</height>
	    </mountains>
	    <mountains>
	      <name>Harney Peak</name>
	      <height>2207</height>
	    </mountains>
	    <mountains>
	      <name>Gannett Peak</name>
	      <height>4207</height>
	    </mountains>
	    <mountains>
	      <name>Kings Peak</name>
	      <height>4123</height>
	    </mountains>
	    <mountains>
	      <name>Mt Elbert</name>
	      <height>4401</height>
	    </mountains>
	    <mountains>
	      <name>Pikes Peak</name>
	      <height>4302</height>
	    </mountains>
	    <mountains>
	      <name>Wheeler Peak</name>
	      <height>4011</height>
	    </mountains>
	    <mountains>
	      <name>Humphreys Peak</name>
	      <height>3850</height>
	    </mountains>
	    <mountains>
	      <name>Guadalupe Peak</name>
	      <height>2667</height>
	    </mountains>
	    <mountains>
	      <name>Mt Rainier</name>
	      <height>4392</height>
	    </mountains>
	    <mountains>
	      <name>Mt Adams</name>
	      <height>3743</height>
	    </mountains>
	    <mountains>
	      <name>Mt Hood</name>
	      <height>3424</height>
	    </mountains>
	    <mountains>
	      <name>Mt Whitney</name>
	      <height>4418</height>
	    </mountains>
	    <mountains>
	      <name>Boundary Peak</name>
	      <height>4006</height>
	    </mountains>
	    <mountains>
	      <name>Mt Washington</name>
	      <height>1917</height>
	    </mountains>
	    <mountains>
	      <name>Mt Marcy</name>
	      <height>1629</height>
	    </mountains>
	    <mountains>
	      <name>Mt Mitchell</name>
	      <height>2037</height>
	    </mountains>
	    <mountains>
	      <name>Clingmans Dome</name>
	      <height>2025</height>
	    </mountains>
	  </country>
	  <country>
	    <name>Colombia</name>
	    <mountains>
	      <name>Pico Cristobal Colon</name>
	      <height>5775</height>
	    </mountains>
	    <mountains>
	      <name>Nevado del Ruiz</name>
	      <height>5389</height>
	    </mountains>
	    <mountains>
	      <name>Nevado del Huila</name>
	      <height>5750</height>
	    </mountains>
	  </country>
	  <country>
	    <name>Argentina</name>
	    <mountains>
	      <name>Llullaillaco</name>
	      <height>6739</height>
	    </mountains>
	    <mountains>
	      <name>Ojos del Salado</name>
	      <height>6893</height>
	    </mountains>
	    <mountains>
	      <name>Monte Pissis</name>
	      <height>6795</height>
	    </mountains>
	    <mountains>
	      <name>Aconcagua</name>
	      <height>6962</height>
	    </mountains>
	    <mountains>
	      <name>Tupungato</name>
	      <height>6550</height>
	    </mountains>
	  </country>
	  <country>
	    <name>Peru</name>
	    <mountains>
	      <name>Huascaran</name>
	      <height>6768</height>
	    </mountains>
	    <mountains>
	      <name>Alpamayo</name>
	      <height>5947</height>
	    </mountains>
	    <mountains>
	      <name>Pico Rocarre</name>
	      <height>5187</height>
	    </mountains>
	    <mountains>
	      <name>Ausangate</name>
	      <height>6336</height>
	    </mountains>
	    <mountains>
	      <name>Coropuna</name>
	      <height>6425</height>
	    </mountains>
	    <mountains>
	      <name>Ampato</name>
	      <height>6288</height>
	    </mountains>
	  </country>
	  <country>
	    <name>Tanzania</name>
	    <mountains>
	      <name>Kilimanjaro</name>
	      <height>5895</height>
	    </mountains>
	    <mountains>
	      <name>Mawenzi</name>
	      <height>5148</height>
	    </mountains>
	    <mountains>
	      <name>Meru</name>
	      <height>4567</height>
	    </mountains>
	  </country>
	  <country>
	    <name>Madagascar</name>
	    <mountains>
	      <name>Tsaratanana</name>
	      <height>2876</height>
	    </mountains>
	    <mountains>
	      <name>Tsiafajavona</name>
	      <height>2642</height>
	    </mountains>
	    <mountains>
	      <name>Andringitra</name>
	      <height>2658</height>
	    </mountains>
	  </country>
	</result>
:)