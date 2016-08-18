function run(msg, matches)
		local text1 = matches[1]
        local text2 = matches[2]
		local url = "http://www.iloveheartstudio.com/-/p.php?t="..text1.."%20%3C3%20"..text2.."&bc=ffcbdb&tc=FF1CC2&hc=ff0000&f=c&uc=true&ts=true&ff=PNG&w=500&ps=sq"
		 local  file = download_to_file(url,'love.webp')
			send_document(get_receiver(msg), file, ok_cb, false)

        
end


return {
  description = "تبدیل متن به لوگو",
  usage = {
    "/love text text: ساخت لوگو",
  },
  patterns = {
   "^[Ll]ove (.+) (.+)$",
  },
  run = run
}