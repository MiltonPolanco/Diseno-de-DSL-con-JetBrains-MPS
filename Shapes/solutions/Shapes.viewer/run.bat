@echo off
set JBR="C:\Program Files\JetBrains\MPS 2025.3\jbr"
set XML="C:\Users\mdax8\MPSProjects\Shapes\languages\Shapes.sandbox\source_gen\Shapes\sandbox\MyDrawing.xml"

%JBR%\bin\javac.exe -d out src\shapes\viewer\Main.java
if errorlevel 1 exit /b 1

%JBR%\bin\java.exe -cp out shapes.viewer.Main %XML%
