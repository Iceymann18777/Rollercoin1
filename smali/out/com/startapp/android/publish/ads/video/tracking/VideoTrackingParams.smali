.class public Lcom/startapp/android/publish/ads/video/tracking/VideoTrackingParams;
.super Lcom/startapp/android/publish/adsCommon/d/b;
.source "StartAppSDK"


# static fields
.field private static final REPLAY_PARAMETER_PLACEHOLDER:Ljava/lang/String; = "%startapp_replay_count%"

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private completed:I

.field protected internalParamsIndicator:Z

.field private replayParameter:Ljava/lang/String;

.field private shouldAppendOffset:Z

.field private videoPlayingMode:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .registers 5

    .line 19
    invoke-direct {p0, p1}, Lcom/startapp/android/publish/adsCommon/d/b;-><init>(Ljava/lang/String;)V

    .line 20
    invoke-virtual {p0, p3}, Lcom/startapp/android/publish/ads/video/tracking/VideoTrackingParams;->setOffset(I)Lcom/startapp/android/publish/adsCommon/d/b;

    .line 21
    iput p2, p0, Lcom/startapp/android/publish/ads/video/tracking/VideoTrackingParams;->completed:I

    .line 22
    iput-object p4, p0, Lcom/startapp/android/publish/ads/video/tracking/VideoTrackingParams;->videoPlayingMode:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getCompleted()I
    .registers 2

    .line 26
    iget v0, p0, Lcom/startapp/android/publish/ads/video/tracking/VideoTrackingParams;->completed:I

    return v0
.end method

.method protected getCompletedQuery()Ljava/lang/String;
    .registers 3

    .line 67
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "&cp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/startapp/android/publish/ads/video/tracking/VideoTrackingParams;->completed:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getInternalTrackingParamsIndicator()Z
    .registers 2

    .line 30
    iget-boolean v0, p0, Lcom/startapp/android/publish/ads/video/tracking/VideoTrackingParams;->internalParamsIndicator:Z

    return v0
.end method

.method protected getOffsetQuery()Ljava/lang/String;
    .registers 4

    .line 55
    iget-boolean v0, p0, Lcom/startapp/android/publish/ads/video/tracking/VideoTrackingParams;->shouldAppendOffset:Z

    if-eqz v0, :cond_21

    .line 56
    iget-object v0, p0, Lcom/startapp/android/publish/ads/video/tracking/VideoTrackingParams;->replayParameter:Ljava/lang/String;

    if-eqz v0, :cond_1c

    .line 57
    new-instance v1, Ljava/lang/Integer;

    invoke-virtual {p0}, Lcom/startapp/android/publish/ads/video/tracking/VideoTrackingParams;->getOffset()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "%startapp_replay_count%"

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 59
    :cond_1c
    invoke-super {p0}, Lcom/startapp/android/publish/adsCommon/d/b;->getOffsetQuery()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_21
    const-string v0, ""

    return-object v0
.end method

.method public getQueryString()Ljava/lang/String;
    .registers 3

    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/startapp/android/publish/ads/video/tracking/VideoTrackingParams;->getCompletedQuery()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/startapp/android/publish/ads/video/tracking/VideoTrackingParams;->getVideoPlayingModeQuery()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/startapp/android/publish/ads/video/tracking/VideoTrackingParams;->getQueryString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getQueryString(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 79
    iget-boolean v0, p0, Lcom/startapp/android/publish/ads/video/tracking/VideoTrackingParams;->internalParamsIndicator:Z

    if-eqz v0, :cond_18

    .line 80
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lcom/startapp/android/publish/adsCommon/d/b;->getQueryString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 82
    :cond_18
    invoke-virtual {p0}, Lcom/startapp/android/publish/ads/video/tracking/VideoTrackingParams;->getOffsetQuery()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected getVideoPlayingModeQuery()Ljava/lang/String;
    .registers 3

    .line 71
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "&vpm="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/startapp/android/publish/ads/video/tracking/VideoTrackingParams;->videoPlayingMode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setInternalTrackingParamsIndicator(Z)Lcom/startapp/android/publish/ads/video/tracking/VideoTrackingParams;
    .registers 2

    .line 44
    iput-boolean p1, p0, Lcom/startapp/android/publish/ads/video/tracking/VideoTrackingParams;->internalParamsIndicator:Z

    return-object p0
.end method

.method public setReplayParameter(Ljava/lang/String;)Lcom/startapp/android/publish/ads/video/tracking/VideoTrackingParams;
    .registers 2

    .line 39
    iput-object p1, p0, Lcom/startapp/android/publish/ads/video/tracking/VideoTrackingParams;->replayParameter:Ljava/lang/String;

    return-object p0
.end method

.method public setShouldAppendOffset(Z)Lcom/startapp/android/publish/ads/video/tracking/VideoTrackingParams;
    .registers 2

    .line 34
    iput-boolean p1, p0, Lcom/startapp/android/publish/ads/video/tracking/VideoTrackingParams;->shouldAppendOffset:Z

    return-object p0
.end method
