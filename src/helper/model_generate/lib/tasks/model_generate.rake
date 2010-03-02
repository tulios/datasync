namespace :model do
	
	desc "Executa todos os arquivos da pasta db/rb/"
  task :generate, :package, :path, :test_class do |t, args|
    puts "\n=================\nARGS\n================="
    puts args.inspect   
    puts "=================\n"   
    require 'lib/model_generator'
    ModelGenerator.run!(args[:package], args[:path], args[:test_class])
  end
	  
end