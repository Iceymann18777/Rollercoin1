.class public Lcom/startapp/android/publish/adsCommon/n;
.super Ljava/lang/Object;
.source "StartAppSDK"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startapp/android/publish/adsCommon/n$a;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private backMode:Lcom/startapp/android/publish/adsCommon/n$a;
    .annotation runtime Lcom/startapp/common/c/f;
        b = Lcom/startapp/android/publish/adsCommon/n$a;
    .end annotation
.end field

.field private maxCachedVideos:I

.field private maxTimeForCachingIndicator:I

.field private maxVastCampaignExclude:I

.field private maxVastLevels:I

.field private minAvailableStorageRequired:J

.field private minTimeForCachingIndicator:I

.field private nativePlayerProbability:I

.field private progressive:Z

.field private progressiveBufferInPercentage:I

.field private progressiveInitialBufferInPercentage:I

.field private progressiveMinBufferToPlayFromCache:I

.field private rewardGrantPercentage:I

.field private soundMode:Ljava/lang/String;

.field private vastMediaPicker:I

.field private vastPreferredBitrate:I

.field private vastRetryTimeout:I

.field private vastTimeout:I

.field private videoErrorsThreshold:I

.field private videoFallback:Z


# direct methods
.method public constructor <init>()V
    .registers 4

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    .line 16
    iput v0, p0, Lcom/startapp/android/publish/adsCommon/n;->maxCachedVideos:I

    const-wide/16 v0, 0x14

    .line 17
    iput-wide v0, p0, Lcom/startapp/android/publish/adsCommon/n;->minAvailableStorageRequired:J

    const/16 v0, 0x64

    .line 18
    iput v0, p0, Lcom/startapp/android/publish/adsCommon/n;->rewardGrantPercentage:I

    const/4 v1, 0x2

    .line 19
    iput v1, p0, Lcom/startapp/android/publish/adsCommon/n;->videoErrorsThreshold:I

    .line 20
    sget-object v1, Lcom/startapp/android/publish/adsCommon/n$a;->a:Lcom/startapp/android/publish/adsCommon/n$a;

    iput-object v1, p0, Lcom/startapp/android/publish/adsCommon/n;->backMode:Lcom/startapp/android/publish/adsCommon/n$a;

    .line 22
    iput v0, p0, Lcom/startapp/android/publish/adsCommon/n;->nativePlayerProbability:I

    const/4 v0, 0x1

    .line 23
    iput v0, p0, Lcom/startapp/android/publish/adsCommon/n;->minTimeForCachingIndicator:I

    const/16 v0, 0xa

    .line 24
    iput v0, p0, Lcom/startapp/android/publish/adsCommon/n;->maxTimeForCachingIndicator:I

    const/4 v1, 0x0

    .line 25
    iput-boolean v1, p0, Lcom/startapp/android/publish/adsCommon/n;->videoFallback:Z

    .line 26
    iput-boolean v1, p0, Lcom/startapp/android/publish/adsCommon/n;->progressive:Z

    const/16 v2, 0x14

    .line 27
    iput v2, p0, Lcom/startapp/android/publish/adsCommon/n;->progressiveBufferInPercentage:I

    const/4 v2, 0x5

    .line 28
    iput v2, p0, Lcom/startapp/android/publish/adsCommon/n;->progressiveInitialBufferInPercentage:I

    const/16 v2, 0x1e

    .line 29
    iput v2, p0, Lcom/startapp/android/publish/adsCommon/n;->progressiveMinBufferToPlayFromCache:I

    const-string v2, "default"

    .line 30
    iput-object v2, p0, Lcom/startapp/android/publish/adsCommon/n;->soundMode:Ljava/lang/String;

    const/4 v2, 0x7

    .line 33
    iput v2, p0, Lcom/startapp/android/publish/adsCommon/n;->maxVastLevels:I

    const/16 v2, 0x7530

    .line 34
    iput v2, p0, Lcom/startapp/android/publish/adsCommon/n;->vastTimeout:I

    const v2, 0xea60

    .line 35
    iput v2, p0, Lcom/startapp/android/publish/adsCommon/n;->vastRetryTimeout:I

    .line 36
    iput v0, p0, Lcom/startapp/android/publish/adsCommon/n;->maxVastCampaignExclude:I

    .line 37
    iput v1, p0, Lcom/startapp/android/publish/adsCommon/n;->vastMediaPicker:I

    .line 38
    iput v1, p0, Lcom/startapp/android/publish/adsCommon/n;->vastPreferredBitrate:I

    return-void
