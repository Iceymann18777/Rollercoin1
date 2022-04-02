.class public Lcom/startapp/android/publish/cache/ACMConfig;
.super Ljava/lang/Object;
.source "StartAppSDK"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final DEFAULT_CACHE_SIZE:I = 0x7

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private adCacheTTL:J

.field private autoLoad:Ljava/util/Set;
    .annotation runtime Lcom/startapp/common/c/f;
        b = Ljava/util/EnumSet;
        c = Lcom/startapp/android/publish/adsCommon/StartAppAd$AdMode;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/startapp/android/publish/adsCommon/StartAppAd$AdMode;",
            ">;"
        }
    .end annotation
.end field

.field private failuresHandler:Lcom/startapp/android/publish/cache/FailuresHandler;
    .annotation runtime Lcom/startapp/common/c/f;
        a = true
    .end annotation
.end field

.field private localCache:Z

.field private maxCacheSize:I

.field private returnAdCacheTTL:J

.field private returnAdShouldLoadInBg:Z


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0xe10

    .line 16
    iput-wide v0, p0, Lcom/startapp/android/publish/cache/ACMConfig;->adCacheTTL:J

    .line 17
    iput-wide v0, p0, Lcom/startapp/android/publish/cache/ACMConfig;->returnAdCacheTTL:J

    .line 18
    sget-object v0, Lcom/startapp/android/publish/adsCommon/StartAppAd$AdMode;->FULLPAGE:Lcom/startapp/android/publish/adsCommon/StartAppAd$AdMode;

    .line 19
    invoke-static {v0}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    iput-object v0, p0, Lcom/startapp/android/publish/cache/ACMConfig;->autoLoad:Ljava/util/Set;

    const/4 v0, 0x1

    .line 20
    iput-boolean v0, p0, Lcom/startapp/android/publish/cache/ACMConfig;->localCache:Z

    .line 21
    iput-boolean v0, p0, Lcom/startapp/android/publish/cache/ACMConfig;->returnAdShouldLoadInBg:Z

    .line 22
    new-instance v0, Lcom/startapp/android/publish/cache/FailuresHandler;

    invoke-direct {v0}, Lcom/startapp/android/publish/cache/FailuresHandler;-><init>()V

    iput-object v0, p0, Lcom/startapp/android/publish/cache/ACMConfig;->failuresHandler:Lcom/startapp/android/publish/cache/FailuresHandler;

    const/4 v0, 0x7

    .line 24
    iput v0, p0, Lcom/startapp/android/publish/cache/ACMConfig;->maxCacheSize:I

    return-void
.end method


# virtual methods
.method public getAdCacheTtl()J
    .registers 4

    .line 29
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    iget-wide v1, p0, Lcom/startapp/android/publish/cache/ACMConfig;->adCacheTTL:J

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getAutoLoad()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/startapp/android/publish/adsCommon/StartAppAd$AdMode;",
            ">;"
        }
    .end annotation

    .line 43
    iget-object v0, p0, Lcom/startapp/android/publish/cache/ACMConfig;->autoLoad:Ljava/util/Set;

    return-object v0
.end method

.method public getFailuresHandler()Lcom/startapp/android/publish/cache/FailuresHandler;
    .registers 2

    .line 64
    iget-object v0, p0, Lcom/startapp/android/publish/cache/ACMConfig;->failuresHandler:Lcom/startapp/android/publish/cache/FailuresHandler;

    return-object v0
.end method

.method public getMaxCacheSize()I
    .registers 2

    .line 71
    iget v0, p0, Lcom/startapp/android/publish/cache/ACMConfig;->maxCacheSize:I

    return v0
.end method

.method public getReturnAdCacheTTL()J
    .registers 4

    .line 36
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    iget-wide v1, p0, Lcom/startapp/android/publish/cache/ACMConfig;->returnAdCacheTTL:J

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public isLocalCache()Z
    .registers 2

    .line 50
    iget-boolean v0, p0, Lcom/startapp/android/publish/cache/ACMConfig;->localCache:Z

    return v0
.end method

.method public setMaxCacheSize(I)V
    .registers 2

    .line 77
    iput p1, p0, Lcom/startapp/android/publish/cache/ACMConfig;->maxCacheSize:I

    return-void
.end method

.method public shouldReturnAdLoadInBg()Z
    .registers 2

    .line 57
    iget-boolean v0, p0, Lcom/startapp/android/publish/cache/ACMConfig;->returnAdShouldLoadInBg:Z

    return v0
.end method
