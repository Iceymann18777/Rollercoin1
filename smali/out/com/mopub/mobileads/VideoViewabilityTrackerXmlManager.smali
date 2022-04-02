.class public Lcom/mopub/mobileads/VideoViewabilityTrackerXmlManager;
.super Ljava/lang/Object;
.source "VideoViewabilityTrackerXmlManager.java"


# static fields
.field public static final PERCENT_VIEWABLE:Ljava/lang/String; = "percentViewable"

.field public static final VIEWABLE_PLAYTIME:Ljava/lang/String; = "viewablePlaytime"


# instance fields
.field private final mVideoViewabilityNode:Lorg/w3c/dom/Node;


# direct methods
.method constructor <init>(Lorg/w3c/dom/Node;)V
    .registers 2

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 32
    iput-object p1, p0, Lcom/mopub/mobileads/VideoViewabilityTrackerXmlManager;->mVideoViewabilityNode:Lorg/w3c/dom/Node;

    return-void
.end method


# virtual methods
.method getPercentViewable()Ljava/lang/Integer;
    .registers 7

    .line 87
    iget-object v0, p0, Lcom/mopub/mobileads/VideoViewabilityTrackerXmlManager;->mVideoViewabilityNode:Lorg/w3c/dom/Node;

    const-string v1, "percentViewable"

    .line 88
    invoke-static {v0, v1}, Lcom/mopub/mobileads/util/XmlUtils;->getAttributeValue(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_c

    return-object v1

    :cond_c
    :try_start_c
    const-string v2, "%"

    const-string v3, ""

    .line 95
    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    float-to-int v2, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0
    :try_end_1d
    .catch Ljava/lang/NumberFormatException; {:try_start_c .. :try_end_1d} :catch_1e

    goto :goto_34

    .line 97
    :catch_1e
    sget-object v2, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v3, v5

    const-string v0, "Invalid VAST percentViewable format for \"d{1,3}%%\": %s:"

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v5

    invoke-static {v2, v4}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    move-object v0, v1

    :goto_34
    if-eqz v0, :cond_46

    .line 101
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ltz v2, :cond_46

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/16 v3, 0x64

    if-le v2, v3, :cond_45

    goto :goto_46

    :cond_45
    return-object v0

    :cond_46
    :goto_46
    return-object v1
.end method

.method getVideoViewabilityTrackerUrl()Ljava/lang/String;
    .registers 2

    .line 116
    iget-object v0, p0, Lcom/mopub/mobileads/VideoViewabilityTrackerXmlManager;->mVideoViewabilityNode:Lorg/w3c/dom/Node;

    invoke-static {v0}, Lcom/mopub/mobileads/util/XmlUtils;->getNodeValue(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getViewablePlaytimeMS()Ljava/lang/Integer;
    .registers 7

    .line 46
    iget-object v0, p0, Lcom/mopub/mobileads/VideoViewabilityTrackerXmlManager;->mVideoViewabilityNode:Lorg/w3c/dom/Node;

    const-string v1, "viewablePlaytime"

    .line 47
    invoke-static {v0, v1}, Lcom/mopub/mobileads/util/XmlUtils;->getAttributeValue(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_c

    return-object v1

    .line 53
    :cond_c
    invoke-static {v0}, Lcom/mopub/mobileads/VastAbsoluteProgressTracker;->isAbsoluteTracker(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_2d

    .line 55
    :try_start_14
    invoke-static {v0}, Lcom/mopub/mobileads/VastAbsoluteProgressTracker;->parseAbsoluteOffset(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0
    :try_end_18
    .catch Ljava/lang/NumberFormatException; {:try_start_14 .. :try_end_18} :catch_19

    goto :goto_4f

    .line 57
    :catch_19
    sget-object v2, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    new-array v5, v4, [Ljava/lang/Object;

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v0, v4, v3

    const-string v0, "Invalid VAST viewablePlaytime format for \"HH:MM:SS[.mmm]\": %s:"

    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v3

    invoke-static {v2, v5}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    goto :goto_4e

    .line 62
    :cond_2d
    :try_start_2d
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    const/high16 v5, 0x447a0000    # 1000.0f

    mul-float v2, v2, v5

    float-to-int v2, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0
    :try_end_3a
    .catch Ljava/lang/NumberFormatException; {:try_start_2d .. :try_end_3a} :catch_3b

    goto :goto_4f

    .line 64
    :catch_3b
    sget-object v2, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    new-array v5, v4, [Ljava/lang/Object;

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v0, v4, v3

    const-string v0, "Invalid VAST viewablePlaytime format for \"SS[.mmm]\": %s:"

    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v3

    invoke-static {v2, v5}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    :goto_4e
    move-object v0, v1

    :goto_4f
    if-eqz v0, :cond_59

    .line 69
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-gez v2, :cond_58

    goto :goto_59

    :cond_58
    return-object v0

    :cond_59
    :goto_59
    return-object v1
.end method
