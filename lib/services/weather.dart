String backgroundImage(int dt, int sunset, int sunrise) {
  String home;
  if (dt < sunset && dt > sunrise) {
    home = 'assets/images/dayhome.jpg';
  } else {
    home = 'assets/images/Night.jpeg';
  }
  return home;
}

class WeatherModel {
  String getWeatherImg(int condition, int dt, int sunset, int sunrise) {
    if (dt < sunset && dt > sunrise) {
      if (condition < 300) {
        return 'assets/images/Day Storm.png';
      } else if (condition < 400) {
        return 'assets/images/Day Rain.png';
      } else if (condition < 600) {
        return 'assets/images/Day Rain.png';
      } else if (condition < 700) {
        return 'assets/images/Day Snow.png';
      } else if (condition < 800) {
        return 'assets/images/Day Wind.png';
      } else if (condition == 800) {
        return 'assets/images/Day Sun.png';
      } else if (condition <= 804) {
        return 'assets/images/Day Clouds.png';
      } else {
        return 'assets/‍images/Day Sun.png';
      }
    } else {
      if (condition < 300) {
        return 'assets/images/Night Storm.png';
      } else if (condition < 400) {
        return 'assets/images/Night Rain.png';
      } else if (condition < 600) {
        return 'assets/images/Night Rain.png';
      } else if (condition < 700) {
        return 'assets/images/Night Snow.png';
      } else if (condition < 800) {
        return 'assets/images/Night Wind.png';
      } else if (condition == 800) {
        return 'assets/images/Night Moon.png';
      } else if (condition <= 804) {
        return 'assets/images/Night Clouds.png';
      } else {
        return 'assets/‍images/Day Sun.png';
      }
    }
  }
}