\NeedsTeXFormat{LaTeX2e}[1995/12/01]
\ProvidesClass{simple}[2009/10/01 v1.0 Simple format class]

\PassOptionsToClass{11pt,12pt}{article}
\LoadClass[12pt]{article}

\nofiles

\makeatletter
\renewcommand{\@maketitle}{
    \let \footer \thanks
    \newpage
    \null
    \vskip -.5em%
    {\Large \@title \par}%
    {\large \@author\ \if\@author(\@date)\else\@date\fi\par}%
    \vskip .5em%
} \makeatother

\usepackage{fullpage}
\usepackage[utf8]{inputenc}
\usepackage[T2A]{fontenc}
\usepackage{multicol}

\setlength{\parskip}{1em}
\setlength{\parindent}{0em}
\setcounter{secnumdepth}{-1}

\setlength{\textheight}{9in}

\date{}
