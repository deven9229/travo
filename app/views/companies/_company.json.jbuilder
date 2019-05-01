json.extract! company, :id, :company_name, :year_founded, :license_number, :created_at, :updated_at
json.url company_url(company, format: :json)
