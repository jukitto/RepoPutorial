function fn() {
  var env = karate.env;
  var apiUrl = '';
  karate.log('Se procede a configurar la variable env:', env);
  if (!env) {
    env = 'dev'; // a custom 'intelligent' default
    karate.log('El valor de Entorno se mantiene a:', env);
  }
  if (env == 'dev') {
    apiUrl = 'https://petstore.swagger.io';
    karate.log('El valor de apiUrl es: ', apiUrl);
  } else if (env == 'cert') {
    apiUrl = 'https://xxx.io';
    karate.log('El valor de apiUrl es: ', apiUrl);
  }

  var config = { // base config JSON
    appId: 'my.app.id',
    appSecret: 'my.secret',
    someUrlBase: 'https://some-host.com/v1/auth/',
    anotherUrlBase: 'https://another-host.com/v1/',
    apiUrl: apiUrl
  };

  // don't waste time waiting for a connection or if servers don't respond within 5 seconds
  karate.configure('connectTimeout', 5000);
  karate.configure('readTimeout', 5000);
  return config;
}