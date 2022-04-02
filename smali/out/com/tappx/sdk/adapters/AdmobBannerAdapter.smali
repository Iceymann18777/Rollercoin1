.class public Lcom/tappx/sdk/adapters/AdmobBannerAdapter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/ads/mediation/customevent/CustomEventBanner;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tappx/sdk/adapters/AdmobBannerAdapter$AdapterListener;
    }
.end annotation


# static fields
.field private static final TEST_REQUEST_SUFIX:Ljava/lang/String; = "|1"


# instance fields
.field private banner:Lcom/tappx/sdk/android/TappxBanner;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lcom/tappx/sdk/android/TappxAdError;)I
    .registers 1

    .line 1
    invoke-static {p0}, Lcom/tappx/sdk/adapters/AdmobBannerAdapter;->convertToAdmobReason(Lcom/tappx/sdk/android/TappxAdError;)I

    move-result p0

    return p0
.end method

.method private convertAdSize(Lcom/google/android/gms/ads/AdSize;)Lcom/tappx/sdk/android/TappxBanner$AdSize;
    .registers 3

    .line 1
    sget-object v0, Lcom/google/android/gms/ads/AdSize;->BANNER:Lcom/google/android/gms/ads/AdSize;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/AdSize;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 2
    sget-object p1, Lcom/tappx/sdk/android/TappxBanner$AdSize;->BANNER_320x50:Lcom/tappx/sdk/android/TappxBanner$AdSize;

    return-object p1

    .line 3
    :cond_b
    sget-object v0, Lcom/google/android/gms/ads/AdSize;->MEDIUM_RECTANGLE:Lcom/google/android/gms/ads/AdSize;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/AdSize;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 4
    sget-object p1, Lcom/tappx/sdk/android/TappxBanner$AdSize;->BANNER_300x250:Lcom/tappx/sdk/android/TappxBanner$AdSize;

    return-object p1

    .line 5
    :cond_16
    sget-object v0, Lcom/google/android/gms/ads/AdSize;->LEADERBOARD:Lcom/google/android/gms/ads/AdSize;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/AdSize;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_21

    .line 6
    sget-object p1, Lcom/tappx/sdk/android/TappxBanner$AdSize;->BANNER_728x90:Lcom/tappx/sdk/android/TappxBanner$AdSize;

    return-object p1

    .line 8
    :cond_21
    sget-object p1, Lcom/tappx/sdk/android/TappxBanner$AdSize;->SMART_BANNER:Lcom/tappx/sdk/android/TappxBanner$AdSize;

    return-object p1
.end method

.method private static convertToAdmobReason(Lcom/tappx/sdk/android/TappxAdError;)I
    .registers 3

    .line 1
    sget-object v0, Lcom/tappx/sdk/adapters/AdmobBannerAdapter$1;->$SwitchMap$com$tappx$sdk$android$TappxAdError:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-eq p0, v1, :cond_12

    if-eq p0, v0, :cond_10

    const/4 p0, 0x3

    return p0

    :cond_10
    const/4 p0, 0x0

    return p0

    :cond_12
    return v0
.end method

.method private getGender(Lcom/google/android/gms/ads/mediation/MediationAdRequest;)Lcom/tappx/sdk/android/AdRequest$Gender;
    .registers 3

    .line 1
    invoke-interface {p1}, Lcom/google/android/gms/ads/mediation/MediationAdRequest;->getGender()I

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_10

    const/4 v0, 0x2

    if-eq p1, v0, :cond_d

    .line 7
    sget-object p1, Lcom/tappx/sdk/android/AdRequest$Gender;->UNKNOWN:Lcom/tappx/sdk/android/AdRequest$Gender;

    return-object p1

    .line 8
    :cond_d
    sget-object p1, Lcom/tappx/sdk/android/AdRequest$Gender;->FEMALE:Lcom/tappx/sdk/android/AdRequest$Gender;

    return-object p1

    .line 10
    :cond_10
    sget-object p1, Lcom/tappx/sdk/android/AdRequest$Gender;->MALE:Lcom/tappx/sdk/android/AdRequest$Gender;

    return-object p1
.end method

