<div class="span12">
    <%
        //def file = new File('c:/test.html')
        def file = new File('/home/erlend/toodledoo_bugs.html')
        out << file.getText()
    %>
</div>