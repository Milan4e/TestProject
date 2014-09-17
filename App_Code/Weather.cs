using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for Weather
/// </summary>
public class Weather
{
    public DateTime Date { get; set; }
    public int TempMaxC { get; set; }
    public int TempMaxF { get; set; }
    public int TempMinC { get; set; }
    public int TempMinF { get; set; }
    public int WindSpeedMiles { get; set; }
    public int WindSpeedKmph { get; set; }
    public string City { get; set; }
    public string Mph { get; set; }
    public string Kph { get; set; } 

	public Weather()
	{

	}
}