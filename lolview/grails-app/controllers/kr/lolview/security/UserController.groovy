package kr.lolview.security

import grails.plugins.springsecurity.Secured;

import org.springframework.dao.DataIntegrityViolationException

class UserController {
	def springSecurityService
    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        
    }

	@Secured(['ROLE_ADMIN'])
	def create() {
		[userInstance: new User(params)]
	}

    def createNewUser() {
		def map = [user: new User(params?.user)]
		render(view: params.renderView, model: map)
	}
	
	def save() {
		def user = new User(params)
		user.authorities = [Role.findByAuthority('ROLE_USER')]
		if (!user.save(flush: true)) {
			render(view: params.renderView, model : [user: user])
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

    def show(Long id) {
        def userInstance = User.get(id)
        if (!userInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'user.label', default: 'User'), id])
            redirect(action: "list")
            return
        }

        [userInstance: userInstance]
    }

    def edit(Long id) {
        def userInstance = User.get(id)
        if (!userInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'user.label', default: 'User'), id])
            redirect(action: "list")
            return
        }

        [userInstance: userInstance]
    }

    def update(Long id, Long version) {
        def userInstance = User.get(id)
        if (!userInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'user.label', default: 'User'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (userInstance.version > version) {
                userInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'user.label', default: 'User')] as Object[],
                          "Another user has updated this User while you were editing")
                render(view: "edit", model: [userInstance: userInstance])
                return
            }
        }

        userInstance.properties = params
		userInstance.encodePassword()

        if (!userInstance.save(flush: true)) {
            render(view: "edit", model: [userInstance: userInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'user.label', default: 'User'), userInstance.id])
        redirect(action: "show", id: userInstance.id)
    }

    def delete(Long id) {
        def userInstance = User.get(id)
        if (!userInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'user.label', default: 'User'), id])
            redirect(action: "list")
            return
        }

        try {
            userInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'user.label', default: 'User'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'user.label', default: 'User'), id])
            redirect(action: "show", id: id)
        }
    }
	
	@Secured(['ROLE_USER'])
	def showUserInfo(Long id) {
		def userInstance = User.get(id)
		def principal = springSecurityService.principal
		
		if (userInstance.id != principal.id) {
			render(view: '/login/denied' )
		}
		
		[userInstance: userInstance]
	}
	
}
