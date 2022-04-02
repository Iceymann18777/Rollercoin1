.class Lcom/mopub/mobileads/AvidBuyerTagXmlManager;
.super Ljava/lang/Object;
.source "AvidBuyerTagXmlManager.java"


# static fields
.field private static final AD_VERIFICATIONS:Ljava/lang/String; = "AdVerifications"

.field private static final JAVA_SCRIPT_RESOURCE:Ljava/lang/String; = "JavaScriptResource"

.field private static final VERIFICATION:Ljava/lang/String; = "Verification"


# instance fields
.field private final mAvidNode:Lorg/w3c/dom/Node;


# direct methods
.method constructor <init>(Lorg/w3c/dom/Node;)V
    .registers 2

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 32
    iput-object p1, p0, Lcom/mopub/mobileads/AvidBuyerTagXmlManager;->mAvidNode:Lorg/w3c/dom/Node;

    return-void
.end method


# virtual methods
.method getJavaScriptResources()Ljava/util/Set;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 58
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 60
    iget-object v1, p0, Lcom/mopub/mobileads/AvidBuyerTagXmlManager;->mAvidNode:Lorg/w3c/dom/Node;

    const-string v2, "AdVerifications"

    invoke-static {v1, v2}, Lcom/mopub/mobileads/util/XmlUtils;->getFirstMatchingChildNode(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v1

    if-nez v1, :cond_10

    return-object v0

    :cond_10
    const-string v2, "Verification"

    .line 65
    invoke-static {v1, v2}, Lcom/mopub/mobileads/util/XmlUtils;->getMatchingChildNodes(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_19

    return-object v0

    .line 70
    :cond_19
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1d
    :goto_1d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_39

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/w3c/dom/Node;

    const-string v3, "JavaScriptResource"

    .line 71
    invoke-static {v2, v3}, Lcom/mopub/mobileads/util/XmlUtils;->getFirstMatchingChildNode(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v2

    if-eqz v2, :cond_1d

    .line 74
    invoke-static {v2}, Lcom/mopub/mobileads/util/XmlUtils;->getNodeValue(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1d

    :cond_39
    return-object v0
.end method