.end method


# virtual methods
.method public a()Lcom/startapp/android/publish/adsCommon/n$a;
    .registers 2

    .line 44
    iget-object v0, p0, Lcom/startapp/android/publish/adsCommon/n;->backMode:Lcom/startapp/android/publish/adsCommon/n$a;

    return-object v0
.end method

.method public b()I
    .registers 2

    .line 51
    iget v0, p0, Lcom/startapp/android/publish/adsCommon/n;->maxCachedVideos:I

    return v0
.end method

.method public c()J
    .registers 3

    .line 58
    iget-wide v0, p0, Lcom/startapp/android/publish/adsCommon/n;->minAvailableStorageRequired:J

    return-wide v0
.end method

.method public d()I
    .registers 2

    .line 65
    iget v0, p0, Lcom/startapp/android/publish/adsCommon/n;->rewardGrantPercentage:I

    return v0
.end method

.method public e()I
    .registers 2

    .line 73
    iget v0, p0, Lcom/startapp/android/publish/adsCommon/n;->videoErrorsThreshold:I

    return v0
.end method

.method public f()J
    .registers 4

    .line 87
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    iget v1, p0, Lcom/startapp/android/publish/adsCommon/n;->minTimeForCachingIndicator:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public g()J
    .registers 4

    .line 94
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    iget v1, p0, Lcom/startapp/android/publish/adsCommon/n;->maxTimeForCachingIndicator:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public h()Z
    .registers 2

    .line 98
    iget-boolean v0, p0, Lcom/startapp/android/publish/adsCommon/n;->videoFallback:Z

    return v0
.end method

.method public i()Z
    .registers 2

    .line 105
    iget-boolean v0, p0, Lcom/startapp/android/publish/adsCommon/n;->progressive:Z

    return v0
.end method

.method public j()I
    .registers 2

    .line 112
    iget v0, p0, Lcom/startapp/android/publish/adsCommon/n;->progressiveBufferInPercentage:I

    return v0
.end method

.method public k()I
    .registers 2

    .line 119
    iget v0, p0, Lcom/startapp/android/publish/adsCommon/n;->progressiveInitialBufferInPercentage:I

    return v0
.end method

.method public l()I
    .registers 2

    .line 126
    iget v0, p0, Lcom/startapp/android/publish/adsCommon/n;->progressiveMinBufferToPlayFromCache:I

    return v0
.end method

.method public m()Ljava/lang/String;
    .registers 2

    .line 130
    iget-object v0, p0, Lcom/startapp/android/publish/adsCommon/n;->soundMode:Ljava/lang/String;

    return-object v0
.end method

.method public n()I
    .registers 2

    .line 138
    iget v0, p0, Lcom/startapp/android/publish/adsCommon/n;->maxVastLevels:I

    return v0
.end method

.method public o()I
    .registers 2

    .line 142
    iget v0, p0, Lcom/startapp/android/publish/adsCommon/n;->vastTimeout:I

    return v0
.end method

.method public p()I
    .registers 2

    .line 146
    iget v0, p0, Lcom/startapp/android/publish/adsCommon/n;->vastRetryTimeout:I

    return v0
.end method

.method public q()I
    .registers 2

    .line 150
    iget v0, p0, Lcom/startapp/android/publish/adsCommon/n;->maxVastCampaignExclude:I

    return v0
.end method

.method public r()I
    .registers 2

    .line 154
    iget v0, p0, Lcom/startapp/android/publish/adsCommon/n;->vastMediaPicker:I

    return v0
.end method

.method public s()I
    .registers 2

    .line 158
    iget v0, p0, Lcom/startapp/android/publish/adsCommon/n;->vastPreferredBitrate:I

    return v0
.end method