.method private getKeywords(Lcom/google/android/gms/ads/mediation/MediationAdRequest;)Ljava/lang/String;
    .registers 5

    .line 1
    invoke-interface {p1}, Lcom/google/android/gms/ads/mediation/MediationAdRequest;->getKeywords()Ljava/util/Set;

    move-result-object p1

    if-eqz p1, :cond_36

    .line 2
    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_36

    .line 3
    :cond_d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_16
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_31

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_2d

    const/16 v2, 0x2c

    .line 6
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 8
    :cond_2d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_16

    .line 10
    :cond_31
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_36
    :goto_36
    const/4 p1, 0x0

    return-object p1
.end method

.method private setAge(Lcom/tappx/sdk/android/AdRequest;Lcom/google/android/gms/ads/mediation/MediationAdRequest;)V
    .registers 6

    .line 1
    invoke-interface {p2}, Lcom/google/android/gms/ads/mediation/MediationAdRequest;->getBirthday()Ljava/util/Date;

    move-result-object p2

    if-nez p2, :cond_7

    return-void

    .line 3
    :cond_7
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 5
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 6
    invoke-virtual {v2, p2}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 7
    invoke-virtual {v2, v1}, Ljava/util/Calendar;->get(I)I

    move-result p2

    sub-int/2addr v0, p2

    if-ltz v0, :cond_25

    const/16 v1, 0x78

    if-ge v0, v1, :cond_25

    .line 11
    invoke-virtual {p1, p2}, Lcom/tappx/sdk/android/AdRequest;->age(I)Lcom/tappx/sdk/android/AdRequest;

    .line 13
    :cond_25
    invoke-virtual {p1, p2}, Lcom/tappx/sdk/android/AdRequest;->yearOfBirth(I)Lcom/tappx/sdk/android/AdRequest;

    return-void
.end method


# virtual methods
.method public onDestroy()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/tappx/sdk/adapters/AdmobBannerAdapter;->banner:Lcom/tappx/sdk/android/TappxBanner;

    if-eqz v0, :cond_f

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, v1}, Lcom/tappx/sdk/android/TappxBanner;->setListener(Lcom/tappx/sdk/android/TappxBannerListener;)V

    .line 3
    iget-object v0, p0, Lcom/tappx/sdk/adapters/AdmobBannerAdapter;->banner:Lcom/tappx/sdk/android/TappxBanner;

    invoke-virtual {v0}, Lcom/tappx/sdk/android/TappxBanner;->destroy()V

    .line 4
    iput-object v1, p0, Lcom/tappx/sdk/adapters/AdmobBannerAdapter;->banner:Lcom/tappx/sdk/android/TappxBanner;

    :cond_f
    return-void
.end method

.method public onPause()V
    .registers 1

    return-void
.end method

.method public onResume()V
    .registers 1

    return-void
.end method

