.class public Lcom/startapp/android/publish/common/model/GetAdRequest;
.super Lcom/startapp/android/publish/adsCommon/BaseRequest;
.source "StartAppSDK"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startapp/android/publish/common/model/GetAdRequest$CellScanResult;,
        Lcom/startapp/android/publish/common/model/GetAdRequest$VideoRequestMode;,
        Lcom/startapp/android/publish/common/model/GetAdRequest$VideoRequestType;
    }
.end annotation


# instance fields
.field private adsDisplayed:I

.field private adsNumber:I

.field private advertiserId:Ljava/lang/String;

.field private age:Ljava/lang/String;

.field private ai:Ljava/lang/Boolean;

.field private as:Ljava/lang/Boolean;

.field private campaignExclude:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private categories:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private categoriesExclude:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private contentAd:Z

.field private country:Ljava/lang/String;

.field private engInclude:Z

.field private gender:Lcom/startapp/android/publish/adsCommon/SDKAdPreferences$Gender;

.field private isAutoDateTimeEnabled:Ljava/lang/Boolean;

.field private isDefaultMetaData:Z

.field private isDisableTwoClicks:Z

.field private isHardwareAccelerated:Z

.field private keywords:Ljava/lang/String;

.field private minCpm:Ljava/lang/Double;

.field private moreImg:Ljava/lang/String;

.field private offset:I

.field private packageExclude:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private packageInclude:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private placement:Lcom/startapp/android/publish/common/model/AdPreferences$Placement;

.field private primaryImg:Ljava/lang/String;

.field private profileId:Ljava/lang/String;

.field private simpleToken:Landroid/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private template:Ljava/lang/String;

.field private testMode:Z

.field private timeSinceSessionStart:J

.field private type:Lcom/startapp/android/publish/adsCommon/Ad$AdType;


# direct methods
.method public constructor <init>()V
    .registers 5

    .line 75
    invoke-direct {p0}, Lcom/startapp/android/publish/adsCommon/BaseRequest;-><init>()V

    const/4 v0, 0x1

    .line 34
    iput v0, p0, Lcom/startapp/android/publish/common/model/GetAdRequest;->adsNumber:I

    .line 37
    iput-boolean v0, p0, Lcom/startapp/android/publish/common/model/GetAdRequest;->isHardwareAccelerated:Z

    .line 39
    invoke-static {}, Lcom/startapp/android/publish/adsCommon/b;->a()Lcom/startapp/android/publish/adsCommon/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/startapp/android/publish/adsCommon/b;->D()Z

    move-result v1

    iput-boolean v1, p0, Lcom/startapp/android/publish/common/model/GetAdRequest;->isDisableTwoClicks:Z

    .line 41
    iput-boolean v0, p0, Lcom/startapp/android/publish/common/model/GetAdRequest;->isDefaultMetaData:Z

    const/4 v1, 0x0

    .line 45
    iput v1, p0, Lcom/startapp/android/publish/common/model/GetAdRequest;->offset:I

    const/4 v1, 0x0

    .line 47
    iput-object v1, p0, Lcom/startapp/android/publish/common/model/GetAdRequest;->categories:Ljava/util/Set;

    .line 48
    iput-object v1, p0, Lcom/startapp/android/publish/common/model/GetAdRequest;->categoriesExclude:Ljava/util/Set;

    .line 49
    iput-object v1, p0, Lcom/startapp/android/publish/common/model/GetAdRequest;->packageExclude:Ljava/util/Set;

    .line 50
    iput-object v1, p0, Lcom/startapp/android/publish/common/model/GetAdRequest;->packageInclude:Ljava/util/Set;

    .line 51
    iput-object v1, p0, Lcom/startapp/android/publish/common/model/GetAdRequest;->campaignExclude:Ljava/util/Set;

    .line 54
    iput-boolean v0, p0, Lcom/startapp/android/publish/common/model/GetAdRequest;->engInclude:Z

    .line 495
    iput-object v1, p0, Lcom/startapp/android/publish/common/model/GetAdRequest;->country:Ljava/lang/String;

    .line 496
    iput-object v1, p0, Lcom/startapp/android/publish/common/model/GetAdRequest;->advertiserId:Ljava/lang/String;

    .line 497
    iput-object v1, p0, Lcom/startapp/android/publish/common/model/GetAdRequest;->type:Lcom/startapp/android/publish/adsCommon/Ad$AdType;

    .line 76
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {}, Lcom/startapp/android/publish/adsCommon/Utils/g;->d()Lcom/startapp/android/publish/adsCommon/Utils/g;

    move-result-object v2

    invoke-virtual {v2}, Lcom/startapp/android/publish/adsCommon/Utils/g;->b()J

    move-result-wide v2

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/startapp/android/publish/common/model/GetAdRequest;->timeSinceSessionStart:J

    .line 77
    invoke-static {}, Lcom/startapp/android/publish/adsCommon/Utils/i;->a()Z

    move-result v0

    if-nez v0, :cond_49

    .line 78
    invoke-static {}, Lcom/startapp/android/publish/adsCommon/a/b;->a()Lcom/startapp/android/publish/adsCommon/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/startapp/android/publish/adsCommon/a/b;->d()I

    move-result v0

    iput v0, p0, Lcom/startapp/android/publish/common/model/GetAdRequest;->adsDisplayed:I

    .line 80
    :cond_49
    invoke-static {}, Lcom/startapp/android/publish/common/metaData/MetaData;->getInstance()Lcom/startapp/android/publish/common/metaData/MetaData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/startapp/android/publish/common/metaData/MetaData;->getProfileId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/startapp/android/publish/common/model/GetAdRequest;->profileId:Ljava/lang/String;

    return-void
