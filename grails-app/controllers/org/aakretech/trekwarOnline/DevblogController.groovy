package org.aakretech.trekwarOnline

class DevblogController {

    def view() {
        if(params.post.length() == 8) {
            render(view: "/devblog/" + params.post)
        }
        else {
            render("Invalid devblog post filename format")
        }
    }
}