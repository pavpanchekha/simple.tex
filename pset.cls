% Problem Set LaTeX Class by Pavel Panchekha

% LaTeX Class Preamble
\NeedsTeXFormat{LaTeX2e}[1995/12/01]
\ProvidesClass{pset}[2012/02/24 v1.0 Problem Set LaTeX Class]

% Default to 12pt but allow choice of 10pt or 11pt
\PassOptionsToClass{10pt,11pt,12pt}{article}
\LoadClass[12pt]{article}


% ----------------------------------------------------------------------
% Layout and presentation


\usepackage[margin=1in]{geometry}
\setlength{\topmargin}{-.5in}  % Allow for header
\setlength{\textheight}{9in}   % Smaller bottom margins for symmetry

\usepackage{lastpage,ifthen,xcolor} % Utilities
\usepackage{hyperref,listings}      % Org-mode likes this one

\setlength{\parskip}{1em plus .75em minus .45em} % Spacing between paragraphs
\setlength{\parindent}{0em}                      % No indent on paragraphs
\setcounter{secnumdepth}{-1}                     % No section numbering

% Page Layout Stuff
\usepackage{fancyhdr}
\pagestyle{fancy}
\fancyhead{}
\fancyfoot{}

\makeatletter
% Define two new types of metadata (\collaborators and \class)
% by the standard private-macro-define mechanism
\newcommand{\collaborators}[1]{\def\@collaborators{#1}}
\newcommand{\class}[1]{\def\@class{#1}}

% Header lists author, title on left and class on the right
\fancyhead[L]{\@author\ifdefined\@collaborators \ (With
  \@collaborators)\fi, \@title}
\fancyhead[R]{\ifdefined\@class \@class\fi}
% Footer is a page counter
\fancyfoot[R]{\thepage/\pageref{LastPage}}

% Redefine the section headers --- small-caps centered things
\renewcommand\section{\@startsection{section}{1}{\z@}%
                                   {-1.5ex \@plus -.5ex \@minus -.1ex}%
                                   {.3ex \@plus.2ex}%
                                   {\centering\normalfont\bfseries\sc}}
\renewcommand\subsection{\@startsection{subsection}{1}{\z@}%
                                   {-1.5ex \@plus -.5ex \@minus -.1ex}%
                                   {.3ex \@plus.2ex}%
                                   {\centering\normalfont\sc}}
\makeatother

% No titles, contents in pset mode.
\renewcommand{\maketitle}{}
\renewcommand{\tableofcontents}{\vspace*{-1cm}} % Org-mode stupidity
% For marking up subparts of problems
\renewcommand{\part}[1]{\textit{Part #1)}}


% ----------------------------------------------------------------------
% Various shortcut symbols, formats, and so on


\usepackage{amsmath,amssymb}

% Various shortcut formatting commands
\newcommand{\todo}[1][Do]{{\sc\bf\em\color{red} TODO: #1}}
\newcommand{\ans}[1]{\text{\framebox{\text{#1}}}}
\newcommand{\mat}[1]{\begin{bmatrix}#1\end{bmatrix}}

% Frakture ideals
\newcommand{\fk}[1]{\ensuremath{\mathfrak{#1}}}

\newcommand{\ga}{\fk{a}}
\newcommand{\gb}{\fk{b}}
\newcommand{\gc}{\fk{c}}
\newcommand{\gd}{\fk{d}}
\newcommand{\gm}{\fk{m}}
\newcommand{\gn}{\fk{n}}
\newcommand{\go}{\fk{o}}
\newcommand{\gp}{\fk{p}}
\newcommand{\gq}{\fk{q}}

% Org-mode fixes
\providecommand{\lang}{\ensuremath{\langle}}
\providecommand{\rang}{\ensuremath{\rangle}}
\providecommand{\sub}{\ensuremath{\subset}}
\renewcommand{\sup}{\ensuremath{\supset}} % Renew because it is also supremum
\providecommand{\sube}{\ensuremath{\subseteq}}
\providecommand{\supe}{\ensuremath{\supseteq}}

% Function stuff
%\DeclareMathOperator{\ker}{ker}
\DeclareMathOperator{\im}{im}
\DeclareMathOperator{\coker}{coker}
\DeclareMathOperator{\coim}{coim}
\DeclareMathOperator{\Hom}{Hom}
\DeclareMathOperator{\Ann}{Ann}
\DeclareMathOperator{\Supp}{Supp}
\DeclareMathOperator{\Ass}{Ass}
\DeclareMathOperator{\depth}{depth}
\DeclareMathOperator{\zdiv}{z.div}
\DeclareMathOperator{\Li}{Li}
\DeclareMathOperator{\erf}{erf}
\DeclareMathOperator{\erfc}{erfc}

% Varthings
\newcommand{\eps}{\varepsilon}
\newcommand{\dlt}{\delta}

% Various interesting sets
\providecommand{\RR}{\ensuremath{\mathbb{R}}}
\providecommand{\QQ}{\ensuremath{\mathbb{Q}}}
\providecommand{\CC}{\ensuremath{\mathbb{C}}}
\providecommand{\ZZ}{\ensuremath{\mathbb{Z}}}
\providecommand{\NN}{\ensuremath{\mathbb{N}}}
\providecommand{\FF}{\ensuremath{\mathbb{F}}}

% Drawing a simple coordinate system
\setlength{\unitlength}{1in}

\newcommand{\coordsys}{
  \begin{center}
\begin{picture}(4,4)
    \put(0,2){\line(1,0){4}}
    \put(2,0){\line(0,1){4}}
\end{picture}
\end{center}}

\newcommand{\smallcoordsys}{
  \begin{center}
\begin{picture}(1,1)
    \put(0,.5){\line(1,0){1}}
    \put(.5,0){\line(0,1){1}}
\end{picture}
\end{center}}

\newcommand{\plotfq}{
  \begin{center}
\begin{picture}(4,2)
    \put(0,0){\line(1,0){4}}
    \put(0,0){\line(0,1){2}}
\end{picture}
\end{center}}

% Some figure packages
\usepackage{subcaption}
\usepackage{wrapfig}
