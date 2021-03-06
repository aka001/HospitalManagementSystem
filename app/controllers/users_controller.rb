require 'json'

class UsersController < ApplicationController
  #before_action :set_user, only: [:show, :edit, :update, :destroy]
  before_filter :confirm_logged_in

  # GET /users
  # GET /users.json
  def change_password_action
     pass=params.require(:passwordit).permit(:old_password, :new_password, :new_password_confirmation)
     passit=pass['new_password']
     print passit
     userit=User.find(session[:user_id])
     saltit=User.hash_with_salt(pass['old_password'],'salt')
     if pass[:new_password] == pass[:new_password_confirmation]
      if saltit == userit.password
         userit.password=User.hash_with_salt(passit,'salt')
        if userit.save
           flash[:message]="success"
        else
           flash[:message]="failure"
        end
        redirect_to(:controller => 'access', :action =>'change_password')
      else
         flash[:message]="failure"
         redirect_to(:controller => 'access', :action=>'change_password')
      end
    else
      flash[:message]="failure_password"
      redirect_to(:controller => 'access', :action => 'change_password')
    end
  end
  def index
    @users = User.all
  end

  # GET /users/1
  # GET /users/1.json
  def show
   
  end

  # GET /users/new
  def new
    @user = User.new
  end

  # GET /users/1/edit
  def edit
  end

  # POST /users
  # POST /users.json
  def prescriptionpdf
  	@p=Prescription.find(params[:pno])
	respond_to do |format|
		format.html
		format.pdf do
		pdf=PDF::Writer.new
		pdf.text "test"
			send_data pdf.render,:filename=>'greenprescription.pdf',:type=>'application/pdf',:disposition=>'inline'
		end
	end
  end

  	
  def create
    @user = User.new(user_params)
    
    respond_to do |format|
      if @user.save
        format.html { redirect_to @user, notice: 'User was successfully created.' }
        format.json { render action: 'show', status: :created, location: @user }
      else
        format.html { render action: 'new' }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end
  
  def appointment
    @doctors=Doctor.all
    @user=User.find(session[:user_id])
    @patient=@user.patients.first
  end
  def request_appointment
    @user_id=params[:docid]
    @user=User.find(@user_id)
    @doctors=@user.doctors.first
    @doc_id=@doctors.id
    @user_id2=session[:user_id]
    @user2=User.find(@user_id2)
    @patients=@user2.patients.first
    @pat_id=@patients.id
  end
  def confirm_appointment
    #attribute=params.require(:appointment).permit(:dateit, :id1, :id2)
    #puts attribute.inspect
    app=Appointment.new
    app.doctor_id=params[:id1]
    app.patient_id=params[:id2]
    #app.dateit = DateTime.new(attribute["dateit(1i)"].to_i,attribute["dateit(2i)"].to_i,attribute["dateit(3i)"].to_i,attribute["dateit(4i)"].to_i,attribute["dateit(5i)"].to_i)
    app.dateit=params[:dateit].to_datetime
    app.status='pending'
    if app.save
      str='You have a new pending request from '
      str+= Patient.find(params[:id2]).name
      ActiveSupport::Notifications.instrument("appointment",user_id:Doctor.find(params[:id1]).users.first.id,links:"/users/show_appointment?end="+params[:dateit].to_datetime.to_s(:db)+"&start="+params[:dateit].to_datetime.to_s(:db)+"&submit=Filter",type:"request",notification:str)
    redirect_to(:action => 'appointment_patient_favourite')
    else
    redirect_to request_appointment(:id1 => idd1, :id2 => idd2)
   end
  end
  def show_appointment user=User.find(session[:user_id])
    if user.roles.first.name=='patient'
      redirect_to 'appointment'
    end
    @all=0
    if params[:submit]=='Filter'and params[:start]!="" and params[:end]!=""
    @start=DateTime.parse(params[:start].to_datetime.to_s())
    @end=DateTime.parse(params[:end].to_datetime.to_s())
    @startinit=DateTime.parse(params[:start].to_datetime.to_s())
    @endinit=DateTime.parse(params[:end].to_datetime.to_s())
    elsif params[:submit]=='This month'
    @startinit=DateTime.parse(DateTime.now.beginning_of_month().to_s())
    @endinit=DateTime.parse(DateTime.now.end_of_month().to_s())
    @start=DateTime.parse(DateTime.now.beginning_of_month().to_s())
    @end=DateTime.parse(DateTime.now.end_of_month().to_s())
    elsif params[:submit]=='All'
      @all=1
      @startinit=nil
      @endinit=nil
      @start=DateTime.parse(DateTime.now.beginning_of_day().to_s())
      @end=DateTime.parse(DateTime.now.end_of_day().to_s())
    else
    @start=DateTime.parse(DateTime.now.beginning_of_day().to_s())
    @end=DateTime.parse(DateTime.now.end_of_day().to_s())
    @startinit=DateTime.parse(DateTime.now.beginning_of_day().to_s())
    @endinit=DateTime.parse(DateTime.now.end_of_day().to_s())
    end
    use=session[:user_id]
    @user=User.find(use)
    @doc_id=@user.doctors.first
    @doc_id=@doc_id.id
    @app=Appointment.where(doctor_id: @doc_id)
  end
  def history_appointment_patient
   @default=0
    @patient=User.find(session[:user_id]).patients.first
    @app=Appointment.where(patient_id: @patient.id)
    @all=0
    if params[:submit]=='Filter'and params[:start]!="" and params[:end]!=""
    @start=DateTime.parse(params[:start].to_datetime.to_s(:db))
    @end=DateTime.parse(params[:end].to_datetime.to_s(:db))
    @startinit=DateTime.parse(params[:start].to_datetime.to_s(:db))
    @endinit=DateTime.parse(params[:end].to_datetime.to_s(:db))
    elsif params[:submit]=='This month'
    @startinit=DateTime.parse(DateTime.now.beginning_of_month().to_s(:db))
    @endinit=DateTime.parse(DateTime.now.end_of_month().to_s(:db))
    @start=DateTime.parse(DateTime.now.beginning_of_month().to_s(:db))
    @end=DateTime.parse(DateTime.now.end_of_month().to_s(:db))
    elsif params[:submit]=='All'
      @all=1
      @startinit=nil
      @endinit=nil
      @start=DateTime.parse(DateTime.now.beginning_of_day().to_s(:db))
      @end=DateTime.parse(DateTime.now.end_of_day().to_s(:db))
    else
      @start=DateTime.parse(DateTime.now.beginning_of_day().to_s(:db))
      @end=DateTime.parse(DateTime.now.end_of_day().to_s(:db))
      @startinit=DateTime.parse(DateTime.now.beginning_of_day().to_s(:db))
      @endinit=DateTime.parse(DateTime.now.end_of_day().to_s(:db))
      @default=1
    end
  end
  def history_appointment_doctor
    @id=params[:id]
    @app=Appointment.find(@id)
    @doc_id=@app.doctor_id
    @pat_id=@app.patient_id
    @app_search=Appointment.where(:doctor_id => @doc_id, :patient_id => @pat_id).select("id")
    @app_search.map {|i| i.id }
    print @app_search
    @prescript=Prescription.where("appointment_id IN (?)",@app_search).order('created_at DESC')
    @prescription=Prescription.new
  end
  def prescription_form_doctor
    app_id=params[:id]
    app=Appointment.find(app_id)
    attribute=params.require(:prescription).permit(:prognosis, :remarks, medicines_attributes: [:name,:quantity,:sigcode,:_destroy],diags_attributes:[:name,:comments,:_destroy])
    @prescription=Prescription.new(attribute)
    @prescription.appointment_id=app_id
