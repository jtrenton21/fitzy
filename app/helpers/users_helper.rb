module UsersHelper
def gravatar_for(user, options = { size: 50 })
    gravatar_id = Digest::MD5::hexdigest(user.email.downcase)
    size = options[:size]
    gravatar = 
    gravatar_url = "https://secure.gravatar.com/avatar/#{gravatar_id}?s=#{size}"
    image_tag(gravatar_url, alt: user.name, class: "gravatar")
  end
   
   # function to calculate BMI. If we change the height value to inches in the database, remove the *12.0
   def calc_BMI(current_user)
      ((current_user.weight/((current_user.height*12.0) ** 2)) * 703).round(2)
   end

end
