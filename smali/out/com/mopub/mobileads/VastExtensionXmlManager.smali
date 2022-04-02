.class public Lcom/mopub/mobileads/VastExtensionXmlManager;
.super Ljava/lang/Object;
.source "VastExtensionXmlManager.java"


# static fields
.field public static final AD_VERIFICATIONS:Ljava/lang/String; = "AdVerifications"

.field public static final AVID:Ljava/lang/String; = "AVID"

.field public static final ID:Ljava/lang/String; = "id"

.field public static final MOAT:Ljava/lang/String; = "Moat"

.field public static final TYPE:Ljava/lang/String; = "type"

.field public static final VENDOR:Ljava/lang/String; = "vendor"

.field public static final VERIFICATION:Ljava/lang/String; = "Verification"

.field public static final VIDEO_VIEWABILITY_TRACKER:Ljava/lang/String; = "MoPubViewabilityTracker"


# instance fields
.field private final mExtensionNode:Lorg/w3c/dom/Node;


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Node;)V
    .registers 2

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 41
    iput-object p1, p0, Lcom/mopub/mobileads/VastExtensionXmlManager;->mExtensionNode:Lorg/w3c/dom/Node;

    return-void
.end method


# virtual methods
.method getAvidJavaScriptResources()Ljava/util/Set;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 82
    iget-object v0, p0, Lcom/mopub/mobileads/VastExtensionXmlManager;->mExtensionNode:Lorg/w3c/dom/Node;

    const-string v1, "AVID"

    invoke-static {v0, v1}, Lcom/mopub/mobileads/util/XmlUtils;->getFirstMatchingChildNode(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v0

    if-nez v0, :cond_c

    const/4 v0, 0x0

    return-object v0

    .line 87
    :cond_c
    new-instance v1, Lcom/mopub/mobileads/AvidBuyerTagXmlManager;

    invoke-direct {v1, v0}, Lcom/mopub/mobileads/AvidBuyerTagXmlManager;-><init>(Lorg/w3c/dom/Node;)V

    invoke-virtual {v1}, Lcom/mopub/mobileads/AvidBuyerTagXmlManager;->getJavaScriptResources()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method getMoatImpressionPixels()Ljava/util/Set;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 99
    iget-object v0, p0, Lcom/mopub/mobileads/VastExtensionXmlManager;->mExtensionNode:Lorg/w3c/dom/Node;

    const-string v1, "AdVerifications"

    invoke-static {v0, v1}, Lcom/mopub/mobileads/util/XmlUtils;->getFirstMatchingChildNode(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_c

    return-object v1

    :cond_c
    const-string v2, "Moat"

    .line 105
    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    const-string v3, "Verification"

    const-string v4, "vendor"

    .line 104
    invoke-static {v0, v3, v4, v2}, Lcom/mopub/mobileads/util/XmlUtils;->getMatchingChildNodes(Lorg/w3c/dom/Node;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2d

    .line 106
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_23

    goto :goto_2d

    .line 110
    :cond_23
    new-instance v1, Lcom/mopub/mobileads/MoatBuyerTagXmlManager;

    invoke-direct {v1, v0}, Lcom/mopub/mobileads/MoatBuyerTagXmlManager;-><init>(Ljava/util/List;)V

    invoke-virtual {v1}, Lcom/mopub/mobileads/MoatBuyerTagXmlManager;->getImpressionPixelsXml()Ljava/util/Set;

    move-result-object v0

    return-object v0

    :cond_2d
    :goto_2d
    return-object v1
.end method

.method getType()Ljava/lang/String;
    .registers 3

    .line 120
    iget-object v0, p0, Lcom/mopub/mobileads/VastExtensionXmlManager;->mExtensionNode:Lorg/w3c/dom/Node;

    const-string v1, "type"

    invoke-static {v0, v1}, Lcom/mopub/mobileads/util/XmlUtils;->getAttributeValue(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getVideoViewabilityTracker()Lcom/mopub/mobileads/VideoViewabilityTracker;
    .registers 6

    .line 52
    iget-object v0, p0, Lcom/mopub/mobileads/VastExtensionXmlManager;->mExtensionNode:Lorg/w3c/dom/Node;

    const-string v1, "MoPubViewabilityTracker"

    .line 53
    invoke-static {v0, v1}, Lcom/mopub/mobileads/util/XmlUtils;->getFirstMatchingChildNode(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_c

    return-object v1

    .line 58
    :cond_c
    new-instance v2, Lcom/mopub/mobileads/VideoViewabilityTrackerXmlManager;

    invoke-direct {v2, v0}, Lcom/mopub/mobileads/VideoViewabilityTrackerXmlManager;-><init>(Lorg/w3c/dom/Node;)V

    .line 60
    invoke-virtual {v2}, Lcom/mopub/mobileads/VideoViewabilityTrackerXmlManager;->getViewablePlaytimeMS()Ljava/lang/Integer;

    move-result-object v0

    .line 61
    invoke-virtual {v2}, Lcom/mopub/mobileads/VideoViewabilityTrackerXmlManager;->getPercentViewable()Ljava/lang/Integer;

    move-result-object v3

    .line 63
    invoke-virtual {v2}, Lcom/mopub/mobileads/VideoViewabilityTrackerXmlManager;->getVideoViewabilityTrackerUrl()Ljava/lang/String;

    move-result-object v2

    if-eqz v0, :cond_35

    if-eqz v3, :cond_35

    .line 66
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_28

    goto :goto_35

    .line 70
    :cond_28
    new-instance v1, Lcom/mopub/mobileads/VideoViewabilityTracker;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-direct {v1, v0, v3, v2}, Lcom/mopub/mobileads/VideoViewabilityTracker;-><init>(IILjava/lang/String;)V

    :cond_35
    :goto_35
    return-object v1
.end method
