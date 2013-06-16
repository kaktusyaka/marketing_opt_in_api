get '/' do
  'Hello World!!!'
end

post '/marketings' do
  marketing = Marketing.new params[:marketing]
  if marketing.save
    status 201
  else
    marketing.errors.to_json
  end
end

put '/marketing/:id' do
  marketing = Marketing.find params[:id]
  return status 404 if marketing.nil?
  if marketing.update_attributes params[:marketing]
    status 202
  else
    marketing.errors.to_json
  end
end

delete '/marketing/:id' do
  marketing = Marketing.find params[:id]
  return status 404 if marketing.nil?
  if marketing.destroy
    status 202
  else
    marketing.errors.to_json
  end
end
