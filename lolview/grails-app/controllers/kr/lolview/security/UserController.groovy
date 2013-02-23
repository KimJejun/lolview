package kr.lolview.security

import grails.plugins.springsecurity.Secured;

class UserController {
	static scaffold = true
	
    def index() { }
	
	def create() {
		def map = [user: new User(params?.user)]
		println params
		render(view: '_form', model: map)	
	}
	
	def save() {
		def user = new User(params)
		user.authorities = [Role.findByAuthority('ROLE_USER')]
		
		if (!user.save(flush: true)) {
			render(view: '_form', model : [user: user])
			return
		}
		
		flash.message = message(code: 'default.created.message', args: [message(code: 'user.label', default: '사용자'), user.id])
		redirect(controller: "main", action: "index")
	}
	
	@Secured(['ROLE_ADMIN'])
	def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [userInstanceList: User.list(params), userInstanceTotal: User.count()]
	}
}
