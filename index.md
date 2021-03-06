---
layout: default
title: Home
weight: 1
active: true
permalink: index.html
---

<!--Slideshow files-->
<script src="//ajax.googleapis.com/ajax/libs/jquery/1.8.2/jquery.min.js"></script>
<script src="files/slideshow/jquery.bxslider.min.js"></script>
<link href="files/slideshow/jquery.bxslider.css" rel="stylesheet" />
<script>
		$(document).ready(function(){
        mixpanel.track("Home Page");
				$('.bxslider').bxSlider({
						pagerCustom: '#bx-pager',
						adaptiveHeight: true,
						auto: true,
						slideWidth: 900
				});
		});

		function resizeIframe(obj) {
				obj.style.height = obj.contentWindow.document.body.scrollHeight + 'px';
		}
</script>

![Used with permission of Philip Klopp and Peter A. Lerro, Jr., Artist](./files/img/klopp_lerro_train_sm.png)

###### Used with permission of Philip Klopp and Peter A. Lerro, Jr., Artist

<div class="alert alert-primary" role="alert">
  <i class="fa fa-exclamation-circle alert-primary" aria-hidden="true"></i>
  Reminder from Keystone Collections Group:
  Residents of the borough must pay their <a style="color:black;font-weight: bold;" href="/files/per_cap_2019.pdf">2019 per capita/occupation tax bill</a> due on or before December 31.
</div>

<div class="alert alert-primary" role="alert">
  <i class="fa fa-exclamation-circle alert-primary" aria-hidden="true"></i>
  48th Senatorial District Special Election 1/14/20
</div>

<!--
<div class="alert alert-primary" role="alert">
  <i class="fa fa-exclamation-circle alert-primary" aria-hidden="true"></i>
  Tree Lighting Service at Town Tree! Sat Nov 23, 5:30 PM<br/>
  Santa arrives by Fire Engine – Treats for the kids!
</div>
-->

Welcome to the Richland Borough Website.
Richland Borough, nestled in the Eastern part of Lebanon County, Pennsylvania,
is a picturesque town named  for its fertile soil.
<img class="img_float" src="./files/img/welcome_to_richland.png" alt="Town Sign">
Incorporated from Millcreek Township in 1906, the town
is unique in that it has an active railroad crossing
which intersects the town square. Main Street and Race Street, which also
intersect at the square, link the northern and southern portions, as well as
the eastern and western portions, of the borough. Thus, the crossing divides
the entire town causing Richland to be mentioned in "Ripley's Believe It or Not"
books and on the televised game show "Jeopardy".

<!--slideshow-->
<div class="slideshow">
	<ul class="bxslider">
		<li><img alt="image" src="./files/img/sleding_on_main_st_looking_west.png" /></li>
		<li><img alt="image" src="./files/img/christmas_tree.png" /></li>
		<li><img alt="image" src="./files/img/memorial.png" /></li>
		<li><img alt="image" src="./files/img/old_building.png" /></li>
		<li><img alt="image" src="./files/img/welcome2.png" /></li>
		<li><img alt="image" src="./files/img/store_on_main_street.png" /></li>
		<li><img alt="image" src="./files/img/main_st_looking_at_east.png" /></li>
		<li><img alt="image" src="./files/img/sugar_bowl.png" /></li>
		<li><img alt="image" src="./files/img/main_st_near_depot.png" /></li>
		<li><img alt="image" src="./files/img/south_race_st.png" /></li>
		<li><img alt="image" src="./files/img/playground.png" /></li>
		<li><img alt="image" src="./files/img/carnival_grounds.png" /></li>
	</ul>
</div>
<!--end slideshow-->
