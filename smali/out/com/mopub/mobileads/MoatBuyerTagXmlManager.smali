.class Lcom/mopub/mobileads/MoatBuyerTagXmlManager;
.super Ljava/lang/Object;
.source "MoatBuyerTagXmlManager.java"


# static fields
.field private static final ID:Ljava/lang/String; = "id"

.field private static final VIEWABLE_IMPRESSION:Ljava/lang/String; = "ViewableImpression"


# instance fields
.field private final mMoatVerificationNodes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/w3c/dom/Node;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/w3c/dom/Node;",
            ">;)V"
        }
    .end annotation

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 35
    iput-object p1, p0, Lcom/mopub/mobileads/MoatBuyerTagXmlManager;->mMoatVerificationNodes:Ljava/util/List;

    return-void
.end method

.method private getViewableImpressionXml(Lorg/w3c/dom/Node;)Ljava/lang/String;
    .registers 6

    if-eqz p1, :cond_25

    .line 82
    invoke-interface {p1}, Lorg/w3c/dom/Node;->hasAttributes()Z

    move-result v0

    if-nez v0, :cond_9

    goto :goto_25

    :cond_9
    const-string v0, "id"

    .line 86
    invoke-static {p1, v0}, Lcom/mopub/mobileads/util/XmlUtils;->getAttributeValue(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 87
    invoke-static {p1}, Lcom/mopub/mobileads/util/XmlUtils;->getNodeValue(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object p1

    .line 88
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    aput-object p1, v2, v0

    const-string p1, "<ViewableImpression id=\"%s\"><![CDATA[%s]]</ViewableImpression>"

    invoke-static {v1, p1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_25
    :goto_25
    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method getImpressionPixelsXml()Ljava/util/Set;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 61
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 63
    iget-object v1, p0, Lcom/mopub/mobileads/MoatBuyerTagXmlManager;->mMoatVerificationNodes:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_b
    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/w3c/dom/Node;

    if-nez v2, :cond_1a

    goto :goto_b

    :cond_1a
    const-string v3, "ViewableImpression"

    .line 68
    invoke-static {v2, v3}, Lcom/mopub/mobileads/util/XmlUtils;->getFirstMatchingChildNode(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v2

    .line 71
    invoke-direct {p0, v2}, Lcom/mopub/mobileads/MoatBuyerTagXmlManager;->getViewableImpressionXml(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_b

    .line 73
    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_b

    :cond_2a
    return-object v0
.end method
