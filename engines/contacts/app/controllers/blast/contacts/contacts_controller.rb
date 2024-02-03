# frozen_string_literal: true

module Blast::Contacts
  class ContactsController < Blast::ApplicationController
    before_action :set_contact, only: [:show, :edit, :update, :destroy]

    # GET /contacts
    def index
      @contacts = Contact.all
    end

    # GET /contacts/1
    def show
    end

    # GET /contacts/new
    def new
      @contact = Contact.new
    end

    # GET /contacts/1/edit
    def edit
    end

    # POST /contacts
    def create
      @contact = Contact.new(contact_params)

      if @contact.save
        redirect_to [blast, @contact], notice: 'Contact was successfully created.'
      else
        render :new
      end
    end

    # PATCH/PUT /contacts/1
    def update
      if @contact.blast.update(contact_params)
        redirect_to [blast, @contact], notice: 'Contact was successfully updated.'
      else
        render :edit
      end
    end

    # DELETE /contacts/1
    def destroy
      @contact.destroy
      redirect_to blast.contacts_url, notice: 'Contact was successfully destroyed.'
    end

    private
      # Use callbacks to share common setup or constraints between actions.
      def set_contact
        @contact = Contact.find(params[:id])
      end

      # Only allow a trusted parameter "white list" through.
      def contact_params
        params.require(:contact).permit(:first_name, :last_name, :company,
                                        :email, :phone, :user_id)
      end
  end
end
