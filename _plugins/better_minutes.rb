# RichlandJekyll::MeetingMinuteTableGenerator
#
# Scans %RichlandRoot%/assets/meeting_minutes/
#
#
module RichlandJekyll
  class MeetingMinuteTableGenerator < Jekyll::Generator
    def generate(site)
      puts site.static_files

      meeting_minutes_page = site.pages.detect {|page| page.name == 'meeting_minutes.html'}
      #meeting_minutes_page.data['ongoing'] = ongoing
    end
  end
end

module Jekyll
  class Minutes < Liquid::Tag

    def initialize(tag_name, text, tokens)
      super
      @text = text
      @monthLookup = {
        "January" => 1, 
        "February" => 2, 
        "March" => 3, 
        "April" => 4, 
        "May" => 5, 
        "June" => 6, 
        "July" => 7, 
        "August" => 8, 
        "September" => 9, 
        "October" => 10, 
        "November" => 11, 
        "December" => 12
      }
      @monthLookup.default = 1
      @openTable = '_plugins/open_table.html'
      @closeTable = '_plugins/close_table.html'
      @openRowEven = '_plugins/open_table_element_even.html'
      @openRowOdd = '_plugins/open_table_element_odd.html'
      @closeRow = '_plugins/close_table_element.html'
    end

    def pathToMonthYear(path)
      filename = path.split('/').pop()
      month_day = filename.split('.')[0].split('_')
      "#{month_day[1]} #{month_day[2]} <br />"
    end

    def makeLink(strMonthYear)
      # <a href="meeting_minutes/Minutes_January_2013.pdf" onclick="mixpanel.track('January 2013');">January 2013</a>
      month = strMonthYear.split(' ')[0]
      year = strMonthYear.split(' ')[1]
      "<a href=\"meeting_minutes/Minutes_#{month}_#{year}.pdf\" onclick=\"mixpanel.track('Minutes #{month} #{year}');\">#{month} #{year}</a>"
    end

    def getMonthYears(context)
      files = context[@markup.strip]
      dateTimes = []
      files.each do |file|
        if file.path.split('/').include? 'meeting_minutes'
          monthYear = pathToMonthYear(file.path).split()
          thisDate = DateTime.new(monthYear[1].to_i, @monthLookup[monthYear[0]].to_i) # New datetime with the monthYear's month number and year
          dateTimes << thisDate
        end
      end
      dateTimes.sort_by!{ |date| -date.to_date.to_time.to_i }
      monthYears = []
      dateTimes.each do |dateTimeObj|
        monthYears << dateTimeObj.strftime('%B %Y') + "\n"
      end
      monthYears
    end

    def genHTML(monthYears)
      #File.read(@openTable)
      #File.read(@closeTable)
      #File.read(@openRowEven)
      #File.read(@openRowOdd)
      #File.read(@closeRow)
      iters = 1
      output = File.read(@openTable)
      monthYears.each do |thisMonthYear|
        if iters % 2 == 1
          output << File.read(@openRowOdd)
        else
          output << File.read(@openRowEven)
        end
        iters += 1
        output << makeLink(thisMonthYear)
        output << File.read(@closeRow)
      end
      output << File.read(@closeTable)
    end

    def render(context)
      genHTML getMonthYears(context)
    end
  end
end

Liquid::Template.register_tag('minutes', Jekyll::Minutes)
