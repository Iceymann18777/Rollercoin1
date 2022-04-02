.class public Lcom/mopub/mobileads/VastIconXmlManager;
.super Ljava/lang/Object;
.source "VastIconXmlManager.java"


# static fields
.field public static final DURATION:Ljava/lang/String; = "duration"

.field public static final HEIGHT:Ljava/lang/String; = "height"

.field public static final ICON_CLICKS:Ljava/lang/String; = "IconClicks"

.field public static final ICON_CLICK_THROUGH:Ljava/lang/String; = "IconClickThrough"

.field public static final ICON_CLICK_TRACKING:Ljava/lang/String; = "IconClickTracking"

.field public static final ICON_VIEW_TRACKING:Ljava/lang/String; = "IconViewTracking"

.field public static final OFFSET:Ljava/lang/String; = "offset"

.field public static final WIDTH:Ljava/lang/String; = "width"


# instance fields
.field private final mIconNode:Lorg/w3c/dom/Node;

.field private final mResourceXmlManager:Lcom/mopub/mobileads/VastResourceXmlManager;


# direct methods
.method constructor <init>(Lorg/w3c/dom/Node;)V
    .registers 3

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 44
    iput-object p1, p0, Lcom/mopub/mobileads/VastIconXmlManager;->mIconNode:Lorg/w3c/dom/Node;

    .line 45
    new-instance v0, Lcom/mopub/mobileads/VastResourceXmlManager;

    invoke-direct {v0, p1}, Lcom/mopub/mobileads/VastResourceXmlManager;-><init>(Lorg/w3c/dom/Node;)V

    iput-object v0, p0, Lcom/mopub/mobileads/VastIconXmlManager;->mResourceXmlManager:Lcom/mopub/mobileads/VastResourceXmlManager;

    return-void
.end method


# virtual methods
.method getClickThroughUri()Ljava/lang/String;
    .registers 3

    .line 136
    iget-object v0, p0, Lcom/mopub/mobileads/VastIconXmlManager;->mIconNode:Lorg/w3c/dom/Node;

    const-string v1, "IconClicks"

    invoke-static {v0, v1}, Lcom/mopub/mobileads/util/XmlUtils;->getFirstMatchingChildNode(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v0

    if-nez v0, :cond_c

    const/4 v0, 0x0

    return-object v0

    :cond_c
    const-string v1, "IconClickThrough"

    .line 142
    invoke-static {v0, v1}, Lcom/mopub/mobileads/util/XmlUtils;->getFirstMatchingChildNode(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v0

    .line 143
    invoke-static {v0}, Lcom/mopub/mobileads/util/XmlUtils;->getNodeValue(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getClickTrackingUris()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/mopub/mobileads/VastTracker;",
            ">;"
        }
    .end annotation

    .line 117
    iget-object v0, p0, Lcom/mopub/mobileads/VastIconXmlManager;->mIconNode:Lorg/w3c/dom/Node;

    const-string v1, "IconClicks"

    invoke-static {v0, v1}, Lcom/mopub/mobileads/util/XmlUtils;->getFirstMatchingChildNode(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v0

    .line 118
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    if-nez v0, :cond_10

    return-object v1

    :cond_10
    const-string v2, "IconClickTracking"

    .line 124
    invoke-static {v0, v2}, Lcom/mopub/mobileads/util/XmlUtils;->getMatchingChildNodes(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 125
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1a
    :goto_1a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_35

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/w3c/dom/Node;

    .line 126
    invoke-static {v2}, Lcom/mopub/mobileads/util/XmlUtils;->getNodeValue(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1a

    .line 128
    new-instance v3, Lcom/mopub/mobileads/VastTracker;

    invoke-direct {v3, v2}, Lcom/mopub/mobileads/VastTracker;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1a

    :cond_35
    return-object v1
.end method

.method getDurationMS()Ljava/lang/Integer;
    .registers 6

    .line 100
    iget-object v0, p0, Lcom/mopub/mobileads/VastIconXmlManager;->mIconNode:Lorg/w3c/dom/Node;

    const-string v1, "duration"

    invoke-static {v0, v1}, Lcom/mopub/mobileads/util/XmlUtils;->getAttributeValue(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 103
    :try_start_8
    invoke-static {v0}, Lcom/mopub/mobileads/VastAbsoluteProgressTracker;->parseAbsoluteOffset(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0
    :try_end_c
    .catch Ljava/lang/NumberFormatException; {:try_start_8 .. :try_end_c} :catch_d

    goto :goto_23

    .line 105
    :catch_d
    sget-object v1, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v2, v4

    const-string v0, "Invalid VAST icon duration format: %s:"

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-static {v1, v3}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    const/4 v0, 0x0

    :goto_23
    return-object v0
.end method

.method getHeight()Ljava/lang/Integer;
    .registers 3

    .line 67
    iget-object v0, p0, Lcom/mopub/mobileads/VastIconXmlManager;->mIconNode:Lorg/w3c/dom/Node;

    const-string v1, "height"

    invoke-static {v0, v1}, Lcom/mopub/mobileads/util/XmlUtils;->getAttributeValueAsInt(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method getOffsetMS()Ljava/lang/Integer;
    .registers 6

    .line 80
    iget-object v0, p0, Lcom/mopub/mobileads/VastIconXmlManager;->mIconNode:Lorg/w3c/dom/Node;

    const-string v1, "offset"

    invoke-static {v0, v1}, Lcom/mopub/mobileads/util/XmlUtils;->getAttributeValue(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 83
    :try_start_8
    invoke-static {v0}, Lcom/mopub/mobileads/VastAbsoluteProgressTracker;->parseAbsoluteOffset(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0
    :try_end_c
    .catch Ljava/lang/NumberFormatException; {:try_start_8 .. :try_end_c} :catch_d

    goto :goto_23

    .line 85
    :catch_d
    sget-object v1, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v2, v4

    const-string v0, "Invalid VAST icon offset format: %s:"

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-static {v1, v3}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    const/4 v0, 0x0

    :goto_23
    return-object v0
.end method

.method getResourceXmlManager()Lcom/mopub/mobileads/VastResourceXmlManager;
    .registers 2

    .line 112
    iget-object v0, p0, Lcom/mopub/mobileads/VastIconXmlManager;->mResourceXmlManager:Lcom/mopub/mobileads/VastResourceXmlManager;

    return-object v0
.end method

.method getViewTrackingUris()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/mopub/mobileads/VastTracker;",
            ">;"
        }
    .end annotation

    .line 148
    iget-object v0, p0, Lcom/mopub/mobileads/VastIconXmlManager;->mIconNode:Lorg/w3c/dom/Node;

    const-string v1, "IconViewTracking"

    .line 149
    invoke-static {v0, v1}, Lcom/mopub/mobileads/util/XmlUtils;->getMatchingChildNodes(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 150
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 152
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_11
    :goto_11
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/w3c/dom/Node;

    .line 153
    invoke-static {v2}, Lcom/mopub/mobileads/util/XmlUtils;->getNodeValue(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_11

    .line 155
    new-instance v3, Lcom/mopub/mobileads/VastTracker;

    invoke-direct {v3, v2}, Lcom/mopub/mobileads/VastTracker;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_11

    :cond_2c
    return-object v1
.end method

.method getWidth()Ljava/lang/Integer;
    .registers 3

    .line 56
    iget-object v0, p0, Lcom/mopub/mobileads/VastIconXmlManager;->mIconNode:Lorg/w3c/dom/Node;

    const-string v1, "width"

    invoke-static {v0, v1}, Lcom/mopub/mobileads/util/XmlUtils;->getAttributeValueAsInt(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
