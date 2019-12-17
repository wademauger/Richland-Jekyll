---
layout: default
suppress_title: false
title: Finances
---


<div class="card">
  <div class="card-header finance-header">
    Financial Records
  </div>
    <div id="collapse_{{ YEAR.YEAR_LABEL}}" class="collapse show">
      <div class="card-body">
  {% for RECORD in site.data.finances %}
        <div class="document-icon" title="PDF File"><i class="fa fa-file-pdf-o" aria-hidden="true"></i></div>
        <a class="finance-item" href="{{ site.url }}{{ site.baseurl }}{{ MONTH.LOCATION_PREFIX }}{{ MONTH.LABEL }}_{{ YEAR.YEAR_LABEL }}.pdf">{{ RECORD.LABEL }}</a><br />
  {% endfor %}
      </div>
    </div>
</div>
