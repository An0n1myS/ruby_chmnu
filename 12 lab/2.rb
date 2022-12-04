def getLines (path)
    count = 0
    File.open(path) {|f| count = f.read.count("\n")}
    count + 1
end

path = "D:/University/3/ruby/12"

# def getFiles (path)
#     Dir.glob("#{path}**/*").each do |file|
#         if File.directory?(file)
#             getFiles file
#         else
#             puts "#{file}: #{getLines file}"
#         end
#     end
# end

def getFiles (path)
    Dir.glob("**/*.rb").each do |file|
        next if File.directory?(file)
        puts "#{file}: #{getLines file}"
    end
end

getFiles path
