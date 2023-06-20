## Running locally ##

* Clone project.
* Add `.env` file to `flutter_app/` folder. Add `apiKey='<yourAPIKey>'` with a key from ChatGPT's API.
* `cd` to `flutter_app/` and run `flutter build web`.
* Run a local server using `http-server` or similar
* Head to `localhost:8080` in a browser.

## Useful File locations ##

Running `flutter build web` populates the `flutter_app/build/web/` directory with a generated JavaScript file, and other assets. Our non-Flutter `index.html` calls `app.html` from `flutter_app/build/web`, which in turn uses the generated JS file as its script source.