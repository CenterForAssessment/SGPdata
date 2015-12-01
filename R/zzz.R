`.onLoad` <- 
function(libname, pkgname) {
}


`.onAttach` <- 
function(libname, pkgname) {
	if (interactive()) {
		packageStartupMessage('SGP ',paste(paste(unlist(strsplit(as.character(packageVersion("SGPdata")), "[.]")), c(".", "-", ".", ""), sep=""), collapse=""),' (12-1-2015).  For help: >help("SGPdata")')
	}
}
