import kr.lolview.GameStats
import kr.lolview.security.Role
import kr.lolview.security.User

class BootStrap {

    def init = { servletContext ->
		environments {
			development {
				initAdmin()
			}
			production {
				initAdmin()
			}
		}
    }
    def destroy = {
    }
	
	def initAdmin() {
		if (!Role.findByAuthority('ROLE_ADMIN')) {
			new Role(authority: 'ROLE_ADMIN', createdAt: new Date()).save(flush: true)
			
		}
		
		if (!Role.findByAuthority('ROLE_USER')) {
			new Role(authority: 'ROLE_USER', createdAt: new Date()).save(flush: true)
		}
		
		
		if (!User.findByUsername('admin')) {
			new User(username: 'admin', password: 'lolview_admin', authorities: [Role.findByAuthority('ROLE_ADMIN'), Role.findByAuthority('ROLE_USER')] ).save(flush: true)
		}
	}
}