#prescription = Prescription.new(:appointment_id => app_id, :diagnostictest => attribute['diagnostictest'], :drugs => attribute['drugs'], :diagnostictest_result => attribute['diagnostictest_result'], :remark => attribute['remark'])
    if @prescription.save
      app.status="served"
      app.save
      str='You were prescribed medicine by Dr.'
      str+=User.find(session[:user_id]).doctors.name
      ActiveSupport::Notifications.instrument("appointment",user_id:Patient.find(app.patient_id).users.first.id,links:"/users/history_appointment_patient?end="+app.dateit.to_s(:db)+"&start="+app.dateit.to_s(:db)+"&submit=Filter",type:app.status,notification:str)
      redirect_to(:action => 'show_prescription', :id => app_id)
    else
      render('prescription_form_doctor')
    end
  end
  def action_appointment_doctor
    stat=params[:id1]
    ap_id=params[:app_id]
    callit=params[:callit]
    print stat, ap_id
    findit=Appointment.find(ap_id)
    findit.status=stat
    dcname=Doctor.find(findit.doctor_id).name
    #redirect_to(:action => 'show_doctor')
    if findit.save
      str='Your appointment on '
      str+=findit.dateit.to_s
      str+=' with Dr.'
      str+= dcname.to_s
      str+=' was '
      str+=findit.status
      str+="ed"
      ActiveSupport::Notifications.instrument("appointment",user_id:Patient.find(findit.patient_id).users.first.id,links:"/users/history_appointment_patient?end="+findit.dateit.to_s(:db)+"&start="+findit.dateit.to_s(:db)+"&submit=Filter",type:findit.status,notification:str)
      flash[:notify]="Appointment with "+ Patient.find(findit.patient_id).name+findit.status+"ed"
      #render(:action => 'show_appointment')
      if callit=='appointment_patient_favourite'
      redirect_to(:action => 'appointment_patient_favourite')
      elsif callit=='history_appointment_favourite'
        redirect_to(:action => 'history_appointment_patient')
      elsif callit='show_appointment'
        redirect_to(:action => 'show_appointment')
      end
    else
      flash[:notify]="Oops! Something went wrong"
      if callit=='appointment_patient_favourite'
      redirect_to(:action => 'appointment_patient_favourite')
      elsif callit=='history_appointment_favourite'
        redirect_to(:action => 'history_appointment_patient')
      end
    end
    
      #render(:action => 'show_appointment')
    #redirect_to(:action => 'show_appointment')
  end
  
  def prescription_doctor
    @id=params[:id]
    @app=Appointment.find(@id)
    @doc_id=@app.doctor_id
    @pat_id=@app.patient_id
    @app_search=Appointment.where(:doctor_id => @doc_id, :patient_id => @pat_id).select("id")
    @app_search.map {|i| i.id }
    print @app_search
    @prescript=Prescription.where("appointment_id IN (?)",@app_search).order('created_at DESC')
    @prescription=Prescription.new
    names=Med.where(true).select("name")
    names=names.map{|i| i.name}
    names=names.join('","')
    names="[\""+names+"\"]"
    @name=names
    sig=Sigcode.where(true).select("name")
    sig=sig.map{|i| i.name}
    sig=sig.join('","')
    sig="[\""+sig+"\"]"
    @sigs=sig
    
  end
  # def prescription_form_doctor
    # app_id=params[:id]
    # app=Appointment.find(app_id)
    # attribute=params.require(:prescription).permit(:prognosis, :remarks, medicines_attributes: [:name,:quantity,:sigcode,:_destroy],diags_attributes:[:name,:comments])
    # @prescription=Prescription.new(attribute)
    # @prescription.appointment_id=app_id
