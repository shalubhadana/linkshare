package linkshare

import com.domain.auth.User
import org.apache.commons.validator.routines.EmailValidator

class LoginController {

     def register(){
         println(params)
         println(params.password )
         println(params.confirmPassword)
         def u = new User(params)
         u.save()

         println(params.password )
         println(params.confirmPassword)

         def regmessage= [:]
          if (!u.save()) {
             EmailValidator emailValidator = EmailValidator.getInstance()
             if (!params.email.isAllWhitespace() || params.email!=null) {
                 String[] email = params.email.replaceAll("//s+","").split(",")
                 email.each {
                     if (emailValidator.isValid(it)) {
                         return true
                     }else {
                         flash.emailinvalid = message(code: 'user.invalid.email', default: 'invalid email id');
                     }
                 }
              }
               def u1=User.findByUsername(params.username)
              if(u1!=null){
                  flash.usermessage = message(code: 'user.aldreadyregister.username', default: ' username is aldready register so register in linkshare to the another username')
               }
              def u2=User.findByEmail(params.email)
               if(u2!=null){
                   flash.emailmessage=message(code:'user.aldreadyregister.email' ,default:'these email is aldready register')

                }
              if (params.password == '' || params.confirmPassword == '') {
                 println("sbueuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuu")
                 flash.passwordmessage = message(code: 'user.enterPassword.message', default: 'Please enter the password')

              }
              if (params.password != params.confirmPassword ) {
                 println("hqqqqqqqqqqqqqqqqqqqqqqqqqhhhhhhhhhhhhhhhhh")
                 flash.confirmpasswordmessage = message(code: 'user.passwordMismatch.message', default: 'Password do not match')
              }
               redirect controller: 'home', params: params
               return
          }else {
               render "register sucessfully"
         }
     }


    def login(){

        def user=User.findByUsernameAndPassword(params.username,params.password);

       if(user!=null){

          session.user = user;
          render "welcome ${params.username} to the link share"

       }
        else{
          println("invalid username and password");
          flash.message = message(code: 'message.invalid.user')
          redirect(controller:'home',action:'index')
          return

       }

      }

     def index(){
        render (view: "login")
    }
    def logout = {
        session.invalidate()
        redirect(controller:'login')
    }

}
