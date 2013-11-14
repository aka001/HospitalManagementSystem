require 'json'
class UsersController < ApplicationController
  #before_action :set_user, only: [:show, :edit, :update, :destroy]
  before_filter :confirm_logged_in

  # GET /users
  # GET /users.json
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
    @user_id=params[:id1]
    @user=User.find(@user_id)
    @doc_id=@user.doctors.first.id
    @doctors=Doctor.find(@doc_id)
    @user_id2=params[:id2]
    @user2=User.find(@user_id2)
    @pat_id=@user2.patients.first.id
    @patients=Patient.find(@pat_id)
  end
  def confirm_appointment
    attribute=params.require(:appointment).permit(:dateit)
    print "hie"
    puts attribute.inspect
    app=Appointment.new
    idd1=params[:id1]
    idd2=params[:id2]
    app.doctor_id=params[:id1]
    app.patient_id=params[:id2]
    app.dateit=attribute[:dateit]
    @x=app.dateit
    app.status='pending'
#    if app.save
#	  redirect_to(:action => 'appointment')
#   else
#   	redirect_to request_appointment(:id1 => idd1, :id2 => idd2)
#   end
  end
  def show_appointment
    use=session[:user_id]
    @user=User.find(use)
    @doc_id=@user.doctors.first
    @doc_id=@doc_id.id
    @app=Appointment.where(doctor_id: @doc_id)
  end
  def action_appointment_doctor
    stat=params[:id1]
    doc_id=params[:id2]
    pat_id=params[:id3]
    print stat, doc_id, pat_id
    findit=Appointment.where(doctor_id: doc_id, patient_id: pat_id).first
    findit.status=stat
    #redirect_to(:action => 'show_doctor')
    if findit.save
      redirect_to(:action => 'show_appointment')
    else
      redirect_to(:action => 'show_appointment')
    end
    #redirect_to(:action => 'show_appointment')
  end
  def hisory_appointment_doctor
    @user_id=session[:user_id]
    @app=Appointment.where(:doctor_id => @user_id)
  end
  
  def prescription_doctor
    @id=params[:id]
  end
  def prescription_form_doctor
    app_id=params[:id]
    attribute=params.require(:prescription).permit(:diagnostictest, :drugs, :diagnostictest_result, :remark)
    prescription = Prescription.new(:appointment_id => app_id, :diagnostictest => attribute['diagnostictest'], :drugs => attribute['drugs'], :diagnostictest_result => attribute['diagnostictest_result'], :remark => attribute['remark'])
    if prescription.save
      redirect_to(:action => 'show_appointment')
    else
      render('prescription_form_doctor')
    end
  end
  def show_prescription
    appid=params[:id]
    @prescription=Prescription.where(:appointment_id => appid)
    @prescription=@prescription.first
  end
  @result=['hie']
  def search_doctor
    cnt=0
    @user=User.find(session[:user_id])
    @patient=@user.patients.first
    @search=[]
    @doctor=Doctor.all
    @doctor.each do |doctor|
      @search.insert(cnt, doctor.name)
      cnt+=1
    end
    @doctors=params[:id]
    # p @doctors
    if (@doctors != nil)
      @doctors=JSON.parse(@doctors) 
    end
    @doit1=['name','qualification','specialised_fields','salary']
    @doit2=['name','qualification','specialised_fields','salary']
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
  
  def new_doctor 
  end
  def list_doctor
    @doctors=Doctor.all
  end
  def show_doctor
    @user=User.find(params[:id])
    @doctor=@user.doctors.first
  end
  def create_doctor
    attribute=params.require(:doctor).permit(:username, :password, :name, :gender, :date_of_birth, :address, :qualification, :experience_years, :specialised_fields,:salary)
    user=User.new(:username => attribute['username'], :password => User.hash_with_salt(attribute[:password], 'salt'))
    doctor= Doctor.new(:name => attribute['name'], :gender => attribute['gender'], :date_of_birth => attribute['date_of_birth'], :address => attribute['address'],
                    :qualification => attribute['qualification'], :experience_years => attribute['experience_years'], :specialised_fields => attribute['specialised_fields'],
                    :salary => attribute['salary'])
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
    @users=User.find(params[:id])
    @doctors=User.doctors.first
    if (@users.update_attributes(:username => attribute['username'])) && (@doctors.update_attribute(:name => attribute['name'], :gender => attribute['gender'], :date_of_birth => attribute['date_of_birth'], :address => attribute['address'],
                    :qualification => attribute['qualification'], :experience_years => attribute['experience_years'], :specialised_fields => attribute['specialised_fields'],
                    :salary => attribute['salary']))
      redirect_to(:action => 'list_doctor')
    else
      render('new')
    end
  end
  def delete_doctor
    @users=User.find(params[:id])
  end
  def destroy_doctor
    @users=User.find(params[:id])
    Doctor.find(@users.doctors.first['id']).destroy
    @users.destroy
    redirect_to(:action => 'list_doctor')
  end
  def edit_doctor
    @users=User.find(params[:id])
    @doctors=@users.doctors.first
  end
  def update_doctor
    @users=User.find(params[:id])
    @doctors=@users.doctors
  end
  
  def new_assistant 
  end
  def list_assistant
    @assistants=Assistant.all
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
    @assistants=User.assistants.first
    attribute=params.require(:assistant).permit(:username, :password, :name, :gender, :date_of_birth, :permanent_address, :email, :education, :biodata, :salary)
    #attribute=params.require(:assistant).permit(:username, :password, :name, :gender, :date_of_birth, :address, :qualification, :experience_years, :specialised_fields,:salary)
    if (@users.update_attributes(:username => attribute['username'])) && (@assistants.update_attribute(:name => attribute['name'], :gender => attribute['gender'], :date_of_birth => attribute['date_of_birth'], :permanent_address => attribute['permanent_address'],
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
    @users.assistants.destroy
    @users.destroy
    redirect_to(:action => 'list_assistant')
  end
  
  def new_patient 
  end
  def list_patient
    @patients=Patient.all
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
    @patients=User.patients.first
    attribute=params.require(:patient).permit(:username, :password, :name, :gender, :age, :address, :contact_number)
    if (@users.update_attributes(:username => attribute['username'])) && (@assistants.update_attribute(:name => attribute['name'], :gender => attribute['gender'], :age => attribute['age'], :address => attribute['address'],
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
