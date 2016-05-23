note
	description: "[

		]"

class
	MS_HOME_PAGE

inherit
	HTML_DIV
		redefine
			default_create
		end

feature {NONE} -- Initialization

	default_create
			-- <Precursor>
		note
			EIS: "src=http://www.sample-videos.com/"
		local
			l_div: HTML_DIV
			l_header: HTML_HEADER
			l_nav: HTML_NAV
			l_nav_list: HTML_UL
			l_article: HTML_ARTICLE
			l_footer: HTML_FOOTER
			l_video: HTML_VIDEO
		do
			Precursor
			set_class ("stars")
				-- Header
			create l_header
			l_header.add_content (create {HTML_A}.make_with_id_and_href ("logo", "index.html"))
			add_content (l_header)
				-- Navigation
			create l_nav
			create l_nav_list
			l_nav_list.add_content (create {HTML_LI}.make_with_link_and_text ("index.html", "Home"))
			l_nav_list.add_content (create {HTML_LI}.make_with_link_and_text ("moonshot.html", "What is a Moonshot?"))
			l_nav_list.add_content (create {HTML_LI}.make_with_link_and_text ("blogs.html", "Blogs"))
			l_nav_list.add_content (create {HTML_LI}.make_with_link_and_text ("contact.html", "Contact us"))
			l_nav.add_content (l_nav_list)
			l_header.add_content (l_nav)
				-- Contents
			create l_article
			l_article.set_class ("content")
			create l_video.make_with_video_and_controls ("SampleVideo_1280x720_2mb.mp4", "video/mp4", 640, 480)
			l_video.set_auto_play
			l_video.set_looped
			l_article.add_content (l_video)
			add_content (l_article)
				-- Footer
			create l_footer
			l_footer.add_images (<<["large-footer", "Moonshot-Website-Footer-640px.png"],
									["small-footer", "Moonshot-Website-Footer-329px.png"]>>)

			add_content (l_footer)
		end

end
