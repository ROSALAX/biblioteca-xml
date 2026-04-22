<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">

<html>
<head>
    <title>Biblioteca</title>
    <style>
        body { font-family: Arial; }
        table { border-collapse: collapse; width: 100%; margin-bottom: 20px; }
        th, td { border: 1px solid black; padding: 8px; text-align: left; }
        th { background-color: #ddd; }
        .libro {
            border: 1px solid black;
            padding: 10px;
            margin-bottom: 15px;
        }
    </style>
</head>

<body>

<h1>Índice de Libros</h1>

<table>
    <tr>
        <th>Título</th>
        <th>Autor</th>
    </tr>

    <xsl:for-each select="biblioteca/libro">
        <tr>
            <td>
                <a href="#{@id}">
                    <xsl:value-of select="titulo"/>
                </a>
            </td>
            <td>
                <xsl:value-of select="autor"/>
            </td>
        </tr>
    </xsl:for-each>
</table>

<h1>Detalles de los Libros</h1>

<xsl:for-each select="biblioteca/libro">
    <div class="libro" id="{@id}">
        <h2><xsl:value-of select="titulo"/></h2>
        <p><b>Autor:</b> <xsl:value-of select="autor"/></p>
        <p><b>Año:</b> <xsl:value-of select="anio"/></p>
        <p><b>Páginas:</b> <xsl:value-of select="paginas"/></p>
        <p><b>Sinopsis:</b> <xsl:value-of select="sinopsis"/></p>
    </div>
</xsl:for-each>

</body>
</html>

</xsl:template>
</xsl:stylesheet>