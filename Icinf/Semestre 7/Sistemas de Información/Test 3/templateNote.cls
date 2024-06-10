\LoadClass[a4paper,12pt]{article} % Clase de documento

%--------------------- Paquetes ------------------------
\RequirePackage[spanish]{babel}
\RequirePackage[utf8]{inputenc}
\RequirePackage[section]{placeins}
\RequirePackage[T1]{fontenc}
\RequirePackage{mlmodern}
\RequirePackage{mathtools}
\RequirePackage{siunitx}
\RequirePackage{float}
\RequirePackage{graphicx}
\RequirePackage[justification=centering]{caption}
\RequirePackage{subcaption}
\RequirePackage{wallpaper}
\RequirePackage{nomencl}
\RequirePackage{url}
\RequirePackage[left=2.5cm,right=2.5cm,top=2cm,bottom=3.5cm]{geometry}
\RequirePackage{fancyhdr}
\RequirePackage{listings}
\RequirePackage{qrcode}
\RequirePackage{tikz}
\RequirePackage[none]{hyphenat}
\RequirePackage{tcolorbox}
\RequirePackage{amsmath}
\RequirePackage{amssymb}
\RequirePackage[hidelinks,  pdfusetitle]{hyperref}
\RequirePackage{microtype}

%---------------- Comandos personalizados ----------------------
\newcommand{\titulo}[1]{\renewcommand{\titulo}{#1}}
\newcommand{\autor}[1]{\renewcommand{\autor}{#1}}
\newcommand{\asignatura}[1]{\renewcommand{\asignatura}{#1}}
\newcommand{\imagenlogoU}[1]{\renewcommand{\imagenlogoU}{#1}}
\newcommand{\linklogoU}[1]{\renewcommand{\linklogoU}{#1}}
\newcommand{\imagenlogoD}[1]{\renewcommand{\imagenlogoD}{#1}}
\newcommand{\linklogoD}[1]{\renewcommand{\linklogoD}{#1}}
\newcommand{\linkQRDoc}[1]{\renewcommand{\linkQRDoc}{#1}}
\newcommand{\vDoc}[1]{\renewcommand{\vDoc}{#1}}

\newcommand{\margenes}{
    \makenomenclature
    \pagestyle{fancy}
    \fancyheadoffset{1cm}
    \setlength{\headheight}{2cm}
    \lhead{\href{\linklogoU}{\includegraphics[scale=0.10]{\imagenlogoU}} \href{\linklogoD}{\includegraphics[scale=0.8]{\imagenlogoD}}} % Logo
    % \lhead{\href{\linklogoU}{\includegraphics[scale=0.10]{\imagenlogoU}}}
    \rhead{\nouppercase{\leftmark}}
    \rfoot{\thepage}
    \cfoot{Apunte - \textbf{\titulo}}
}

\newcommand{\portada}{
\begin{center}
    {\LARGE \bf \titulo}\\
    \rule{\linewidth}{0.2 mm} \\[0.1 cm]
    
    \begin{minipage}{0.5\linewidth}
        \begin{flushright}
            {\large \bf \autor}
            \\[0.3 cm]
            {\large \bf \asignatura}
            \\[0.3 cm]
            \today
        \end{flushright}
    \end{minipage}
    \hfill
    \begin{minipage}{0.4\linewidth}
        \begin{flushleft}
            \begin{tikzpicture}
                \node[draw, line width=1.5pt, rounded corners] (m) {\href{\linkQRDoc}{\qrcode[height=1in]{\linkQRDoc}}};
            \end{tikzpicture}
        \end{flushleft}
    \end{minipage}
    \\[0.2 cm]
    {\large \bf Versión: \vDoc}
\end{center}
}