# first 'dev'-value should be suitable for output format specified in YAML metadata (html+word = raster graphics, pdf = vector graphics)
knitr::opts_chunk$set(dev = 'png', dpi = 100, error = TRUE, warning = TRUE, message = TRUE, echo = TRUE)
unlink('prepare_warnings.Rout')
# knit_hook_stderr will redirect warnings and messages to stderr()
knit_hook_stderr <- function(x, options) {
  writeLines(text = paste0(options$label, ':\n', x), con = stderr())
  paste0('```\n', x, '\n```')
  cat(paste0(options$label, ':\n', x, '\n'), file = 'prepare_warnings.Rout', append = TRUE)
}
knitr::knit_hooks$set(message = function(x, options) knit_hook_stderr(x, options), warning = function(x, options) knit_hook_stderr(x, options), error = function(x, options) stop(x))
