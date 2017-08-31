class EmailsController < ApplicationController

  def index
    @emails = Email.all

  end

  # DELETE /emails/1
  # DELETE /emails/1.json
  def destroy
     @email = Email.find(params[:id])
     @email.destroy

     respond_to do |format|
        format.html { redirect_to emails_url, notice: 'Email was succefully destroyed' }
        format.json { head :no_content }
        format.js   { render :layout => false }
     end

  end

  private

  def set_email
    @email = Email.find(params[:id])
  end

end
