---
layout: default
suppress_title: true
title: Appointed Officials
---

# Appointed Officials

<div class="list-group list-group-flush">
  {% for OFFICER in site.data.appointed_officials %}
    <div class="list-group-item official-card">
      <img src="{{site.url}}{{site.baseurl}}files/img/avatar.png"/>
      <div class="official-card-right">
        <h5 class="official-name">{{ OFFICER.NAME }}</h5>
        {% for TITLE in OFFICER.TITLES %}
          <h6 class="official-title">{{ TITLE }}</h6>
        {% endfor %}
        <span class="badge badge-secondary official-term">
        Term ends  {{ OFFICER.TERM_EXPIRATION }} 
        </span>
      </div>
    </div>
  {% endfor %}
</div>

# Borough Employees

<div class="list-group list-group-flush">
  {% for EMPLOYEE in site.data.borough_employees %}
    <div class="list-group-item official-card">
      <img src="{{site.url}}{{site.baseurl}}files/img/avatar.png"/>
      <div class="official-card-right">
        <h5 class="official-name">{{ EMPLOYEE.NAME }}</h5>
        <h6 class="official-title">{{ EMPLOYEE.TITLE }}</h6>
      </div>
    </div>
  {% endfor %}
</div>