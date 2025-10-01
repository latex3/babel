#!/usr/bin/env texlua

-- Build script for LaTeX2e "babel" files

-- Identify the bundle and module
bundle = ""
module = "babel"

installfiles = {"*.def", "*.ldf", "*.sty", "*.tex", "*.cfg" , "*.lua"}
sourcefiles  = {"*.dtx", "*.ins"}
typesetfiles = {"babel.dtx"}

-- babel tests lots of third-party code
checkdeps    = { }
checksearch  = true
unpackdeps   = { }
unpacksearch = true

-- Avoid zapping babel.pdf
cleanfiles = {"*.log", "*.zip"}

-- Override formats to be used
asciiengines = {"pdftex"}
stdengine    = "pdftex"
checkengines = {"pdftex"}

-- Set up the check system
checkruns      = 2
checksuppfiles = {"test2e.tex"}

-- Build TDS-style zips
packtdszip = true

-- Lua test files
checkconfigs = {"build","config-lua"}

-- Find and run the build system
kpse.set_program_name ("kpsewhich")
if not release_date then
  dofile(kpse.lookup("l3build.lua"))
end
