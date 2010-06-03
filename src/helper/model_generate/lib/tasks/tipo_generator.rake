namespace :tipo do
	
	desc "Executa todos os arquivos da pasta db/rb/"
  task :generate do
    puts "\n=================\nARGS\n================="
    puts ENV['TABLE_NAMES']   
    puts "=================\n"   
    require 'lib/tipo_generator'
    TipoGenerator.run!(ENV['TABLE_NAMES'])
  end
	  
end