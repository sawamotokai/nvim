-- set shorter name for keymap function
local kmap = vim.keymap.set

-- F5 processes the document once, and refreshes the view
kmap('i','<F5>', function() require("knap").process_once() end)
kmap('v','<F5>', function() require("knap").process_once() end)
kmap('n','<F5>', function() require("knap").process_once() end)

-- F6 closes the viewer application, and allows settings to be reset
kmap('i','<F6>', function() require("knap").close_viewer() end)
kmap('v','<F6>', function() require("knap").close_viewer() end)
kmap('n','<F6>', function() require("knap").close_viewer() end)

-- F7 toggles the auto-processing on and off
kmap('i','<F7>', function() require("knap").toggle_autopreviewing() end)
kmap('v','<F7>', function() require("knap").toggle_autopreviewing() end)
kmap('n','<F7>', function() require("knap").toggle_autopreviewing() end)

-- F8 invokes a SyncTeX forward search, or similar, where appropriate
kmap('i','<F8>', function() require("knap").forward_jump() end)
kmap('v','<F8>', function() require("knap").forward_jump() end)
kmap('n','<F8>', function() require("knap").forward_jump() end)

vim.g.knap_settings = {
    htmltohtml = "A=%outputfile% ; B=\"${A%.html}-preview.html\" ; sed 's/<\\/head>/<meta http-equiv=\"refresh\" content=\"1\" ><\\/head>/' \"$A\" > \"$B\"",
    htmltohtmlviewerlaunch = "A=%outputfile% ; B=\"${A%.html}-preview.html\" ; firefox \"$B\"",
    htmltohtmlviewerrefresh = "none",
    mdtohtml = "A=%outputfile% ; B=\"${A%.html}-preview.html\" ; pandoc --standalone %docroot% -o \"$A\" && sed 's/<\\/head>/<meta http-equiv=\"refresh\" content=\"1\" ><\\/head>/' \"$A\" > \"$B\" ",
    mdtohtmlviewerlaunch = "A=%outputfile% ; firefox \"${A%.html}-preview.html\"",
    mdtohtmlviewerrefresh = "none", 
    texoutputext = "pdf",
    textopdf = "pdflatex -synctex=1 -halt-on-error -interaction=batchmode %docroot%",
    textopdfviewerlaunch = "mupdf %outputfile%",
    textopdfviewerrefresh = "kill -HUP %pid%"
}
