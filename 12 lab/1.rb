def chunker f_in, out_pref
    file_size = File.size(f_in)
    if file_size < 10
        raise "Can't split file on 10 parts"
    end
    chunksize = file_size/10
    part = 0
    File.open(f_in, "r") do |fh_in|
        until fh_in.eof?
            if part != 10
                part += 1
            end

            File.open("#{out_pref}/#{f_in}_x%02d" % [part],"w") do |fh_out|
                fh_out << fh_in.read(chunksize)
            end
        end
    end
end

chunker "result.txt", "resultFolder"
