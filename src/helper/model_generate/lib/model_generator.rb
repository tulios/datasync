require 'lib/jtds-1.2.4.jar'   
include Java                   

require 'rubygems'
require 'active_record'
                     
require 'config/environment.rb'
load 'config/boot.rb'
               
module ModelGenerator  
             
  TAB = "    "
  TAB2 = "#{TAB}#{TAB}"
  TAB3 = "#{TAB2}#{TAB}"         
           
  def self.run!(package, path, test_class) 
    abstract = ModelAbstract.new(package, path, test_class)                      
    abstract.generate_models
    abstract.generate_tests
  end    
  
  class ModelAbstract
    
    def initialize(package, path, test_class)
      @package = package
      @path = path
      if @path.nil? then @path = "" end
      @test_class = test_class      
        
      acquire_tables
    end                                                
    
    def acquire_tables
      @tables = ActiveRecord::Base.connection.tables
    end
                            
    def generate_models
      @tables.each do |table|
        print "Gerando modelo para #{table}"
        File.open("#{@path}/#{table.capitalize}.java", "w") do |file|
          columns = ActiveRecord::Base.connection.columns(table)
          
          file.puts "package #{@package};"
          file.puts           
          file.puts "import javax.persistence.Column;"
          file.puts "import javax.persistence.Entity;"
          file.puts "import javax.persistence.Id;"
          file.puts "import javax.persistence.Table;"
          file.puts ""
          file.puts "import com.datasync.models.IndexableEntity;"
          file.puts ""                                           
          file.puts "import java.sql.Timestamp;"
          file.puts ""
          file.puts "@Entity"
          file.puts "@Table(name = \"#{table}\")"
          file.puts "@SuppressWarnings(\"serial\")"
          file.puts "public class #{table.capitalize} extends IndexableEntity\{"
          file.puts ""
                 
          # Declaracoes
          columns.each do |column|
            if column.name == "IdFormulario"
              file.puts "#{TAB}@Id"
            end
            
            file.puts "#{TAB}@Column(name = \"#{column.name}\")"
            
            tipo = column.type.to_s.capitalize
            if tipo == "Datetime"
              tipo = "Timestamp"
            end
            
            file.puts "#{TAB}private #{tipo} #{column.name.downcase};"
          end                                                                 
          
          file.puts ""
                                                        
          file.puts "#{TAB}@Override"
          file.puts "#{TAB}public String getIdColumnName() {"
          file.puts	"#{TAB2}return \"idformulario\";"
          file.puts "#{TAB}}"
          file.puts ""
          
          file.puts "#{TAB}@Override"
          file.puts "#{TAB}public String getIndexId() {"
          file.puts	"#{TAB2}return getIdformulario();"
          file.puts "#{TAB}}"
          file.puts ""
          
          # Metodos
          columns.each do |column|
            tipo = column.type.to_s.capitalize
            if tipo == "Datetime"
              tipo = "Timestamp"
            end
            
            file.puts "#{TAB}public void set#{column.name.capitalize}(#{tipo} #{column.name.downcase}){"
            file.puts "#{TAB2}this.#{column.name.downcase} = #{column.name.downcase};"
            file.puts "#{TAB}}"
            file.puts ""
            file.puts "#{TAB}public #{tipo} get#{column.name.capitalize}(){"
            file.puts "#{TAB2}return #{column.name.downcase};"
            file.puts "#{TAB}}"
            file.puts ""            
          end
          
          file.puts "\n}\n"
          
        end
        print ". gerado.\n"
      end
    end
                    
    def generate_tests
      
      Dir.mkdir("#{@path}/test")
      @tables.each do |table|
        print "Gerando teste para #{table}"
                    
        columns = ActiveRecord::Base.connection.columns(table)
        test = "Teste#{table.capitalize}"
        
        File.open("#{@path}/test/#{test}.java", "w") do |file|
          file.puts "package #{@package};"
          file.puts           
          file.puts "import static org.junit.Assert.assertEquals;"
          file.puts ""
          file.puts "import java.sql.Timestamp;"
          file.puts "import java.util.ArrayList;"
          file.puts "import java.util.Date;"
          file.puts "import java.util.List;"
          file.puts ""
          file.puts "import org.junit.Test;"
          file.puts ""
          file.puts "import com.datasync.models.#{@test_class};"
          file.puts "import com.datasync.models.IndexableEntity;"
          file.puts "import #{@package}.#{table.capitalize};"
          file.puts "import com.datasync.processor.IndexProcessor;"
          file.puts "import com.datasync.service.SyncLocalDatabaseService;"
          file.puts "import com.datasync.service.runner.ServiceRunner;"
          file.puts ""
          
          file.puts "public class #{test} extends #{@test_class} {"
          file.puts ""
          file.puts "#{TAB}@Test"
          file.puts "#{TAB}public void verificaSincronismo() throws Exception{"
          file.puts "#{TAB2}open();"
          file.puts ""
          file.puts "#{TAB2}List<IndexableEntity> indexables = new ArrayList<IndexableEntity>();"
          file.puts "#{TAB2}indexables.add(new #{table.capitalize}());"
          file.puts ""
          file.puts "#{TAB2}Number local = (Number) getLocalEm().createQuery(\"select count(t.idformulario) from #{table.capitalize} t\").getSingleResult();"
          file.puts "#{TAB2}assertEquals(0, local.intValue());"
          file.puts ""
          file.puts "#{TAB2}Number server = (Number) getServerEm().createQuery(\"select count(t.idformulario) from #{table.capitalize} t\").getSingleResult();"
          file.puts "#{TAB2}assertEquals(0, server.intValue());"
          file.puts ""
          file.puts "#{TAB2}//TODO: coloque a criacao + set aqui (com o nome var)"
          file.puts "#{TAB2}#{table.capitalize} var = new #{table.capitalize}();"
          columns.each do |column|
            file.puts "#{TAB2}var.set#{column.name.capitalize}();"
          end
          file.puts "#{TAB2}getLocalEm().persist(var);"
          file.puts ""
          file.puts "#{TAB2}local = (Number) getLocalEm().createQuery(\"select count(t.idformulario) from #{table.capitalize} t\").getSingleResult();"
          file.puts "#{TAB2}assertEquals(1, local.intValue());"
          file.puts ""
          file.puts "#{TAB2}IndexProcessor processor = new IndexProcessor();"
          file.puts "#{TAB2}assertEquals(0, processor.getIdsList(var.getFullClassName()).size());"
          file.puts ""
          file.puts "#{TAB2}close();"
          file.puts ""
          file.puts "#{TAB2}ServiceRunner runner = new ServiceRunner();"
          file.puts "#{TAB2}runner.run(new SyncLocalDatabaseService(indexables));"   
          file.puts ""
          file.puts "#{TAB2}processor = new IndexProcessor();"
          file.puts "#{TAB2}assertEquals(1, processor.getIdsList(var.getFullClassName()).size());"
          file.puts ""
          file.puts "#{TAB2}open();"
          file.puts "#{TAB2}server = (Number) getServerEm().createQuery(\"select count(t.idformulario) from #{table.capitalize} t\").getSingleResult();"
          file.puts "#{TAB2}assertEquals(1, server.intValue());"
          file.puts "#{TAB2}close();"
          file.puts "#{TAB}}"
          file.puts ""
          file.puts "}"
        end
        print " gerado.\n"
      end
      
    end
   
  end
            
end














































