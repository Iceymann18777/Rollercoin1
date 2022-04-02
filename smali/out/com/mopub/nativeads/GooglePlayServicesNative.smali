.class public Lcom/mopub/nativeads/GooglePlayServicesNative;
.super Lcom/mopub/nativeads/CustomEventNative;
.source "GooglePlayServicesNative.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mopub/nativeads/GooglePlayServicesNative$GooglePlayServicesNativeAd;
    }
.end annotation


# static fields
.field private static final ADAPTER_VERSION:Ljava/lang/String; = "0.3.1"

.field public static final KEY_EXPERIMENTAL_EXTRA_SWAP_MARGINS:Ljava/lang/String; = "swap_margins"

.field public static final KEY_EXTRA_AD_CHOICES_PLACEMENT:Ljava/lang/String; = "ad_choices_placement"

.field private static final KEY_EXTRA_AD_UNIT_ID:Ljava/lang/String; = "adunit"

.field private static final KEY_EXTRA_APPLICATION_ID:Ljava/lang/String; = "appid"

.field public static final KEY_EXTRA_ORIENTATION_PREFERENCE:Ljava/lang/String; = "orientation_preference"

.field protected static final TAG:Ljava/lang/String; = "MoPubToAdMobNative"

.field private static sIsInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 58
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/mopub/nativeads/GooglePlayServicesNative;->sIsInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 22
    invoke-direct {p0}, Lcom/mopub/nativeads/CustomEventNative;-><init>()V

    return-void
.end method


# virtual methods
.method protected loadNativeAd(Landroid/content/Context;Lcom/mopub/nativeads/CustomEventNative$CustomEventNativeListener;Ljava/util/Map;Ljava/util/Map;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/mopub/nativeads/CustomEventNative$CustomEventNativeListener;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 65
    sget-object v0, Lcom/mopub/nativeads/GooglePlayServicesNative;->sIsInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_31

    const-string v0, "MoPubToAdMobNative"

    const-string v1, "Adapter version - 0.3.1"

    .line 66
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "appid"

    .line 67
    invoke-interface {p4, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2e

    .line 68
    invoke-interface {p4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2e

    .line 69
    invoke-interface {p4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/google/android/gms/ads/MobileAds;->initialize(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_31

    .line 71
    :cond_2e
    invoke-static {p1}, Lcom/google/android/gms/ads/MobileAds;->initialize(Landroid/content/Context;)V

    :cond_31
    :goto_31
    const-string v0, "adunit"

    .line 75
    invoke-interface {p4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/String;

    .line 76
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_45

    .line 77
    sget-object p1, Lcom/mopub/nativeads/NativeErrorCode;->NETWORK_INVALID_REQUEST:Lcom/mopub/nativeads/NativeErrorCode;

    invoke-interface {p2, p1}, Lcom/mopub/nativeads/CustomEventNative$CustomEventNativeListener;->onNativeAdFailed(Lcom/mopub/nativeads/NativeErrorCode;)V

    return-void

    .line 80
    :cond_45
    new-instance v0, Lcom/mopub/nativeads/GooglePlayServicesNative$GooglePlayServicesNativeAd;

    invoke-direct {v0, p2}, Lcom/mopub/nativeads/GooglePlayServicesNative$GooglePlayServicesNativeAd;-><init>(Lcom/mopub/nativeads/CustomEventNative$CustomEventNativeListener;)V

    .line 82
    invoke-virtual {v0, p1, p4, p3}, Lcom/mopub/nativeads/GooglePlayServicesNative$GooglePlayServicesNativeAd;->loadAd(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method
