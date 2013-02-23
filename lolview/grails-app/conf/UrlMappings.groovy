class UrlMappings {

	static mappings = {
		"/show/$summonerName?"(controller: "gameStats", action: "show") 
		
		"/$controller/$action?/$id?"{
			constraints {
				// apply constraints here
			}
		}

		"/"(view:"/main/index")
		"500"(view:'/error')
		
	}
}
