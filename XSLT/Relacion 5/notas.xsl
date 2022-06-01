<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

    <xsl:template match="/">
    <html>
        <head>
            <style>
                .centrado{text-align:center;}
                .rojo{color:red;}
                .naranja{color:orange;}
                .celeste{color:lightblue;}
                .azul{color:blue;}
                .fondo1{background-color:#1d51e1;}
                .fondo2{background-color:#5d7edc;}
                table,th,td,tr{border:1px solid black;}
                .tabla{width:80%;margin: 0 auto; border-collapse:collapse;}
                img{height:65px;}
            </style>
        </head>
        <body>
            <h1 class="rojo centrado">Calificaciones Notas Junio</h1>
            <table class="tabla">
                <tr class="fondo1">
                    <th colspan="3">Datos</th>
                    <th colspan="4">Notas</th>
                </tr>
                <tr class="fondo2">
                    <th>Nombres</th>
                    <th>Apellidos</th>
                    <th>Foto</th>
                    <th>Tareas</th>
                    <th>Cuestionarios</th>
                    <th>Examen</th>
                    <th>Final</th>
                </tr>

                <xsl:for-each select="notas/alumno">
                <xsl:if test="@convocatoria='Junio'">
                    <tr>
                        <td><xsl:value-of select="nombre"/></td>
                        <td><xsl:value-of select="apellidos"/></td>
                        <td>
                        <img>
                            <xsl:attribute name="src">Img/<xsl:value-of select="matricula"/>.jpg</xsl:attribute>
                        </img>
                        </td>
                        <td><xsl:value-of select="tareas"/></td>
                        <td><xsl:value-of select="cuestionarios"/></td>
                        <td><xsl:value-of select="examen"/></td>
                        <td>
                            <xsl:choose>
                                <xsl:when test="final &lt;5">
                                    <span class="rojo">Suspenso</span>
                                </xsl:when>
                                <xsl:when test="final &lt;6">
                                    <span class="naranja">Suficiente</span>
                                </xsl:when>
                                <xsl:when test="final &lt;7">
                                    <span>Bien</span>
                                </xsl:when>
                                <xsl:when test="final &lt;8">
                                    <span class="celeste">Notable</span>
                                </xsl:when>
                                <xsl:otherwise>
                                    <span class="azul">Sobresaliente</span>
                                </xsl:otherwise>
                            </xsl:choose>
                        </td>
                    </tr>
                </xsl:if>
                </xsl:for-each>
            </table>
        </body>
    </html>
    </xsl:template>
</xsl:stylesheet>