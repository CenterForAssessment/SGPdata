`.onLoad` <-
function(libname, pkgname) {
}

`.onAttach` <- function(libname, pkgname) {
    if (interactive()) {
        # Extract version information
        version <- utils::packageVersion("SGPdata")

        # Define a friendly startup message
	message_text <- paste0(
	    magenta(bold("\uD83C\uDF89 SGPdata v", version)), " - ", toOrdinal::toOrdinalDate("2024-12-3"), "\n",
	    "\U1F4A1 Tip: ", magenta(bold("> help(\"SGPdata\")")), "\n",
	    "\U1F310 Docs: ", magenta(bold("https://centerforassessment.github.io/SGPdata")), "\n",
	    "\u2728 Happy SGPing!"
	)

        # Display the startup message
        packageStartupMessage(message_text)
    }
}