.class public Lcom/startapp/android/publish/adsCommon/p;
.super Ljava/lang/Object;
.source "StartAppSDK"


# static fields
.field private static a:Ljava/lang/String; = "XmlTools"


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public static a(Lorg/w3c/dom/Node;)Ljava/lang/String;
    .registers 4

    .line 36
    :try_start_0
    invoke-static {}, Ljavax/xml/transform/TransformerFactory;->newInstance()Ljavax/xml/transform/TransformerFactory;

    move-result-object v0

    .line 37
    invoke-virtual {v0}, Ljavax/xml/transform/TransformerFactory;->newTransformer()Ljavax/xml/transform/Transformer;

    move-result-object v0

    const-string v1, "omit-xml-declaration"

    const-string v2, "yes"

    .line 38
    invoke-virtual {v0, v1, v2}, Ljavax/xml/transform/Transformer;->setOutputProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "method"

    const-string v2, "xml"

    .line 39
    invoke-virtual {v0, v1, v2}, Ljavax/xml/transform/Transformer;->setOutputProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "indent"

    const-string v2, "no"

    .line 40
    invoke-virtual {v0, v1, v2}, Ljavax/xml/transform/Transformer;->setOutputProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "encoding"

    const-string v2, "UTF-8"

    .line 41
    invoke-virtual {v0, v1, v2}, Ljavax/xml/transform/Transformer;->setOutputProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    .line 44
    new-instance v2, Ljavax/xml/transform/dom/DOMSource;

    invoke-direct {v2, p0}, Ljavax/xml/transform/dom/DOMSource;-><init>(Lorg/w3c/dom/Node;)V

    new-instance p0, Ljavax/xml/transform/stream/StreamResult;

    invoke-direct {p0, v1}, Ljavax/xml/transform/stream/StreamResult;-><init>(Ljava/io/Writer;)V

    invoke-virtual {v0, v2, p0}, Ljavax/xml/transform/Transformer;->transform(Ljavax/xml/transform/Source;Ljavax/xml/transform/Result;)V

    .line 46
    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3a} :catch_3b

    goto :goto_45

    :catch_3b
    move-exception p0

    .line 48
    sget-object v0, Lcom/startapp/android/publish/adsCommon/p;->a:Ljava/lang/String;

    const/4 v1, 0x6

    const-string v2, "xmlDocumentToString"

    invoke-static {v0, v1, v2, p0}, Lcom/startapp/common/a/g;->a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    :goto_45
    return-object p0
.end method

.method public static a(Ljava/lang/String;)Lorg/w3c/dom/Document;
    .registers 4

    .line 58
    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v0

    const/4 v1, 0x1

    .line 59
    invoke-virtual {v0, v1}, Ljavax/xml/parsers/DocumentBuilderFactory;->setIgnoringElementContentWhitespace(Z)V

    .line 60
    invoke-virtual {v0, v1}, Ljavax/xml/parsers/DocumentBuilderFactory;->setIgnoringComments(Z)V

    .line 61
    invoke-virtual {v0}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v0

    .line 63
    new-instance v1, Lorg/xml/sax/InputSource;

    invoke-direct {v1}, Lorg/xml/sax/InputSource;-><init>()V

    .line 64
    new-instance v2, Ljava/io/StringReader;

    invoke-direct {v2, p0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lorg/xml/sax/InputSource;->setCharacterStream(Ljava/io/Reader;)V

    .line 66
    invoke-virtual {v0, v1}, Ljavax/xml/parsers/DocumentBuilder;->parse(Lorg/xml/sax/InputSource;)Lorg/w3c/dom/Document;

    move-result-object p0
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_20} :catch_21

    goto :goto_2b

    :catch_21
    move-exception p0

    .line 68
    sget-object v0, Lcom/startapp/android/publish/adsCommon/p;->a:Ljava/lang/String;

    const/4 v1, 0x6

    const-string v2, "stringToDocument"

    invoke-static {v0, v1, v2, p0}, Lcom/startapp/common/a/g;->a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    :goto_2b
    return-object p0
.end method

.method public static b(Lorg/w3c/dom/Node;)Ljava/lang/String;
    .registers 4

    .line 75
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object p0

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 80
    :goto_6
    invoke-interface {p0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    if-ge v1, v2, :cond_23

    .line 81
    invoke-interface {p0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    .line 82
    check-cast v0, Lorg/w3c/dom/CharacterData;

    .line 83
    invoke-interface {v0}, Lorg/w3c/dom/CharacterData;->getData()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 85
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_23

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_23
    return-object v0
.end method
