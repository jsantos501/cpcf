// Utility
if ( typeof Object.create !== 'function' ) {
	Object.create = function( obj ) {
		function F() {};
		F.prototype = obj;
		return new F();
	};
}

//Plugin
(function($, window, document, undefined) {
		
	var dropDownMenu = {
		
		init: function(options, elem) {
			var self = this;
			self.elem = elem;
			self.$elem = $(elem);
			self.options = $.extend( {}, $.fn.beautyMenu.options, options );
			self.hideChild();
		},
		
		hideChild: function() {
			var self = this;
			self.$elem.find('ul > li > a').each(function() {
				var $this = $(this);
				$this.html('<span>' + $this.text() + '</span>');
			});
			
			self.$elem.find('ul li ul').each(function() {
				var $this = $(this);
				$this.css({
					position: 'absolute',
					top: '-' + $this.height() + 'px',
					width: self.options.childWidth
				}).addClass('submenu');
			});
			self.display();
		},
		
		display: function() {
			var self = this;
			var menuItem = $(self.$elem.find('ul > li'));
			menuItem.hoverIntent(function() {
				$this = $(this);
				$this
					.children('a').addClass(self.options.hoverClass)
					.end().find('ul')
					.animate({
						top: $this.outerHeight()
					}, self.options.subMenuShowSpeed, self.options.subMenuShowEffect);
			}, function() {
				$this = $(this);
				$this
					.children('a').removeClass(self.options.hoverClass)
					.end().find('ul')
					.animate({
						top: -$this.find('ul').height()
					});
			});
		}
	};
	
	$.fn.beautyMenu = function( options ) {
		return this.each(function() {
			var __dropDownMenu = Object.create( dropDownMenu );
			__dropDownMenu.init( options, this );
		});
	};
	
	$.fn.beautyMenu.options = {
		childWidth: 		150,
		hoverClass: 		'active',
		subMenuShowSpeed:	1000,
		subMenuShowEffect:	'easeOutBounce'
	};
	
})(jQuery, window, document);