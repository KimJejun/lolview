package kr.lolview.security

class Role {
	String authority

	static mapWith = "neo4j"

	static mapping = {
		id generator : 'increment'
		cache true
	}

	static constraints = {
		authority(blank:false, unique:true)
	}
}
