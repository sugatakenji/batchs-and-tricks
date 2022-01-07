Public sub getWeather()	
	Dim xmlhttp, myurl, xmlreponse
	myurl = "https://api.openweathermap.org/data/2.5/weather?mode=xml&q=santo%20andre&appid=7539386dc98a7cfbd8ef4a83969c58ef"
	set xmlhttp = CreateObject("MSXML2.ServerXMLHTTP")
	set xmlreponse = CreateObject("MSXML2.Domdocument")
	xmlhttp.Open "Get", myurl, False
	xmlhttp.Send
	xmlreponse.LoadXML(xmlhttp.responseText)
    MsgBox xmlresponse.getElementsByTagName("temperature")
End sub

getWeather()
