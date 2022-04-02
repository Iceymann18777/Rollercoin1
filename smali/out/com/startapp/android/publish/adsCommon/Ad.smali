.class public abstract Lcom/startapp/android/publish/adsCommon/Ad;
.super Ljava/lang/Object;
.source "StartAppSDK"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startapp/android/publish/adsCommon/Ad$AdType;,
        Lcom/startapp/android/publish/adsCommon/Ad$AdState;
    }
.end annotation


# static fields
.field private static init:Z = false

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field protected activityExtra:Lcom/startapp/android/publish/adsCommon/a;

.field protected adCacheTtl:Ljava/lang/Long;

.field private adInfoOverride:Lcom/startapp/android/publish/adsCommon/adinformation/c;

.field protected belowMinCPM:Z

.field protected transient context:Landroid/content/Context;

.field protected errorMessage:Ljava/lang/String;

.field protected extraData:Ljava/io/Serializable;

.field private lastLoadTime:Ljava/lang/Long;

.field private notDisplayedReason:Lcom/startapp/android/publish/adsCommon/adListeners/AdDisplayListener$NotDisplayedReason;

.field protected placement:Lcom/startapp/android/publish/common/model/AdPreferences$Placement;

.field private state:Lcom/startapp/android/publish/adsCommon/Ad$AdState;

.field private type:Lcom/startapp/android/publish/adsCommon/Ad$AdType;

.field private videoCancelCallBack:Z


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/startapp/android/publish/common/model/AdPreferences$Placement;)V
    .registers 5

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 41
    iput-object v0, p0, Lcom/startapp/android/publish/adsCommon/Ad;->extraData:Ljava/io/Serializable;

    .line 44
    iput-object v0, p0, Lcom/startapp/android/publish/adsCommon/Ad;->errorMessage:Ljava/lang/String;

    .line 45
    iput-object v0, p0, Lcom/startapp/android/publish/adsCommon/Ad;->adCacheTtl:Ljava/lang/Long;

    .line 47
    sget-object v1, Lcom/startapp/android/publish/adsCommon/Ad$AdState;->UN_INITIALIZED:Lcom/startapp/android/publish/adsCommon/Ad$AdState;

    iput-object v1, p0, Lcom/startapp/android/publish/adsCommon/Ad;->state:Lcom/startapp/android/publish/adsCommon/Ad$AdState;

    .line 50
    iput-object v0, p0, Lcom/startapp/android/publish/adsCommon/Ad;->lastLoadTime:Ljava/lang/Long;

    const/4 v0, 0x0

    .line 53
    iput-boolean v0, p0, Lcom/startapp/android/publish/adsCommon/Ad;->belowMinCPM:Z

    .line 58
    iput-object p1, p0, Lcom/startapp/android/publish/adsCommon/Ad;->context:Landroid/content/Context;

    .line 59
    iput-object p2, p0, Lcom/startapp/android/publish/adsCommon/Ad;->placement:Lcom/startapp/android/publish/common/model/AdPreferences$Placement;

    .line 60
    invoke-static {}, Lcom/startapp/android/publish/adsCommon/Utils/i;->e()Z

    move-result p1

    if-eqz p1, :cond_23

    .line 61
    invoke-static {}, Lcom/startapp/android/publish/adsCommon/adinformation/c;->a()Lcom/startapp/android/publish/adsCommon/adinformation/c;

    move-result-object p1

    iput-object p1, p0, Lcom/startapp/android/publish/adsCommon/Ad;->adInfoOverride:Lcom/startapp/android/publish/adsCommon/adinformation/c;

    :cond_23
    return-void
.end method

.method static synthetic access$000(Lcom/startapp/android/publish/adsCommon/Ad;Ljava/lang/Long;)V
    .registers 2

    .line 20
    invoke-direct {p0, p1}, Lcom/startapp/android/publish/adsCommon/Ad;->setLastLoadTime(Ljava/lang/Long;)V

    return-void
.end method

.method private setLastLoadTime(Ljava/lang/Long;)V
    .registers 2

    .line 253
    iput-object p1, p0, Lcom/startapp/android/publish/adsCommon/Ad;->lastLoadTime:Ljava/lang/Long;

    return-void
.end method

