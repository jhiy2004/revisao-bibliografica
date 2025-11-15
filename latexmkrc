$ENV{'TZ'}='America/Sao_Paulo';

# ============================
# Latexmk configuration
# ============================

# ---- Output directory (all aux files go here)
$aux_dir  = 'build';
$out_dir  = 'build';

# ---- Stop generating pdflatexXXXX.fls
$recorder = 0;

# ---- PDF viewer: Okular
$pdf_previewer = 'okular';

# ---- How to call okular with synctex support
$viewer_cmd = "okular --unique \"\%o#src:\%l\%\%S\"";

# ---- Use pdflatex
$pdflatex = 'pdflatex -synctex=1 -interaction=nonstopmode --shell-escape %O %S';

# ---- Use biber
$biber = 'biber --input-directory=build --output-directory=build %O %S';

# ---- Run biber automatically when needed
$bibtex_use = 2;

# ---- No popup previewers from latexmk
$preview_continuous_mode = 0;

# ---- Better clean command
@clean_ext = qw(
  aux bbl bcf blg fls fdb_latexmk lof log lol lot out run.xml synctex.gz
);
