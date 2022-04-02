.class public Lcom/startapp/android/publish/ads/video/VideoAdDetails;
.super Ljava/lang/Object;
.source "StartAppSDK"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startapp/android/publish/ads/video/VideoAdDetails$PostRollType;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private adVerifications:[Lcom/startapp/android/publish/omsdk/VerificationDetails;
    .annotation runtime Lcom/startapp/common/c/f;
        b = Lcom/startapp/android/publish/omsdk/VerificationDetails;
        f = "adVerifications"
    .end annotation
.end field

.field private clickUrl:Ljava/lang/String;

.field private clickable:Z

.field private closeable:Z

.field private isVideoMuted:Z

.field private localVideoPath:Ljava/lang/String;

.field private postRoll:Lcom/startapp/android/publish/ads/video/VideoAdDetails$PostRollType;
    .annotation runtime Lcom/startapp/common/c/f;
        b = Lcom/startapp/android/publish/ads/video/VideoAdDetails$PostRollType;
    .end annotation
.end field

.field private skippable:Z

.field private skippableAfter:I

.field private videoTrackingDetails:Lcom/startapp/android/publish/ads/video/tracking/VideoTrackingDetails;
    .annotation runtime Lcom/startapp/common/c/f;
        a = true
    .end annotation
.end field

.field private videoUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/startapp/android/publish/ads/video/c/a/e;Z)V
    .registers 6

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_4e

    .line 41
    new-instance v0, Lcom/startapp/android/publish/ads/video/tracking/VideoTrackingDetails;

    invoke-direct {v0, p1}, Lcom/startapp/android/publish/ads/video/tracking/VideoTrackingDetails;-><init>(Lcom/startapp/android/publish/ads/video/c/a/e;)V

    iput-object v0, p0, Lcom/startapp/android/publish/ads/video/VideoAdDetails;->videoTrackingDetails:Lcom/startapp/android/publish/ads/video/tracking/VideoTrackingDetails;

    .line 42
    invoke-virtual {p1}, Lcom/startapp/android/publish/ads/video/c/a/e;->g()Lcom/startapp/android/publish/ads/video/c/a/a/b;

    move-result-object v0

    if-eqz v0, :cond_1c

    .line 43
    invoke-virtual {p1}, Lcom/startapp/android/publish/ads/video/c/a/e;->g()Lcom/startapp/android/publish/ads/video/c/a/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/startapp/android/publish/ads/video/c/a/a/b;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/startapp/android/publish/ads/video/VideoAdDetails;->videoUrl:Ljava/lang/String;

    :cond_1c
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_31

    .line 46
    invoke-virtual {p1}, Lcom/startapp/android/publish/ads/video/c/a/e;->f()I

    move-result p2

    iput p2, p0, Lcom/startapp/android/publish/ads/video/VideoAdDetails;->skippableAfter:I

    const v2, 0x7fffffff

    if-eq p2, v2, :cond_2d

    const/4 p2, 0x1

    goto :goto_2e

    :cond_2d
    const/4 p2, 0x0

    .line 47
    :goto_2e
    iput-boolean p2, p0, Lcom/startapp/android/publish/ads/video/VideoAdDetails;->skippable:Z

    goto :goto_33

    .line 49
    :cond_31
    iput-boolean v1, p0, Lcom/startapp/android/publish/ads/video/VideoAdDetails;->skippable:Z

    .line 51
    :goto_33
    invoke-virtual {p1}, Lcom/startapp/android/publish/ads/video/c/a/e;->c()Lcom/startapp/android/publish/ads/video/c/a/a/e;

    move-result-object p2

    invoke-virtual {p2}, Lcom/startapp/android/publish/ads/video/c/a/a/e;->a()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/startapp/android/publish/ads/video/VideoAdDetails;->clickUrl:Ljava/lang/String;

    if-eqz p2, :cond_40

    goto :goto_41

    :cond_40
    const/4 v0, 0x0

    .line 52
    :goto_41
    iput-boolean v0, p0, Lcom/startapp/android/publish/ads/video/VideoAdDetails;->clickable:Z

    .line 53
    sget-object p2, Lcom/startapp/android/publish/ads/video/VideoAdDetails$PostRollType;->NONE:Lcom/startapp/android/publish/ads/video/VideoAdDetails$PostRollType;

    iput-object p2, p0, Lcom/startapp/android/publish/ads/video/VideoAdDetails;->postRoll:Lcom/startapp/android/publish/ads/video/VideoAdDetails$PostRollType;

    .line 54
    invoke-virtual {p1}, Lcom/startapp/android/publish/ads/video/c/a/e;->h()Lcom/startapp/android/publish/omsdk/AdVerification;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/startapp/android/publish/ads/video/VideoAdDetails;->setAdVerifications(Lcom/startapp/android/publish/omsdk/AdVerification;)V

    :cond_4e
    return-void
.end method