.method private setType(Lcom/startapp/android/publish/adsCommon/Ad$AdType;)V
    .registers 2

    .line 264
    iput-object p1, p0, Lcom/startapp/android/publish/adsCommon/Ad;->type:Lcom/startapp/android/publish/adsCommon/Ad$AdType;

    return-void
.end method


# virtual methods
.method protected canShowAd()Z
    .registers 2

    .line 280
    invoke-static {}, Lcom/startapp/android/publish/common/metaData/MetaData;->getInstance()Lcom/startapp/android/publish/common/metaData/MetaData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/startapp/android/publish/common/metaData/MetaData;->canShowAd()Z

    move-result v0

    return v0
.end method

.method protected getAdCacheTtl()Ljava/lang/Long;
    .registers 5

    .line 240
    invoke-virtual {p0}, Lcom/startapp/android/publish/adsCommon/Ad;->getFallbackAdCacheTtl()J

    move-result-wide v0

    .line 241
    iget-object v2, p0, Lcom/startapp/android/publish/adsCommon/Ad;->adCacheTtl:Ljava/lang/Long;

    if-nez v2, :cond_9

    goto :goto_11

    :cond_9
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    :goto_11
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public getAdInfoOverride()Lcom/startapp/android/publish/adsCommon/adinformation/c;
    .registers 2

    .line 106
    iget-object v0, p0, Lcom/startapp/android/publish/adsCommon/Ad;->adInfoOverride:Lcom/startapp/android/publish/adsCommon/adinformation/c;

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .registers 2

    .line 70
    iget-object v0, p0, Lcom/startapp/android/publish/adsCommon/Ad;->context:Landroid/content/Context;

    return-object v0
.end method

.method public getErrorMessage()Ljava/lang/String;
    .registers 2

    .line 98
    iget-object v0, p0, Lcom/startapp/android/publish/adsCommon/Ad;->errorMessage:Ljava/lang/String;

    return-object v0
.end method

.method public getExtraData()Ljava/io/Serializable;
    .registers 2

    .line 66
    iget-object v0, p0, Lcom/startapp/android/publish/adsCommon/Ad;->extraData:Ljava/io/Serializable;

    return-object v0
.end method

.method protected getFallbackAdCacheTtl()J
    .registers 3

    .line 245
    invoke-static {}, Lcom/startapp/android/publish/cache/d;->a()Lcom/startapp/android/publish/cache/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/startapp/android/publish/cache/d;->b()Lcom/startapp/android/publish/cache/ACMConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/startapp/android/publish/cache/ACMConfig;->getAdCacheTtl()J

    move-result-wide v0

    return-wide v0
.end method

.method protected getLastLoadTime()Ljava/lang/Long;
    .registers 2

    .line 249
    iget-object v0, p0, Lcom/startapp/android/publish/adsCommon/Ad;->lastLoadTime:Ljava/lang/Long;

    return-object v0
.end method

.method public getNotDisplayedReason()Lcom/startapp/android/publish/adsCommon/adListeners/AdDisplayListener$NotDisplayedReason;
    .registers 2

    .line 229
    iget-object v0, p0, Lcom/startapp/android/publish/adsCommon/Ad;->notDisplayedReason:Lcom/startapp/android/publish/adsCommon/adListeners/AdDisplayListener$NotDisplayedReason;

    return-object v0
.end method

.method protected getPlacement()Lcom/startapp/android/publish/common/model/AdPreferences$Placement;
    .registers 2

    .line 114
    iget-object v0, p0, Lcom/startapp/android/publish/adsCommon/Ad;->placement:Lcom/startapp/android/publish/common/model/AdPreferences$Placement;

    return-object v0
.end method

.method public getState()Lcom/startapp/android/publish/adsCommon/Ad$AdState;
    .registers 2

    .line 86
    iget-object v0, p0, Lcom/startapp/android/publish/adsCommon/Ad;->state:Lcom/startapp/android/publish/adsCommon/Ad$AdState;

    return-object v0
.end method

.method public getType()Lcom/startapp/android/publish/adsCommon/Ad$AdType;
    .registers 2

    .line 268
    iget-object v0, p0, Lcom/startapp/android/publish/adsCommon/Ad;->type:Lcom/startapp/android/publish/adsCommon/Ad$AdType;

    return-object v0
.end method

