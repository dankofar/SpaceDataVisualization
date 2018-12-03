class AmericanDebris extends Debris {


  AmericanDebris(  int number, String name, int item, String launchDate, String epochDate, String epochTime, float sma, float eccentricity, float inclination, float raan, float perigee, float true_anomaly, float period, float perigee_altitude, float apogee_altitude, String country, String purpose, String  status  ) {
    super( number, name, item, launchDate, epochDate, epochTime, sma, eccentricity, inclination, raan, perigee, true_anomaly, period, perigee_altitude, apogee_altitude, country, purpose, status);
    super.x = int(random(50, width -50)); 
    super.y = map(super.perigee_altitude, 92.322, 39887.652, height - 600, -39400 );
  }

  void display() {

    stroke(0,63,92);
    fill(0,63,92, 75);
    ellipse(this.x, this.y, 20, 20);
  }
  
 
void coordinates(){
  if (abs(mouseX - super.x) < 5 && abs(mouseY - super.y) < 5){
      println(super.country + "\t" + super.name + "\t" + super.launchDate + "\t" + super.status);
  } 

}
  
  
 
 
 
}
