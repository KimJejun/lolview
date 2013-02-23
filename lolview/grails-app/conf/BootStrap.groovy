import kr.lolview.GameStats
import kr.lolview.security.Role
import kr.lolview.security.User

class BootStrap {

    def init = { servletContext ->
		environments {
			development {
				if (!Role.findByAuthority('ROLE_ADMIN')) {
					new Role(authority: 'ROLE_ADMIN', createdAt: new Date()).save(flush: true)
					
				}
				
				if (!Role.findByAuthority('ROLE_USER')) {
					new Role(authority: 'ROLE_USER', createdAt: new Date()).save(flush: true)
				}
				
				if (!User.findByUsername('admin')) {
					def user = new User(username: 'test', password: 'test')
					user.authorities = [Role.findByAuthority('ROLE_USER')]
					
					println user.save(flush: true)
					new User(username: 'admin', password: 'admin', authorities: [Role.findByAuthority('ROLE_ADMIN'), Role.findByAuthority('ROLE_USER')] ).save(flush: true)
				}
				
				
			}
		}
    }
    def destroy = {
    }
}
