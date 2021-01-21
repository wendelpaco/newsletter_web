unless User.find_by_email("luani.santo@mazars.com.br").nil?
  puts "Usuário já está cadastrado no Rupee"
else
  User.create(
    name: "Luani Santo",
    email: "luani.santo@mazars.com.br",
    password: "123456",
    terms_accepted_at: Time.current,
    deployment_team: true, # mazars
    daily_notification: [],
    duty_warning_notification: [],
    duty_movement_notification: [],
    daily_movements_notification: []
  )
  puts "Usuário cadastrado com sucesso."
end


companies = User.find_by_email('bruno.bahia@mazars.com.br').companies
if companies
    companies.each do |company|
      CompanyUser.create(
        company: company,
        user: User.find_by_email("luani.santo@mazars.com.br"),
        access_type: "assistant",
        accessible_duty_types: ["fiscal"],
        duty_warning_notification: [],
        duty_movement_notification: [],
        daily_movements_notification: [],
        send_creation_mail: false
      )
    end
else
  puts "Não existe o usuário ou o mesmo não possui empresas associadas"  
end


##############################################################################

unless User.find_by_email("juliana.silva@mazars.com.br").nil?
  puts "Usuário já está cadastrado no Rupee"
else
  User.create(
    name: "Juliana Silva",
    email: "juliana.silva@mazars.com.br",
    password: "123456",
    terms_accepted_at: Time.current,
    deployment_team: true, # mazars
    daily_notification: [],
    duty_warning_notification: [],
    duty_movement_notification: [],
    daily_movements_notification: []
  )
  puts "Usuário cadastrado com sucesso."
end

companies = User.find_by_email('sthefany.abreu@mazars.com.br').companies
if companies
    companies.each do |company|
      CompanyUser.create(
        company: company,
        user: User.find_by_email("juliana.silva@mazars.com.br"),
        access_type: "senior_analyst",
        accessible_duty_types: ["fiscal"],
        duty_warning_notification: [],
        duty_movement_notification: [],
        daily_movements_notification: [],
        send_creation_mail: false
      )
    end
else
  puts "Não existe o usuário ou o mesmo não possui empresas associadas"  
end