<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:template match="/">
        <html>
            <head>
                <title>Relación 3</title>
                <meta charset="UTF-8" />
                <style>

                </style>
            </head>
            <body>
                <h1>Ejercicio 1</h1>

                <xsl:for-each select="horario/dia">
                    <xsl:text>Día </xsl:text>
                    <xsl:value-of select="numdia"/>
                    <ul>
                        <xsl:for-each select="tarea">
                            <li>
                                <strong>
                                    <xsl:value-of select="nombre"/>
                                </strong>
                                <xsl:text> Prioridad </xsl:text>
                                <xsl:value-of select="@prioridad"/>
                                <br/>
                                <xsl:text>De </xsl:text>
                                <xsl:value-of select="hora-ini"/>
                                <xsl:text> a </xsl:text>
                                <xsl:value-of select="hora-fin"/>
                            </li>
                        </xsl:for-each>
                    </ul>
                </xsl:for-each>
                <h1>Ejercicio 2</h1>

                <xsl:for-each select="horario/dia">
                <xsl:sort select="numdia" order="ascending"/>
                    <xsl:choose>
                        <xsl:when test="numdia = 1">
                            <xsl:text>Lunes</xsl:text>
                        </xsl:when>
                        <xsl:when test="numdia = 2">
                            <xsl:text>Martes</xsl:text>
                        </xsl:when>
                        <xsl:when test="numdia = 3">
                            <xsl:text>Miercoles</xsl:text>
                        </xsl:when>
                        <xsl:when test="numdia = 4">
                            <xsl:text>Jueves</xsl:text>
                        </xsl:when>
                        <xsl:when test="numdia = 5">
                            <xsl:text>Viernes</xsl:text>
                        </xsl:when>
                        <xsl:when test="numdia = 6">
                            <xsl:text>Sábado</xsl:text>
                        </xsl:when>
                        <xsl:otherwise>
                            <xsl:text>Domingo</xsl:text>
                        </xsl:otherwise>
                    </xsl:choose>
                    <ul>
                        <xsl:for-each select="tarea">
                            <li>
                                <strong>
                                    <xsl:value-of select="nombre"/>
                                </strong>
                                <xsl:text> Prioridad </xsl:text>
                                <xsl:value-of select="@prioridad"/>
                                <br/>
                                <xsl:text>De </xsl:text>
                                <xsl:value-of select="hora-ini"/>
                                <xsl:text> a </xsl:text>
                                <xsl:value-of select="hora-fin"/>
                            </li>
                        </xsl:for-each>
                    </ul>
                </xsl:for-each>

                <h1>Ejercicio 3</h1>
                <xsl:for-each select="horario/dia">
                <xsl:sort select="numdia" order="ascending"/>
                    <xsl:choose>
                        <xsl:when test="numdia = 1">
                            <xsl:text>Lunes</xsl:text>
                        </xsl:when>
                        <xsl:when test="numdia = 2">
                            <xsl:text>Martes</xsl:text>
                        </xsl:when>
                        <xsl:when test="numdia = 3">
                            <xsl:text>Miercoles</xsl:text>
                        </xsl:when>
                        <xsl:when test="numdia = 4">
                            <xsl:text>Jueves</xsl:text>
                        </xsl:when>
                        <xsl:when test="numdia = 5">
                            <xsl:text>Viernes</xsl:text>
                        </xsl:when>
                        <xsl:when test="numdia = 6">
                            <xsl:text>Sábado</xsl:text>
                        </xsl:when>
                        <xsl:otherwise>
                            <xsl:text>Domingo</xsl:text>
                        </xsl:otherwise>
                    </xsl:choose>

                    <ul>
                        <xsl:for-each select="tarea">
                            <xsl:if test="@prioridad != ''">
                                <li>

                                    <strong>
                                        <xsl:value-of select="nombre"/>
                                    </strong>
                                    <xsl:text> Prioridad </xsl:text>
                                    <xsl:value-of select="@prioridad"/>
                                    <br/>
                                    <xsl:text>De </xsl:text>
                                    <xsl:value-of select="hora-ini"/>
                                    <xsl:text> a </xsl:text>
                                    <xsl:value-of select="hora-fin"/>

                                </li>
                            </xsl:if>

                        </xsl:for-each>
                    </ul>

                </xsl:for-each>


                <h1>Ejercicio 4</h1>

                <xsl:for-each select="horario/dia/tarea">
                    <p>
                        <xsl:value-of select="nombre"/>
                        <text></text>
                        <xsl:choose>
                            <xsl:when test="hora-ini &lt; 12">
                                <xsl:text>- a la mañana</xsl:text>
                            </xsl:when>
                            <xsl:when test="hora-ini &lt; 14">
                                <xsl:text>- al mediodía</xsl:text>
                            </xsl:when>
                            <xsl:otherwise>
                                <xsl:text>- por la tarde</xsl:text>
                            </xsl:otherwise>
                        </xsl:choose>
                    </p>

                </xsl:for-each>

            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>