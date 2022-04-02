.class public Lcom/mopub/mobileads/VideoViewabilityTracker;
.super Lcom/mopub/mobileads/VastTracker;
.source "VideoViewabilityTracker.java"


# instance fields
.field private final mPercentViewable:I
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "percent_viewable"
    .end annotation
.end field

.field private final mViewablePlaytimeMS:I
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "playtime_ms"
    .end annotation
.end field


# direct methods
.method public constructor <init>(IILjava/lang/String;)V
    .registers 4

    .line 22
    invoke-direct {p0, p3}, Lcom/mopub/mobileads/VastTracker;-><init>(Ljava/lang/String;)V

    .line 23
    iput p1, p0, Lcom/mopub/mobileads/VideoViewabilityTracker;->mViewablePlaytimeMS:I

    .line 24
    iput p2, p0, Lcom/mopub/mobileads/VideoViewabilityTracker;->mPercentViewable:I

    return-void
.end method


# virtual methods
.method public getPercentViewable()I
    .registers 2

    .line 32
    iget v0, p0, Lcom/mopub/mobileads/VideoViewabilityTracker;->mPercentViewable:I

    return v0
.end method

.method public getViewablePlaytimeMS()I
    .registers 2

    .line 28
    iget v0, p0, Lcom/mopub/mobileads/VideoViewabilityTracker;->mViewablePlaytimeMS:I

    return v0
.end method
