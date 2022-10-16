# grow-green

To run the web frontend and backend locally do: 

```
git clone git@github.com:francopiccolo/grow-green.git  
cd grow-green
docker compose up
```
And then go to http://localhost:3000.

To create the native Android apk do:

```
cd apps
flutter build apk --split-per-abi --no-sound-null-safety
```