const webdriverio = require('webdriverio');
const config = require('./config.js');

const options = {
  desiredCapabilities: {
    browserName: 'firefox'
  }
};

webdriverio
  .remote(options)
  .init()
  .url(config.pages.meetingMinutes)
  .getTitle().then(function(title) {
    console.log('Title was: ' + title);
  })
  .end();
