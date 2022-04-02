.class Lcom/mopub/mobileads/dfp/adapters/MoPubAdapter$1;
.super Ljava/lang/Object;
.source "MoPubAdapter.java"

# interfaces
.implements Lcom/mopub/nativeads/MoPubNative$MoPubNativeNetworkListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mopub/mobileads/dfp/adapters/MoPubAdapter;->requestNativeAd(Landroid/content/Context;Lcom/google/android/gms/ads/mediation/MediationNativeListener;Landroid/os/Bundle;Lcom/google/android/gms/ads/mediation/NativeMediationAdRequest;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mopub/mobileads/dfp/adapters/MoPubAdapter;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$listener:Lcom/google/android/gms/ads/mediation/MediationNativeListener;


# direct methods
.method constructor <init>(Lcom/mopub/mobileads/dfp/adapters/MoPubAdapter;Lcom/google/android/gms/ads/mediation/MediationNativeListener;Landroid/content/Context;)V
    .registers 4

    .line 135
    iput-object p1, p0, Lcom/mopub/mobileads/dfp/adapters/MoPubAdapter$1;->this$0:Lcom/mopub/mobileads/dfp/adapters/MoPubAdapter;

    iput-object p2, p0, Lcom/mopub/mobileads/dfp/adapters/MoPubAdapter$1;->val$listener:Lcom/google/android/gms/ads/mediation/MediationNativeListener;

    iput-object p3, p0, Lcom/mopub/mobileads/dfp/adapters/MoPubAdapter$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNativeFail(Lcom/mopub/nativeads/NativeErrorCode;)V
    .registers 5

    .line 209
    sget-object v0, Lcom/mopub/mobileads/dfp/adapters/MoPubAdapter$4;->$SwitchMap$com$mopub$nativeads$NativeErrorCode:[I

    invoke-virtual {p1}, Lcom/mopub/nativeads/NativeErrorCode;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x3

    const/4 v1, 0x1

    if-eq p1, v1, :cond_35

    const/4 v2, 0x2

    if-eq p1, v2, :cond_2d

    if-eq p1, v0, :cond_25

    const/4 v0, 0x4

    const/4 v1, 0x0

    if-eq p1, v0, :cond_1d

    .line 227
    iget-object p1, p0, Lcom/mopub/mobileads/dfp/adapters/MoPubAdapter$1;->val$listener:Lcom/google/android/gms/ads/mediation/MediationNativeListener;

    iget-object v0, p0, Lcom/mopub/mobileads/dfp/adapters/MoPubAdapter$1;->this$0:Lcom/mopub/mobileads/dfp/adapters/MoPubAdapter;

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/ads/mediation/MediationNativeListener;->onAdFailedToLoad(Lcom/google/android/gms/ads/mediation/MediationNativeAdapter;I)V

    goto :goto_3c

    .line 223
    :cond_1d
    iget-object p1, p0, Lcom/mopub/mobileads/dfp/adapters/MoPubAdapter$1;->val$listener:Lcom/google/android/gms/ads/mediation/MediationNativeListener;

    iget-object v0, p0, Lcom/mopub/mobileads/dfp/adapters/MoPubAdapter$1;->this$0:Lcom/mopub/mobileads/dfp/adapters/MoPubAdapter;

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/ads/mediation/MediationNativeListener;->onAdFailedToLoad(Lcom/google/android/gms/ads/mediation/MediationNativeAdapter;I)V

    goto :goto_3c

    .line 219
    :cond_25
    iget-object p1, p0, Lcom/mopub/mobileads/dfp/adapters/MoPubAdapter$1;->val$listener:Lcom/google/android/gms/ads/mediation/MediationNativeListener;

    iget-object v0, p0, Lcom/mopub/mobileads/dfp/adapters/MoPubAdapter$1;->this$0:Lcom/mopub/mobileads/dfp/adapters/MoPubAdapter;

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/ads/mediation/MediationNativeListener;->onAdFailedToLoad(Lcom/google/android/gms/ads/mediation/MediationNativeAdapter;I)V

    goto :goto_3c

    .line 215
    :cond_2d
    iget-object p1, p0, Lcom/mopub/mobileads/dfp/adapters/MoPubAdapter$1;->val$listener:Lcom/google/android/gms/ads/mediation/MediationNativeListener;

    iget-object v0, p0, Lcom/mopub/mobileads/dfp/adapters/MoPubAdapter$1;->this$0:Lcom/mopub/mobileads/dfp/adapters/MoPubAdapter;

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/ads/mediation/MediationNativeListener;->onAdFailedToLoad(Lcom/google/android/gms/ads/mediation/MediationNativeAdapter;I)V

    goto :goto_3c

    .line 211
    :cond_35
    iget-object p1, p0, Lcom/mopub/mobileads/dfp/adapters/MoPubAdapter$1;->val$listener:Lcom/google/android/gms/ads/mediation/MediationNativeListener;

    iget-object v1, p0, Lcom/mopub/mobileads/dfp/adapters/MoPubAdapter$1;->this$0:Lcom/mopub/mobileads/dfp/adapters/MoPubAdapter;

    invoke-interface {p1, v1, v0}, Lcom/google/android/gms/ads/mediation/MediationNativeListener;->onAdFailedToLoad(Lcom/google/android/gms/ads/mediation/MediationNativeAdapter;I)V

    :goto_3c
    return-void
.end method

.method public onNativeLoad(Lcom/mopub/nativeads/NativeAd;)V
    .registers 7

    .line 140
    iget-object v0, p0, Lcom/mopub/mobileads/dfp/adapters/MoPubAdapter$1;->this$0:Lcom/mopub/mobileads/dfp/adapters/MoPubAdapter;

    invoke-static {v0}, Lcom/mopub/mobileads/dfp/adapters/MoPubAdapter;->access$000(Lcom/mopub/mobileads/dfp/adapters/MoPubAdapter;)Lcom/mopub/nativeads/NativeAd$MoPubNativeEventListener;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/mopub/nativeads/NativeAd;->setMoPubNativeEventListener(Lcom/mopub/nativeads/NativeAd$MoPubNativeEventListener;)V

    .line 142
    invoke-virtual {p1}, Lcom/mopub/nativeads/NativeAd;->getBaseNativeAd()Lcom/mopub/nativeads/BaseNativeAd;

    move-result-object p1

    .line 143
    instance-of v0, p1, Lcom/mopub/nativeads/StaticNativeAd;

    if-eqz v0, :cond_65

    .line 144
    check-cast p1, Lcom/mopub/nativeads/StaticNativeAd;

    const/4 v0, 0x0

    .line 147
    :try_start_14
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_19} :catch_57

    :try_start_19
    const-string v2, "icon_key"

    .line 149
    new-instance v3, Ljava/net/URL;

    .line 150
    invoke-virtual {p1}, Lcom/mopub/nativeads/StaticNativeAd;->getIconImageUrl()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 149
    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "image_key"

    .line 151
    new-instance v3, Ljava/net/URL;

    .line 152
    invoke-virtual {p1}, Lcom/mopub/nativeads/StaticNativeAd;->getMainImageUrl()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 151
    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_35
    .catch Ljava/net/MalformedURLException; {:try_start_19 .. :try_end_35} :catch_36
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_35} :catch_57

    goto :goto_44

    .line 154
    :catch_36
    :try_start_36
    sget-object v2, Lcom/mopub/mobileads/dfp/adapters/MoPubAdapter;->TAG:Ljava/lang/String;

    const-string v3, "Invalid ad response received from MoPub. Image URLs are invalid"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    iget-object v2, p0, Lcom/mopub/mobileads/dfp/adapters/MoPubAdapter$1;->val$listener:Lcom/google/android/gms/ads/mediation/MediationNativeListener;

    iget-object v3, p0, Lcom/mopub/mobileads/dfp/adapters/MoPubAdapter$1;->this$0:Lcom/mopub/mobileads/dfp/adapters/MoPubAdapter;

    invoke-interface {v2, v3, v0}, Lcom/google/android/gms/ads/mediation/MediationNativeListener;->onAdFailedToLoad(Lcom/google/android/gms/ads/mediation/MediationNativeAdapter;I)V

    .line 160
    :goto_44
    new-instance v2, Lcom/mopub/mobileads/dfp/adapters/DownloadDrawablesAsync;

    new-instance v3, Lcom/mopub/mobileads/dfp/adapters/MoPubAdapter$1$1;

    invoke-direct {v3, p0, p1}, Lcom/mopub/mobileads/dfp/adapters/MoPubAdapter$1$1;-><init>(Lcom/mopub/mobileads/dfp/adapters/MoPubAdapter$1;Lcom/mopub/nativeads/StaticNativeAd;)V

    invoke-direct {v2, v3}, Lcom/mopub/mobileads/dfp/adapters/DownloadDrawablesAsync;-><init>(Lcom/mopub/mobileads/dfp/adapters/DrawableDownloadListener;)V

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/Object;

    aput-object v1, p1, v0

    .line 198
    invoke-virtual {v2, p1}, Lcom/mopub/mobileads/dfp/adapters/DownloadDrawablesAsync;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_56
    .catch Ljava/lang/Exception; {:try_start_36 .. :try_end_56} :catch_57

    goto :goto_65

    .line 200
    :catch_57
    sget-object p1, Lcom/mopub/mobileads/dfp/adapters/MoPubAdapter;->TAG:Ljava/lang/String;

    const-string v1, "Exception constructing the native ad"

    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    iget-object p1, p0, Lcom/mopub/mobileads/dfp/adapters/MoPubAdapter$1;->val$listener:Lcom/google/android/gms/ads/mediation/MediationNativeListener;

    iget-object v1, p0, Lcom/mopub/mobileads/dfp/adapters/MoPubAdapter$1;->this$0:Lcom/mopub/mobileads/dfp/adapters/MoPubAdapter;

    invoke-interface {p1, v1, v0}, Lcom/google/android/gms/ads/mediation/MediationNativeListener;->onAdFailedToLoad(Lcom/google/android/gms/ads/mediation/MediationNativeAdapter;I)V

    :cond_65
    :goto_65
    return-void
.end method