.method protected getVideoCancelCallBack()Z
    .registers 2

    .line 272
    iget-boolean v0, p0, Lcom/startapp/android/publish/adsCommon/Ad;->videoCancelCallBack:Z

    return v0
.end method

.method protected hasAdCacheTtlPassed()Z
    .registers 7

    .line 257
    iget-object v0, p0, Lcom/startapp/android/publish/adsCommon/Ad;->lastLoadTime:Ljava/lang/Long;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 260
    :cond_6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v0, p0, Lcom/startapp/android/publish/adsCommon/Ad;->lastLoadTime:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-virtual {p0}, Lcom/startapp/android/publish/adsCommon/Ad;->getAdCacheTtl()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-lez v0, :cond_1e

    const/4 v1, 0x1

    :cond_1e
    return v1
.end method

.method public isBelowMinCPM()Z
    .registers 2

    .line 90
    iget-boolean v0, p0, Lcom/startapp/android/publish/adsCommon/Ad;->belowMinCPM:Z

    return v0
.end method

.method public isReady()Z
    .registers 3

    .line 222
    iget-object v0, p0, Lcom/startapp/android/publish/adsCommon/Ad;->state:Lcom/startapp/android/publish/adsCommon/Ad$AdState;

    sget-object v1, Lcom/startapp/android/publish/adsCommon/Ad$AdState;->READY:Lcom/startapp/android/publish/adsCommon/Ad$AdState;

    if-ne v0, v1, :cond_e

    invoke-virtual {p0}, Lcom/startapp/android/publish/adsCommon/Ad;->hasAdCacheTtlPassed()Z

    move-result v0

    if-nez v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method public load()Z
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 123
    new-instance v0, Lcom/startapp/android/publish/common/model/AdPreferences;

    invoke-direct {v0}, Lcom/startapp/android/publish/common/model/AdPreferences;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/startapp/android/publish/adsCommon/Ad;->load(Lcom/startapp/android/publish/common/model/AdPreferences;Lcom/startapp/android/publish/adsCommon/adListeners/AdEventListener;)Z

    move-result v0

    return v0
.end method

.method public load(Lcom/startapp/android/publish/adsCommon/adListeners/AdEventListener;)Z
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 128
    new-instance v0, Lcom/startapp/android/publish/common/model/AdPreferences;

    invoke-direct {v0}, Lcom/startapp/android/publish/common/model/AdPreferences;-><init>()V

    invoke-virtual {p0, v0, p1}, Lcom/startapp/android/publish/adsCommon/Ad;->load(Lcom/startapp/android/publish/common/model/AdPreferences;Lcom/startapp/android/publish/adsCommon/adListeners/AdEventListener;)Z

    move-result p1

    return p1
.end method

.method public load(Lcom/startapp/android/publish/common/model/AdPreferences;)Z
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 133
    invoke-virtual {p0, p1, v0}, Lcom/startapp/android/publish/adsCommon/Ad;->load(Lcom/startapp/android/publish/common/model/AdPreferences;Lcom/startapp/android/publish/adsCommon/adListeners/AdEventListener;)Z

    move-result p1

    return p1
.end method

.method public load(Lcom/startapp/android/publish/common/model/AdPreferences;Lcom/startapp/android/publish/adsCommon/adListeners/AdEventListener;)Z
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x1

    .line 138
    invoke-virtual {p0, p1, p2, v0}, Lcom/startapp/android/publish/adsCommon/Ad;->load(Lcom/startapp/android/publish/common/model/AdPreferences;Lcom/startapp/android/publish/adsCommon/adListeners/AdEventListener;Z)Z

    move-result p1

    return p1
.end method

