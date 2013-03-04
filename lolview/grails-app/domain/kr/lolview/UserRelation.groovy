package kr.lolview

import kr.lolview.security.User;

class UserRelation {
	
	User user
	Date registedAt
	
	static mapWith = "neo4j"
	
    static constraints = {
		user(nullable: false)
    }
}
