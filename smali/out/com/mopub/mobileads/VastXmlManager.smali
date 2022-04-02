.class Lcom/mopub/mobileads/VastXmlManager;
.super Ljava/lang/Object;
.source "VastXmlManager.java"


# static fields
.field private static final AD:Ljava/lang/String; = "Ad"

.field private static final CUSTOM_CLOSE_ICON:Ljava/lang/String; = "MoPubCloseIcon"

.field private static final CUSTOM_CTA_TEXT:Ljava/lang/String; = "MoPubCtaText"

.field private static final CUSTOM_FORCE_ORIENTATION:Ljava/lang/String; = "MoPubForceOrientation"

.field private static final CUSTOM_SKIP_TEXT:Ljava/lang/String; = "MoPubSkipText"

.field private static final ERROR:Ljava/lang/String; = "Error"

.field private static final MAX_CTA_TEXT_LENGTH:I = 0xf

.field private static final MAX_SKIP_TEXT_LENGTH:I = 0x8

.field private static final MP_IMPRESSION_TRACKER:Ljava/lang/String; = "MP_TRACKING_URL"

.field private static final ROOT_TAG:Ljava/lang/String; = "MPMoVideoXMLDocRoot"

.field private static final ROOT_TAG_CLOSE:Ljava/lang/String; = "</MPMoVideoXMLDocRoot>"

.field private static final ROOT_TAG_OPEN:Ljava/lang/String; = "<MPMoVideoXMLDocRoot>"


# instance fields
.field private mVastDoc:Lorg/w3c/dom/Document;


# direct methods
.method constructor <init>()V
    .registers 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method getAdXmlManagers()Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/mopub/mobileads/VastAdXmlManager;",
            ">;"
        }
    .end annotation

    .line 93
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 94
    iget-object v1, p0, Lcom/mopub/mobileads/VastXmlManager;->mVastDoc:Lorg/w3c/dom/Document;

    if-nez v1, :cond_a

    return-object v0

    :cond_a
    const-string v2, "Ad"

    .line 97
    invoke-interface {v1, v2}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v1

    const/4 v2, 0x0

    .line 98
    :goto_11
    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v3

    if-ge v2, v3, :cond_26

    .line 99
    new-instance v3, Lcom/mopub/mobileads/VastAdXmlManager;

    invoke-interface {v1, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/mopub/mobileads/VastAdXmlManager;-><init>(Lorg/w3c/dom/Node;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    :cond_26
    return-object v0
.end method

.method getCustomCloseIconUrl()Ljava/lang/String;
    .registers 3

    .line 174
    iget-object v0, p0, Lcom/mopub/mobileads/VastXmlManager;->mVastDoc:Lorg/w3c/dom/Document;

    const-string v1, "MoPubCloseIcon"

    invoke-static {v0, v1}, Lcom/mopub/mobileads/util/XmlUtils;->getFirstMatchingStringData(Lorg/w3c/dom/Document;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getCustomCtaText()Ljava/lang/String;
    .registers 4

    .line 144
    iget-object v0, p0, Lcom/mopub/mobileads/VastXmlManager;->mVastDoc:Lorg/w3c/dom/Document;

    const-string v1, "MoPubCtaText"

    invoke-static {v0, v1}, Lcom/mopub/mobileads/util/XmlUtils;->getFirstMatchingStringData(Lorg/w3c/dom/Document;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 145
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0xf

    if-gt v1, v2, :cond_13

    return-object v0

    :cond_13
    const/4 v0, 0x0

    return-object v0
.end method

.method getCustomSkipText()Ljava/lang/String;
    .registers 4

    .line 159
    iget-object v0, p0, Lcom/mopub/mobileads/VastXmlManager;->mVastDoc:Lorg/w3c/dom/Document;

    const-string v1, "MoPubSkipText"

    invoke-static {v0, v1}, Lcom/mopub/mobileads/util/XmlUtils;->getFirstMatchingStringData(Lorg/w3c/dom/Document;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 160
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x8

    if-gt v1, v2, :cond_13

    return-object v0

    :cond_13
    const/4 v0, 0x0

    return-object v0
.end method

.method getErrorTracker()Lcom/mopub/mobileads/VastTracker;
    .registers 4

    .line 112
    iget-object v0, p0, Lcom/mopub/mobileads/VastXmlManager;->mVastDoc:Lorg/w3c/dom/Document;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return-object v1

    :cond_6
    const-string v2, "Error"

    .line 115
    invoke-static {v0, v2}, Lcom/mopub/mobileads/util/XmlUtils;->getFirstMatchingStringData(Lorg/w3c/dom/Document;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 116
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_13

    return-object v1

    .line 119
    :cond_13
    new-instance v1, Lcom/mopub/mobileads/VastTracker;

    invoke-direct {v1, v0}, Lcom/mopub/mobileads/VastTracker;-><init>(Ljava/lang/String;)V

    return-object v1
.end method

.method getMoPubImpressionTrackers()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/mopub/mobileads/VastTracker;",
            ">;"
        }
    .end annotation

    .line 129
    iget-object v0, p0, Lcom/mopub/mobileads/VastXmlManager;->mVastDoc:Lorg/w3c/dom/Document;

    const-string v1, "MP_TRACKING_URL"

    invoke-static {v0, v1}, Lcom/mopub/mobileads/util/XmlUtils;->getStringDataAsList(Lorg/w3c/dom/Document;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 130
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 131
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_15
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 132
    new-instance v3, Lcom/mopub/mobileads/VastTracker;

    invoke-direct {v3, v2}, Lcom/mopub/mobileads/VastTracker;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_15

    :cond_2a
    return-object v1
.end method

.method parseVastXml(Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/parsers/ParserConfigurationException;,
            Ljava/io/IOException;,
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const-string v0, "xmlString cannot be null"

    .line 64
    invoke-static {p1, v0}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "<\\?.*\\?>"

    const-string v1, ""

    .line 68
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 72
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<MPMoVideoXMLDocRoot>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "</MPMoVideoXMLDocRoot>"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 74
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v0

    const/4 v1, 0x1

    .line 75
    invoke-virtual {v0, v1}, Ljavax/xml/parsers/DocumentBuilderFactory;->setCoalescing(Z)V

    const/4 v1, 0x0

    .line 76
    invoke-virtual {v0, v1}, Ljavax/xml/parsers/DocumentBuilderFactory;->setExpandEntityReferences(Z)V

    .line 77
    invoke-virtual {v0}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v0

    .line 78
    new-instance v1, Lorg/xml/sax/InputSource;

    new-instance v2, Ljava/io/StringReader;

    invoke-direct {v2, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/Reader;)V

    invoke-virtual {v0, v1}, Ljavax/xml/parsers/DocumentBuilder;->parse(Lorg/xml/sax/InputSource;)Lorg/w3c/dom/Document;

    move-result-object p1

    iput-object p1, p0, Lcom/mopub/mobileads/VastXmlManager;->mVastDoc:Lorg/w3c/dom/Document;

    return-void
.end method
