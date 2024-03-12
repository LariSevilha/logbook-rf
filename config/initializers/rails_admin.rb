RailsAdmin.config do |config|
  config.asset_source = :sprockets

  config.authenticate_with do
    warden.authenticate! scope: :user
  end
  config.current_user_method(&:current_user)

  ### User ###
  config.model "User" do
    navigation_label "Gerenciar Usuários"
    list do
      field :id 
      field :name
      field :email 
    end
    edit do 
      field :name
      field :email  
      field :password   
    end
  end
    
  #trainig
  config.model 'Training' do
    navigation_label 'Treino'
    list do
      field :date
    end
    edit do
      field :date
      field :exercises
    end
  end
  
  #exercise
  config.model 'Exercise' do
    visible false
    edit do 
      field :exercicio
      field :progressions
    end
  end
  
  #progression
  config.model 'Progression' do
    visible false
    edit do
      field :set
      field :rep
      field :weight
      field :proposal
      field :level
    end
  end
  
  config.actions do
    dashboard                     # mandatory
    index                         # mandatory
    new
    export
    bulk_delete
    show
    edit
    delete
    show_in_app

    ## With an audit adapter, you can add:
    # history_index
    # history_show
  end
end
