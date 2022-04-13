AFRAME.registerComponent('selectSphere', {
	init: function(){
		let el = this.el;
		this.select = function(){
			if(el.is('selected')){
				el.removeState('selected');
				el.setAttribute(metalness, '0');
			} else {
				el.setAttribute('metalness', '1');
				el.addState('selected');
			}
		}
		this.el.addEventListener('click', this.select);
	},
	remove: function(){
		this.el.removeEventListener('click', this.select);
	}
})