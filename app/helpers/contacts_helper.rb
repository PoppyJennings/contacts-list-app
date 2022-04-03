module ContactsHelper
# Can't get this to work!
# def view_redirect
#   respond_to do |format|
#     if controller_name == 'contacts' && action_name == 'index'
#       format.html { redirect_to index, notice: 'Contact was successfully updated.' }
#       format.json { render :index, status: :ok, location: @contact }
#     elsif controller_name == 'contacts' && action_name == 'show'
#       format.html { redirect_to contact_url(@contact), notice: 'Contact was successfully updated.' }
#       format.json { render :show, status: :ok, location: @contact }
#     else
#       format.html { render :edit, status: :unprocessable_entity }
#       format.json { render json: @contact.errors, status: :unprocessable_entity }
#     end
#   end
# end
end
