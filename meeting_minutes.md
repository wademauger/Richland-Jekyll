---
layout: default
suppress_title: false
title: Meeting Minutes
---

<!--
  This Liquid script generates a page of accordion tables
  of meeting minutes, starting with the current year and
  decending.

  The data for this generation is in /_data/meeting_minutes.json.

  To add a meeting minutes document, you must append this
  JSON document, and checkin the PDF file to
  /files/meeting_minutes/

  THERE IS NO PREPUBLISHING VERIFICATION THAT ALL FILES HAVE A JSON ENTRY! (TODO: make bug)
-->

<div id="accordion">

  {% for YEAR in site.data.meeting_minutes %}
    <div class="card">
      <div class="card-header" id="heading_{{ YEAR.YEAR_LABEL }}">
        <h5 class="mb-0">
          <button class="btn btn-link" data-toggle="collapse" data-target="#collapse_{{ YEAR.YEAR_LABEL }}" aria-expanded="true" aria-controls="{{ YEAR.YEAR_LABEL }}">
            {{ YEAR.YEAR_LABEL }}
          </button>
        </h5>
      </div>
      {% for MONTH in YEAR.YEAR_ITEMS %}
        <div id="collapse_{{ YEAR.YEAR_LABEL}}" class="collapse
        {% if YEAR.CURRENT_YEAR %} 
          show
        {% endif %}
        " aria-labelledby="heading_{{ YEAR.YEAR_LABEL}}" data-parent="#accordion">
          <div class="card-body">
            <div class="document-icon" title="PDF File"><i class="fas fa-file-download" aria-hidden="true"></i></div>
            <a href="{{ site.url }}{{ site.baseurl }}{{ MONTH.LOCATION_PREFIX }}{{ MONTH.LABEL }}_{{ YEAR.YEAR_LABEL }}.pdf">Meeting Minutes - {{ MONTH.LABEL }} {{ YEAR.YEAR_LABEL }}</a>
          </div>
        </div>
    {% endfor %}
    </div>
  {% endfor %}

</div>