\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{nic_format}[2022/03/15 v.1.1]

%%% Base

\LoadClass{article}

%%% Pacotes

%% Fonts and typing
\RequirePackage[T1]{fontenc}
\RequirePackage[brazilian]{babel}

%% Geometry and style
\RequirePackage{fancyhdr}
\RequirePackage[justify]{ragged2e}
\RequirePackage{geometry}
\RequirePackage{parskip}
\RequirePackage{caption}
\RequirePackage{setspace}
\RequirePackage{float}

%\RequirePackage{indentfirst}
%\setlength{\parindent}{4em}

%% Personalization
\RequirePackage{graphicx}
\RequirePackage[dvipsnames, table]{xcolor}
\RequirePackage{hyperref}

%% Graphs and tables
\RequirePackage{amsfonts}
\RequirePackage{amsmath}
\RequirePackage{amsthm}
\RequirePackage{amssymb}
\RequirePackage{siunitx}
\RequirePackage{tikz}
\RequirePackage{booktabs}
\RequirePackage{pgfplots}
\RequirePackage{pgfplotstable}
\RequirePackage{pgf-pie}
%\RequirePackage{gnuplottex}
\RequirePackage{array}


%%% Parametros de pacotes

%% Geometry and style
%\addtocontents{toc}{\protect\thispagestyle{empty}}
\geometry{
    left=1.25cm, 
    right=1.25cm, 
    top=2.5cm, 
    bottom=2.0cm
}

\pagestyle{fancy}

%\setlength{\parindent}{0 em}
%\setlength{\parskip}{1.2 em}
\setlength{\parskip}{8pt}

% Cabecalho e Rodape % 
\setlength{\headheight}{15pt}

\renewcommand{\headrulewidth}{0.5pt}
\lhead{\emph{Projeto de Rede Local}}
\chead{}
\rhead{PCS 3724 \-- Poli \-- USP \-- 2023}

\renewcommand{\footrulewidth}{1pt}
\lfoot{}
\cfoot{}
\rfoot{\thepage}

% Legenda %
\captionsetup{
    format=plain,
    labelfont=bf,
    font=small,
    justification=justified
}

% Resumo %
\renewenvironment{abstract}{
    \noindent{\bfseries{\abstractname}}.
}

%% Personalization
\hypersetup{
    %pdftitle={},
    pdfpagemode=FullScreen,
    unicode=true,
    linktoc=all,
    %colorlinks = true, 
    %linkcolor = black, 
    %urlcolor = black, 
    bookmarksopen = true
}


%% Graphs and tables

\pgfplotsset{compat = newest}

\usetikzlibrary{
    angles,
    arrows,
    arrows.meta,
    backgrounds,
    calc,
    patterns,
    patterns.meta,
    decorations.pathreplacing,
    positioning,
    shapes,
    quotes
}

%% Listings
\usepackage{listings}

\lstset{
    language=C,
    basicstyle=\normalsize\ttfamily\color{LightGrey},
    numbers=left,
    numberstyle=\small\color{White},
%%   stepnumber=1,
%%    numbersep=5pt,
%    backgroundcolor=\color{new_bg},
%%    showspaces=false,
%%    showstringspaces=false,
%%    showtabs=false,
%%    frame=single,
    rulecolor=\color{black},
    rulesepcolor=\color{black},
    tabsize=2,
    captionpos=b,
    breaklines=true,
    breakatwhitespace=false,
    keywordstyle=\color{Red},
    commentstyle=\color{verdecomentario},
    stringstyle=\color{Orange},
    emph={"0",'1',"15"},
    emph={[2]event,length},
    emph={[3]to_integer, to_unsigned},
    emph={[4]},
    emphstyle=\color{Orange},
    emphstyle={[2]\color{Magenta}},
    emphstyle={[3]\color{Blue}},
    emphstyle={[4]\color{Red}},
    emphstyle={[5]\color{Green}}
}

%% Colors

\definecolor{LightGrey}{HTML}{444b6a}
\definecolor{DarkGrey}{HTML}{232433}
\definecolor{Magenta}{HTML}{ad8ee6}
\definecolor{White}{HTML}{a9b1d6}
\definecolor{Red}{HTML}{db4b4b}
\definecolor{Green}{HTML}{228b22}
%\definecolor{Orange}{HTML}{ff9e64}
%\definecolor{Orange}{HTML}{ff8c00}
\definecolor{Orange}{HTML}{e57700}
\definecolor{Blue}{HTML}{0db9d7}
\definecolor{verdecomentario}{HTML}{006400}
\definecolor{new_bg}{HTML}{1a1b26}
