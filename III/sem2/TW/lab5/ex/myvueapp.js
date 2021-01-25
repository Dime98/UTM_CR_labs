
new Vue({

	el:#myapp,
	data:{
		swfilms:[]
	},

	methods:{
		getFilms(){
			fetch("https://swapi.co/api/films/")
			.then(response=>response.json())
			.then(data=>{
				this.swfilms=data;
			})
		}
	}
})