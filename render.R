pkgs <- c("quarto", "knitr", "ggplot2")
ins.mat <- installed.packages()
missing.pkgs <- setdiff(pkgs, rownames(ins.mat))
if (length(missing.pkgs) > 0) {
  install.packages(missing.pkgs)
}
quarto::quarto_render()
