require "../crystal_ctags"

filenames = ARGV
filenames.select! do |f|
  ! f.starts_with?("-")
end

ctags = CrystalCtags::Ctags.new(filenames)
puts ctags
