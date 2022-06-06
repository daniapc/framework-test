json.extract! bancodado, :id, :nome, :cpf, :nascimento, :genero, :rg, :entidade, :created_at, :updated_at
json.url bancodado_url(bancodado, format: :json)