.method public requestBannerAd(Landroid/content/Context;Lcom/google/android/gms/ads/mediation/customevent/CustomEventBannerListener;Ljava/lang/String;Lcom/google/android/gms/ads/AdSize;Lcom/google/android/gms/ads/mediation/MediationAdRequest;Landroid/os/Bundle;)V
    .registers 10

    const-string p6, "Tappx"

    const/4 v0, 0x0

    if-eqz p3, :cond_7f

    .line 1
    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_c

    goto :goto_7f

    .line 6
    :cond_c
    new-instance v1, Lcom/tappx/sdk/android/AdRequest;

    invoke-direct {v1}, Lcom/tappx/sdk/android/AdRequest;-><init>()V

    const-string v2, "|1"

    .line 7
    invoke-virtual {p3, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_27

    .line 9
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x2

    invoke-virtual {p3, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p3

    const/4 v2, 0x1

    .line 10
    invoke-virtual {v1, v2}, Lcom/tappx/sdk/android/AdRequest;->useTestAds(Z)Lcom/tappx/sdk/android/AdRequest;

    .line 12
    :cond_27
    new-instance v2, Lcom/tappx/sdk/android/TappxBanner;

    invoke-direct {v2, p1, p3}, Lcom/tappx/sdk/android/TappxBanner;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/tappx/sdk/adapters/AdmobBannerAdapter;->banner:Lcom/tappx/sdk/android/TappxBanner;

    .line 13
    invoke-direct {p0, p4}, Lcom/tappx/sdk/adapters/AdmobBannerAdapter;->convertAdSize(Lcom/google/android/gms/ads/AdSize;)Lcom/tappx/sdk/android/TappxBanner$AdSize;

    move-result-object p1

    .line 14
    iget-object p3, p0, Lcom/tappx/sdk/adapters/AdmobBannerAdapter;->banner:Lcom/tappx/sdk/android/TappxBanner;

    invoke-virtual {p3, p1}, Lcom/tappx/sdk/android/TappxBanner;->setAdSize(Lcom/tappx/sdk/android/TappxBanner$AdSize;)V

    .line 15
    iget-object p1, p0, Lcom/tappx/sdk/adapters/AdmobBannerAdapter;->banner:Lcom/tappx/sdk/android/TappxBanner;

    new-instance p3, Lcom/tappx/sdk/adapters/AdmobBannerAdapter$AdapterListener;

    const/4 p4, 0x0

    invoke-direct {p3, p2, p4}, Lcom/tappx/sdk/adapters/AdmobBannerAdapter$AdapterListener;-><init>(Lcom/google/android/gms/ads/mediation/customevent/CustomEventBannerListener;Lcom/tappx/sdk/adapters/AdmobBannerAdapter$1;)V

    invoke-virtual {p1, p3}, Lcom/tappx/sdk/android/TappxBanner;->setListener(Lcom/tappx/sdk/android/TappxBannerListener;)V

    const-string p1, "admob"

    .line 16
    invoke-virtual {v1, p1}, Lcom/tappx/sdk/android/AdRequest;->mediator(Ljava/lang/String;)Lcom/tappx/sdk/android/AdRequest;

    if-eqz p5, :cond_5a

    .line 18
    invoke-direct {p0, p5}, Lcom/tappx/sdk/adapters/AdmobBannerAdapter;->getKeywords(Lcom/google/android/gms/ads/mediation/MediationAdRequest;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/tappx/sdk/android/AdRequest;->keywords(Ljava/lang/String;)Lcom/tappx/sdk/android/AdRequest;

    .line 19
    invoke-direct {p0, p5}, Lcom/tappx/sdk/adapters/AdmobBannerAdapter;->getGender(Lcom/google/android/gms/ads/mediation/MediationAdRequest;)Lcom/tappx/sdk/android/AdRequest$Gender;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/tappx/sdk/android/AdRequest;->gender(Lcom/tappx/sdk/android/AdRequest$Gender;)Lcom/tappx/sdk/android/AdRequest;

    .line 20
    invoke-direct {p0, v1, p5}, Lcom/tappx/sdk/adapters/AdmobBannerAdapter;->setAge(Lcom/tappx/sdk/android/AdRequest;Lcom/google/android/gms/ads/mediation/MediationAdRequest;)V

    .line 22
    :cond_5a
    iget-object p1, p0, Lcom/tappx/sdk/adapters/AdmobBannerAdapter;->banner:Lcom/tappx/sdk/android/TappxBanner;

    invoke-virtual {p1, v0}, Lcom/tappx/sdk/android/TappxBanner;->setEnableAutoRefresh(Z)V

    .line 23
    iget-object p1, p0, Lcom/tappx/sdk/adapters/AdmobBannerAdapter;->banner:Lcom/tappx/sdk/android/TappxBanner;

    invoke-virtual {p1, v1}, Lcom/tappx/sdk/android/TappxBanner;->loadAd(Lcom/tappx/sdk/android/AdRequest;)V

    .line 24
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Loading "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class p2, Lcom/tappx/sdk/adapters/AdmobBannerAdapter;

    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p6, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_7f
    :goto_7f
    const-string p1, "Admob adapter: invalid app key as server parameter"

    .line 25
    invoke-static {p6, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    invoke-interface {p2, v0}, Lcom/google/android/gms/ads/mediation/customevent/CustomEventBannerListener;->onAdFailedToLoad(I)V

    return-void
.end method
