class FormContactsController < ApplicationController
  # GET /form_contacts
  # GET /form_contacts.xml
 before_filter :logged_only, :except=>[:new,:create,:gracias]

  def index
    @form_contacts = FormContact.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @form_contacts }
    end
  end

  # GET /form_contacts/1
  # GET /form_contacts/1.xml
  def show
    @form_contact = FormContact.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @form_contact }
    end
  end

  # GET /form_contacts/new
  # GET /form_contacts/new.xml
  def new
    @form_contact = FormContact.new
    @cours = Course.find(:all)
    @occupations = Occupation.all

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @form_contact }
    end
  end

  # GET /form_contacts/1/edit
  def edit
    @form_contact = FormContact.find(params[:id])
  end

  # POST /form_contacts
  # POST /form_contacts.xml
  def create
    @form_contact = FormContact.new(params[:form_contact])
 @cours = Course.find(:all)
    @occupations = Occupation.all


    respond_to do |format|
      if @form_contact.save
        flash[:notice] =  ' '


#'FormContact was successfully created.'
       # format.html { redirect_to("gracias") }
       # format.xml  { render :xml => @form_contact, :status => :created, :location => @form_contact }

	format.html { render :action => "gracias" }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @form_contact.errors, :status => :unprocessable_entity }
      end
    end
  end

  def gracias
	
	

  end
  # PUT /form_contacts/1
  # PUT /form_contacts/1.xml
  def update
    @form_contact = FormContact.find(params[:id])

    respond_to do |format|
      if @form_contact.update_attributes(params[:form_contact])
        flash[:notice] = 'FormContact was successfully updated.'
        format.html { redirect_to(@form_contact) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @form_contact.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /form_contacts/1
  # DELETE /form_contacts/1.xml
  def destroy
    @form_contact = FormContact.find(params[:id])
    @form_contact.destroy

    respond_to do |format|
      format.html { redirect_to(form_contacts_url) }
      format.xml  { head :ok }
    end
  end
end
