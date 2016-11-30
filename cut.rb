require 'open3'

work = File.read("work.csv")
list = work.split(/\n/)
c = 0

list.map{ |l|
  c += 1
  l = l.split(/;/)
  next if(l.size < 2)

  out = l[0].gsub(".avi", ".mp4")
  cmd = "avconv -y -i input/#{l[0]} -vcodec libx264 -acodec copy -aspect 16:9 -ss #{l[1]} -t #{l[2]} output/#{out}"
  puts "cutting #{c} of #{list.size}"
  Open3.capture3(cmd)
}
