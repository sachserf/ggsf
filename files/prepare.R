#' ---
#' title: 'prepare'
#' author: 'sachserf'
#' date: '`r Sys.Date()`'
#' output:
#'  html_document:
#'    theme: journal
#'    highlight: tango
#'    df_print: kable
#'    fig_caption: yes
#'    number_sections: yes
#'    collapsed: yes
#'    code_folding: hide
#'    toc: yes
#'    toc_float: yes
#'    toc_depth: 5
#'    keep_md: yes
#' ---

#+ setup_prepare, include = FALSE
source('files/prepare_knitr_setup.R')

#' # Note
#' If you are using ggplot2 you will need to explicitly call 'print()' on each ggplot2 object in order to write the files (without spinning this script).
