/** 
* jQuery Plugin Function 
* 
* Make all elements same height according to “tallest” one found :) 
* Original code : http://codesnipp.it/code/441 
*/ 
jQuery.fn.equalHeights = function() { 
return this.height(Math.max.apply(null, 
this.map(function() { 
return jQuery(this).height() 
}).get() 
)); 
}; 