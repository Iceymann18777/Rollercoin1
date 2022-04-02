.class public Lcom/mopub/mobileads/VastExtensionParentXmlManager;
.super Ljava/lang/Object;
.source "VastExtensionParentXmlManager.java"


# static fields
.field private static final EXTENSION:Ljava/lang/String; = "Extension"


# instance fields
.field private final mVastExtensionParentNode:Lorg/w3c/dom/Node;


# direct methods
.method constructor <init>(Lorg/w3c/dom/Node;)V
    .registers 2

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 28
    iput-object p1, p0, Lcom/mopub/mobileads/VastExtensionParentXmlManager;->mVastExtensionParentNode:Lorg/w3c/dom/Node;

    return-void
.end method


# virtual methods
.method getVastExtensionXmlManagers()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/mopub/mobileads/VastExtensionXmlManager;",
            ">;"
        }
    .end annotation

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 42
    iget-object v1, p0, Lcom/mopub/mobileads/VastExtensionParentXmlManager;->mVastExtensionParentNode:Lorg/w3c/dom/Node;

    const-string v2, "Extension"

    .line 43
    invoke-static {v1, v2}, Lcom/mopub/mobileads/util/XmlUtils;->getMatchingChildNodes(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_10

    return-object v0

    .line 48
    :cond_10
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_14
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_29

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/w3c/dom/Node;

    .line 49
    new-instance v3, Lcom/mopub/mobileads/VastExtensionXmlManager;

    invoke-direct {v3, v2}, Lcom/mopub/mobileads/VastExtensionXmlManager;-><init>(Lorg/w3c/dom/Node;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_14

    :cond_29
    return-object v0
.end method
