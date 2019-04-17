This is the Dockerfile that I used to build the image that I use to perform a sonar analysis in local or into my CI.

Example of run:
```
  docker run $IMAGE_NAME sonar-scanner -Dsonar.host.url=$SONAR_URL
                                       -Dsonar.login=$SONAR_LOGIN
                                       -Dsonar.password=$SONAR_PASSWORD
```


You can find full documentation about sonarqube options is [here](https://docs.sonarqube.org/latest/)
