.class Lcom/mopub/mobileads/VastAdXmlManager;
.super Ljava/lang/Object;
.source "VastAdXmlManager.java"


# static fields
.field private static final INLINE:Ljava/lang/String; = "InLine"

.field private static final SEQUENCE:Ljava/lang/String; = "sequence"

.field private static final WRAPPER:Ljava/lang/String; = "Wrapper"


# instance fields
.field private final mAdNode:Lorg/w3c/dom/Node;


# direct methods
.method constructor <init>(Lorg/w3c/dom/Node;)V
    .registers 2

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 35
    iput-object p1, p0, Lcom/mopub/mobileads/VastAdXmlManager;->mAdNode:Lorg/w3c/dom/Node;

    return-void
.end method


# virtual methods
.method getInLineXmlManager()Lcom/mopub/mobileads/VastInLineXmlManager;
    .registers 3

    .line 45
    iget-object v0, p0, Lcom/mopub/mobileads/VastAdXmlManager;->mAdNode:Lorg/w3c/dom/Node;

    const-string v1, "InLine"

    invoke-static {v0, v1}, Lcom/mopub/mobileads/util/XmlUtils;->getFirstMatchingChildNode(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v0

    if-eqz v0, :cond_10

    .line 48
    new-instance v1, Lcom/mopub/mobileads/VastInLineXmlManager;

    invoke-direct {v1, v0}, Lcom/mopub/mobileads/VastInLineXmlManager;-><init>(Lorg/w3c/dom/Node;)V

    goto :goto_11

    :cond_10
    const/4 v1, 0x0

    :goto_11
    return-object v1
.end method

.method getSequence()Ljava/lang/String;
    .registers 3

    .line 75
    iget-object v0, p0, Lcom/mopub/mobileads/VastAdXmlManager;->mAdNode:Lorg/w3c/dom/Node;

    const-string v1, "sequence"

    invoke-static {v0, v1}, Lcom/mopub/mobileads/util/XmlUtils;->getAttributeValue(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getWrapperXmlManager()Lcom/mopub/mobileads/VastWrapperXmlManager;
    .registers 3

    .line 60
    iget-object v0, p0, Lcom/mopub/mobileads/VastAdXmlManager;->mAdNode:Lorg/w3c/dom/Node;

    const-string v1, "Wrapper"

    invoke-static {v0, v1}, Lcom/mopub/mobileads/util/XmlUtils;->getFirstMatchingChildNode(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v0

    if-eqz v0, :cond_10

    .line 63
    new-instance v1, Lcom/mopub/mobileads/VastWrapperXmlManager;

    invoke-direct {v1, v0}, Lcom/mopub/mobileads/VastWrapperXmlManager;-><init>(Lorg/w3c/dom/Node;)V

    goto :goto_11

    :cond_10
    const/4 v1, 0x0

    :goto_11
    return-object v1
.end method
