.class public Lcom/tappx/sdk/adapters/AdmobInterstitialAdapter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/ads/mediation/customevent/CustomEventInterstitial;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tappx/sdk/adapters/AdmobInterstitialAdapter$AdapterListener;
    }
.end annotation


# static fields
.field private static final TEST_REQUEST_SUFIX:Ljava/lang/String; = "|1"


# instance fields
.field private interstitial:Lcom/tappx/sdk/android/TappxInterstitial;


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
    invoke-static {p0}, Lcom/tappx/sdk/adapters/AdmobInterstitialAdapter;->convertToAdmobReason(Lcom/tappx/sdk/android/TappxAdError;)I

    move-result p0

    return p0
.end method

.method private static convertToAdmobReason(Lcom/tappx/sdk/android/TappxAdError;)I
    .registers 3

    .line 1
    sget-object v0, Lcom/tappx/sdk/adapters/AdmobInterstitialAdapter$1;->$SwitchMap$com$tappx$sdk$android$TappxAdError:[I

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
    iget-object v0, p0, Lcom/tappx/sdk/adapters/AdmobInterstitialAdapter;->interstitial:Lcom/tappx/sdk/android/TappxInterstitial;

    if-eqz v0, :cond_f

    .line 2
    invoke-virtual {v0}, Lcom/tappx/sdk/android/TappxInterstitial;->destroy()V

    .line 3
    iget-object v0, p0, Lcom/tappx/sdk/adapters/AdmobInterstitialAdapter;->interstitial:Lcom/tappx/sdk/android/TappxInterstitial;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tappx/sdk/android/TappxInterstitial;->setListener(Lcom/tappx/sdk/android/TappxInterstitialListener;)V

    .line 4
    iput-object v1, p0, Lcom/tappx/sdk/adapters/AdmobInterstitialAdapter;->interstitial:Lcom/tappx/sdk/android/TappxInterstitial;

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

.method public requestInterstitialAd(Landroid/content/Context;Lcom/google/android/gms/ads/mediation/customevent/CustomEventInterstitialListener;Ljava/lang/String;Lcom/google/android/gms/ads/mediation/MediationAdRequest;Landroid/os/Bundle;)V
    .registers 9

    const/4 p5, 0x0

    const-string v0, "Tappx"

    if-eqz p3, :cond_70

    .line 1
    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_c

    goto :goto_70

    .line 6
    :cond_c
    new-instance v1, Lcom/tappx/sdk/android/AdRequest;

    invoke-direct {v1}, Lcom/tappx/sdk/android/AdRequest;-><init>()V

    const-string v2, "admob"

    invoke-virtual {v1, v2}, Lcom/tappx/sdk/android/AdRequest;->mediator(Ljava/lang/String;)Lcom/tappx/sdk/android/AdRequest;

    move-result-object v1

    const-string v2, "|1"

    .line 7
    invoke-virtual {p3, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2d

    .line 9
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x2

    invoke-virtual {p3, p5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p3

    const/4 p5, 0x1

    .line 10
    invoke-virtual {v1, p5}, Lcom/tappx/sdk/android/AdRequest;->useTestAds(Z)Lcom/tappx/sdk/android/AdRequest;

    .line 12
    :cond_2d
    new-instance p5, Lcom/tappx/sdk/android/TappxInterstitial;

    invoke-direct {p5, p1, p3}, Lcom/tappx/sdk/android/TappxInterstitial;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object p5, p0, Lcom/tappx/sdk/adapters/AdmobInterstitialAdapter;->interstitial:Lcom/tappx/sdk/android/TappxInterstitial;

    .line 13
    new-instance p1, Lcom/tappx/sdk/adapters/AdmobInterstitialAdapter$AdapterListener;

    const/4 p3, 0x0

    invoke-direct {p1, p2, p3}, Lcom/tappx/sdk/adapters/AdmobInterstitialAdapter$AdapterListener;-><init>(Lcom/google/android/gms/ads/mediation/customevent/CustomEventInterstitialListener;Lcom/tappx/sdk/adapters/AdmobInterstitialAdapter$1;)V

    invoke-virtual {p5, p1}, Lcom/tappx/sdk/android/TappxInterstitial;->setListener(Lcom/tappx/sdk/android/TappxInterstitialListener;)V

    if-eqz p4, :cond_50

    .line 15
    invoke-direct {p0, p4}, Lcom/tappx/sdk/adapters/AdmobInterstitialAdapter;->getKeywords(Lcom/google/android/gms/ads/mediation/MediationAdRequest;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/tappx/sdk/android/AdRequest;->keywords(Ljava/lang/String;)Lcom/tappx/sdk/android/AdRequest;

    .line 16
    invoke-direct {p0, p4}, Lcom/tappx/sdk/adapters/AdmobInterstitialAdapter;->getGender(Lcom/google/android/gms/ads/mediation/MediationAdRequest;)Lcom/tappx/sdk/android/AdRequest$Gender;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/tappx/sdk/android/AdRequest;->gender(Lcom/tappx/sdk/android/AdRequest$Gender;)Lcom/tappx/sdk/android/AdRequest;

    .line 17
    invoke-direct {p0, v1, p4}, Lcom/tappx/sdk/adapters/AdmobInterstitialAdapter;->setAge(Lcom/tappx/sdk/android/AdRequest;Lcom/google/android/gms/ads/mediation/MediationAdRequest;)V

    .line 20
    :cond_50
    iget-object p1, p0, Lcom/tappx/sdk/adapters/AdmobInterstitialAdapter;->interstitial:Lcom/tappx/sdk/android/TappxInterstitial;

    invoke-virtual {p1, v1}, Lcom/tappx/sdk/android/TappxInterstitial;->loadAd(Lcom/tappx/sdk/android/AdRequest;)V

    .line 21
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Loading "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class p2, Lcom/tappx/sdk/adapters/AdmobInterstitialAdapter;

    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_70
    :goto_70
    const-string p1, "Admob adapter: invalid app key as server parameter"

    .line 22
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    invoke-interface {p2, p5}, Lcom/google/android/gms/ads/mediation/customevent/CustomEventInterstitialListener;->onAdFailedToLoad(I)V

    return-void
.end method

.method public showInterstitial()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/tappx/sdk/adapters/AdmobInterstitialAdapter;->interstitial:Lcom/tappx/sdk/android/TappxInterstitial;

    if-eqz v0, :cond_7

    .line 2
    invoke-virtual {v0}, Lcom/tappx/sdk/android/TappxInterstitial;->show()V

    :cond_7
    return-void
.end method
