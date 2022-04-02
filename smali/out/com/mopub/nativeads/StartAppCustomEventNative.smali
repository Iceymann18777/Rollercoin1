.class public Lcom/mopub/nativeads/StartAppCustomEventNative;
.super Lcom/mopub/nativeads/CustomEventNative;
.source "StartAppCustomEventNative.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mopub/nativeads/StartAppCustomEventNative$StartAppStaticNativeAd;
    }
.end annotation


# static fields
.field private static final APP_CTA:Ljava/lang/String; = "Install"

.field private static final WEB_CTA:Ljava/lang/String; = "Open"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 21
    invoke-direct {p0}, Lcom/mopub/nativeads/CustomEventNative;-><init>()V

    return-void
.end method


# virtual methods
.method protected loadNativeAd(Landroid/content/Context;Lcom/mopub/nativeads/CustomEventNative$CustomEventNativeListener;Ljava/util/Map;Ljava/util/Map;)V
    .registers 12
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

    .line 31
    invoke-static {p1, p4}, Lcom/mopub/mobileads/StartAppCustomEventUtils;->checkInit(Landroid/content/Context;Ljava/util/Map;)V

    .line 32
    invoke-static {p1, p3, p4}, Lcom/mopub/mobileads/StartAppCustomEventUtils;->extractNativeAdPrefs(Landroid/content/Context;Ljava/util/Map;Ljava/util/Map;)Lcom/startapp/android/publish/ads/nativead/NativeAdPreferences;

    move-result-object v2

    .line 35
    new-instance p3, Lcom/mopub/nativeads/StartAppCustomEventNative$StartAppStaticNativeAd;

    new-instance v4, Lcom/mopub/nativeads/ImpressionTracker;

    invoke-direct {v4, p1}, Lcom/mopub/nativeads/ImpressionTracker;-><init>(Landroid/content/Context;)V

    new-instance v5, Lcom/mopub/nativeads/NativeClickHandler;

    invoke-direct {v5, p1}, Lcom/mopub/nativeads/NativeClickHandler;-><init>(Landroid/content/Context;)V

    const-string v0, "adTag"

    invoke-static {v0, p4}, Lcom/mopub/mobileads/StartAppCustomEventUtils;->getStringFromExtras(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v6

    move-object v0, p3

    move-object v1, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v6}, Lcom/mopub/nativeads/StartAppCustomEventNative$StartAppStaticNativeAd;-><init>(Landroid/content/Context;Lcom/startapp/android/publish/ads/nativead/NativeAdPreferences;Lcom/mopub/nativeads/CustomEventNative$CustomEventNativeListener;Lcom/mopub/nativeads/ImpressionTracker;Lcom/mopub/nativeads/NativeClickHandler;Ljava/lang/String;)V

    invoke-virtual {p3}, Lcom/mopub/nativeads/StartAppCustomEventNative$StartAppStaticNativeAd;->loadAd()V

    return-void
.end method
