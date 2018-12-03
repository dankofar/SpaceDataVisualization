class ReadData {
  ArrayList <Debris> allResult;
  ArrayList <Debris> activeResult;
  ArrayList <Debris> inActiveResult;
  ArrayList <Debris> unKnownResult;
  String title;
  String[] data;


  public ReadData(String title) {
    this.title = title;
    this.data = loadStrings(this.title);
    allResult = new ArrayList <Debris>();
    activeResult = new ArrayList <Debris>();
    inActiveResult = new ArrayList <Debris>();
    unKnownResult = new ArrayList <Debris>();
  }


  public void organize() {


    for (int i = 1; i < this.data.length; i++) {

      String[] hold = split(data[i], ",");
      //indexes 0 - 17
      int number = int(hold[0]);
      String name = hold[1];
      int item = int(hold[2]); 
      String launchDate = hold[3]; 
      String epochDate = hold[4];
      String epochTime = hold[5];
      float sma = float(hold[6]);
      float eccentricity = float(hold[7]);
      float inclination = float(hold[8]);
      float raan = float(hold[9]);
      float perigee = float(hold[10]);
      float true_anomaly= float(hold[11]);
      float period = float(hold[12]);
      float perigee_altitude = float(hold[13]);
      float apogee_altitude = float(hold[14]);
      String country = hold[15];
      String purpose = hold[16];
      String  status = hold[17];  



      if (country.equals("US")) {
        Debris db =  new AmericanDebris(number, name, item, launchDate, epochDate, epochTime, sma, eccentricity, inclination, raan, perigee, true_anomaly, period, perigee_altitude, apogee_altitude, country, purpose, status);
        allResult.add(db);


        if (status.equals("Unknown")) {

          Debris udb =  new AmericanDebris(number, name, item, launchDate, epochDate, epochTime, sma, eccentricity, inclination, raan, perigee, true_anomaly, period, perigee_altitude, apogee_altitude, country, purpose, status);
          unKnownResult.add(udb);
        } else if (status.equals("Active")) {
          Debris adb =  new AmericanDebris(number, name, item, launchDate, epochDate, epochTime, sma, eccentricity, inclination, raan, perigee, true_anomaly, period, perigee_altitude, apogee_altitude, country, purpose, status);
          activeResult.add(adb);
        } else if (status.equals("Inactive")) {
          Debris idb =  new AmericanDebris(number, name, item, launchDate, epochDate, epochTime, sma, eccentricity, inclination, raan, perigee, true_anomaly, period, perigee_altitude, apogee_altitude, country, purpose, status);
          inActiveResult.add(idb);
        }
      } else if (country.equals("CA")) {
        Debris db =  new CanadianDebries(number, name, item, launchDate, epochDate, epochTime, sma, eccentricity, inclination, raan, perigee, true_anomaly, period, perigee_altitude, apogee_altitude, country, purpose, status);
        allResult.add(db);



        if (status.equals("Unknown")) {
          Debris udb =  new CanadianDebries(number, name, item, launchDate, epochDate, epochTime, sma, eccentricity, inclination, raan, perigee, true_anomaly, period, perigee_altitude, apogee_altitude, country, purpose, status);
          unKnownResult.add(udb);
        } else if (status.equals("Active")) {
          Debris adb =  new CanadianDebries(number, name, item, launchDate, epochDate, epochTime, sma, eccentricity, inclination, raan, perigee, true_anomaly, period, perigee_altitude, apogee_altitude, country, purpose, status);
          activeResult.add(adb);
        } else if (status.equals("Inactive")) {
          Debris idb =  new CanadianDebries(number, name, item, launchDate, epochDate, epochTime, sma, eccentricity, inclination, raan, perigee, true_anomaly, period, perigee_altitude, apogee_altitude, country, purpose, status);
          inActiveResult.add(idb);
        }
      } else if (country.equals("CHBZ")) {
        Debris db =  new ChineaseDebris(number, name, item, launchDate, epochDate, epochTime, sma, eccentricity, inclination, raan, perigee, true_anomaly, period, perigee_altitude, apogee_altitude, country, purpose, status);
        allResult.add(db);



        if (status.equals("Unknown")) {
          Debris udb =  new ChineaseDebris(number, name, item, launchDate, epochDate, epochTime, sma, eccentricity, inclination, raan, perigee, true_anomaly, period, perigee_altitude, apogee_altitude, country, purpose, status);
          unKnownResult.add(udb);
        } else if (status.equals("Active")) {
          Debris adb =  new ChineaseDebris(number, name, item, launchDate, epochDate, epochTime, sma, eccentricity, inclination, raan, perigee, true_anomaly, period, perigee_altitude, apogee_altitude, country, purpose, status);
          activeResult.add(adb);
        } else if (status.equals("Inactive")) {
          Debris idb =  new ChineaseDebris(number, name, item, launchDate, epochDate, epochTime, sma, eccentricity, inclination, raan, perigee, true_anomaly, period, perigee_altitude, apogee_altitude, country, purpose, status);
          inActiveResult.add(idb);
        }
      } else if (country.equals("IRAN")) {
        Debris db =  new IranianDebris(number, name, item, launchDate, epochDate, epochTime, sma, eccentricity, inclination, raan, perigee, true_anomaly, period, perigee_altitude, apogee_altitude, country, purpose, status);
        allResult.add(db);




        if (status.equals("Unknown")) {
          Debris udb =  new IranianDebris(number, name, item, launchDate, epochDate, epochTime, sma, eccentricity, inclination, raan, perigee, true_anomaly, period, perigee_altitude, apogee_altitude, country, purpose, status);
          unKnownResult.add(udb);
        } else if (status.equals("Active")) {
          Debris adb =  new IranianDebris(number, name, item, launchDate, epochDate, epochTime, sma, eccentricity, inclination, raan, perigee, true_anomaly, period, perigee_altitude, apogee_altitude, country, purpose, status);
          activeResult.add(adb);
        } else if (status.equals("Inactive")) {
          Debris idb =  new IranianDebris(number, name, item, launchDate, epochDate, epochTime, sma, eccentricity, inclination, raan, perigee, true_anomaly, period, perigee_altitude, apogee_altitude, country, purpose, status);
          inActiveResult.add(idb);
        }
      } else if (country.equals("FR")) {
        Debris db =  new FrenchDebris(number, name, item, launchDate, epochDate, epochTime, sma, eccentricity, inclination, raan, perigee, true_anomaly, period, perigee_altitude, apogee_altitude, country, purpose, status);
        allResult.add(db);




        if (status.equals("Unknown")) {
          Debris udb =  new FrenchDebris(number, name, item, launchDate, epochDate, epochTime, sma, eccentricity, inclination, raan, perigee, true_anomaly, period, perigee_altitude, apogee_altitude, country, purpose, status);
          unKnownResult.add(udb);
        } else if (status.equals("Active")) {
          Debris adb =  new FrenchDebris(number, name, item, launchDate, epochDate, epochTime, sma, eccentricity, inclination, raan, perigee, true_anomaly, period, perigee_altitude, apogee_altitude, country, purpose, status);
          activeResult.add(adb);
        } else if (status.equals("Inactive")) {
          Debris idb =  new FrenchDebris(number, name, item, launchDate, epochDate, epochTime, sma, eccentricity, inclination, raan, perigee, true_anomaly, period, perigee_altitude, apogee_altitude, country, purpose, status);
          inActiveResult.add(idb);
        }
      } else if (country.equals("SPN")) {
        Debris db =  new SpanishDebris(number, name, item, launchDate, epochDate, epochTime, sma, eccentricity, inclination, raan, perigee, true_anomaly, period, perigee_altitude, apogee_altitude, country, purpose, status);
        allResult.add(db);




        if (status.equals("Unknown")) {
          Debris udb =  new SpanishDebris(number, name, item, launchDate, epochDate, epochTime, sma, eccentricity, inclination, raan, perigee, true_anomaly, period, perigee_altitude, apogee_altitude, country, purpose, status);
          unKnownResult.add(udb);
        } else if (status.equals("Active")) {
          Debris adb =  new SpanishDebris(number, name, item, launchDate, epochDate, epochTime, sma, eccentricity, inclination, raan, perigee, true_anomaly, period, perigee_altitude, apogee_altitude, country, purpose, status);
          activeResult.add(adb);
        } else if (status.equals("Inactive")) {
          Debris idb =  new SpanishDebris(number, name, item, launchDate, epochDate, epochTime, sma, eccentricity, inclination, raan, perigee, true_anomaly, period, perigee_altitude, apogee_altitude, country, purpose, status);
          inActiveResult.add(idb);
        }
      } else if (country.equals("ISRA")) {
        Debris db =  new IsrealianDebris(number, name, item, launchDate, epochDate, epochTime, sma, eccentricity, inclination, raan, perigee, true_anomaly, period, perigee_altitude, apogee_altitude, country, purpose, status);
        allResult.add(db);

        if (status.equals("Unknown")) {
          Debris udb =  new IsrealianDebris(number, name, item, launchDate, epochDate, epochTime, sma, eccentricity, inclination, raan, perigee, true_anomaly, period, perigee_altitude, apogee_altitude, country, purpose, status);
          unKnownResult.add(udb);
        } else if (status.equals("Active")) {
          Debris adb =  new IsrealianDebris(number, name, item, launchDate, epochDate, epochTime, sma, eccentricity, inclination, raan, perigee, true_anomaly, period, perigee_altitude, apogee_altitude, country, purpose, status);
          activeResult.add(adb);
        } else if (status.equals("Inactive")) {
          Debris idb =  new IsrealianDebris(number, name, item, launchDate, epochDate, epochTime, sma, eccentricity, inclination, raan, perigee, true_anomaly, period, perigee_altitude, apogee_altitude, country, purpose, status);
          inActiveResult.add(idb);
        }
      } else if (country.equals("DEN")) {
        Debris db =  new DanishDebris(number, name, item, launchDate, epochDate, epochTime, sma, eccentricity, inclination, raan, perigee, true_anomaly, period, perigee_altitude, apogee_altitude, country, purpose, status);
        allResult.add(db);



        if (status.equals("Unknown")) {
          Debris udb =  new DanishDebris(number, name, item, launchDate, epochDate, epochTime, sma, eccentricity, inclination, raan, perigee, true_anomaly, period, perigee_altitude, apogee_altitude, country, purpose, status);
          unKnownResult.add(udb);
        } else if (status.equals("Active")) {
          Debris adb =  new DanishDebris(number, name, item, launchDate, epochDate, epochTime, sma, eccentricity, inclination, raan, perigee, true_anomaly, period, perigee_altitude, apogee_altitude, country, purpose, status);
          activeResult.add(adb);
        } else if (status.equals("Inactive")) {
          Debris idb =  new DanishDebris(number, name, item, launchDate, epochDate, epochTime, sma, eccentricity, inclination, raan, perigee, true_anomaly, period, perigee_altitude, apogee_altitude, country, purpose, status);
          inActiveResult.add(idb);
        }
      } else if (country.equals("ISS")) {
        Debris db =  new InternationalSpaceStationDebris(number, name, item, launchDate, epochDate, epochTime, sma, eccentricity, inclination, raan, perigee, true_anomaly, period, perigee_altitude, apogee_altitude, country, purpose, status);
        allResult.add(db);





        if (status.equals("Unknown")) {
          Debris udb =  new InternationalSpaceStationDebris(number, name, item, launchDate, epochDate, epochTime, sma, eccentricity, inclination, raan, perigee, true_anomaly, period, perigee_altitude, apogee_altitude, country, purpose, status);
          unKnownResult.add(udb);
        } else if (status.equals("Active")) {
          Debris adb =  new InternationalSpaceStationDebris(number, name, item, launchDate, epochDate, epochTime, sma, eccentricity, inclination, raan, perigee, true_anomaly, period, perigee_altitude, apogee_altitude, country, purpose, status);
          activeResult.add(adb);
        } else if (status.equals("Inactive")) {
          Debris idb =  new InternationalSpaceStationDebris(number, name, item, launchDate, epochDate, epochTime, sma, eccentricity, inclination, raan, perigee, true_anomaly, period, perigee_altitude, apogee_altitude, country, purpose, status);
          inActiveResult.add(idb);
        }
      } else if (country.equals("CIS")) {
        Debris db =  new RussianDebries(number, name, item, launchDate, epochDate, epochTime, sma, eccentricity, inclination, raan, perigee, true_anomaly, period, perigee_altitude, apogee_altitude, country, purpose, status);
        allResult.add(db);



        if (status.equals("Unknown")) {
          Debris udb =  new RussianDebries(number, name, item, launchDate, epochDate, epochTime, sma, eccentricity, inclination, raan, perigee, true_anomaly, period, perigee_altitude, apogee_altitude, country, purpose, status);
          unKnownResult.add(udb);
        } else if (status.equals("Active")) {
          Debris adb =  new RussianDebries(number, name, item, launchDate, epochDate, epochTime, sma, eccentricity, inclination, raan, perigee, true_anomaly, period, perigee_altitude, apogee_altitude, country, purpose, status);
          activeResult.add(adb);
        } else if (status.equals("Inactive")) {
          Debris idb =  new RussianDebries(number, name, item, launchDate, epochDate, epochTime, sma, eccentricity, inclination, raan, perigee, true_anomaly, period, perigee_altitude, apogee_altitude, country, purpose, status);
          inActiveResult.add(idb);
        }
      } else {
        Debris db =  new Debris(number, name, item, launchDate, epochDate, epochTime, sma, eccentricity, inclination, raan, perigee, true_anomaly, period, perigee_altitude, apogee_altitude, country, purpose, status  );
        allResult.add(db);





        if (status.equals("Unknown")) {
          Debris udb =  new Debris(number, name, item, launchDate, epochDate, epochTime, sma, eccentricity, inclination, raan, perigee, true_anomaly, period, perigee_altitude, apogee_altitude, country, purpose, status);
          unKnownResult.add(udb);
        } else if (status.equals("Active")) {
          Debris adb =  new Debris(number, name, item, launchDate, epochDate, epochTime, sma, eccentricity, inclination, raan, perigee, true_anomaly, period, perigee_altitude, apogee_altitude, country, purpose, status);
          activeResult.add(adb);
        } else if (status.equals("Inactive")) {
          Debris idb =  new Debris(number, name, item, launchDate, epochDate, epochTime, sma, eccentricity, inclination, raan, perigee, true_anomaly, period, perigee_altitude, apogee_altitude, country, purpose, status);
          inActiveResult.add(idb);
        }
      }
    }
  }
}