# #prescription = Prescription.new(:appointment_id => app_id, :diagnostictest => attribute['diagnostictest'], :drugs => attribute['drugs'], :diagnostictest_result => attribute['diagnostictest_result'], :remark => attribute['remark'])
  # if @prescription.save
      # app.status="served"
      # app.save
      # str='You were prescribed medicine by Dr.'
      # str+=User.find(session[:user_id]).doctors.name
      # ActiveSupport::Notifications.instrument("appointment",user_id:Patient.find(app.patient_id).users.first.id,links:"/users/history_appointment_patient?end="+app.dateit.to_s(:db)+"&start="+app.dateit.to_s(:db)+"&submit=Filter",type:app.status,notification:str)
    # redirect_to(:action => 'show_appointment')
  # else
    # render('prescription_form_doctor')
  # end
  # end

  def show_prescription
    appid=params[:id]
    @prescription=Prescription.where(:appointment_id => appid)
    @prescription=@prescription.first
    @appointment=Appointment.find(appid)
    @doctor=Doctor.find(@appointment.doctor_id)
    @patient=Patient.find(@appointment.patient_id)
    @medicine=@prescription.medicines
    @diagnostic=@prescription.diags
  end
  @result=['hie']
  def search_doctor
    cnt=0
    @user=User.find(session[:user_id])
    @patient=@user.patients.first
    @search=[]
    @doctor=Doctor.all
    @doctors=params[:id]
    # p @doctors
    if (@doctors != nil)
      @doctors=JSON.parse(@doctors) 
    end
    @doit1=['name','qualification','specialised_fields','salary']
    @doit2=['name','qualification','specialised_fields','salary']
  end
  def favourite_action
    x=params[:id]
    doc=params[:id1]
    pat=User.find(session[:user_id]).patients.first.id
    print x
    if x=="1"
      x=Favourite.new(:doctor_id => doc, :patient_id => pat)
      x.save
    else
      x=Favourite.where(:doctor_id => doc, :patient_id => pat).delete_all
    end
    if params[:redirect]=="1"
      redirect_to(:action => 'advanced_search_doctor')
    elsif params[:redirect]=="2"
      redirect_to(:actino => 'favourite_doctor_list')
    end
  end
  #@result=Doctor.search(@searchit,@check)
  def search_perform_function
    @check=params[:name]
    @searchit=params[:query]
    @result=Doctor.search(@searchit, @check)
    @result= @result.to_json;
    #redirect_to(:action => 'search_doctor', :result => result)
    redirect_to(:action => 'search_doctor', :id => @result)
  end
  #to perform search on basis on three categories and add to favourites
  def advanced_search_doctor
    @patient=User.find(session[:user_id]).patients.first
    @city=City.all
    @spec=Specialisation.all
    @doctors=params[:result]
    if @doctors != nil
      @doctors=JSON.parse(@doctors)
    end
  end
  def advanced_search_perform_function
    name=params[:name]
    spec=params[:spec]
    city=params[:city]
    puts "!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"
    puts params
    if name.empty?
      name=nil
    end
    if spec.empty?
      spec=nil
    end
    if city.empty?
      city=nil
    end
    inp=Doctor.advanced_search(name, spec, city)
    puts inp.inspect
    inp=inp.to_json
    redirect_to(:action => 'advanced_search_doctor', :result => inp)
  end
  #it shows appointments to patients they have their favourite doctors appointments on top... 
  def appointment_patient_favourite
    @doctors=Doctor.all
    @patient=User.find(session[:user_id]).patients.first
    @fav=Favourite.where(:patient_id => @patient.id)
  end
  def favourite_doctor_list
    @patient=User.find(session[:user_id]).patients.first
    @fav=Favourite.where(:patient_id => @patient.id)
  end
  def new_doctor 
  @user=User.new
  end
  def list_doctor
    @doctors=Doctor.all
    @role=User.find(session[:user_id]).roles.first
  end
  def show_doctor
    @user=User.find(params[:id])
    @doctor=@user.doctors.first
  end
  def create_doctor
    attribute=params.require(:doctor).permit(:username, :password, :name, :gender, :date_of_birth, :contact_number, :address, :qualification, :experience_years, :specialised_fields,:salary,:country)
    user=User.new(:username => attribute['username'], :password => User.hash_with_salt(attribute[:password], 'salt'))
    doctor= Doctor.new(:name => attribute['name'], :gender => attribute['gender'], :date_of_birth => attribute['date_of_birth'],:country => attribute['country'], :address => attribute['address'],:qualification => attribute['qualification'], :experience_years => attribute['experience_years'], :specialised_fields => attribute['specialised_fields'],:salary => attribute['salary'], :contact_number => attribute['contact_number'])
    if user.save && doctor.save
      user.doctors << doctor
      puts user.doctors
      user.roles << Role.where(:name => 'doctor').first
      #user.doctors=doctor
      redirect_to(:action => 'list_doctor')
    else
      render('new_doctor')
    end
  end
  def update_doctor
    attribute=params.require(:doctor).permit(:username, :name, :gender, :date_of_birth, :contact_number, :address, :qualification, :experience_years, :specialised_fields,:salary, :country)
    @users=User.find(params[:id])
    @doctors=@users.doctors.first
    if (@users.update_attributes(:username => attribute['username'])) && (@doctors.update_attributes(:name => attribute['name'], :country => attribute['country'], :gender => attribute['gender'], :date_of_birth => attribute['date_of_birth'], :address => attribute['address'],:qualification => attribute['qualification'], :experience_years => attribute['experience_years'], :specialised_fields => attribute['specialised_fields'],:salary => attribute['salary'], :contact_number => attribute['contact_number']))
      redirect_to(:action => 'list_doctor')
    else
      render('edit_doctor')
    end
  end
  def delete_doctor
    @users=User.find(params[:id])
    @doctor=@users.doctors.first
  end
  def destroy_doctor
    @users=User.find(params[:id])
    Doctor.find(@users.doctors.first['id']).delete
    @users.destroy
    redirect_to(:action => 'list_doctor')
  end
  def edit_doctor
    @users=User.find(params[:id])
    @doctors=@users.doctors.first
    
  end
  def new_assistant 
  end
  def list_assistant
    @assistants=Assistant.all
    @role=User.find(session[:user_id]).roles.first
  end
  def show_assistant
    @user=User.find(params[:id])
    @assistant=@user.assistants.first
  end
  def create_assistant
    attribute=params.require(:assistant).permit(:username, :password, :name, :gender, :date_of_birth, :permanent_address, :email, :education, :biodata, :salary)
    user=User.new(:username => attribute['username'], :password => User.hash_with_salt(attribute[:password], 'salt'))
    assistant= Assistant.new(:name => attribute['name'], :gender => attribute['gender'], :date_of_birth => attribute['date_of_birth'], :permanent_address => attribute['permanent_address'],
                    :email => attribute['email'], :education => attribute['education'], :biodata => attribute['biodata'],
                    :salary => attribute['salary'])
    if user.save && assistant.save
      user.assistants << assistant
      puts user.assistants
      user.roles << Role.where(:name => 'assistant').first
      #user.doctors=doctor
      redirect_to(:action => 'list_assistant')
    else
      render('new_assistant')
    end
  end
  def edit_assistant
    @users=User.find(params[:id])
    @assistants=@users.assistants.first
  end
  def update_assistant
    @users=User.find(params[:id])
    @assistants=@users.assistants.first
    attribute=params.require(:assistant).permit(:username, :password, :name, :gender, :date_of_birth, :permanent_address, :email, :education, :biodata, :salary)
    #attribute=params.require(:assistant).permit(:username, :password, :name, :gender, :date_of_birth, :address, :qualification, :experience_years, :specialised_fields,:salary)
    if (@users.update_attributes(:username => attribute['username'])) && (@assistants.update_attributes(:name => attribute['name'], :gender => attribute['gender'], :date_of_birth => attribute['date_of_birth'], :permanent_address => attribute['permanent_address'],
                    :email => attribute['email'], :education => attribute['education'], :biodata => attribute['biodata'],
                    :salary => attribute['salary']))
      redirect_to(:action => 'list_assistant')
    else
      render('new_assistant')
    end
  end
  def delete_assistant
    @users=User.find(params[:id])
  end
  def destroy_assistant
    @users=User.find(params[:id])
    Assistant.find(@users.assistants.first.id).delete()
    @users.destroy
    redirect_to(:action => 'list_assistant')
  end
  
  def new_patient 
  end
  def list_patient
    @patients=Patient.all
    @role=User.find(session[:user_id]).roles.first
  end
  def show_patient
    @user=User.find(params[:id])
    @patient=@user.patients.first
  end
  def create_patient
    attribute=params.require(:patient).permit(:username, :password, :name, :gender, :age, :address, :contact_number)
    user=User.new(:username => attribute['username'], :password => User.hash_with_salt(attribute[:password], 'salt'))
    patient= Patient.new(:name => attribute['name'], :gender => attribute['gender'], :age => attribute['age'], :address => attribute['address'],
                    :contact_number => attribute['contact_number'])
    if user.save && patient.save
      user.patients << patient
       user.roles << Role.where(:name => 'patient').first
      #user.doctors=doctor
      redirect_to(:action => 'list_patient')
    else
      render('new_patient')
    end
  end
  def edit_patient
    @users=User.find(params[:id])
    @patients=@users.patients.first
  end
  def update_patient
    @users=User.find(params[:id])
    @patients=@users.patients.first
    attribute=params.require(:patient).permit(:username, :password, :name, :gender, :age, :address, :contact_number)
    print attribute
    if (@users.update_attributes(:username => attribute['username'])) && (@patients.update_attributes(:name => attribute['name'], :gender => attribute['gender'], :age => attribute['age'], :address => attribute['address'],
                    :contact_number => attribute['contact_number']))
      redirect_to(:action => 'list_patient')
    else
      render('new_patient')
    end
  end
  def delete_patient
    @users=User.find(params[:id])
  end
  def destroy_patient
    @users=User.find(params[:id])
    Patient.find(@users.patients.first[:id]).delete
    @users.destroy
    redirect_to(:action => 'list_patient')
  end
  
  # PATCH/PUT /users/1
  # PATCH/PUT /users/1.json
  def update
    respond_to do |format|
      if @user.update(user_params)
        format.html { redirect_to @user, notice: 'User was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /users/1
  # DELETE /users/1.json
  def destroy
    @user.destroy
    respond_to do |format|
      format.html { redirect_to users_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_params
      params.require(:user).permit(:username, :salt, :password)
    end
end