.method protected load(Lcom/startapp/android/publish/common/model/AdPreferences;Lcom/startapp/android/publish/adsCommon/adListeners/AdEventListener;Z)Z
    .registers 12

    .line 142
    new-instance v0, Lcom/startapp/android/publish/adsCommon/adListeners/b;

    invoke-direct {v0, p2}, Lcom/startapp/android/publish/adsCommon/adListeners/b;-><init>(Lcom/startapp/android/publish/adsCommon/adListeners/AdEventListener;)V

    .line 144
    new-instance p2, Lcom/startapp/android/publish/adsCommon/Ad$1;

    invoke-direct {p2, p0, v0}, Lcom/startapp/android/publish/adsCommon/Ad$1;-><init>(Lcom/startapp/android/publish/adsCommon/Ad;Lcom/startapp/android/publish/adsCommon/adListeners/AdEventListener;)V

    .line 158
    sget-boolean v0, Lcom/startapp/android/publish/adsCommon/Ad;->init:Z

    const/4 v1, 0x1

    if-nez v0, :cond_16

    .line 159
    iget-object v0, p0, Lcom/startapp/android/publish/adsCommon/Ad;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/startapp/android/publish/adsCommon/l;->c(Landroid/content/Context;)V

    .line 160
    sput-boolean v1, Lcom/startapp/android/publish/adsCommon/Ad;->init:Z

    .line 162
    :cond_16
    iget-object v0, p0, Lcom/startapp/android/publish/adsCommon/Ad;->context:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/startapp/android/publish/adsCommon/Utils/i;->a(Landroid/content/Context;Lcom/startapp/android/publish/common/model/AdPreferences;)V

    .line 166
    invoke-virtual {p1}, Lcom/startapp/android/publish/common/model/AdPreferences;->getProductId()Ljava/lang/String;

    move-result-object v0

    const-string v2, ""

    const/4 v3, 0x0

    if-eqz v0, :cond_31

    invoke-virtual {p1}, Lcom/startapp/android/publish/common/model/AdPreferences;->getProductId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2f

    goto :goto_31

    :cond_2f
    const/4 v0, 0x0

    goto :goto_34

    :cond_31
    :goto_31
    const-string v2, "app ID was not set."

    const/4 v0, 0x1

    .line 171
    :goto_34
    iget-object v4, p0, Lcom/startapp/android/publish/adsCommon/Ad;->state:Lcom/startapp/android/publish/adsCommon/Ad$AdState;

    sget-object v5, Lcom/startapp/android/publish/adsCommon/Ad$AdState;->UN_INITIALIZED:Lcom/startapp/android/publish/adsCommon/Ad$AdState;

    if-eq v4, v5, :cond_3d

    const-string v2, "load() was already called."

    const/4 v0, 0x1

    .line 176
    :cond_3d
    iget-object v4, p0, Lcom/startapp/android/publish/adsCommon/Ad;->context:Landroid/content/Context;

    invoke-static {v4}, Lcom/startapp/android/publish/adsCommon/Utils/i;->a(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_48

    const-string v2, "network not available."

    const/4 v0, 0x1

    .line 181
    :cond_48
    invoke-virtual {p0}, Lcom/startapp/android/publish/adsCommon/Ad;->canShowAd()Z

    move-result v4

    if-nez v4, :cond_51

    const-string v2, "serving ads disabled"

    const/4 v0, 0x1

    :cond_51
    if-eqz v0, :cond_6b

    .line 187
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Ad wasn\'t loaded: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/startapp/android/publish/adsCommon/Ad;->setErrorMessage(Ljava/lang/String;)V

    .line 188
    invoke-interface {p2, p0}, Lcom/startapp/android/publish/adsCommon/adListeners/AdEventListener;->onFailedToReceiveAd(Lcom/startapp/android/publish/adsCommon/Ad;)V

    return v3

    .line 192
    :cond_6b
    sget-object v0, Lcom/startapp/android/publish/adsCommon/Ad$AdState;->PROCESSING:Lcom/startapp/android/publish/adsCommon/Ad$AdState;

    invoke-virtual {p0, v0}, Lcom/startapp/android/publish/adsCommon/Ad;->setState(Lcom/startapp/android/publish/adsCommon/Ad$AdState;)V

    .line 195
    new-instance v7, Lcom/startapp/android/publish/adsCommon/Ad$2;

    invoke-direct {v7, p0, p1, p2}, Lcom/startapp/android/publish/adsCommon/Ad$2;-><init>(Lcom/startapp/android/publish/adsCommon/Ad;Lcom/startapp/android/publish/common/model/AdPreferences;Lcom/startapp/android/publish/adsCommon/adListeners/AdEventListener;)V

    .line 211
    invoke-virtual {p1}, Lcom/startapp/android/publish/common/model/AdPreferences;->getType()Lcom/startapp/android/publish/adsCommon/Ad$AdType;

    move-result-object p2

    if-eqz p2, :cond_82

    .line 212
    invoke-virtual {p1}, Lcom/startapp/android/publish/common/model/AdPreferences;->getType()Lcom/startapp/android/publish/adsCommon/Ad$AdType;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/startapp/android/publish/adsCommon/Ad;->setType(Lcom/startapp/android/publish/adsCommon/Ad$AdType;)V

    .line 215
    :cond_82
    invoke-static {}, Lcom/startapp/android/publish/common/metaData/MetaData;->getInstance()Lcom/startapp/android/publish/common/metaData/MetaData;

    move-result-object v2

    iget-object v3, p0, Lcom/startapp/android/publish/adsCommon/Ad;->context:Landroid/content/Context;

    invoke-static {}, Lcom/startapp/android/publish/adsCommon/Utils/g;->d()Lcom/startapp/android/publish/adsCommon/Utils/g;

    move-result-object p2

    invoke-virtual {p2}, Lcom/startapp/android/publish/adsCommon/Utils/g;->c()Lcom/startapp/android/publish/common/metaData/MetaDataRequest$a;

    move-result-object v5

    move-object v4, p1

    move v6, p3

    invoke-virtual/range {v2 .. v7}, Lcom/startapp/android/publish/common/metaData/MetaData;->loadFromServer(Landroid/content/Context;Lcom/startapp/android/publish/common/model/AdPreferences;Lcom/startapp/android/publish/common/metaData/MetaDataRequest$a;ZLcom/startapp/android/publish/common/metaData/d;)V

    return v1
.end method

.method protected abstract loadAds(Lcom/startapp/android/publish/common/model/AdPreferences;Lcom/startapp/android/publish/adsCommon/adListeners/AdEventListener;)V
.end method

.method public setActivityExtra(Lcom/startapp/android/publish/adsCommon/a;)V
    .registers 2

    .line 78
    iput-object p1, p0, Lcom/startapp/android/publish/adsCommon/Ad;->activityExtra:Lcom/startapp/android/publish/adsCommon/a;

    return-void
.end method

.method public setAdInfoOverride(Lcom/startapp/android/publish/adsCommon/adinformation/c;)V
    .registers 2

    .line 110
    iput-object p1, p0, Lcom/startapp/android/publish/adsCommon/Ad;->adInfoOverride:Lcom/startapp/android/publish/adsCommon/adinformation/c;

    return-void
.end method

.method public setContext(Landroid/content/Context;)V
    .registers 2

    .line 74
    iput-object p1, p0, Lcom/startapp/android/publish/adsCommon/Ad;->context:Landroid/content/Context;

    return-void
.end method

.method public setErrorMessage(Ljava/lang/String;)V
    .registers 2

    .line 102
    iput-object p1, p0, Lcom/startapp/android/publish/adsCommon/Ad;->errorMessage:Ljava/lang/String;

    return-void
.end method

.method public setExtraData(Ljava/io/Serializable;)V
    .registers 2

    .line 82
    iput-object p1, p0, Lcom/startapp/android/publish/adsCommon/Ad;->extraData:Ljava/io/Serializable;

    return-void
.end method

.method protected setNotDisplayedReason(Lcom/startapp/android/publish/adsCommon/adListeners/AdDisplayListener$NotDisplayedReason;)V
    .registers 2

    .line 233
    iput-object p1, p0, Lcom/startapp/android/publish/adsCommon/Ad;->notDisplayedReason:Lcom/startapp/android/publish/adsCommon/adListeners/AdDisplayListener$NotDisplayedReason;

    return-void
.end method

.method protected setPlacement(Lcom/startapp/android/publish/common/model/AdPreferences$Placement;)V
    .registers 2

    .line 118
    iput-object p1, p0, Lcom/startapp/android/publish/adsCommon/Ad;->placement:Lcom/startapp/android/publish/common/model/AdPreferences$Placement;

    return-void
.end method

.method public setState(Lcom/startapp/android/publish/adsCommon/Ad$AdState;)V
    .registers 2

    .line 94
    iput-object p1, p0, Lcom/startapp/android/publish/adsCommon/Ad;->state:Lcom/startapp/android/publish/adsCommon/Ad$AdState;

    return-void
.end method

.method protected setVideoCancelCallBack(Z)V
    .registers 2

    .line 276
    iput-boolean p1, p0, Lcom/startapp/android/publish/adsCommon/Ad;->videoCancelCallBack:Z

    return-void
.end method

.method public show()Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    return v0
.end method
