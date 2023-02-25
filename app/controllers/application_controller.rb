class ApplicationController < ActionController::Base
   def after_sign_in_path_for(resource)
     if resource == :admin
        admin_session_path
     end 
   end  
  
  
  
  def after_sign_out_path_for(resource)
   if resource == :admin
      admin_session_path
   elsif resource == :enployee
      new_enployee_session_path
   end
  end
end
