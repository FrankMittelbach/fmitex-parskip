#!/usr/bin/env texlua

--[[
     For documentation and usage of the l3build system
     see l3build.pdf
--]]

module = "parskip"

checkengines = { "pdftex" }

typesetfiles  = {"*.tex"}

checkruns     = 2


-- Upload meta data

uploadconfig = {
 pkg = "parskip",
 version = "v2.0h 2021-03-14",
 author = "Frank Mittelbach",
 license = "lppl1.3c",
 summary = "Layout with zero \\parindent, non-zero \\parskip",
 ctanPath = "/macros/latex/contrib/parskip",
 repository = "https://github.com/FrankMittelbach/fmitex-parskip",
 bugtracker = "https://github.com/FrankMittelbach/fmitex-parskip/issues",
 uploader = "Frank Mittelbach",
 email = "frank.mittelbach@latex-project.org",
 update = true ,
}



if not release_date then
   kpse.set_program_name("kpsewhich")
   dofile(kpse.lookup("l3build.lua"))
end