.end method

.method private addParams(Lcom/startapp/android/publish/adsCommon/Utils/e;)V
    .registers 8

    .line 400
    iget-object v0, p0, Lcom/startapp/android/publish/common/model/GetAdRequest;->placement:Lcom/startapp/android/publish/common/model/AdPreferences$Placement;

    invoke-virtual {v0}, Lcom/startapp/android/publish/common/model/AdPreferences$Placement;->name()Ljava/lang/String;

    move-result-object v0

    const-string v1, "placement"

    const/4 v2, 0x1

    invoke-virtual {p1, v1, v0, v2}, Lcom/startapp/android/publish/adsCommon/Utils/e;->a(Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 401
    iget-boolean v0, p0, Lcom/startapp/android/publish/common/model/GetAdRequest;->testMode:Z

    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    const-string v1, "testMode"

    const/4 v3, 0x0

    invoke-virtual {p1, v1, v0, v3}, Lcom/startapp/android/publish/adsCommon/Utils/e;->a(Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 402
    iget-object v0, p0, Lcom/startapp/android/publish/common/model/GetAdRequest;->gender:Lcom/startapp/android/publish/adsCommon/SDKAdPreferences$Gender;

    const-string v1, "gender"

    invoke-virtual {p1, v1, v0, v3}, Lcom/startapp/android/publish/adsCommon/Utils/e;->a(Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 403
    iget-object v0, p0, Lcom/startapp/android/publish/common/model/GetAdRequest;->age:Ljava/lang/String;

    const-string v1, "age"

    invoke-virtual {p1, v1, v0, v3}, Lcom/startapp/android/publish/adsCommon/Utils/e;->a(Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 404
    iget-object v0, p0, Lcom/startapp/android/publish/common/model/GetAdRequest;->keywords:Ljava/lang/String;

    const-string v1, "keywords"

    invoke-virtual {p1, v1, v0, v3}, Lcom/startapp/android/publish/adsCommon/Utils/e;->a(Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 405
    iget-object v0, p0, Lcom/startapp/android/publish/common/model/GetAdRequest;->template:Ljava/lang/String;

    const-string v1, "template"

    invoke-virtual {p1, v1, v0, v3}, Lcom/startapp/android/publish/adsCommon/Utils/e;->a(Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 406
    iget v0, p0, Lcom/startapp/android/publish/common/model/GetAdRequest;->adsNumber:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "adsNumber"

    invoke-virtual {p1, v1, v0, v3}, Lcom/startapp/android/publish/adsCommon/Utils/e;->a(Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 407
    iget-object v0, p0, Lcom/startapp/android/publish/common/model/GetAdRequest;->categories:Ljava/util/Set;

    const-string v1, "category"

    invoke-virtual {p1, v1, v0, v3}, Lcom/startapp/android/publish/adsCommon/Utils/e;->a(Ljava/lang/String;Ljava/util/Set;Z)V

    .line 408
    iget-object v0, p0, Lcom/startapp/android/publish/common/model/GetAdRequest;->categoriesExclude:Ljava/util/Set;

    const-string v1, "categoryExclude"

    invoke-virtual {p1, v1, v0, v3}, Lcom/startapp/android/publish/adsCommon/Utils/e;->a(Ljava/lang/String;Ljava/util/Set;Z)V

    .line 409
    iget-object v0, p0, Lcom/startapp/android/publish/common/model/GetAdRequest;->packageExclude:Ljava/util/Set;

    const-string v1, "packageExclude"

    invoke-virtual {p1, v1, v0, v3}, Lcom/startapp/android/publish/adsCommon/Utils/e;->a(Ljava/lang/String;Ljava/util/Set;Z)V

    .line 410
    iget-object v0, p0, Lcom/startapp/android/publish/common/model/GetAdRequest;->campaignExclude:Ljava/util/Set;

    const-string v1, "campaignExclude"

    invoke-virtual {p1, v1, v0, v3}, Lcom/startapp/android/publish/adsCommon/Utils/e;->a(Ljava/lang/String;Ljava/util/Set;Z)V

    .line 411
    iget v0, p0, Lcom/startapp/android/publish/common/model/GetAdRequest;->offset:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "offset"

    invoke-virtual {p1, v1, v0, v3}, Lcom/startapp/android/publish/adsCommon/Utils/e;->a(Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 412
    iget-object v0, p0, Lcom/startapp/android/publish/common/model/GetAdRequest;->ai:Ljava/lang/Boolean;

    const-string v1, "ai"

    invoke-virtual {p1, v1, v0, v3}, Lcom/startapp/android/publish/adsCommon/Utils/e;->a(Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 413
    iget-object v0, p0, Lcom/startapp/android/publish/common/model/GetAdRequest;->as:Ljava/lang/Boolean;

    const-string v1, "as"

    invoke-virtual {p1, v1, v0, v3}, Lcom/startapp/android/publish/adsCommon/Utils/e;->a(Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 414
    iget-object v0, p0, Lcom/startapp/android/publish/common/model/GetAdRequest;->minCpm:Ljava/lang/Double;

    invoke-static {v0}, Lcom/startapp/android/publish/adsCommon/Utils/i;->a(Ljava/lang/Double;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "minCPM"

    invoke-virtual {p1, v1, v0, v3}, Lcom/startapp/android/publish/adsCommon/Utils/e;->a(Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 415
    iget-boolean v0, p0, Lcom/startapp/android/publish/common/model/GetAdRequest;->isDisableTwoClicks:Z

    xor-int/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "twoClicks"

    invoke-virtual {p1, v1, v0, v3}, Lcom/startapp/android/publish/adsCommon/Utils/e;->a(Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 417
    iget-boolean v0, p0, Lcom/startapp/android/publish/common/model/GetAdRequest;->engInclude:Z

    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    const-string v1, "engInclude"

    invoke-virtual {p1, v1, v0, v3}, Lcom/startapp/android/publish/adsCommon/Utils/e;->a(Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 420
    invoke-virtual {p0}, Lcom/startapp/android/publish/common/model/GetAdRequest;->getType()Lcom/startapp/android/publish/adsCommon/Ad$AdType;

    move-result-object v0

    sget-object v1, Lcom/startapp/android/publish/adsCommon/Ad$AdType;->INTERSTITIAL:Lcom/startapp/android/publish/adsCommon/Ad$AdType;

    if-eq v0, v1, :cond_a6

    invoke-virtual {p0}, Lcom/startapp/android/publish/common/model/GetAdRequest;->getType()Lcom/startapp/android/publish/adsCommon/Ad$AdType;

    move-result-object v0

    sget-object v1, Lcom/startapp/android/publish/adsCommon/Ad$AdType;->RICH_TEXT:Lcom/startapp/android/publish/adsCommon/Ad$AdType;

    if-ne v0, v1, :cond_ad

    .line 421
    :cond_a6
    iget-object v0, p0, Lcom/startapp/android/publish/common/model/GetAdRequest;->type:Lcom/startapp/android/publish/adsCommon/Ad$AdType;

    const-string v1, "type"

    invoke-virtual {p1, v1, v0, v3}, Lcom/startapp/android/publish/adsCommon/Utils/e;->a(Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 425
    :cond_ad
    iget-wide v0, p0, Lcom/startapp/android/publish/common/model/GetAdRequest;->timeSinceSessionStart:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "timeSinceSessionStart"

    invoke-virtual {p1, v1, v0, v2}, Lcom/startapp/android/publish/adsCommon/Utils/e;->a(Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 426
    iget v0, p0, Lcom/startapp/android/publish/common/model/GetAdRequest;->adsDisplayed:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "adsDisplayed"

    invoke-virtual {p1, v1, v0, v2}, Lcom/startapp/android/publish/adsCommon/Utils/e;->a(Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 427
    iget-object v0, p0, Lcom/startapp/android/publish/common/model/GetAdRequest;->profileId:Ljava/lang/String;

    const-string v1, "profileId"

    invoke-virtual {p1, v1, v0, v3}, Lcom/startapp/android/publish/adsCommon/Utils/e;->a(Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 429
    iget-boolean v0, p0, Lcom/startapp/android/publish/common/model/GetAdRequest;->isHardwareAccelerated:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "hardwareAccelerated"

    invoke-virtual {p1, v1, v0, v3}, Lcom/startapp/android/publish/adsCommon/Utils/e;->a(Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 430
    iget-object v0, p0, Lcom/startapp/android/publish/common/model/GetAdRequest;->isAutoDateTimeEnabled:Ljava/lang/Boolean;

    const-string v1, "dts"

    invoke-virtual {p1, v1, v0, v3}, Lcom/startapp/android/publish/adsCommon/Utils/e;->a(Ljava/lang/String;Ljava/lang/Object;Z)V

    const-string v0, "downloadingMode"

    const-string v1, "CACHE"

    .line 433
    invoke-virtual {p1, v0, v1, v3}, Lcom/startapp/android/publish/adsCommon/Utils/e;->a(Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 435
    iget-object v0, p0, Lcom/startapp/android/publish/common/model/GetAdRequest;->primaryImg:Ljava/lang/String;

    const-string v1, "primaryImg"

    invoke-virtual {p1, v1, v0, v3}, Lcom/startapp/android/publish/adsCommon/Utils/e;->a(Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 436
    iget-object v0, p0, Lcom/startapp/android/publish/common/model/GetAdRequest;->moreImg:Ljava/lang/String;

    const-string v1, "moreImg"

    invoke-virtual {p1, v1, v0, v3}, Lcom/startapp/android/publish/adsCommon/Utils/e;->a(Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 437
    iget-boolean v0, p0, Lcom/startapp/android/publish/common/model/GetAdRequest;->contentAd:Z

    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    const-string v1, "contentAd"

    invoke-virtual {p1, v1, v0, v3}, Lcom/startapp/android/publish/adsCommon/Utils/e;->a(Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 439
    invoke-static {}, Lcom/startapp/common/a/a;->d()Ljava/lang/String;

    move-result-object v0

    .line 440
    invoke-static {}, Lcom/startapp/common/a/a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1, v0, v2}, Lcom/startapp/android/publish/adsCommon/Utils/e;->a(Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 441
    invoke-static {}, Lcom/startapp/common/a/a;->c()Ljava/lang/String;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/startapp/android/publish/common/model/GetAdRequest;->getProductId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/startapp/android/publish/common/model/GetAdRequest;->placement:Lcom/startapp/android/publish/common/model/AdPreferences$Placement;

    invoke-virtual {v5}, Lcom/startapp/android/publish/common/model/AdPreferences$Placement;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/startapp/android/publish/common/model/GetAdRequest;->getSessionId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/startapp/android/publish/common/model/GetAdRequest;->getSdkVersion()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/startapp/common/a/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0, v2, v3}, Lcom/startapp/android/publish/adsCommon/Utils/e;->a(Ljava/lang/String;Ljava/lang/Object;ZZ)V

    .line 447
    invoke-virtual {p0}, Lcom/startapp/android/publish/common/model/GetAdRequest;->getCountry()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_14b

    .line 448
    invoke-virtual {p0}, Lcom/startapp/android/publish/common/model/GetAdRequest;->getCountry()Ljava/lang/String;

    move-result-object v0

    const-string v1, "country"

    invoke-virtual {p1, v1, v0, v3}, Lcom/startapp/android/publish/adsCommon/Utils/e;->a(Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 451
    :cond_14b
    invoke-virtual {p0}, Lcom/startapp/android/publish/common/model/GetAdRequest;->getAdvertiserId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_15a

    .line 452
    invoke-virtual {p0}, Lcom/startapp/android/publish/common/model/GetAdRequest;->getAdvertiserId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "advertiserId"

    invoke-virtual {p1, v1, v0, v3}, Lcom/startapp/android/publish/adsCommon/Utils/e;->a(Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 459
    :cond_15a
    invoke-virtual {p0}, Lcom/startapp/android/publish/common/model/GetAdRequest;->getPackageInclude()Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_169

    .line 460
    invoke-virtual {p0}, Lcom/startapp/android/publish/common/model/GetAdRequest;->getPackageInclude()Ljava/util/Set;

    move-result-object v0

    const-string v1, "packageInclude"

    invoke-virtual {p1, v1, v0, v3}, Lcom/startapp/android/publish/adsCommon/Utils/e;->a(Ljava/lang/String;Ljava/util/Set;Z)V

    .line 464
    :cond_169
    iget-boolean v0, p0, Lcom/startapp/android/publish/common/model/GetAdRequest;->isDefaultMetaData:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "defaultMetaData"

    invoke-virtual {p1, v1, v0, v2}, Lcom/startapp/android/publish/adsCommon/Utils/e;->a(Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 467
    iget-object v0, p0, Lcom/startapp/android/publish/common/model/GetAdRequest;->simpleToken:Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/startapp/android/publish/common/model/GetAdRequest;->simpleToken:Landroid/util/Pair;

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {p1, v0, v1, v3}, Lcom/startapp/android/publish/adsCommon/Utils/e;->a(Ljava/lang/String;Ljava/lang/Object;Z)V

    return-void
.end method


# virtual methods
.method public addCategory(Ljava/lang/String;)V
    .registers 3

    .line 194
    iget-object v0, p0, Lcom/startapp/android/publish/common/model/GetAdRequest;->categories:Ljava/util/Set;

    if-nez v0, :cond_b

    .line 195
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/startapp/android/publish/common/model/GetAdRequest;->categories:Ljava/util/Set;

    .line 198
    :cond_b
    iget-object v0, p0, Lcom/startapp/android/publish/common/model/GetAdRequest;->categories:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addCategoryExclude(Ljava/lang/String;)V
    .registers 3

    .line 210
    iget-object v0, p0, Lcom/startapp/android/publish/common/model/GetAdRequest;->categoriesExclude:Ljava/util/Set;

    if-nez v0, :cond_b

    .line 211
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/startapp/android/publish/common/model/GetAdRequest;->categoriesExclude:Ljava/util/Set;

    .line 214
    :cond_b
    iget-object v0, p0, Lcom/startapp/android/publish/common/model/GetAdRequest;->categoriesExclude:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public fillAdPreferences(Landroid/content/Context;Lcom/startapp/android/publish/common/model/AdPreferences;Lcom/startapp/android/publish/common/model/AdPreferences$Placement;Landroid/util/Pair;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/startapp/android/publish/common/model/AdPreferences;",
            "Lcom/startapp/android/publish/common/model/AdPreferences$Placement;",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 325
    iput-object p3, p0, Lcom/startapp/android/publish/common/model/GetAdRequest;->placement:Lcom/startapp/android/publish/common/model/AdPreferences$Placement;

    .line 326
    iput-object p4, p0, Lcom/startapp/android/publish/common/model/GetAdRequest;->simpleToken:Landroid/util/Pair;

    .line 327
    invoke-virtual {p2}, Lcom/startapp/android/publish/common/model/AdPreferences;->getAi()Ljava/lang/Boolean;

    move-result-object p3

    iput-object p3, p0, Lcom/startapp/android/publish/common/model/GetAdRequest;->ai:Ljava/lang/Boolean;

    .line 328
    invoke-virtual {p2}, Lcom/startapp/android/publish/common/model/AdPreferences;->getAs()Ljava/lang/Boolean;

    move-result-object p3

    iput-object p3, p0, Lcom/startapp/android/publish/common/model/GetAdRequest;->as:Ljava/lang/Boolean;

    .line 329
    invoke-virtual {p2, p1}, Lcom/startapp/android/publish/common/model/AdPreferences;->getAge(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/startapp/android/publish/common/model/GetAdRequest;->age:Ljava/lang/String;

    .line 330
    invoke-virtual {p2, p1}, Lcom/startapp/android/publish/common/model/AdPreferences;->getGender(Landroid/content/Context;)Lcom/startapp/android/publish/adsCommon/SDKAdPreferences$Gender;

    move-result-object p3

    iput-object p3, p0, Lcom/startapp/android/publish/common/model/GetAdRequest;->gender:Lcom/startapp/android/publish/adsCommon/SDKAdPreferences$Gender;

    .line 331
    invoke-virtual {p2}, Lcom/startapp/android/publish/common/model/AdPreferences;->getKeywords()Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/startapp/android/publish/common/model/GetAdRequest;->keywords:Ljava/lang/String;

    .line 332
    invoke-virtual {p2}, Lcom/startapp/android/publish/common/model/AdPreferences;->isTestMode()Z

    move-result p3

    iput-boolean p3, p0, Lcom/startapp/android/publish/common/model/GetAdRequest;->testMode:Z

    .line 333
    invoke-virtual {p2}, Lcom/startapp/android/publish/common/model/AdPreferences;->getCategories()Ljava/util/Set;

    move-result-object p3

    iput-object p3, p0, Lcom/startapp/android/publish/common/model/GetAdRequest;->categories:Ljava/util/Set;

    .line 334
    invoke-virtual {p2}, Lcom/startapp/android/publish/common/model/AdPreferences;->getCategoriesExclude()Ljava/util/Set;

    move-result-object p3

    iput-object p3, p0, Lcom/startapp/android/publish/common/model/GetAdRequest;->categoriesExclude:Ljava/util/Set;

    .line 335
    invoke-virtual {p2}, Lcom/startapp/android/publish/common/model/AdPreferences;->isHardwareAccelerated()Z

    move-result p3

    iput-boolean p3, p0, Lcom/startapp/android/publish/common/model/GetAdRequest;->isHardwareAccelerated:Z

    .line 336
    invoke-static {p1}, Lcom/startapp/common/a/c;->c(Landroid/content/Context;)Z

    move-result p3

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    iput-object p3, p0, Lcom/startapp/android/publish/common/model/GetAdRequest;->isAutoDateTimeEnabled:Ljava/lang/Boolean;

    .line 337
    invoke-virtual {p2}, Lcom/startapp/android/publish/common/model/AdPreferences;->getMinCpm()Ljava/lang/Double;

    move-result-object p3

    iput-object p3, p0, Lcom/startapp/android/publish/common/model/GetAdRequest;->minCpm:Ljava/lang/Double;

    .line 338
    invoke-static {p1}, Lcom/startapp/android/publish/common/metaData/MetaData;->isLoadedFromServer(Landroid/content/Context;)Z

    move-result p3

    xor-int/lit8 p3, p3, 0x1

    iput-boolean p3, p0, Lcom/startapp/android/publish/common/model/GetAdRequest;->isDefaultMetaData:Z

    .line 339
    invoke-virtual {p0, p2, p1}, Lcom/startapp/android/publish/common/model/GetAdRequest;->fillLocationDetails(Lcom/startapp/android/publish/common/model/AdPreferences;Landroid/content/Context;)V

    .line 344
    iget-object p1, p2, Lcom/startapp/android/publish/common/model/AdPreferences;->country:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/startapp/android/publish/common/model/GetAdRequest;->setCountry(Ljava/lang/String;)V

    .line 345
    iget-object p1, p2, Lcom/startapp/android/publish/common/model/AdPreferences;->advertiserId:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/startapp/android/publish/common/model/GetAdRequest;->setAdvertiser(Ljava/lang/String;)V

    .line 346
    iget-object p1, p2, Lcom/startapp/android/publish/common/model/AdPreferences;->template:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/startapp/android/publish/common/model/GetAdRequest;->setTemplate(Ljava/lang/String;)V

    .line 347
    iget-object p1, p2, Lcom/startapp/android/publish/common/model/AdPreferences;->type:Lcom/startapp/android/publish/adsCommon/Ad$AdType;

    invoke-virtual {p0, p1}, Lcom/startapp/android/publish/common/model/GetAdRequest;->setType(Lcom/startapp/android/publish/adsCommon/Ad$AdType;)V

    .line 357
    iget-object p1, p2, Lcom/startapp/android/publish/common/model/AdPreferences;->packageInclude:Ljava/util/Set;

    invoke-virtual {p0, p1}, Lcom/startapp/android/publish/common/model/GetAdRequest;->setPackageInclude(Ljava/util/Set;)V

    return-void
.end method

.method public getAdsNumber()I
    .registers 2

    .line 149
    iget v0, p0, Lcom/startapp/android/publish/common/model/GetAdRequest;->adsNumber:I

    return v0
.end method

.method public getAdvertiserId()Ljava/lang/String;
    .registers 2

    .line 512
    iget-object v0, p0, Lcom/startapp/android/publish/common/model/GetAdRequest;->advertiserId:Ljava/lang/String;

    return-object v0
.end method

.method public getAge()Ljava/lang/String;
    .registers 2

    .line 125
    iget-object v0, p0, Lcom/startapp/android/publish/common/model/GetAdRequest;->age:Ljava/lang/String;

    return-object v0
.end method

.method public getAi()Ljava/lang/Boolean;
    .registers 2

    .line 270
    iget-object v0, p0, Lcom/startapp/android/publish/common/model/GetAdRequest;->ai:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getAs()Ljava/lang/Boolean;
    .registers 2

    .line 278
    iget-object v0, p0, Lcom/startapp/android/publish/common/model/GetAdRequest;->as:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getCampaignExclude()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 234
    iget-object v0, p0, Lcom/startapp/android/publish/common/model/GetAdRequest;->campaignExclude:Ljava/util/Set;

    return-object v0
.end method

.method public getCategories()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 181
    iget-object v0, p0, Lcom/startapp/android/publish/common/model/GetAdRequest;->categories:Ljava/util/Set;

    return-object v0
.end method

.method public getCategoriesExclude()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 202
    iget-object v0, p0, Lcom/startapp/android/publish/common/model/GetAdRequest;->categoriesExclude:Ljava/util/Set;

    return-object v0
.end method

.method public getCountry()Ljava/lang/String;
    .registers 2

    .line 508
    iget-object v0, p0, Lcom/startapp/android/publish/common/model/GetAdRequest;->country:Ljava/lang/String;

    return-object v0
.end method

.method public getGender()Lcom/startapp/android/publish/adsCommon/SDKAdPreferences$Gender;
    .registers 2

    .line 117
    iget-object v0, p0, Lcom/startapp/android/publish/common/model/GetAdRequest;->gender:Lcom/startapp/android/publish/adsCommon/SDKAdPreferences$Gender;

    return-object v0
.end method

.method public getKeywords()Ljava/lang/String;
    .registers 2

    .line 133
    iget-object v0, p0, Lcom/startapp/android/publish/common/model/GetAdRequest;->keywords:Ljava/lang/String;

    return-object v0
.end method

.method public getMinCpm()D
    .registers 3

    .line 189
    iget-object v0, p0, Lcom/startapp/android/publish/common/model/GetAdRequest;->minCpm:Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    return-wide v0
.end method

.method public getMoreImg()Ljava/lang/String;
    .registers 2

    .line 165
    iget-object v0, p0, Lcom/startapp/android/publish/common/model/GetAdRequest;->moreImg:Ljava/lang/String;

    return-object v0
.end method

.method public getNameValueMap()Lcom/startapp/android/publish/adsCommon/Utils/e;
    .registers 2

    .line 389
    invoke-super {p0}, Lcom/startapp/android/publish/adsCommon/BaseRequest;->getNameValueMap()Lcom/startapp/android/publish/adsCommon/Utils/e;

    move-result-object v0

    if-nez v0, :cond_b

    .line 391
    new-instance v0, Lcom/startapp/android/publish/adsCommon/Utils/d;

    invoke-direct {v0}, Lcom/startapp/android/publish/adsCommon/Utils/d;-><init>()V

    .line 394
    :cond_b
    invoke-direct {p0, v0}, Lcom/startapp/android/publish/common/model/GetAdRequest;->addParams(Lcom/startapp/android/publish/adsCommon/Utils/e;)V

    return-object v0
.end method

.method public getOffset()I
    .registers 2

    .line 246
    iget v0, p0, Lcom/startapp/android/publish/common/model/GetAdRequest;->offset:I

    return v0
.end method

.method public getPackageExclude()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 218
    iget-object v0, p0, Lcom/startapp/android/publish/common/model/GetAdRequest;->packageExclude:Ljava/util/Set;

    return-object v0
.end method

.method public getPackageInclude()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 226
    iget-object v0, p0, Lcom/startapp/android/publish/common/model/GetAdRequest;->packageInclude:Ljava/util/Set;

    return-object v0
.end method

.method public getPlacement()Lcom/startapp/android/publish/common/model/AdPreferences$Placement;
    .registers 2

    .line 84
    iget-object v0, p0, Lcom/startapp/android/publish/common/model/GetAdRequest;->placement:Lcom/startapp/android/publish/common/model/AdPreferences$Placement;

    return-object v0
.end method

.method public getPrimaryImg()Ljava/lang/String;
    .registers 2

    .line 157
    iget-object v0, p0, Lcom/startapp/android/publish/common/model/GetAdRequest;->primaryImg:Ljava/lang/String;

    return-object v0
.end method

.method public getSimpleToken()Landroid/util/Pair;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 254
    iget-object v0, p0, Lcom/startapp/android/publish/common/model/GetAdRequest;->simpleToken:Landroid/util/Pair;

    return-object v0
.end method

.method public getTemplate()Ljava/lang/String;
    .registers 2

    .line 141
    iget-object v0, p0, Lcom/startapp/android/publish/common/model/GetAdRequest;->template:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Lcom/startapp/android/publish/adsCommon/Ad$AdType;
    .registers 2

    .line 516
    iget-object v0, p0, Lcom/startapp/android/publish/common/model/GetAdRequest;->type:Lcom/startapp/android/publish/adsCommon/Ad$AdType;

    return-object v0
.end method

.method public hasCampaignExclude()Z
    .registers 2

    .line 238
    iget-object v0, p0, Lcom/startapp/android/publish/common/model/GetAdRequest;->campaignExclude:Ljava/util/Set;

    if-eqz v0, :cond_c

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-lez v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public isAdTypeVideo()Z
    .registers 3

    .line 384
    invoke-virtual {p0}, Lcom/startapp/android/publish/common/model/GetAdRequest;->getType()Lcom/startapp/android/publish/adsCommon/Ad$AdType;

    move-result-object v0

    sget-object v1, Lcom/startapp/android/publish/adsCommon/Ad$AdType;->VIDEO:Lcom/startapp/android/publish/adsCommon/Ad$AdType;

    if-eq v0, v1, :cond_13

    invoke-virtual {p0}, Lcom/startapp/android/publish/common/model/GetAdRequest;->getType()Lcom/startapp/android/publish/adsCommon/Ad$AdType;

    move-result-object v0

    sget-object v1, Lcom/startapp/android/publish/adsCommon/Ad$AdType;->REWARDED_VIDEO:Lcom/startapp/android/publish/adsCommon/Ad$AdType;

    if-ne v0, v1, :cond_11

    goto :goto_13

    :cond_11
    const/4 v0, 0x0

    goto :goto_14

    :cond_13
    :goto_13
    const/4 v0, 0x1

    :goto_14
    return v0
.end method

.method public isContentAd()Z
    .registers 2

    .line 173
    iget-boolean v0, p0, Lcom/startapp/android/publish/common/model/GetAdRequest;->contentAd:Z

    return v0
.end method

.method protected isDisableTwoClicks()Z
    .registers 2

    .line 105
    iget-boolean v0, p0, Lcom/startapp/android/publish/common/model/GetAdRequest;->isDisableTwoClicks:Z

    return v0
.end method

.method public isEngInclude()Z
    .registers 2

    .line 262
    iget-boolean v0, p0, Lcom/startapp/android/publish/common/model/GetAdRequest;->engInclude:Z

    return v0
.end method

.method public isTestMode()Z
    .registers 2

    .line 100
    iget-boolean v0, p0, Lcom/startapp/android/publish/common/model/GetAdRequest;->testMode:Z

    return v0
.end method

.method public setAdsNumber(I)V
    .registers 2

    .line 153
    iput p1, p0, Lcom/startapp/android/publish/common/model/GetAdRequest;->adsNumber:I

    return-void
.end method

.method public setAdvertiser(Ljava/lang/String;)V
    .registers 2

    .line 504
    iput-object p1, p0, Lcom/startapp/android/publish/common/model/GetAdRequest;->advertiserId:Ljava/lang/String;

    return-void
.end method

.method public setAge(Ljava/lang/String;)V
    .registers 2

    .line 129
    iput-object p1, p0, Lcom/startapp/android/publish/common/model/GetAdRequest;->age:Ljava/lang/String;

    return-void
.end method

.method public setAi(Ljava/lang/Boolean;)V
    .registers 2

    .line 274
    iput-object p1, p0, Lcom/startapp/android/publish/common/model/GetAdRequest;->ai:Ljava/lang/Boolean;

    return-void
.end method

.method public setAs(Ljava/lang/Boolean;)V
    .registers 2

    .line 282
    iput-object p1, p0, Lcom/startapp/android/publish/common/model/GetAdRequest;->as:Ljava/lang/Boolean;

    return-void
.end method

.method public setCampaignExclude(Ljava/util/Set;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 242
    iput-object p1, p0, Lcom/startapp/android/publish/common/model/GetAdRequest;->campaignExclude:Ljava/util/Set;

    return-void
.end method

.method public setCategories(Ljava/util/Set;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 185
    iput-object p1, p0, Lcom/startapp/android/publish/common/model/GetAdRequest;->categories:Ljava/util/Set;

    return-void
.end method

.method public setCategoriesExclude(Ljava/util/Set;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 206
    iput-object p1, p0, Lcom/startapp/android/publish/common/model/GetAdRequest;->categoriesExclude:Ljava/util/Set;

    return-void
.end method

.method public setContentAd(Z)V
    .registers 2

    .line 177
    iput-boolean p1, p0, Lcom/startapp/android/publish/common/model/GetAdRequest;->contentAd:Z

    return-void
.end method

.method public setCountry(Ljava/lang/String;)V
    .registers 2

    .line 500
    iput-object p1, p0, Lcom/startapp/android/publish/common/model/GetAdRequest;->country:Ljava/lang/String;

    return-void
.end method

.method public setDisableTwoClicks(Z)V
    .registers 2

    .line 109
    iput-boolean p1, p0, Lcom/startapp/android/publish/common/model/GetAdRequest;->isDisableTwoClicks:Z

    return-void
.end method

.method public setEngInclude(Z)V
    .registers 2

    .line 266
    iput-boolean p1, p0, Lcom/startapp/android/publish/common/model/GetAdRequest;->engInclude:Z

    return-void
.end method

.method public setGender(Lcom/startapp/android/publish/adsCommon/SDKAdPreferences$Gender;)V
    .registers 2

    .line 121
    iput-object p1, p0, Lcom/startapp/android/publish/common/model/GetAdRequest;->gender:Lcom/startapp/android/publish/adsCommon/SDKAdPreferences$Gender;

    return-void
.end method

.method public setKeywords(Ljava/lang/String;)V
    .registers 2

    .line 137
    iput-object p1, p0, Lcom/startapp/android/publish/common/model/GetAdRequest;->keywords:Ljava/lang/String;

    return-void
.end method

.method public setMinCpm(D)V
    .registers 3

    .line 191
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    iput-object p1, p0, Lcom/startapp/android/publish/common/model/GetAdRequest;->minCpm:Ljava/lang/Double;

    return-void
.end method

.method public setMoreImg(Ljava/lang/String;)V
    .registers 2

    .line 169
    iput-object p1, p0, Lcom/startapp/android/publish/common/model/GetAdRequest;->moreImg:Ljava/lang/String;

    return-void
.end method

.method public setOffset(I)V
    .registers 2

    .line 250
    iput p1, p0, Lcom/startapp/android/publish/common/model/GetAdRequest;->offset:I

    return-void
.end method

.method public setPackageExclude(Ljava/util/Set;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 222
    iput-object p1, p0, Lcom/startapp/android/publish/common/model/GetAdRequest;->packageExclude:Ljava/util/Set;

    return-void
.end method

.method public setPackageInclude(Ljava/util/Set;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 230
    iput-object p1, p0, Lcom/startapp/android/publish/common/model/GetAdRequest;->packageInclude:Ljava/util/Set;

    return-void
.end method

.method public setPlacement(Lcom/startapp/android/publish/common/model/AdPreferences$Placement;)V
    .registers 2

    .line 88
    iput-object p1, p0, Lcom/startapp/android/publish/common/model/GetAdRequest;->placement:Lcom/startapp/android/publish/common/model/AdPreferences$Placement;

    return-void
.end method

.method public setPrimaryImg(Ljava/lang/String;)V
    .registers 2

    .line 161
    iput-object p1, p0, Lcom/startapp/android/publish/common/model/GetAdRequest;->primaryImg:Ljava/lang/String;

    return-void
.end method

.method public setRetry(I)V
    .registers 2

    .line 286
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/startapp/android/publish/common/model/GetAdRequest;->retry:Ljava/lang/Integer;

    return-void
.end method

.method public setSimpleToken(Landroid/util/Pair;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 258
    iput-object p1, p0, Lcom/startapp/android/publish/common/model/GetAdRequest;->simpleToken:Landroid/util/Pair;

    return-void
.end method

.method public setTemplate(Ljava/lang/String;)V
    .registers 2

    .line 145
    iput-object p1, p0, Lcom/startapp/android/publish/common/model/GetAdRequest;->template:Ljava/lang/String;

    return-void
.end method

.method public setTestMode(Z)V
    .registers 2

    .line 113
    iput-boolean p1, p0, Lcom/startapp/android/publish/common/model/GetAdRequest;->testMode:Z

    return-void
.end method

.method public setType(Lcom/startapp/android/publish/adsCommon/Ad$AdType;)V
    .registers 2

    .line 520
    iput-object p1, p0, Lcom/startapp/android/publish/common/model/GetAdRequest;->type:Lcom/startapp/android/publish/adsCommon/Ad$AdType;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .line 291
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "GetAdRequest ["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 292
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "placement="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/startapp/android/publish/common/model/GetAdRequest;->placement:Lcom/startapp/android/publish/common/model/AdPreferences$Placement;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 293
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", testMode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/startapp/android/publish/common/model/GetAdRequest;->testMode:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 294
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", gender="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/startapp/android/publish/common/model/GetAdRequest;->gender:Lcom/startapp/android/publish/adsCommon/SDKAdPreferences$Gender;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 295
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", age="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/startapp/android/publish/common/model/GetAdRequest;->age:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 296
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", ai="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/startapp/android/publish/common/model/GetAdRequest;->ai:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 297
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", as="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/startapp/android/publish/common/model/GetAdRequest;->as:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 298
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", keywords="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/startapp/android/publish/common/model/GetAdRequest;->keywords:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 299
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", template="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/startapp/android/publish/common/model/GetAdRequest;->template:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 300
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", adsNumber="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/startapp/android/publish/common/model/GetAdRequest;->adsNumber:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 301
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", offset="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/startapp/android/publish/common/model/GetAdRequest;->offset:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 302
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", categories="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/startapp/android/publish/common/model/GetAdRequest;->categories:Ljava/util/Set;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 303
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", categoriesExclude="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/startapp/android/publish/common/model/GetAdRequest;->categoriesExclude:Ljava/util/Set;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 304
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", packageExclude="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/startapp/android/publish/common/model/GetAdRequest;->packageExclude:Ljava/util/Set;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 305
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", packageInclude="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/startapp/android/publish/common/model/GetAdRequest;->packageInclude:Ljava/util/Set;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 306
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", simpleToken="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/startapp/android/publish/common/model/GetAdRequest;->simpleToken:Landroid/util/Pair;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 307
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", engInclude="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/startapp/android/publish/common/model/GetAdRequest;->engInclude:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 308
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", country="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/startapp/android/publish/common/model/GetAdRequest;->country:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 309
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", advertiserId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/startapp/android/publish/common/model/GetAdRequest;->advertiserId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 310
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/startapp/android/publish/common/model/GetAdRequest;->type:Lcom/startapp/android/publish/adsCommon/Ad$AdType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 311
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", minCpm="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/startapp/android/publish/common/model/GetAdRequest;->minCpm:Ljava/lang/Double;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 312
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", sessionStartTime="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/startapp/android/publish/common/model/GetAdRequest;->timeSinceSessionStart:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 313
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", adsDisplayed="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/startapp/android/publish/common/model/GetAdRequest;->adsDisplayed:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 314
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", profileId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/startapp/android/publish/common/model/GetAdRequest;->profileId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 315
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", hardwareAccelerated="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/startapp/android/publish/common/model/GetAdRequest;->isHardwareAccelerated:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 316
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", primaryImg="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/startapp/android/publish/common/model/GetAdRequest;->primaryImg:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 317
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", moreImg="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/startapp/android/publish/common/model/GetAdRequest;->moreImg:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 318
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", contentAd="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/startapp/android/publish/common/model/GetAdRequest;->contentAd:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 319
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", defaultMetaData="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/startapp/android/publish/common/model/GetAdRequest;->isDefaultMetaData:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    .line 320
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 321
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
