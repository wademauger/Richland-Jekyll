---
layout: default
suppress_title: false
title: In The Community
---

<div class="list-group list-group-flush">
  {% for LOCATION in site.data.community %}
    <div class="list-group-item community-card">
      <img src="{{site.url}}{{site.baseurl}}{{ LOCATION.image }}"/>
      <div class="community-card-right">
        <h5 class="community-name">{{ LOCATION.title }}</h5>
        <h6 class="community-detail"><i>{{ LOCATION.address }}</i></h6>
        <h6 class="community-detail"><b>Phone</b>: {{ LOCATION.phone }}</h6>
        <h6 class="community-detail">
          <b>Website</b>: <a href="{{ LOCATION.website }}" target="_blank" >LINK</a>
        </h6>
      </div>
    </div>
  {% endfor %}
</div>
