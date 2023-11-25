\LoadClass[a4paper,12pt]{article} % Clase de documento

%--------------------- Paquetes ------------------------
\RequirePackage[spanish, es-noshorthands]{babel}
\RequirePackage[utf8]{inputenc}
\RequirePackage[section]{placeins}
\RequirePackage[T1]{fontenc}
\RequirePackage{mathtools}
\RequirePackage{siunitx}
\RequirePackage{float}
\RequirePackage{graphicx}
\RequirePackage[justification=centering]{caption}
\RequirePackage{subcaption}
\RequirePackage{wallpaper}
\RequirePackage{nomencl}
\RequirePackage{url}
\RequirePackage[hidelinks]{hyperref}
\RequirePackage[left=2.5cm,right=2.5cm,top=2cm,bottom=3.5cm]{geometry}
\RequirePackage{fancyhdr}
\RequirePackage{listings}

% define the codebox environments
\lstnewenvironment{sqlcode}[1][]
{
    \lstset{language=SQL, #1}
}
{}

\lstnewenvironment{cppcode}[1][]
{
    \lstset{language=C++, #1}
}
{}

\lstnewenvironment{ccode}[1][]
{
    \lstset{language=C, #1}
}
{}

\lstnewenvironment{pythoncode}[1][]
{
    \lstset{language=Python, #1}
}
{}

\lstnewenvironment{javacode}[1][]
{
    \lstset{language=Java, #1}
}
{}

%---------------- Comandos personalizados ----------------------

\newcommand{\titulo}[1]{\renewcommand{\titulo}{#1}}
\newcommand{\autor}[1]{\renewcommand{\autor}{#1}}
\newcommand{\asignatura}[1]{\renewcommand{\asignatura}{#1}}
\newcommand{\imagenlogo}[1]{\renewcommand{\imagenlogo}{#1}}
\newcommand{\universidad}[1]{\renewcommand{\universidad}{#1}}

\newcommand{\insertarfigura}[4]{
    \begin{figure}[ht]
        \centering
        \includegraphics[height=#2]{#1}
        \caption{#3}
        \label{#4}
    \end{figure}
}

\newcommand{\margenes}{
    \makenomenclature
    \pagestyle{fancy}
    \fancyheadoffset{1cm}
    \setlength{\headheight}{2cm}
    \lhead{\includegraphics[scale=0.10]{\imagenlogo}} % Logo
    \rhead{\nouppercase{\leftmark}}
    \rfoot{\thepage}
    \cfoot{Apunte - \textbf{\titulo}}
    % \lfoot{\curso}
}

\newcommand{\portada}{
	% \pagestyle{fancy}
	% \fancyhf{}
	% \renewcommand{\headrulewidth}{0pt} % Elimina la línea del encabezado
    % \begin{titlepage}
        
        \begin{center}
            \title{\titulo}
        
            % \thispagestyle{empty}
            % \begin{flushleft}
            %     {\large \bf Asignatura} \hspace{1cm}
            % \end{flushleft}
    
            % \begin{flushright}
            %     \today
            % \end{flushright}
                
            \begin{center}
                % \rule{\linewidth}{0.2 mm} \\[0.2 cm]
                {\LARGE \bf \titulo}\\
                \rule{\linewidth}{0.2 mm} \\[0.1 cm]
                { \bf \autor} \hspace{1cm}
            \end{center}
            {\large \bf \asignatura} \hspace{0.5cm} \today
        \end{center}
    % \end{titlepage}
    % \centering % Centralizar contenido
    % \setcounter{section}{8}
	% \includegraphics[width=0.05\textwidth]{img/logoUBB.png}\par\vspace{0.5cm} % Logo
	% {\scshape\LARGE \universidad \par} % Nombre de la Universidad
	% \vspace{1cm} % Espacio de 1,5cm
	% \fancyhead[C]{%
	% 	\begin{tabular}{c}
	% 	{\huge\bfseries \titulo \par} \
	% 	\rule{\linewidth}{0.2 mm} \\[0.15 cm]
	% 	\emph{\textbf{Estudiantes :}}\\
	% 	\autor\\ % Nombre del autor
	% 	\today % Fecha actual
	% 	\end{tabular}%
	% }
	

}

