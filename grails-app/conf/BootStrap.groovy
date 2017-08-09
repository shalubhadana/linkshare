
import com.domain.auth.*
import link.Seriousness


class BootStrap {

    def init = { servletContext ->
        User user1=new User(username:'shalu',password:'bhadana',email:'bhadana@gmail.com' )
      //  println(User.findByUsernameAndPassword(user1.username,user1.password));
        if(User.findByUsernameAndEmail(user1.username,user1.email)==null){
            user1.save()
                }
    /*def adminRole = Role.findOrSaveWhere(authority:'ROLE_ADMIN')
        def user = User.findOrSaveWhere(username:'admin',password:'password',email:'shalubhadana@gmail.com')

        if(!user.authorities.contains(adminRole)){
            UserRole.create(user,adminRole,true)
        }
*/



    }
    def destroy = {

    }




}
