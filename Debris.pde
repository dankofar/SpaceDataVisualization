class Debris {
  int number, item ;
  String name, launchDate, epochDate, epochTime, country, purpose, status;
  float sma, eccentricity, inclination, raan, perigee, true_anomaly, period, perigee_altitude, apogee_altitude, x, y ; 




  public Debris( int number, String name, int item, String launchDate, String epochDate, String epochTime, float sma, float eccentricity, float inclination, float raan, float perigee, float true_anomaly, float period, float perigee_altitude, float apogee_altitude, String country, String purpose, String  status   ) {
    this.x = 0 ; 
    this.y = 0 ;
    this.number = number;
    this.name = name;
    this.item = item;
    this.launchDate = launchDate;
    this.epochDate = epochDate;
    this.epochTime = epochTime;
    this.sma = sma;
    this.eccentricity = eccentricity;
    this.inclination = inclination;
    this.raan = raan;
    this.perigee = perigee;
    this.true_anomaly = true_anomaly;
    this.period = period;
    this.perigee_altitude = perigee_altitude;
    this.apogee_altitude = apogee_altitude;
    this.country = country;
    this.purpose = purpose;
    this.status = status;
  }


  void coordinates() {
   
}
  
  void display() {
    
    
  }
  
 
}
