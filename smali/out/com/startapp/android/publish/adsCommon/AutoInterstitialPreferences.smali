.class public Lcom/startapp/android/publish/adsCommon/AutoInterstitialPreferences;
.super Ljava/lang/Object;
.source "StartAppSDK"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private activitiesBetweenAds:I

.field private secondsBetweenAds:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    invoke-static {}, Lcom/startapp/android/publish/adsCommon/b;->a()Lcom/startapp/android/publish/adsCommon/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/startapp/android/publish/adsCommon/b;->J()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/startapp/android/publish/adsCommon/AutoInterstitialPreferences;->setActivitiesBetweenAds(I)Lcom/startapp/android/publish/adsCommon/AutoInterstitialPreferences;

    .line 14
    invoke-static {}, Lcom/startapp/android/publish/adsCommon/b;->a()Lcom/startapp/android/publish/adsCommon/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/startapp/android/publish/adsCommon/b;->K()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/startapp/android/publish/adsCommon/AutoInterstitialPreferences;->setSecondsBetweenAds(I)Lcom/startapp/android/publish/adsCommon/AutoInterstitialPreferences;

    return-void
.end method


# virtual methods
.method public getActivitiesBetweenAds()I
    .registers 2

    .line 19
    iget v0, p0, Lcom/startapp/android/publish/adsCommon/AutoInterstitialPreferences;->activitiesBetweenAds:I

    return v0
.end method

.method public getSecondsBetweenAds()I
    .registers 2

    .line 22
    iget v0, p0, Lcom/startapp/android/publish/adsCommon/AutoInterstitialPreferences;->secondsBetweenAds:I

    return v0
.end method

.method public setActivitiesBetweenAds(I)Lcom/startapp/android/publish/adsCommon/AutoInterstitialPreferences;
    .registers 3

    const/4 v0, 0x1

    if-lt p1, v0, :cond_4

    goto :goto_5

    :cond_4
    const/4 p1, 0x1

    .line 26
    :goto_5
    iput p1, p0, Lcom/startapp/android/publish/adsCommon/AutoInterstitialPreferences;->activitiesBetweenAds:I

    return-object p0
.end method

.method public setSecondsBetweenAds(I)Lcom/startapp/android/publish/adsCommon/AutoInterstitialPreferences;
    .registers 2

    if-ltz p1, :cond_3

    goto :goto_4

    :cond_3
    const/4 p1, 0x0

    .line 30
    :goto_4
    iput p1, p0, Lcom/startapp/android/publish/adsCommon/AutoInterstitialPreferences;->secondsBetweenAds:I

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 37
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AutoInterstitialPreferences [activitiesBetweenAds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/startapp/android/publish/adsCommon/AutoInterstitialPreferences;->activitiesBetweenAds:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", secondsBetweenAds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/startapp/android/publish/adsCommon/AutoInterstitialPreferences;->secondsBetweenAds:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
