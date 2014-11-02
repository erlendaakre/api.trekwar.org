class UrlMappings {

	static mappings = {
        "/$controller/$action?/$id?(.$format)?"{
            constraints {
                // apply constraints here
            }
        }

        "/"(view:"/index")
        "/devblog/view/$post"(controller: "devblog", action: "view", post: $post)
        "/development"(view:"/development")
        "/screenshots"(view:"/screenshots")
        "/download"(view:"/download")
        "/support"(view:"/support")
        "/gameguide"(view:"/gameguide")
        "/faq"(view: "/faq")
        "/contact"(view:"/contact")

        "500"(view:"/error")
        "404"(view:"/404")

        "/api/checkUsernameAvailable"(controller:"registration", action:"checkUsernameAvailable")

	}
}
