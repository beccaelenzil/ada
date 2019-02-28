
=begin

Matching Strings	             Non-Matching Strings	Answer
aba, ababa, ababa	            a, aaba, ba
can, man, fan	                dan, ran, pan
abcde, zx231, 55723	            dan, a, 123, ada lovelace
ada445ada, snoopy has 445 fans	445, ada, snoopy has 45 fans

ada_student_list.pdf, ada_personel.pdf, ada_textbook.pdf

ada_files.pdf.tmp, files.pdf

=end

=

#pattern = /^(ab)+a$/
#strings = ['aba', 'ababa', 'ababa','a', 'aaba', 'ba']

#pattern = /[cmf]an/
#strings = ['can', 'man', 'fan', 'dan', 'ran', 'pan']

#pattern = /([a-z\d]){5}/
#strings = ['abcde', 'zx231', '55723', 'dan', 'a', '123', 'ada lovelace']

#pattern = /[a-z\s]+445/
#strings = ['ada445ada', 'snoopy has 445 fans',	'445', 'ada', 'snoopy has 45 fans']

pattern = /^ada.*.pdf$/
strings = ['ada_student_list.pdf', 'ada_personel.pdf', 'ada_textbook.pdf','ada_files.pdf.tmp', 'files.pdf']

strings.each do |item|
  puts pattern.match(item) ? "#{item} is valid \n " : "#{item} is NOT valid \n "
end
