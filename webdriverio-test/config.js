const moment = require('moment');

const url = 'http://localhost:4000';//'http://www.richlandborough.org';
module.exports = {
  url,
  pages: {
    meetingMinutes: url + '/meeting_minutes.html'
  },
  dates: {
    standardFormat: 'MMMM YYYY',
    firstRecordedMeeting: moment('2013-01-01'),
  },
};
