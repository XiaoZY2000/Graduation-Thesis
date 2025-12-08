\NeedsTeXFormat{pLaTeX2e}
\LoadClass{report}

\def\p@thanks#1{\footnotemark
  \protected@xdef\@thanks{\@thanks
    \protect{\noindent$\m@th^\thefootnote$~#1\protect\par}}}
  \renewcommand{\maketitle}{\par
  \begingroup
    \parskip 0em
    \renewcommand{\thefootnote}{\fnsymbol{footnote}}%
    \def\@makefnmark{\hbox{\ifydir $\m@th^{\@thefnmark}$
      \else\hbox{\yoko$\m@th^{\@thefnmark}$}\fi}}%
     \long\def\@makefntext##1{\parindent 1em\noindent
       \hbox to1.8em{\hss$\m@th^{\@thefnmark}$}##1}%
    \if@twocolumn
      \ifnum \col@number=\@ne \@maketitle
      \else \twocolumn[\@maketitle]%
      \fi
    \else
      \newpage
      \global\@topnum\z@   % Prevents figures from going at top of page.
      \@maketitle
    \fi
    \thispagestyle{empty}\@thanks
  \endgroup
  \setcounter{footnote}{0}%
  \global\let\thanks\relax
  \global\let\maketitle\relax
  \global\let\p@thanks\relax
  \global\let\@thanks\@empty
  \global\let\@author\@empty
%%
  \global\let\@affliate\@empty
%%
  \global\let\@date\@empty
  \global\let\@title\@empty
  \global\let\title\relax
  \global\let\author\relax
%%
  \global\let\affliate\relax
%%
  \global\let\date\relax
  \global\let\and\relax
  }
  %\font\ut=utokyo scaled \magstep 0       % 1000 (300 pk \normalsize)
  %\font\utm=utokyo scaled \magstephalf    % 1095 (329 pk)
  %\font\utl=utokyo scaled \magstep 1      % 1200 (360 pk, \large)
  %\font\utL=utokyo scaled \magstep 2      % 1440 (432 pk, \Large)
  %\font\utLL=utokyo scaled \magstep 3     % 1728 (518 pk, \LARGE)
  %\font\uth=utokyo scaled \magstep 4      % 2074 (622 pk, \huge)
  %\font\utH=utokyo scaled \magstep 5      % 2487 (746 pk, \Huge)
  \def\subtitle#1{\gdef\@subtitle{#1}}
  \def\professor#1{\gdef\@professor{#1}}
  %\def\professorII#1{\gdef\@professorii{#1}}%%
  \def\faculty#1{\gdef\@faculty{#1}}
  \def\department#1{\gdef\@department{#1}}
  \gdef\@maintitle{修\hfil 士\hfil 論\hfil 文}
  \def\offset{1.0}
  \def\@tskip{\hskip 0.5in}
  \def\@maketitle{%
  \newpage\null
  \let\footnoterule\relax \setcounter{page}{0}%
  \thispagestyle{empty}%
  \vskip 0.8in
  %
  \begin{center}%
    %\vskip 0.4in  %% changed by hayatsu (05/01/03)
    \vskip -0.4in  %% changed by tatsuya (07/01/21)
      {\Huge\bf \@maintitle}\par
      \vskip 0.6in
      {\Huge\bf \@title}\par
      \vskip 0.2in
      {\huge\bf \@subtitle}\par
%      \vskip 0.4in  %% changed by hayatsu (05/01/03)
      \vskip 1.0in
      \@tskip\makebox[1in]{\hfill{\huge 指導教員}\hfill}\hfill
        \begin{tabular}{l}
          {\Huge\bf \@professor}%\\
          %{\Huge\bf \@professorii}
        \end{tabular}\hfill\@tskip\strut\par
      \vfill
      %\@tskip\makebox[1in]{\hfill\raise-3ex\hbox{\utm T}\hfill}\hfill
%% changed by hayatsu (05/01/03)
%      \makebox[1in]{\raise-3ex\hbox{\utm T}\hfill}\hfill
%        \begin{tabular}{l}
%        {\huge\bf \@faculty}\\
%        {\huge\bf \@department}
%        \end{tabular}\hfill\@tskip\strut\par
%      \vskip 0.4in
      \begin{minipage}{0.3\textwidth}
      \begin{center}\includegraphics[scale=0.8]{img_utm.eps}\end{center}\hfill
      \end{minipage}
      \begin{minipage}{0.65\textwidth}
        \begin{tabular}{l}
        {\huge\bf \@faculty}\\
        {\huge\bf \@department}
        \end{tabular}\hfill\@tskip\strut\par
      \end{minipage}
      \vfill
%% end of change
      \@tskip\makebox[1in]{\hfill{\huge 氏~~名}\hfill}\hfill
        {\Huge\bf \underline{\@author}}\hfill\@tskip\strut\par
      \vskip 0.4in
      \@tskip\makebox[1in]{\hfill{\huge 提~~出~~日}\hfill}\hfill
        {\LARGE\bf \@date}\hfill\@tskip\strut\par
  \end{center}
    \vskip 0.8in
%  \let\footnote\thanks
%    {\LARGE \baselineskip 15pt \@title \par}%
%    \vskip 1.0em%
%    {
%      \lineskip .0em%
%      \begin{tabular}[t]{c}%
%      \baselineskip 0em%
%        \@author
%      \end{tabular}\par}%
%    \vskip 1em%
%    {\small
%      \lineskip .0em%
%      \begin{tabular}[t]{c}%
%      \baselineskip 0em%
%        \@affliate
%      \end{tabular}\par}%
%    \vskip 1em%
    \vskip 0.5em}%
\setcounter{secnumdepth}{3}

\setlength\oddsidemargin{30.1mm}
\setlength\evensidemargin{30.1mm}
\setlength\textwidth{\paperwidth}
\addtolength\textwidth{-\oddsidemargin}
\addtolength\textwidth{-\evensidemargin}
\addtolength\oddsidemargin{-1in}
\addtolength\evensidemargin{-1in}
\setlength\headsep{15mm}
\setlength\textheight{\paperheight}
\addtolength\textheight{-\topmargin}
\addtolength\textheight{-\headheight}
\addtolength\textheight{-\headsep}
\addtolength\textheight{-45mm}
\addtolength\textheight{-1in}
\setlength\footskip{40pt}




\renewcommand{\bibname}{References}

\pagestyle{empty}
\pagenumbering{arabic}
\raggedbottom
\if@twocolumn
  \twocolumn
  \sloppy
  \flushbottom
\else
  \onecolumn
\fi
\if@twoside
  \@mparswitchtrue
\else
  \@mparswitchfalse
\fi
\endinput
%%
