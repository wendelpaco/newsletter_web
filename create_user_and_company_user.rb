if User.find_by_email('tais.messner@mazars.com.br').nil?
  User.create(
    name: 'Tais Messner',
    email: 'tais.messner@mazars.com.br',
    password: '123456',
    terms_accepted_at: Time.current,
    deployment_team: true, # mazars
    daily_notification: [],
    duty_warning_notification: [],
    duty_movement_notification: [],
    daily_movements_notification: []
  )
  puts 'Usuário cadastrado com sucesso.'
else
  puts 'Usuário já está cadastrado no Rupee'
end

companies = User.find_by_email('leticia.c.oliveira@mazars.com.br').companies
if companies
  companies.each do |company|
    CompanyUser.create(
      company: company,
      user: User.find_by_email('tais.messner@mazars.com.br'),
      access_type: 'assistant',
      accessible_duty_types: ['accounting'],
      duty_warning_notification: [],
      duty_movement_notification: [],
      daily_movements_notification: [],
      send_creation_mail: false
    )
  end
else
  puts 'Não existe o usuário ou o mesmo não possui empresas associadas'
end
