`.onLoad` <- 
function(libname, pkgname) {
}


`.onAttach` <- 
function(libname, pkgname) {
	if (interactive()) {
		packageStartupMessage('SGP ',paste(paste(unlist(strsplit(as.character(packageVersion("SGPdata")), "[.]")), c(".", "-", ".", ""), sep=""), collapse=""),' (10-20-2015).  For help: >help("SGPdatat")')
	}
}
