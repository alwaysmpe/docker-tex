$pdf_mode = 1;        # tex -> pdf
$jobname = 'example';
$pdflatex = 'pdflatex %O %S; cp %D .';
@default_excluded_files = ('config.tex',);
@extra_pdflatex_options = '-halt-on-error -interaction=nonstopmode';
$aux_dir = "./tmp";
$out_dir = "./tmp";
$view = 'none';
