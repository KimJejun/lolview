package kr.lolview.security

import kr.lolview.UserRelation;

class User {
	transient springSecurityService

	String username
	String password
	String summonerName
	boolean enabled = true
	boolean accountExpired
	boolean accountLocked
	boolean passwordExpired
	
	static hasMany = [authorities:Role, likes: UserRelation, hates: UserRelation]
	
	static mapWith = "neo4j"

	static constraints = {
		username(blank: false, unique: true)
		password(blank: false, minSize: 5)
		summonerName(blank:true, size:0..15)
	}

	static mapping = {
		id generator : 'increment'
		password column: '`password`'
	}

	/*Set<Role> getAuthorities() {
		UserRole.findAllByUser(this).collect { it.role } as Set
	}*/

	def beforeInsert() {
		encodePassword()
	}

	def beforeUpdate() {
		/*if (this.isDirty('password')) {
			encodePassword()
		}*/
	}

	protected void encodePassword() {
		password = springSecurityService.encodePassword(password)
	}
	
	@Override
	public String toString() {
		// TODO Auto-generated method stub
		return super.toString();
	}
}
