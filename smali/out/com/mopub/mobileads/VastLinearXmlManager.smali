.class Lcom/mopub/mobileads/VastLinearXmlManager;
.super Ljava/lang/Object;
.source "VastLinearXmlManager.java"


# static fields
.field private static final CLICK_THROUGH:Ljava/lang/String; = "ClickThrough"

.field private static final CLICK_TRACKER:Ljava/lang/String; = "ClickTracking"

.field private static final CLOSE:Ljava/lang/String; = "close"

.field private static final CLOSE_LINEAR:Ljava/lang/String; = "closeLinear"

.field private static final COMPLETE:Ljava/lang/String; = "complete"

.field private static final CREATIVE_VIEW:Ljava/lang/String; = "creativeView"

.field private static final CREATIVE_VIEW_TRACKER_THRESHOLD:I = 0x0

.field private static final EVENT:Ljava/lang/String; = "event"

.field private static final FIRST_QUARTER_MARKER:F = 0.25f

.field private static final FIRST_QUARTILE:Ljava/lang/String; = "firstQuartile"

.field public static final ICON:Ljava/lang/String; = "Icon"

.field public static final ICONS:Ljava/lang/String; = "Icons"

.field private static final MEDIA_FILE:Ljava/lang/String; = "MediaFile"

.field private static final MEDIA_FILES:Ljava/lang/String; = "MediaFiles"

.field private static final MIDPOINT:Ljava/lang/String; = "midpoint"

.field private static final MID_POINT_MARKER:F = 0.5f

.field private static final OFFSET:Ljava/lang/String; = "offset"

.field private static final PAUSE:Ljava/lang/String; = "pause"

.field private static final PROGRESS:Ljava/lang/String; = "progress"

.field private static final RESUME:Ljava/lang/String; = "resume"

.field private static final SKIP:Ljava/lang/String; = "skip"

.field private static final SKIP_OFFSET:Ljava/lang/String; = "skipoffset"

.field private static final START:Ljava/lang/String; = "start"

.field private static final START_TRACKER_THRESHOLD:I = 0x0

.field private static final THIRD_QUARTER_MARKER:F = 0.75f

.field private static final THIRD_QUARTILE:Ljava/lang/String; = "thirdQuartile"

.field private static final TRACKING_EVENTS:Ljava/lang/String; = "TrackingEvents"

.field private static final VIDEO_CLICKS:Ljava/lang/String; = "VideoClicks"

.field private static final VIDEO_TRACKER:Ljava/lang/String; = "Tracking"


# instance fields
.field private final mLinearNode:Lorg/w3c/dom/Node;


# direct methods
.method constructor <init>(Lorg/w3c/dom/Node;)V
    .registers 2

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 68
    iput-object p1, p0, Lcom/mopub/mobileads/VastLinearXmlManager;->mLinearNode:Lorg/w3c/dom/Node;

    return-void
.end method

.method private addQuartileTrackerWithFraction(Ljava/util/List;Ljava/util/List;F)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/mopub/mobileads/VastFractionalProgressTracker;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;F)V"
        }
    .end annotation

    const-string v0, "trackers cannot be null"

    .line 416
    invoke-static {p1, v0}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "urls cannot be null"

    .line 417
    invoke-static {p2, v0}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 418
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_e
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_23

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 419
    new-instance v1, Lcom/mopub/mobileads/VastFractionalProgressTracker;

    invoke-direct {v1, v0, p3}, Lcom/mopub/mobileads/VastFractionalProgressTracker;-><init>(Ljava/lang/String;F)V

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_e

    :cond_23
    return-void
.end method

