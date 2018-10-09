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
  The Christmas Tree Lighting Service will be at the town tree on Nov 17 @ 5:30pm.
  Santa will arrive by Fire Engine!
  In the event of inclement weather we will hold the service in the Engine Room of the Neptune Fire Hall. 
</div>

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
