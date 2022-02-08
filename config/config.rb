module ThirtyFiveMilimeters
	Config = SuperConfig.new(raise_exception: false) do
    mandatory :database_url, string
		mandatory :tz, string 
    credential :encryptor_secret
    # credential :encryption_key
    # optional :app_name, string
    # optional :wait, string
    # optional :force_ssl, bool, true
  end
end