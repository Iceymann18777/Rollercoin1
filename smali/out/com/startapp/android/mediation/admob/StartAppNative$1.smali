.class Lcom/startapp/android/mediation/admob/StartAppNative$1;
.super Ljava/lang/Object;
.source "StartAppNative.java"

# interfaces
.implements Lcom/startapp/android/publish/adsCommon/adListeners/AdEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startapp/android/mediation/admob/StartAppNative;->requestNativeAd(Landroid/content/Context;Lcom/google/android/gms/ads/mediation/customevent/CustomEventNativeListener;Ljava/lang/String;Lcom/google/android/gms/ads/mediation/NativeMediationAdRequest;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/startapp/android/mediation/admob/StartAppNative;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$listener:Lcom/google/android/gms/ads/mediation/customevent/CustomEventNativeListener;

.field final synthetic val$nativeAd:Lcom/startapp/android/publish/ads/nativead/StartAppNativeAd;


# direct methods
.method constructor <init>(Lcom/startapp/android/mediation/admob/StartAppNative;Lcom/startapp/android/publish/ads/nativead/StartAppNativeAd;Lcom/google/android/gms/ads/mediation/customevent/CustomEventNativeListener;Landroid/content/Context;)V
    .registers 5

    .line 40
    iput-object p1, p0, Lcom/startapp/android/mediation/admob/StartAppNative$1;->this$0:Lcom/startapp/android/mediation/admob/StartAppNative;

    iput-object p2, p0, Lcom/startapp/android/mediation/admob/StartAppNative$1;->val$nativeAd:Lcom/startapp/android/publish/ads/nativead/StartAppNativeAd;

    iput-object p3, p0, Lcom/startapp/android/mediation/admob/StartAppNative$1;->val$listener:Lcom/google/android/gms/ads/mediation/customevent/CustomEventNativeListener;

    iput-object p4, p0, Lcom/startapp/android/mediation/admob/StartAppNative$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailedToReceiveAd(Lcom/startapp/android/publish/adsCommon/Ad;)V
    .registers 3

    .line 52
    iget-object p1, p0, Lcom/startapp/android/mediation/admob/StartAppNative$1;->val$listener:Lcom/google/android/gms/ads/mediation/customevent/CustomEventNativeListener;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/google/android/gms/ads/mediation/customevent/CustomEventNativeListener;->onAdFailedToLoad(I)V

    return-void
.end method

.method public onReceiveAd(Lcom/startapp/android/publish/adsCommon/Ad;)V
    .registers 5

    .line 42
    iget-object p1, p0, Lcom/startapp/android/mediation/admob/StartAppNative$1;->val$nativeAd:Lcom/startapp/android/publish/ads/nativead/StartAppNativeAd;

    invoke-virtual {p1}, Lcom/startapp/android/publish/ads/nativead/StartAppNativeAd;->getNativeAds()Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_21

    .line 43
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_21

    .line 44
    iget-object v0, p0, Lcom/startapp/android/mediation/admob/StartAppNative$1;->val$listener:Lcom/google/android/gms/ads/mediation/customevent/CustomEventNativeListener;

    iget-object v1, p0, Lcom/startapp/android/mediation/admob/StartAppNative$1;->val$context:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/startapp/android/publish/ads/nativead/NativeAdDetails;

    invoke-static {v1, p1}, Lcom/startapp/android/mediation/admob/StartAppNativeAdMapperBuilder;->buildMapper(Landroid/content/Context;Lcom/startapp/android/publish/ads/nativead/NativeAdDetails;)Lcom/google/android/gms/ads/mediation/NativeAdMapper;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/google/android/gms/ads/mediation/customevent/CustomEventNativeListener;->onAdLoaded(Lcom/google/android/gms/ads/mediation/NativeAdMapper;)V

    goto :goto_27

    .line 46
    :cond_21
    iget-object p1, p0, Lcom/startapp/android/mediation/admob/StartAppNative$1;->val$listener:Lcom/google/android/gms/ads/mediation/customevent/CustomEventNativeListener;

    const/4 v0, 0x3

    invoke-interface {p1, v0}, Lcom/google/android/gms/ads/mediation/customevent/CustomEventNativeListener;->onAdFailedToLoad(I)V

    :goto_27
    return-void
.end method
