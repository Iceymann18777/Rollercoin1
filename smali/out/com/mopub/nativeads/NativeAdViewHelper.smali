.class Lcom/mopub/nativeads/NativeAdViewHelper;
.super Ljava/lang/Object;
.source "NativeAdViewHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mopub/nativeads/NativeAdViewHelper$ViewType;
    }
.end annotation


# static fields
.field private static final sNativeAdMap:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Landroid/view/View;",
            "Lcom/mopub/nativeads/NativeAd;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 37
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lcom/mopub/nativeads/NativeAdViewHelper;->sNativeAdMap:Ljava/util/WeakHashMap;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static clearNativeAd(Landroid/view/View;)V
    .registers 2

    .line 72
    sget-object v0, Lcom/mopub/nativeads/NativeAdViewHelper;->sNativeAdMap:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mopub/nativeads/NativeAd;

    if-eqz v0, :cond_d

    .line 74
    invoke-virtual {v0, p0}, Lcom/mopub/nativeads/NativeAd;->clear(Landroid/view/View;)V

    :cond_d
    return-void
.end method

.method static getAdView(Landroid/view/View;Landroid/view/ViewGroup;Landroid/content/Context;Lcom/mopub/nativeads/NativeAd;)Landroid/view/View;
    .registers 6

    if-eqz p0, :cond_5

    .line 47
    invoke-static {p0}, Lcom/mopub/nativeads/NativeAdViewHelper;->clearNativeAd(Landroid/view/View;)V

    :cond_5
    if-eqz p3, :cond_2c

    .line 50
    invoke-virtual {p3}, Lcom/mopub/nativeads/NativeAd;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_e

    goto :goto_2c

    :cond_e
    if-eqz p0, :cond_1c

    .line 60
    sget-object v0, Lcom/mopub/nativeads/NativeAdViewHelper$ViewType;->AD:Lcom/mopub/nativeads/NativeAdViewHelper$ViewType;

    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mopub/nativeads/NativeAdViewHelper$ViewType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_25

    .line 61
    :cond_1c
    invoke-virtual {p3, p2, p1}, Lcom/mopub/nativeads/NativeAd;->createAdView(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    .line 62
    sget-object p1, Lcom/mopub/nativeads/NativeAdViewHelper$ViewType;->AD:Lcom/mopub/nativeads/NativeAdViewHelper$ViewType;

    invoke-virtual {p0, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 64
    :cond_25
    invoke-static {p0, p3}, Lcom/mopub/nativeads/NativeAdViewHelper;->prepareNativeAd(Landroid/view/View;Lcom/mopub/nativeads/NativeAd;)V

    .line 65
    invoke-virtual {p3, p0}, Lcom/mopub/nativeads/NativeAd;->renderAdView(Landroid/view/View;)V

    goto :goto_56

    .line 51
    :cond_2c
    :goto_2c
    sget-object p1, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    const/4 p3, 0x1

    new-array p3, p3, [Ljava/lang/Object;

    const/4 v0, 0x0

    const-string v1, "NativeAd null or invalid. Returning empty view"

    aput-object v1, p3, v0

    invoke-static {p1, p3}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    if-eqz p0, :cond_47

    .line 53
    sget-object p1, Lcom/mopub/nativeads/NativeAdViewHelper$ViewType;->EMPTY:Lcom/mopub/nativeads/NativeAdViewHelper$ViewType;

    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/mopub/nativeads/NativeAdViewHelper$ViewType;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_56

    .line 54
    :cond_47
    new-instance p0, Landroid/view/View;

    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 55
    sget-object p1, Lcom/mopub/nativeads/NativeAdViewHelper$ViewType;->EMPTY:Lcom/mopub/nativeads/NativeAdViewHelper$ViewType;

    invoke-virtual {p0, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    const/16 p1, 0x8

    .line 56
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_56
    :goto_56
    return-object p0
.end method

.method private static prepareNativeAd(Landroid/view/View;Lcom/mopub/nativeads/NativeAd;)V
    .registers 3

    .line 80
    sget-object v0, Lcom/mopub/nativeads/NativeAdViewHelper;->sNativeAdMap:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p0, p1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    invoke-virtual {p1, p0}, Lcom/mopub/nativeads/NativeAd;->prepare(Landroid/view/View;)V

    return-void
.end method
