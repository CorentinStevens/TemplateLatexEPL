\LoadClass[a4paper,12pt]{article} % Classe du document

%--------------------- Packages ------------------------

\usepackage[utf8]{inputenc} %Caractères spéciaux
\usepackage[section]{placeins}%Pour placement de section
\usepackage[T1]{fontenc} %Quelques lettres qui sont pas inclus dans UTF-8
\usepackage{mathtools} %Paquet pour des équations et symboles mathématiques
\usepackage{siunitx} %Pour écrire avec la notation scientifique (Ex.: \num{2e+9})
\usepackage{float} %Pour placement d'images
\usepackage{graphicx} %Paquet pour insérer des images
\usepackage[justification=centering]{caption} %Pour les légendes centralisées
\usepackage{subcaption}
\usepackage{wallpaper}
\usepackage{nomencl}
%\makenomenclature
\usepackage{fancyhdr}
%\pagestyle{fancy}
%\fancyheadoffset{1cm}
%\setlength{\headheight}{2cm}
\usepackage{url}
\usepackage[hidelinks]{hyperref}%Paquet pour insérer légendes dans des sous-figures comme Figure 1a, 1b
\usepackage[left=2.5cm,right=2.5cm,top=2cm,bottom=3.5cm]{geometry} %Configuration de la page


%-------------------- Informations sur le rapport ----------------------

\newcommand{\cours}[1]{\renewcommand{\cours}{#1}}
\newcommand{\sujet}[1]{\renewcommand{\sujet}{#1}}
\newcommand{\titre}[1]{\renewcommand{\titre}{#1}}
\newcommand{\enseignant}[1]{\renewcommand{\enseignant}{#1}}
\newcommand{\eleves}[1]{\renewcommand{\eleves}{#1}}
\newcommand{\logo}[1]{\renewcommand{\logo}{#1}}
\newcommand{\unif}[1]{\renewcommand{\unif}{#1}}

\newcommand{\fairemarges}{
\makenomenclature
\pagestyle{fancy}
\fancyheadoffset{1cm}
\setlength{\headheight}{2cm}
\lhead{\includegraphics[scale=0.15]{\logo}} %Affichage de l'image au top de la page
\rhead{\nouppercase{\leftmark}}
\rfoot{\thepage}
\cfoot{\textbf{\titre}}
\lfoot{\cours}
}

\newcommand{\fairepagedegarde}{
\begin{titlepage}

    \centering %Centraliser le contenu
    \includegraphics[width=0.5\textwidth]{\logo}\par\vspace{1cm} %Insertion du logo
    {\scshape\LARGE \unif \par} %Nom de l'université
    \vspace{1.5cm}%Espace de 1,5cm
    {\scshape\Large \cours \\ \sujet \par} %sous-titre
    \vspace{1cm}%Espace de 1cm
    \rule{\linewidth}{0.2 mm} \\[0.4 cm]
    {\huge\bfseries \titre \par} \
    \rule{\linewidth}{0.2 mm} \\[1.5 cm]
    \vspace{1cm}%Espace de 1cm
    
    \begin{minipage}{0.5\textwidth} %Minipage pour faire deux colonnes
        \begin{flushleft} \large %Envoyer à gauche
        \emph{\textbf{Élèves :}}\\ %Pour le titre au dessus des noms à gauche
        \eleves\\ %Remplacer pour chacun
        \end{flushleft}
    \end{minipage}
    ~
    \begin{minipage}{0.4\textwidth}
        \begin{flushright} \large
        \emph{\textbf{Enseignant :}} \\
         \enseignant \\
        \end{flushright}
    \end{minipage}\\[4cm]
    
    \vfill
    {\large \today\par} %Affichage de la date

\end{titlepage}
}

\newcommand{\tabledematieres}{
\tableofcontents
\newpage
}

\newcommand{\insererfigure}[4]{
\begin{figure}[ht]
\centering
\includegraphics[height=#2]{#1}
\caption{#3}
\label{fig: #4}
\end{figure}
}
