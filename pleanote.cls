\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{pleanote}[2019/03/15 A pleasant novel template]
\LoadClass[twoside,8pt]{book}
\usepackage{setspace}
\usepackage[latin1]{inputenc} 			% use this for English
\usepackage{fontenc}
\usepackage{amsmath}
\usepackage{amsfonts}
\usepackage{amssymb}
\usepackage{url}
\usepackage{graphicx}
\usepackage{color}
\usepackage{fancyhdr}
\usepackage{titlesec} 						% appearance of chapters first page
\usepackage{emptypage} 					% clear content on empty pages 

% ==================
% = FRENCH LANGUAGE = if needed
% ==================
%\usepackage[utf8]{inputenc} 			% use this to type French directly, comment other [latin1]{inputenc} package
%\usepackage[T1]{fontenc} 				% French hyphenation problem
%\usepackage[french]{babel} 			% use this for French ponctuations « », etc
%\usepackage[autostyle]{csquotes} 	% beautiful French quotes «». use \enquote{}

% =============
%  = DIMENSIONS =
% =============
\setlength{\topmargin}{-1.8cm}
\setlength{\textheight}{15cm}
\setlength{\oddsidemargin}{-1.0cm}
\setlength{\evensidemargin}{-1.5cm}
\setlength{\textwidth}{9.25cm}	% subtract and add to \oddsidemargin to balance everything
\setlength\parindent{15pt} 		% paragraph indent size
\setlength{\footnotesep}{10pt}
\setlength{\skip\footins}{12pt}

% ==================
% = HEADERS/FOOTERS =
% ==================
\pagestyle{fancy}
\fancyhf{} 			% clear the header
\fancyfoot{} 		% clear the footer
\fancyfoot[LE, RO]{\oldstylenums\thepage} 				% page numbers left and right

% Headers 
\fancyhead[RO]{\small\textit{\leftmark}} 					% put chapter name on the right on odd pages
\fancyhead[LE]{\small\textit{\yourtitle}} 					% put title of  book on the left on even pages
\renewcommand{\headrulewidth}{0pt} 						% erase the head line under the header
\renewcommand\footnoterule{\rule{\linewidth}{0pt}}	% erase the line in footnotes
\setlength{\footskip}{0.5cm} 										% spacing between text block and page number
\setlength{\headsep}{0.25cm} 									% spacing between text block and header

% Place correct chapter name in the header environment
\renewcommand{\chaptermark}[1]{\markboth{#1}{}}

% WIDOW/ORPHAN lines
\widowpenalty10000
\clubpenalty10000

% ===========
% = CHAPTERS =
% ===========
\titleformat{\chapter}[display]
  {\Large}
  {\filright\MakeUppercase{}}
  {0cm}
  {\thispagestyle{empty}\vspace{1ex}\filleft}
  [\vspace{0cm}]
  
\titleformat{\section}[display]
  {\bfseries\large\itshape}
  {\filright\MakeUppercase{}}
  {-0.5cm}
  {\vspace{0cm}\filright}
  [\vspace{0cm}]

% set font locally to something else, if needed
\newenvironment{myfont}{\fontfamily{ppl}\selectfont}{\par}