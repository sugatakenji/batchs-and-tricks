Public sub getWeather()	
	Dim xmlhttp, myurl, xmlresponse
	myurl = "https://api.openweathermap.org/data/2.5/weather?mode=xml&q=santo%20andre&appid=7539386dc98a7cfbd8ef4a83969c58ef"
	set xmlhttp = CreateObject("MSXML2.ServerXMLHTTP")
	set xmlresponse = CreateObject("MSXML2.Domdocument.6.0")
	xmlhttp.Open "Get", myurl, False
	xmlhttp.Send
	xmlresponse.LoadXML(xmlhttp.responseText)
    MsgBox MsgBox (xmlresponse.getElementsByTagName("temperature")(0).Attributes(1).Text)
End sub

getWeather()