# virtual methods
.method public getAdVerifications()Lcom/startapp/android/publish/omsdk/AdVerification;
    .registers 3

    .line 107
    new-instance v0, Lcom/startapp/android/publish/omsdk/AdVerification;

    iget-object v1, p0, Lcom/startapp/android/publish/ads/video/VideoAdDetails;->adVerifications:[Lcom/startapp/android/publish/omsdk/VerificationDetails;

    invoke-direct {v0, v1}, Lcom/startapp/android/publish/omsdk/AdVerification;-><init>([Lcom/startapp/android/publish/omsdk/VerificationDetails;)V

    return-object v0
.end method

.method public getClickUrl()Ljava/lang/String;
    .registers 2

    .line 103
    iget-object v0, p0, Lcom/startapp/android/publish/ads/video/VideoAdDetails;->clickUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getLocalVideoPath()Ljava/lang/String;
    .registers 2

    .line 63
    iget-object v0, p0, Lcom/startapp/android/publish/ads/video/VideoAdDetails;->localVideoPath:Ljava/lang/String;

    return-object v0
.end method

.method public getPostRollType()Lcom/startapp/android/publish/ads/video/VideoAdDetails$PostRollType;
    .registers 2

    .line 71
    iget-object v0, p0, Lcom/startapp/android/publish/ads/video/VideoAdDetails;->postRoll:Lcom/startapp/android/publish/ads/video/VideoAdDetails$PostRollType;

    return-object v0
.end method

.method public getSkippableAfter()I
    .registers 2

    .line 83
    iget v0, p0, Lcom/startapp/android/publish/ads/video/VideoAdDetails;->skippableAfter:I

    return v0
.end method

.method public getVideoTrackingDetails()Lcom/startapp/android/publish/ads/video/tracking/VideoTrackingDetails;
    .registers 2

    .line 91
    iget-object v0, p0, Lcom/startapp/android/publish/ads/video/VideoAdDetails;->videoTrackingDetails:Lcom/startapp/android/publish/ads/video/tracking/VideoTrackingDetails;

    return-object v0
.end method

.method public getVideoUrl()Ljava/lang/String;
    .registers 2

    .line 59
    iget-object v0, p0, Lcom/startapp/android/publish/ads/video/VideoAdDetails;->videoUrl:Ljava/lang/String;

    return-object v0
.end method

.method public isClickable()Z
    .registers 2

    .line 87
    iget-boolean v0, p0, Lcom/startapp/android/publish/ads/video/VideoAdDetails;->clickable:Z

    return v0
.end method

.method public isCloseable()Z
    .registers 2

    .line 75
    iget-boolean v0, p0, Lcom/startapp/android/publish/ads/video/VideoAdDetails;->closeable:Z

    return v0
.end method

.method public isSkippable()Z
    .registers 2

    .line 79
    iget-boolean v0, p0, Lcom/startapp/android/publish/ads/video/VideoAdDetails;->skippable:Z

    return v0
.end method

.method public isVideoMuted()Z
    .registers 2

    .line 95
    iget-boolean v0, p0, Lcom/startapp/android/publish/ads/video/VideoAdDetails;->isVideoMuted:Z

    return v0
.end method

.method public setAdVerifications(Lcom/startapp/android/publish/omsdk/AdVerification;)V
    .registers 3

    if-eqz p1, :cond_1e

    .line 111
    invoke-virtual {p1}, Lcom/startapp/android/publish/omsdk/AdVerification;->getAdVerification()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1e

    .line 112
    invoke-virtual {p1}, Lcom/startapp/android/publish/omsdk/AdVerification;->getAdVerification()Ljava/util/List;

    move-result-object v0

    .line 113
    invoke-virtual {p1}, Lcom/startapp/android/publish/omsdk/AdVerification;->getAdVerification()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [Lcom/startapp/android/publish/omsdk/VerificationDetails;

    .line 112
    invoke-interface {v0, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/startapp/android/publish/omsdk/VerificationDetails;

    iput-object p1, p0, Lcom/startapp/android/publish/ads/video/VideoAdDetails;->adVerifications:[Lcom/startapp/android/publish/omsdk/VerificationDetails;

    :cond_1e
    return-void
.end method

.method public setLocalVideoPath(Ljava/lang/String;)V
    .registers 2

    .line 67
    iput-object p1, p0, Lcom/startapp/android/publish/ads/video/VideoAdDetails;->localVideoPath:Ljava/lang/String;

    return-void
.end method

.method public setVideoMuted(Z)V
    .registers 2

    .line 99
    iput-boolean p1, p0, Lcom/startapp/android/publish/ads/video/VideoAdDetails;->isVideoMuted:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 119
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VideoAdDetails [videoUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/startapp/android/publish/ads/video/VideoAdDetails;->videoUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", localVideoPath="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/startapp/android/publish/ads/video/VideoAdDetails;->localVideoPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", postRoll="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/startapp/android/publish/ads/video/VideoAdDetails;->postRoll:Lcom/startapp/android/publish/ads/video/VideoAdDetails$PostRollType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", closeable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/startapp/android/publish/ads/video/VideoAdDetails;->closeable:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", skippable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/startapp/android/publish/ads/video/VideoAdDetails;->skippable:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", skippableAfter="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/startapp/android/publish/ads/video/VideoAdDetails;->skippableAfter:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", videoTrackingDetails= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/startapp/android/publish/ads/video/VideoAdDetails;->videoTrackingDetails:Lcom/startapp/android/publish/ads/video/tracking/VideoTrackingDetails;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isVideoMuted= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/startapp/android/publish/ads/video/VideoAdDetails;->isVideoMuted:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