.method private getVideoTrackersByAttribute(Ljava/lang/String;)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 388
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 389
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 391
    iget-object v1, p0, Lcom/mopub/mobileads/VastLinearXmlManager;->mLinearNode:Lorg/w3c/dom/Node;

    const-string v2, "TrackingEvents"

    invoke-static {v1, v2}, Lcom/mopub/mobileads/util/XmlUtils;->getFirstMatchingChildNode(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v1

    if-nez v1, :cond_13

    return-object v0

    .line 400
    :cond_13
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    const-string v2, "Tracking"

    const-string v3, "event"

    .line 396
    invoke-static {v1, v2, v3, p1}, Lcom/mopub/mobileads/util/XmlUtils;->getMatchingChildNodes(Lorg/w3c/dom/Node;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 403
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_23
    :goto_23
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_39

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/w3c/dom/Node;

    .line 404
    invoke-static {v1}, Lcom/mopub/mobileads/util/XmlUtils;->getNodeValue(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_23

    .line 406
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_23

    :cond_39
    return-object v0
.end method

.method private getVideoTrackersByAttributeAsVastTrackers(Ljava/lang/String;)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/mopub/mobileads/VastTracker;",
            ">;"
        }
    .end annotation

    .line 371
    invoke-direct {p0, p1}, Lcom/mopub/mobileads/VastLinearXmlManager;->getVideoTrackersByAttribute(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 372
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 373
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_11
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_26

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 374
    new-instance v2, Lcom/mopub/mobileads/VastTracker;

    invoke-direct {v2, v1}, Lcom/mopub/mobileads/VastTracker;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_11

    :cond_26
    return-object v0
.end method


# virtual methods
.method getAbsoluteProgressTrackers()Ljava/util/List;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/mopub/mobileads/VastAbsoluteProgressTracker;",
            ">;"
        }
    .end annotation

    .line 151
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "start"

    .line 154
    invoke-direct {p0, v1}, Lcom/mopub/mobileads/VastLinearXmlManager;->getVideoTrackersByAttribute(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 155
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_25

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 156
    new-instance v4, Lcom/mopub/mobileads/VastAbsoluteProgressTracker;

    invoke-direct {v4, v2, v3}, Lcom/mopub/mobileads/VastAbsoluteProgressTracker;-><init>(Ljava/lang/String;I)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_f

    .line 159
    :cond_25
    iget-object v1, p0, Lcom/mopub/mobileads/VastLinearXmlManager;->mLinearNode:Lorg/w3c/dom/Node;

    const-string v2, "TrackingEvents"

    invoke-static {v1, v2}, Lcom/mopub/mobileads/util/XmlUtils;->getFirstMatchingChildNode(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v1

    if-eqz v1, :cond_bb

    const-string v2, "progress"

    .line 164
    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    const-string v4, "Tracking"

    const-string v5, "event"

    .line 163
    invoke-static {v1, v4, v5, v2}, Lcom/mopub/mobileads/util/XmlUtils;->getMatchingChildNodes(Lorg/w3c/dom/Node;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    .line 165
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_41
    :goto_41
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_92

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/w3c/dom/Node;

    const-string v7, "offset"

    .line 166
    invoke-static {v6, v7}, Lcom/mopub/mobileads/util/XmlUtils;->getAttributeValue(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_56

    goto :goto_41

    .line 170
    :cond_56
    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    .line 171
    invoke-static {v7}, Lcom/mopub/mobileads/VastAbsoluteProgressTracker;->isAbsoluteTracker(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_41

    .line 172
    invoke-static {v6}, Lcom/mopub/mobileads/util/XmlUtils;->getNodeValue(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v6

    .line 174
    :try_start_64
    invoke-static {v7}, Lcom/mopub/mobileads/VastAbsoluteProgressTracker;->parseAbsoluteOffset(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    if-eqz v8, :cond_41

    .line 175
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-ltz v9, :cond_41

    .line 176
    new-instance v9, Lcom/mopub/mobileads/VastAbsoluteProgressTracker;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-direct {v9, v6, v8}, Lcom/mopub/mobileads/VastAbsoluteProgressTracker;-><init>(Ljava/lang/String;I)V

    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_7c
    .catch Ljava/lang/NumberFormatException; {:try_start_64 .. :try_end_7c} :catch_7d

    goto :goto_41

    .line 179
    :catch_7d
    sget-object v6, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    const/4 v8, 0x1

    new-array v9, v8, [Ljava/lang/Object;

    new-array v8, v8, [Ljava/lang/Object;

    aput-object v7, v8, v3

    const-string v7, "Failed to parse VAST progress tracker %s"

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v9, v3

    invoke-static {v6, v9}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    goto :goto_41

    :cond_92
    const-string v2, "creativeView"

    .line 187
    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 186
    invoke-static {v1, v4, v5, v2}, Lcom/mopub/mobileads/util/XmlUtils;->getMatchingChildNodes(Lorg/w3c/dom/Node;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 188
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_a0
    :goto_a0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_bb

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/w3c/dom/Node;

    .line 189
    invoke-static {v2}, Lcom/mopub/mobileads/util/XmlUtils;->getNodeValue(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_a0

    .line 191
    new-instance v4, Lcom/mopub/mobileads/VastAbsoluteProgressTracker;

    invoke-direct {v4, v2, v3}, Lcom/mopub/mobileads/VastAbsoluteProgressTracker;-><init>(Ljava/lang/String;I)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_a0

    .line 199
    :cond_bb
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    return-object v0
.end method

.method getClickThroughUrl()Ljava/lang/String;
    .registers 3

    .line 272
    iget-object v0, p0, Lcom/mopub/mobileads/VastLinearXmlManager;->mLinearNode:Lorg/w3c/dom/Node;

    const-string v1, "VideoClicks"

    invoke-static {v0, v1}, Lcom/mopub/mobileads/util/XmlUtils;->getFirstMatchingChildNode(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v0

    if-nez v0, :cond_c

    const/4 v0, 0x0

    return-object v0

    :cond_c
    const-string v1, "ClickThrough"

    .line 276
    invoke-static {v0, v1}, Lcom/mopub/mobileads/util/XmlUtils;->getFirstMatchingChildNode(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v0

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

    .line 286
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 288
    iget-object v1, p0, Lcom/mopub/mobileads/VastLinearXmlManager;->mLinearNode:Lorg/w3c/dom/Node;

    const-string v2, "VideoClicks"

    invoke-static {v1, v2}, Lcom/mopub/mobileads/util/XmlUtils;->getFirstMatchingChildNode(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v1

    if-nez v1, :cond_10

    return-object v0

    :cond_10
    const-string v2, "ClickTracking"

    .line 293
    invoke-static {v1, v2}, Lcom/mopub/mobileads/util/XmlUtils;->getMatchingChildNodes(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 298
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1a
    :goto_1a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_35

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/w3c/dom/Node;

    .line 299
    invoke-static {v2}, Lcom/mopub/mobileads/util/XmlUtils;->getNodeValue(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1a

    .line 301
    new-instance v3, Lcom/mopub/mobileads/VastTracker;

    invoke-direct {v3, v2}, Lcom/mopub/mobileads/VastTracker;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1a

    :cond_35
    return-object v0
.end method

.method getFractionalProgressTrackers()Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/mopub/mobileads/VastFractionalProgressTracker;",
            ">;"
        }
    .end annotation

    .line 92
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "firstQuartile"

    .line 94
    invoke-direct {p0, v1}, Lcom/mopub/mobileads/VastLinearXmlManager;->getVideoTrackersByAttribute(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    const/high16 v2, 0x3e800000    # 0.25f

    invoke-direct {p0, v0, v1, v2}, Lcom/mopub/mobileads/VastLinearXmlManager;->addQuartileTrackerWithFraction(Ljava/util/List;Ljava/util/List;F)V

    const-string v1, "midpoint"

    .line 95
    invoke-direct {p0, v1}, Lcom/mopub/mobileads/VastLinearXmlManager;->getVideoTrackersByAttribute(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    const/high16 v2, 0x3f000000    # 0.5f

    invoke-direct {p0, v0, v1, v2}, Lcom/mopub/mobileads/VastLinearXmlManager;->addQuartileTrackerWithFraction(Ljava/util/List;Ljava/util/List;F)V

    const-string v1, "thirdQuartile"

    .line 96
    invoke-direct {p0, v1}, Lcom/mopub/mobileads/VastLinearXmlManager;->getVideoTrackersByAttribute(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    const/high16 v2, 0x3f400000    # 0.75f

    invoke-direct {p0, v0, v1, v2}, Lcom/mopub/mobileads/VastLinearXmlManager;->addQuartileTrackerWithFraction(Ljava/util/List;Ljava/util/List;F)V

    .line 98
    iget-object v1, p0, Lcom/mopub/mobileads/VastLinearXmlManager;->mLinearNode:Lorg/w3c/dom/Node;

    const-string v2, "TrackingEvents"

    invoke-static {v1, v2}, Lcom/mopub/mobileads/util/XmlUtils;->getFirstMatchingChildNode(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v1

    if-eqz v1, :cond_9a

    const-string v2, "progress"

    .line 102
    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    const-string v3, "Tracking"

    const-string v4, "event"

    .line 101
    invoke-static {v1, v3, v4, v2}, Lcom/mopub/mobileads/util/XmlUtils;->getMatchingChildNodes(Lorg/w3c/dom/Node;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 104
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_42
    :goto_42
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/w3c/dom/Node;

    const-string v3, "offset"

    .line 105
    invoke-static {v2, v3}, Lcom/mopub/mobileads/util/XmlUtils;->getAttributeValue(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_57

    goto :goto_42

    .line 109
    :cond_57
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 110
    sget-object v4, Lcom/mopub/mobileads/VastFractionalProgressTrackerTwo;->Companion:Lcom/mopub/mobileads/VastFractionalProgressTrackerTwo$Companion;

    invoke-virtual {v4, v3}, Lcom/mopub/mobileads/VastFractionalProgressTrackerTwo$Companion;->isPercentageTracker(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_42

    .line 111
    invoke-static {v2}, Lcom/mopub/mobileads/util/XmlUtils;->getNodeValue(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v2

    :try_start_67
    const-string v4, "%"

    const-string v5, ""

    .line 114
    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    const/high16 v5, 0x42c80000    # 100.0f

    div-float/2addr v4, v5

    const/4 v5, 0x0

    cmpl-float v5, v4, v5

    if-ltz v5, :cond_42

    .line 116
    new-instance v5, Lcom/mopub/mobileads/VastFractionalProgressTracker;

    invoke-direct {v5, v2, v4}, Lcom/mopub/mobileads/VastFractionalProgressTracker;-><init>(Ljava/lang/String;F)V

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_83
    .catch Ljava/lang/NumberFormatException; {:try_start_67 .. :try_end_83} :catch_84

    goto :goto_42

    .line 120
    :catch_84
    sget-object v2, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Object;

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v3, v4, v6

    const-string v3, "Failed to parse VAST progress tracker %s"

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v5, v6

    invoke-static {v2, v5}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    goto :goto_42

    .line 128
    :cond_9a
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    return-object v0
.end method

.method getIconXmlManagers()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/mopub/mobileads/VastIconXmlManager;",
            ">;"
        }
    .end annotation

    .line 353
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 355
    iget-object v1, p0, Lcom/mopub/mobileads/VastLinearXmlManager;->mLinearNode:Lorg/w3c/dom/Node;

    const-string v2, "Icons"

    invoke-static {v1, v2}, Lcom/mopub/mobileads/util/XmlUtils;->getFirstMatchingChildNode(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v1

    if-nez v1, :cond_10

    return-object v0

    :cond_10
    const-string v2, "Icon"

    .line 360
    invoke-static {v1, v2}, Lcom/mopub/mobileads/util/XmlUtils;->getMatchingChildNodes(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 361
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/w3c/dom/Node;

    .line 362
    new-instance v3, Lcom/mopub/mobileads/VastIconXmlManager;

    invoke-direct {v3, v2}, Lcom/mopub/mobileads/VastIconXmlManager;-><init>(Lorg/w3c/dom/Node;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1a

    :cond_2f
    return-object v0
.end method

.method getMediaXmlManagers()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/mopub/mobileads/VastMediaXmlManager;",
            ">;"
        }
    .end annotation

    .line 336
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 338
    iget-object v1, p0, Lcom/mopub/mobileads/VastLinearXmlManager;->mLinearNode:Lorg/w3c/dom/Node;

    const-string v2, "MediaFiles"

    invoke-static {v1, v2}, Lcom/mopub/mobileads/util/XmlUtils;->getFirstMatchingChildNode(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v1

    if-nez v1, :cond_10

    return-object v0

    :cond_10
    const-string v2, "MediaFile"

    .line 343
    invoke-static {v1, v2}, Lcom/mopub/mobileads/util/XmlUtils;->getMatchingChildNodes(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 344
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/w3c/dom/Node;

    .line 345
    new-instance v3, Lcom/mopub/mobileads/VastMediaXmlManager;

    invoke-direct {v3, v2}, Lcom/mopub/mobileads/VastMediaXmlManager;-><init>(Lorg/w3c/dom/Node;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1a

    :cond_2f
    return-object v0
.end method

.method getPauseTrackers()Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/mopub/mobileads/VastTracker;",
            ">;"
        }
    .end annotation

    const-string v0, "pause"

    .line 220
    invoke-direct {p0, v0}, Lcom/mopub/mobileads/VastLinearXmlManager;->getVideoTrackersByAttribute(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 221
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 222
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_25

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 223
    new-instance v3, Lcom/mopub/mobileads/VastTracker;

    const/4 v4, 0x1

    invoke-direct {v3, v2, v4}, Lcom/mopub/mobileads/VastTracker;-><init>(Ljava/lang/String;Z)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_f

    :cond_25
    return-object v1
.end method

.method getResumeTrackers()Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/mopub/mobileads/VastTracker;",
            ">;"
        }
    .end annotation

    const-string v0, "resume"

    .line 235
    invoke-direct {p0, v0}, Lcom/mopub/mobileads/VastLinearXmlManager;->getVideoTrackersByAttribute(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 236
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 237
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_25

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 238
    new-instance v3, Lcom/mopub/mobileads/VastTracker;

    const/4 v4, 0x1

    invoke-direct {v3, v2, v4}, Lcom/mopub/mobileads/VastTracker;-><init>(Ljava/lang/String;Z)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_f

    :cond_25
    return-object v1
.end method

.method getSkipOffset()Ljava/lang/String;
    .registers 4

    .line 316
    iget-object v0, p0, Lcom/mopub/mobileads/VastLinearXmlManager;->mLinearNode:Lorg/w3c/dom/Node;

    const-string v1, "skipoffset"

    invoke-static {v0, v1}, Lcom/mopub/mobileads/util/XmlUtils;->getAttributeValue(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_c

    return-object v1

    .line 321
    :cond_c
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_17

    return-object v1

    .line 325
    :cond_17
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getVideoCloseTrackers()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/mopub/mobileads/VastTracker;",
            ">;"
        }
    .end annotation

    const-string v0, "close"

    .line 250
    invoke-direct {p0, v0}, Lcom/mopub/mobileads/VastLinearXmlManager;->getVideoTrackersByAttributeAsVastTrackers(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    const-string v1, "closeLinear"

    .line 251
    invoke-direct {p0, v1}, Lcom/mopub/mobileads/VastLinearXmlManager;->getVideoTrackersByAttributeAsVastTrackers(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object v0
.end method

.method getVideoCompleteTrackers()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/mopub/mobileads/VastTracker;",
            ">;"
        }
    .end annotation

    const-string v0, "complete"

    .line 210
    invoke-direct {p0, v0}, Lcom/mopub/mobileads/VastLinearXmlManager;->getVideoTrackersByAttributeAsVastTrackers(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method getVideoSkipTrackers()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/mopub/mobileads/VastTracker;",
            ">;"
        }
    .end annotation

    const-string v0, "skip"

    .line 262
    invoke-direct {p0, v0}, Lcom/mopub/mobileads/VastLinearXmlManager;->getVideoTrackersByAttributeAsVastTrackers(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
