class NotificationsController < ApplicationController
  before_action :set_notification, only: %i[ show edit update destroy ]

  # GET /notifications or /notifications.json
  

  # GET /notifications/1 or /notifications/1.json
 
  # GET /notifications/new
 

  # GET /notifications/1/edit
  

  # POST /notifications or /notifications.json
  

  # PATCH/PUT /notifications/1 or /notifications/1.json
  

  # DELETE /notifications/1 or /notifications/1.json
  

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_notification
      @notification = Notification.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def notification_params
      params.require(:notification).permit(:description, :active, :conditions, :actions)
    end
end