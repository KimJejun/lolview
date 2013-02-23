package kr.lolview

import kr.lolview.security.Role
import kr.lolview.security.User;

class MainController {

    def index() {
		
	}
	
	def about() {
		
		Role.list().each(){
			println it.dump()
		}
	}
	
	def contact() {
		User.list().each(){
			println it.dump()
		}
	}
	
	def matchInfo() {
		
	}
}
