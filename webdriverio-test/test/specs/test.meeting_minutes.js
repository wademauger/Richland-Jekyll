const assert = require('assert');
const moment = require('moment');
const config = require('../../config.js');

// We run a lot of code while the browser window is
// open, so let's leave it stay open for a little while
jasmine.DEFAULT_TIMEOUT_INTERVAL = 100000;

describe('The meeting minutes page', () => {
  it('should not be missing any meeting minutes links', () => {
    // By two weeks after the end of the month, the month's meeting
    // minutes should be online.
    const targetDate = moment().subtract(6, 'weeks');
    let thisDate = config.dates.firstRecordedMeeting;
    while (targetDate.diff(thisDate) > 0 ){
      console.log(`testing ${thisDate.format(config.dates.standardFormat)}'s meeting minutes...`);
      const linkText = browser
        .url(config.pages.meetingMinutes)
        .getText(`a=${thisDate.format(config.dates.standardFormat)}`)
      assert.equal(linkText, thisDate.format(config.dates.standardFormat));
      thisDate = thisDate.add(1, 'month');
    }
    browser.url(config.pages.meetingMinutes);
    //assert.equal(title, 'WebdriverIO - Selenium 2.0 javascript bindings for nodejs');
  });
});
