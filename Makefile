all: html docx rtf

html: html_resume.html
html_resume.html: style_chmduquesne.css resume.md
	pandoc --standalone -H style_chmduquesne.css \
        --from markdown --to html \
        -o html_resume.html resume.md

docx: resume.docx
resume.docx: resume.md
	pandoc -s -S resume.md -o docx_resume.docx

rtf: resume.rtf
resume.rtf: resume.md
	pandoc -s -S resume.md -o rtf_resume.rtf

clean:
	rm -f html_resume.html
	rm -f docx_resume.docx
	rm -f docx_resume.rtf
