class UrlMappings {

	static mappings = {
		"/$controller/$action?/$id?"{
			constraints {
				// apply constraints here
			}
		}

        "/devblog/view/$post"(controller: "devblog", action: "view", post: $post)

		"/"(view:"/index")
        "/development"(view:"/development")
        "/screenshots"(view:"/screenshots")
        "/download"(view:"/download")
        "/support"(view:"/support")
        "/faq"(view: "/faq")
        "/contact"(view:"/contact")
		"500"(view:"/error")
        "404"(view:"/404")
	}
}