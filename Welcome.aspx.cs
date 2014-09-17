using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net;
using System.IO;
using System.Text;
using System.Xml;
using System.Xml.Linq;

public partial class Welcome_Page : System.Web.UI.Page
{
    XDocument xdoc;
    XElement currentCondition;
    XElement[] xElements;
    XElement[] xEls;
    XElement[] xElsss;
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    private void GetWeather(string city, int numOfDays)
    {
        lblError.Text = "";
        btnChange.Text = "Change to European values";
        string url = string.Format
("http://api.worldweatheronline.com/free/v1/weather.ashx?q={0}&format=xml&num_of_days={1}&key=ca5fa4c5fca7f7d61ee60affa4b151468ca63572", city, numOfDays);

        WebClient client = new WebClient();

        XmlDocument doc = new XmlDocument();
        doc.Load(url);
        xdoc = XDocument.Load(url);

        try
        {
            currentCondition = xdoc.Descendants("current_condition").First();
        }
        catch (Exception)
        {
            
            lblError.Text = "Oops there is no such city or I couldn't find forecast for it!";
            return;
        }
        

        xElements =  currentCondition.Elements().ToArray();
        XElement chosenCity = xdoc.Descendants("query").First();
        lblCity.Text = "Current condition for " + chosenCity.Value;
        lblCity0.Text = "Forecast for tomorrow for " + chosenCity.Value;
        lblCity1.Text = "Forecast in two days for " + chosenCity.Value;
        lblObservationTime.Text = "Observation Time: " + xElements[0].Value;
        lblTemperature.Text = "Maximum Temperature: " + xElements[2].Value + "F";
        lblWindSpeed.Text = "Wind Speed: " + xElements[6].Value + "MPH";
        lblHumidity.Text = "Humidity: " + xElements[11].Value;
        lblVisibility.Text = "Visibility: " + xElements[12].Value;

        IEnumerable<XElement> dailyForecasts = from item in xdoc.Descendants("weather")
                                               select item;


        var elementsForNextDays = dailyForecasts.ToArray();
        xEls = elementsForNextDays[0].Elements().ToArray();

        lblObservationTime0.Text = "Observation Time: " + xEls[0].Value;
        lblTemperature0.Text = "Maximum Temperature: " + xEls[2].Value + "F";
        lblWindSpeed0.Text = "Wind Speed: " + xEls[5].Value + "MPH";

        var xElsss = elementsForNextDays[1].Elements().ToArray();

        lblObservationTime1.Text = "Observation Time: " + xElsss[0].Value;
        lblTemperature1.Text = "Maximum Temperature: " + xElsss[2].Value + "F";
        lblWindSpeed1.Text = "Wind Speed: " + xElsss[5].Value + "MPH";

        btnChange.Visible = true;
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        GetWeather(getWeathertxtbox.Text, 3);
    }
    protected void btnChange_Click(object sender, EventArgs e)
    {
        ChangeMeasurements(getWeathertxtbox.Text, 3);
    }

    private void ChangeMeasurements(string city, int numOfDays)
    {
        btnChange.Text = "Change to US values";
        string url = string.Format
("http://api.worldweatheronline.com/free/v1/weather.ashx?q={0}&format=xml&num_of_days={1}&key=ca5fa4c5fca7f7d61ee60affa4b151468ca63572", city, numOfDays);

        WebClient client = new WebClient();

        XmlDocument doc = new XmlDocument();
        doc.Load(url);
        xdoc = XDocument.Load(url);

        currentCondition = xdoc.Descendants("current_condition").First();

        xElements = currentCondition.Elements().ToArray();
        XElement chosenCity = xdoc.Descendants("query").First();
        lblCity.Text = "Current condition for " + chosenCity.Value;
        lblCity0.Text = "Forecast for tomorrow for " + chosenCity.Value;
        lblCity1.Text = "Forecast in two days for " + chosenCity.Value;
        lblObservationTime.Text = "Observation Time: " + xElements[0].Value;
        lblHumidity.Text = "Humidity: " + xElements[11].Value;
        lblVisibility.Text = "Visibility: " + xElements[12].Value;

        IEnumerable<XElement> dailyForecasts = from item in xdoc.Descendants("weather")
                                               select item;


        var elementsForNextDays = dailyForecasts.ToArray();
        xEls = elementsForNextDays[0].Elements().ToArray();

        lblObservationTime0.Text = "Observation Time: " + xEls[0].Value;

        var xElsss = elementsForNextDays[1].Elements().ToArray();

        lblObservationTime1.Text = "Observation Time: " + xElsss[0].Value;
        lblTemperature.Text = "Maximum Temperature: " + xElements[1].Value + "C";
        lblWindSpeed.Text = "Wind Speed: " + xElements[7].Value + "KMPH";

        lblTemperature0.Text = "Maximum Temperature: " + xEls[1].Value + "C";
        lblWindSpeed0.Text = "Wind Speed: " + xEls[6].Value + "KMPH";

        lblTemperature1.Text = "Maximum Temperature: " + xElsss[1].Value + "C";
        lblWindSpeed1.Text = "Wind Speed: " + xElsss[6].Value + "KMPH";

    }
}