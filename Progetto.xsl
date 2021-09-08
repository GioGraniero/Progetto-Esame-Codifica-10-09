<?xml version="1.0" encoding="UTF-8" ?>

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:teiCorpus="http://www.tei-c.org/ns/1.0" xmlns:tei="http://www.tei-c.org/ns/1.0" xmlns="http://www.w3.org/1999/xhtml" version="1.0">

    <xsl:output method="html" encoding="UTF-8" version="5.0" indent="yes"/>

        <xsl:template match="/"> <!--Radice-->
            <html>
                <head>
                    <title>
                        <xsl:value-of select="//tei:msIdentifier//tei:idno"/> Digital Edition
                    </title>
                    <link href="stile.css" rel="stylesheet" type="text/css"/>
                    <script src="pulsanti.js"></script>
                </head>
                <body>
                    <nav>
	                    <a href="progetto.html" class="logo">Digital Edition</a>
	                    <ul id="menupagine">
                        <li>
                                <a href="#Infocorpus" id="link1">Info Corpus</a>
                            </li>
                            <li>
                                <a href="#Info1.13" id="link2">Info LL1.13.I</a>
                            </li>
                            <li>
                                <a href="#Retroimg" id="link3">Lettera LL1.13.I</a>
                            </li>
                            <li>
                                <a href="#Info1.22" id="link4">Info LL1.22</a>
                            </li>
                            <li>
                                <a href="#Retroimg2" id="link5">Lettera LL1.22</a>
                            </li>
                        </ul>
                    </nav>
                    <div id="Home">
                        <div class="intro">
                            <h1>Digital Edition LL1.13.I e LL1.22</h1>
                            <h2>Lettere di Vincenzo Bellini</h2>
                            <img id="Bellinimg" src="bellini.jpg" alt="Vincenzo Bellini"/>
                        </div>
                            <h2 id="Infocorpus">Informazioni Sul Corpus</h2>
                            <div class="docdesc">
                                <xsl:apply-templates select="//teiCorpus:titleStmt/teiCorpus:title[@type='main']"/>
                                <xsl:apply-templates select="//teiCorpus:titleStmt/teiCorpus:author[@n='1']"/>
                                <xsl:apply-templates select="//teiCorpus:publicationStmt[@n='1']/teiCorpus:publisher"/>
                                <xsl:apply-templates select="//teiCorpus:titleStmt/teiCorpus:respStmt[@n='1']"/>
                                <xsl:apply-templates select="//teiCorpus:edition[@n='1']"/>
                                <xsl:apply-templates select="//teiCorpus:msDesc[@type='main']"/>
                                <xsl:apply-templates select="//teiCorpus:additional[@n='1']"/>
                            </div>
                            <!-- Lettera LL1.13.I -->
                            <h2 id="Info1.13">Informazioni LL1.13.I</h2>
                            <div class="docdesc">
                                <xsl:apply-templates select="//tei:titleStmt/tei:title[@type='LL1.13.I']"/>
                                <xsl:apply-templates select="//teiCorpus:titleStmt/teiCorpus:author[@n='1']"/>
                                <xsl:apply-templates select="//teiCorpus:titleStmt/teiCorpus:respStmt[@n='1']"/>
                                <xsl:apply-templates select="//tei:msDesc[@type='LL1.13.I']"/>
                                <xsl:apply-templates select="//tei:msItem[@n='1.1']"/>
                                <xsl:apply-templates select="//tei:physDesc[@n='1.13']"/>
                                <xsl:apply-templates select="//teiCorpus:additional[@n='1']"/>
                            </div>
                            <!-- Retro Lettera -->
                            <div class="Retro">
                                <h2>Retro LL1.13.I</h2>
                                <img id="Retroimg" src="LL1.13.I_0001.jpg" alt="Retro Lettera 1.13.I"/>
                                <xsl:apply-templates select="//tei:group/tei:text[@n='parte1']"/>
                                <xsl:apply-templates select="//tei:teiHeader[@n='2']/tei:fileDesc"/>
                                <xsl:apply-templates select="//tei:handNote[@xml:id='h2']/tei:p"/>
                            </div>
                            <!--Fronte Lettera-->
                            <div class="Front">
                                <h2>Fronte LL1.13.I</h2>
                                <img id="Fronteimg" src="LL1.13.I_0002.jpg" alt="Fronte Lettera 1.13.I"/>
                                <xsl:apply-templates select="//tei:group/tei:text[@n='parte2']"/>
                                <xsl:apply-templates select="//tei:teiHeader[@n='2']/tei:fileDesc"/>
                                <xsl:apply-templates select="//tei:handNote[@xml:id='h3']/tei:p"/>
                                <xsl:apply-templates select="//tei:back[@n='1.13']"/>
                            </div>
                            <!-- Lettera LL1.22 -->
                            <h2 id="Info1.22">Informazioni LL1.22</h2>
                            <div class="docdesc">
                                <xsl:apply-templates select="//tei:titleStmt/tei:title[@type='LL1.22']"/>
                                <xsl:apply-templates select="//teiCorpus:titleStmt/teiCorpus:author[@n='1']"/>
                                <xsl:apply-templates select="//teiCorpus:titleStmt/teiCorpus:respStmt[@n='1']"/>
                                <xsl:apply-templates select="//tei:msDesc[@type='LL1.22']"/>
                                <xsl:apply-templates select="//tei:msItem[@n='1.22']"/>
                                <xsl:apply-templates select="//tei:physDesc[@n='1.22']"/>
                                <xsl:apply-templates select="//teiCorpus:additional[@n='1']"/>
                            </div>
                            <div class="1.22">
                                <h2>Retro LL1.22</h2>
                                <img id="Retroimg2" src="LL1.22_0002.jpg" alt="Retro Lettera 1.22"/>
                            </div>
                            <div class="1.22">
                                <h2>Fronte LL1.22</h2>
                                <img id="Fronteimg2" src="LL1.22_0001.jpg" alt="Fronte Lettera 1.22"/>
                                <xsl:apply-templates select="//tei:text[@xml:id='LL1.22']/tei:body"/>
                                <xsl:apply-templates select="//tei:teiHeader[@n='3']/tei:fileDesc"/>
                                <xsl:apply-templates select="//tei:physDesc[@n='1.22']//tei:handDesc"/>
                                <xsl:apply-templates select="//tei:back[@n='1.22']"/>
                            </div>
                        
                    </div>
                    <footer>
                        <div class="barrafinale">
                            <p>Progettato da Giovanni Graniero 560739 per l'esame di Codifica di Testi <a href="mailto:g.graniero@studenti.unipi.it">g.graniero@studenti.unipi.it</a></p>
                        </div>
                    </footer>
                </body>
            </html>
        </xsl:template>

    <!-- Descrizione lettera-->
        <xsl:template match="tei:msItem[@n='1.1']">
            <b>Note aggiuntive:</b>
            <p>
                <xsl:value-of select="//tei:note"/>
            </p>
        </xsl:template>

        <xsl:template match="tei:msItem[@n='1.22']">
            <b>Note aggiuntive:</b>
            <p>
                <xsl:value-of select="//tei:msItem[@n='1.22']/tei:note"/>
            </p>
        </xsl:template>

    <!-- Descrizione manoscritto fisico-->
        <xsl:template match="tei:physDesc[@n='1.13']">
            <b>Formato del documento:</b>
            <p>
                <xsl:value-of select="//tei:measure"/> folio, millimetri:
                <xsl:value-of select="//tei:height"/> x
                <xsl:value-of select="//tei:width"/>
            </p>
            <b>Materiale:</b>
            <p>
                <xsl:value-of select="//tei:support/tei:material"/>
            </p>
            <b>Descrizione del documento:</b>
            <br/>
            <p>
                <xsl:value-of select="//tei:support/tei:p[@n='1.1']"/>
                <xsl:value-of select="//tei:support/tei:p[@n='1.2']"/>
            </p>
            <p>
                <xsl:value-of select="//tei:physDesc[@n='1.13']//tei:foliation"/>
            </p>
            <b>Filigrana:</b>
            <p>
                <xsl:value-of select="//tei:support/tei:watermark"/>
            </p>
            <b>Informazioni scrittura e annotazioni:</b>
            <br/>
            <p>
                <xsl:value-of select="//tei:handNote[@xml:id='h1']//tei:p"/>
                <xsl:value-of select="//tei:handNote[@xml:id='h2']/tei:p"/>
                <xsl:value-of select="//tei:handNote[@xml:id='h3']/tei:p"/>
            </p>
        </xsl:template>

        <xsl:template match="tei:physDesc[@n='1.22']">
            <b>Formato del documento:</b>
            <p>
                <xsl:value-of select="//tei:extent[@n='1.22']//tei:measure"/> folio, millimetri:
                <xsl:value-of select="//tei:extent[@n='1.22']//tei:height"/> x
                <xsl:value-of select="//tei:extent[@n='1.22']//tei:width"/>
            </p>
            <b>Materiale:</b>
            <p>
                <xsl:value-of select="//tei:support/tei:material"/>
            </p>
            <b>Descrizione del documento:</b>
            <br/>
            <p>
                <xsl:value-of select="//tei:physDesc[@n='1.22']//tei:support/tei:p"/>
            </p>
            <p>
                <xsl:value-of select="//tei:physDesc[@n='1.22']//tei:foliation"/>
            </p>
            <b>Informazioni scrittura e annotazioni:</b>
            <br/>
            <p>
                <xsl:value-of select="//tei:physDesc[@n='1.22']//tei:handNote/tei:p"/>
                <xsl:value-of select="//tei:handNote[@xml:id='h4']/tei:p"/>
                <xsl:value-of select="//tei:handNote[@xml:id='h5']/tei:p"/>
            </p>
        </xsl:template>

        <xsl:template match="tei:handNote[@xml:id='h2']/tei:p">
            <b>Annotazioni:</b>
            <br/>
            <p>
                <xsl:value-of select="//tei:handNote[@xml:id='h2']/tei:p"/>
            </p>
        </xsl:template>

        <xsl:template match="tei:handNote[@xml:id='h3']/tei:p">
            <b>Annotazioni:</b>
            <br/>
            <p>
                <xsl:value-of select="//tei:handNote[@xml:id='h3']/tei:p"/>
            </p>
        </xsl:template>

        <xsl:template match="tei:physDesc[@n='1.22']//tei:handDesc">
            <b>Annotazioni:</b>
            <br/>
            <p>
                <xsl:value-of select="//tei:handNote[@xml:id='h4']/tei:p"/>
                <xsl:value-of select="//tei:handNote[@xml:id='h5']/tei:p"/>
            </p>
        </xsl:template>

        <xsl:template match="teiCorpus:msDesc[@type='main']">
            <b>Ubicazione fisica: </b>
            <p>
                <xsl:value-of select="//teiCorpus:repository"/>
            </p>
            <p>
                <xsl:value-of select="//teiCorpus:idno[@type='collocation']"/>
            </p>
                <b>Lingua:</b>
                <p>
                    <xsl:value-of select="//teiCorpus:textLang"/>
                </p>
        </xsl:template>

        <xsl:template match="tei:msDesc[@type='LL1.13.I']">
            <b>Ubicazione fisica: </b>
            <p>
                <xsl:value-of select="//tei:repository"/>
            </p>
            <p>
                <xsl:value-of select="//tei:idno[@type='collocationLL1.13.I']"/>
            </p>
            <b>Lingua:</b>
            <p>
                <xsl:value-of select="//tei:textLang"/>
            </p>
        </xsl:template>

        <xsl:template match="tei:msDesc[@type='LL1.22']">
            <b>Ubicazione fisica: </b>
            <p>
                <xsl:value-of select="//tei:repository"/>
            </p>
            <p>
                <xsl:value-of select="//tei:idno[@type='collocationLL1.22']"/>
            </p>
            <b>Lingua:</b>
            <p>
                <xsl:value-of select="//tei:textLang"/>
            </p>
        </xsl:template>

        <xsl:template match="tei:additional">
            <b>Ulteriori Informazioni:</b>
                <p>
                    <xsl:value-of select="//tei:adminInfo/tei:note"/>
                </p>
            <br/>
        </xsl:template>

        <!--Info dettagliate lettera-->
        <xsl:template match="tei:titleStmt/tei:title">
                <b>Titolo:</b>
                <p>
                <xsl:apply-templates/>
                </p>
        </xsl:template>

        <xsl:template match="teiCorpus:publicationStmt[@n='1']/teiCorpus:publisher">
                <b>Lettere pubblicate da:</b>
                <p>
                <xsl:apply-templates/>
                </p>
        </xsl:template>

        <xsl:template match="tei:titleStmt/tei:author">
                <b>Autore:</b>
                <p>
                <xsl:apply-templates/>
                </p>
        </xsl:template>

        <xsl:template match="tei:edition">
                <b>Edizione:</b>
                <p>
                <xsl:apply-templates/>
                </p>
        </xsl:template>

        <xsl:template match="tei:teiHeader[@n='2']/tei:fileDesc">
                <b>Trascrizione: </b>
                <p>
                <xsl:value-of select="//tei:respStmt"/>
                </p>
                <b>Conversione:</b>
                <p>
                <xsl:value-of select="//tei:editionStmt/tei:respStmt"/>
                </p>
        </xsl:template>

        <xsl:template match="tei:teiHeader[@n='3']/tei:fileDesc">
                <b>Trascrizione: </b>
                <p>
                <xsl:value-of select="//tei:respStmt"/>
                </p>
                <b>Conversione:</b>
                <p>
                <xsl:value-of select="//tei:editionStmt/tei:respStmt"/>
                </p>
        </xsl:template>

        <xsl:template match="tei:titleStmt/tei:respStmt">
                <b>Trascrizione: </b>
                <p>
                <xsl:apply-templates/>
                </p>
                <b>Conversione:</b>
                <p>
                <xsl:value-of select="//tei:editionStmt/tei:respStmt"/>
                </p>
        </xsl:template>
        <!-- Body e Testi delle lettera con pulsanti -->
        <xsl:template match="tei:body">
            <div class="testo">
                <p class="testolettera">
                    <xsl:apply-templates/>
                </p>
            </div>
        </xsl:template>

        <xsl:template match="//tei:group/tei:text[@n='parte1']">
            <div class="testo">
                <p class="testolettera">
                    <xsl:apply-templates/>
                </p>
                <button onclick="rimuovi();">Rimuovi espansioni</button>
                <button onclick="sciogli();">Sciogli abbreviazioni</button>
                <button onclick="scompari();">Rimuovi aggiunte</button>
                <button onclick="appari();">Mostra aggiunte</button>
            </div>
        </xsl:template>

        <xsl:template match="//tei:group/tei:text[@n='parte2']">
            <div class="testo">
                <p class="testolettera">
                    <xsl:apply-templates/>
                </p>
                <button onclick="scompari();">Rimuovi aggiunte</button>
                <button onclick="appari();">Mostra aggiunte</button>
            </div>
        </xsl:template>

        <xsl:template match="//tei:text[@xml:id='LL1.22']/tei:body">
            <div class="testo">
                <p class="testolettera">
                    <xsl:apply-templates/>
                </p>
            <button onclick="rimuovi();">Rimuovi espansioni</button>
            <button onclick="sciogli();">Sciogli abbreviazioni</button>
            <button onclick="scompari();">Rimuovi aggiunte</button>
            <button onclick="appari();">Mostra aggiunte</button>
            </div>
        </xsl:template>
    <!-- template a scopo grafico -->
        <xsl:template match="tei:lb">
            <xsl:apply-templates/>
                <br/>
        </xsl:template>

        <xsl:template match="tei:del">
            <del>
                <xsl:apply-templates/>
            </del>
        </xsl:template>

        <xsl:template match="tei:add">
            <i>
                <xsl:apply-templates/>
            </i>
        </xsl:template>

        <xsl:template match="tei:hi[@rend='sup']">
            <sup>
                <xsl:apply-templates/>
            </sup>
        </xsl:template>

        <xsl:template match="tei:hi[@rend='underline']">
            <u>
                <xsl:apply-templates/>
            </u>
        </xsl:template>

        <xsl:template match="tei:ex">
            &lt;
                <xsl:apply-templates/>
            &gt;
        </xsl:template>

        <xsl:template match="tei:expan">
            <em>[
                <xsl:apply-templates/>
            ]</em>
        </xsl:template>

        <xsl:template match="tei:fw">
            <font color="blue">
                <xsl:apply-templates/>
            </font>
        </xsl:template>

        <xsl:template match="tei:add[@place='supralinear']">
            <sup>
                <xsl:apply-templates/>
            </sup>
        </xsl:template>
        <!-- Back della lettera -->
        <xsl:template match="tei:back">
            <div id="back">
                <b>Note: </b>
                    <p>
                    <xsl:apply-templates/>
                    </p>
            </div>
        </xsl:template>

        <xsl:template match="tei:note">
                <xsl:apply-templates/>
        </xsl:template>

        <xsl:template match="tei:back//tei:head">
            <br/>
            <br/>
            <b>
                <xsl:apply-templates/>
            </b>
        </xsl:template>

        <xsl:template match="tei:back//tei:bibl//tei:bibl">
            <br/>
            <br/>
                <xsl:apply-templates/>
        </xsl:template>

</xsl:stylesheet>