.class Lcom/mopub/mobileads/VastCompanionAdXmlManager;
.super Ljava/lang/Object;
.source "VastCompanionAdXmlManager.java"


# static fields
.field private static final AD_SLOT_ID:Ljava/lang/String; = "adSlotID"

.field private static final COMPANION_CLICK_THROUGH:Ljava/lang/String; = "CompanionClickThrough"

.field private static final COMPANION_CLICK_TRACKING:Ljava/lang/String; = "CompanionClickTracking"

.field private static final CREATIVE_VIEW:Ljava/lang/String; = "creativeView"

.field private static final EVENT:Ljava/lang/String; = "event"

.field private static final HEIGHT:Ljava/lang/String; = "height"

.field private static final TRACKING_EVENTS:Ljava/lang/String; = "TrackingEvents"

.field private static final VIDEO_TRACKER:Ljava/lang/String; = "Tracking"

.field private static final WIDTH:Ljava/lang/String; = "width"


# instance fields
.field private final mCompanionNode:Lorg/w3c/dom/Node;

.field private final mResourceXmlManager:Lcom/mopub/mobileads/VastResourceXmlManager;


# direct methods
.method constructor <init>(Lorg/w3c/dom/Node;)V
    .registers 3

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "companionNode cannot be null"

    .line 44
    invoke-static {p1, v0}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    iput-object p1, p0, Lcom/mopub/mobileads/VastCompanionAdXmlManager;->mCompanionNode:Lorg/w3c/dom/Node;

    .line 46
    new-instance v0, Lcom/mopub/mobileads/VastResourceXmlManager;

    invoke-direct {v0, p1}, Lcom/mopub/mobileads/VastResourceXmlManager;-><init>(Lorg/w3c/dom/Node;)V

    iput-object v0, p0, Lcom/mopub/mobileads/VastCompanionAdXmlManager;->mResourceXmlManager:Lcom/mopub/mobileads/VastResourceXmlManager;

    return-void
.end method


# virtual methods
.method getAdSlotId()Ljava/lang/String;
    .registers 3

    .line 78
    iget-object v0, p0, Lcom/mopub/mobileads/VastCompanionAdXmlManager;->mCompanionNode:Lorg/w3c/dom/Node;

    const-string v1, "adSlotID"

    invoke-static {v0, v1}, Lcom/mopub/mobileads/util/XmlUtils;->getAttributeValue(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getClickThroughUrl()Ljava/lang/String;
    .registers 3

    .line 93
    iget-object v0, p0, Lcom/mopub/mobileads/VastCompanionAdXmlManager;->mCompanionNode:Lorg/w3c/dom/Node;

    const-string v1, "CompanionClickThrough"

    invoke-static {v0, v1}, Lcom/mopub/mobileads/util/XmlUtils;->getFirstMatchingChildNode(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v0

    .line 97
    invoke-static {v0}, Lcom/mopub/mobileads/util/XmlUtils;->getNodeValue(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getClickTrackers()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/mopub/mobileads/VastTracker;",
            ">;"
        }
    .end annotation

    .line 108
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 109
    iget-object v1, p0, Lcom/mopub/mobileads/VastCompanionAdXmlManager;->mCompanionNode:Lorg/w3c/dom/Node;

    const-string v2, "CompanionClickTracking"

    invoke-static {v1, v2}, Lcom/mopub/mobileads/util/XmlUtils;->getMatchingChildNodes(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_10

    return-object v0

    .line 113
    :cond_10
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_14
    :goto_14
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_33

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/w3c/dom/Node;

    .line 114
    invoke-static {v2}, Lcom/mopub/mobileads/util/XmlUtils;->getNodeValue(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v2

    .line 115
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_14

    .line 116
    new-instance v3, Lcom/mopub/mobileads/VastTracker;

    invoke-direct {v3, v2}, Lcom/mopub/mobileads/VastTracker;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_14

    :cond_33
    return-object v0
.end method

.method getCompanionCreativeViewTrackers()Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/mopub/mobileads/VastTracker;",
            ">;"
        }
    .end annotation

    .line 131
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 132
    iget-object v1, p0, Lcom/mopub/mobileads/VastCompanionAdXmlManager;->mCompanionNode:Lorg/w3c/dom/Node;

    const-string v2, "TrackingEvents"

    invoke-static {v1, v2}, Lcom/mopub/mobileads/util/XmlUtils;->getFirstMatchingChildNode(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v1

    if-nez v1, :cond_10

    return-object v0

    :cond_10
    const-string v2, "creativeView"

    .line 145
    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    const-string v3, "Tracking"

    const-string v4, "event"

    .line 141
    invoke-static {v1, v3, v4, v2}, Lcom/mopub/mobileads/util/XmlUtils;->getMatchingChildNodes(Lorg/w3c/dom/Node;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 148
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_22
    :goto_22
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/w3c/dom/Node;

    .line 149
    invoke-static {v2}, Lcom/mopub/mobileads/util/XmlUtils;->getNodeValue(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_22

    .line 151
    new-instance v3, Lcom/mopub/mobileads/VastTracker;

    invoke-direct {v3, v2}, Lcom/mopub/mobileads/VastTracker;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_22

    :cond_3d
    return-object v0
.end method

.method getHeight()Ljava/lang/Integer;
    .registers 3

    .line 68
    iget-object v0, p0, Lcom/mopub/mobileads/VastCompanionAdXmlManager;->mCompanionNode:Lorg/w3c/dom/Node;

    const-string v1, "height"

    invoke-static {v0, v1}, Lcom/mopub/mobileads/util/XmlUtils;->getAttributeValueAsInt(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method getResourceXmlManager()Lcom/mopub/mobileads/VastResourceXmlManager;
    .registers 2

    .line 83
    iget-object v0, p0, Lcom/mopub/mobileads/VastCompanionAdXmlManager;->mResourceXmlManager:Lcom/mopub/mobileads/VastResourceXmlManager;

    return-object v0
.end method

.method getWidth()Ljava/lang/Integer;
    .registers 3

    .line 57
    iget-object v0, p0, Lcom/mopub/mobileads/VastCompanionAdXmlManager;->mCompanionNode:Lorg/w3c/dom/Node;

    const-string v1, "width"

    invoke-static {v0, v1}, Lcom/mopub/mobileads/util/XmlUtils;->getAttributeValueAsInt(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method hasResources()Z
    .registers 2

    .line 159
    iget-object v0, p0, Lcom/mopub/mobileads/VastCompanionAdXmlManager;->mResourceXmlManager:Lcom/mopub/mobileads/VastResourceXmlManager;

    invoke-virtual {v0}, Lcom/mopub/mobileads/VastResourceXmlManager;->getStaticResource()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_27

    iget-object v0, p0, Lcom/mopub/mobileads/VastCompanionAdXmlManager;->mResourceXmlManager:Lcom/mopub/mobileads/VastResourceXmlManager;

    .line 160
    invoke-virtual {v0}, Lcom/mopub/mobileads/VastResourceXmlManager;->getHTMLResource()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_27

    iget-object v0, p0, Lcom/mopub/mobileads/VastCompanionAdXmlManager;->mResourceXmlManager:Lcom/mopub/mobileads/VastResourceXmlManager;

    .line 161
    invoke-virtual {v0}, Lcom/mopub/mobileads/VastResourceXmlManager;->getIFrameResource()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_25

    goto :goto_27

    :cond_25
    const/4 v0, 0x0

    goto :goto_28

    :cond_27
    :goto_27
    const/4 v0, 0x1

    :goto_28
    return v0
.end method
