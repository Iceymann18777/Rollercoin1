.class Lcom/tappx/sdk/android/MopubBannerAdapter;
.super Lcom/mopub/mobileads/CustomEventBanner;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tappx/sdk/android/MopubBannerAdapter$a;
    }
.end annotation


# instance fields
.field private a:Lcom/tappx/sdk/android/TappxBanner;


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/mopub/mobileads/CustomEventBanner;-><init>()V

    return-void
.end method

.method private a(Ljava/util/Map;Ljava/lang/String;I)I
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "I)I"
        }
    .end annotation

    :try_start_0
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1
    :try_end_a
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_a} :catch_b

    return p1

    :catch_b
    return p3
.end method

.method static synthetic a(Lcom/tappx/sdk/android/TappxAdError;)Lcom/mopub/mobileads/MoPubErrorCode;
    .registers 1

    invoke-static {p0}, Lcom/tappx/sdk/android/MopubBannerAdapter;->b(Lcom/tappx/sdk/android/TappxAdError;)Lcom/mopub/mobileads/MoPubErrorCode;

    move-result-object p0

    return-object p0
.end method

.method private a(II)Lcom/tappx/sdk/android/TappxBanner$AdSize;
    .registers 4

    sget-object v0, Lcom/tappx/sdk/android/TappxBanner$AdSize;->BANNER_320x50:Lcom/tappx/sdk/android/TappxBanner$AdSize;

    invoke-virtual {v0}, Lcom/tappx/sdk/android/TappxBanner$AdSize;->getWidth()I

    move-result v0

    if-gt p1, v0, :cond_13

    sget-object v0, Lcom/tappx/sdk/android/TappxBanner$AdSize;->BANNER_320x50:Lcom/tappx/sdk/android/TappxBanner$AdSize;

    invoke-virtual {v0}, Lcom/tappx/sdk/android/TappxBanner$AdSize;->getHeight()I

    move-result v0

    if-gt p2, v0, :cond_13

    sget-object p1, Lcom/tappx/sdk/android/TappxBanner$AdSize;->BANNER_320x50:Lcom/tappx/sdk/android/TappxBanner$AdSize;

    return-object p1

    :cond_13
    sget-object v0, Lcom/tappx/sdk/android/TappxBanner$AdSize;->BANNER_300x250:Lcom/tappx/sdk/android/TappxBanner$AdSize;

    invoke-virtual {v0}, Lcom/tappx/sdk/android/TappxBanner$AdSize;->getWidth()I

    move-result v0

    if-gt p1, v0, :cond_26

    sget-object v0, Lcom/tappx/sdk/android/TappxBanner$AdSize;->BANNER_300x250:Lcom/tappx/sdk/android/TappxBanner$AdSize;

    invoke-virtual {v0}, Lcom/tappx/sdk/android/TappxBanner$AdSize;->getHeight()I

    move-result v0

    if-gt p2, v0, :cond_26

    sget-object p1, Lcom/tappx/sdk/android/TappxBanner$AdSize;->BANNER_300x250:Lcom/tappx/sdk/android/TappxBanner$AdSize;

    return-object p1

    :cond_26
    sget-object v0, Lcom/tappx/sdk/android/TappxBanner$AdSize;->BANNER_728x90:Lcom/tappx/sdk/android/TappxBanner$AdSize;

    invoke-virtual {v0}, Lcom/tappx/sdk/android/TappxBanner$AdSize;->getWidth()I

    move-result v0

    if-gt p1, v0, :cond_39

    sget-object p1, Lcom/tappx/sdk/android/TappxBanner$AdSize;->BANNER_728x90:Lcom/tappx/sdk/android/TappxBanner$AdSize;

    invoke-virtual {p1}, Lcom/tappx/sdk/android/TappxBanner$AdSize;->getHeight()I

    move-result p1

    if-gt p2, p1, :cond_39

    sget-object p1, Lcom/tappx/sdk/android/TappxBanner$AdSize;->BANNER_728x90:Lcom/tappx/sdk/android/TappxBanner$AdSize;

    return-object p1

    :cond_39
    sget-object p1, Lcom/tappx/sdk/android/TappxBanner$AdSize;->SMART_BANNER:Lcom/tappx/sdk/android/TappxBanner$AdSize;

    return-object p1
.end method

.method private static b(Lcom/tappx/sdk/android/TappxAdError;)Lcom/mopub/mobileads/MoPubErrorCode;
    .registers 2

    sget-object v0, Lcom/tappx/sdk/android/MopubBannerAdapter$1;->a:[I

    invoke-virtual {p0}, Lcom/tappx/sdk/android/TappxAdError;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1a

    const/4 v0, 0x2

    if-eq p0, v0, :cond_17

    const/4 v0, 0x3

    if-eq p0, v0, :cond_14

    sget-object p0, Lcom/mopub/mobileads/MoPubErrorCode;->NO_FILL:Lcom/mopub/mobileads/MoPubErrorCode;

    return-object p0

    :cond_14
    sget-object p0, Lcom/mopub/mobileads/MoPubErrorCode;->SERVER_ERROR:Lcom/mopub/mobileads/MoPubErrorCode;

    return-object p0

    :cond_17
    sget-object p0, Lcom/mopub/mobileads/MoPubErrorCode;->INTERNAL_ERROR:Lcom/mopub/mobileads/MoPubErrorCode;

    return-object p0

    :cond_1a
    sget-object p0, Lcom/mopub/mobileads/MoPubErrorCode;->ADAPTER_CONFIGURATION_ERROR:Lcom/mopub/mobileads/MoPubErrorCode;

    return-object p0
.end method


# virtual methods
.method protected loadBanner(Landroid/content/Context;Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;Ljava/util/Map;Ljava/util/Map;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;",
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

    const-string p3, "appKey"

    invoke-interface {p4, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    const-string v0, "adWidth"

    const/4 v1, -0x1

    invoke-direct {p0, p4, v0, v1}, Lcom/tappx/sdk/android/MopubBannerAdapter;->a(Ljava/util/Map;Ljava/lang/String;I)I

    move-result v0

    const-string v2, "adHeight"

    invoke-direct {p0, p4, v2, v1}, Lcom/tappx/sdk/android/MopubBannerAdapter;->a(Ljava/util/Map;Ljava/lang/String;I)I

    move-result p4

    const-string v1, "Tappx"

    if-eqz p3, :cond_66

    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_20

    goto :goto_66

    :cond_20
    invoke-direct {p0, v0, p4}, Lcom/tappx/sdk/android/MopubBannerAdapter;->a(II)Lcom/tappx/sdk/android/TappxBanner$AdSize;

    move-result-object p4

    new-instance v0, Lcom/tappx/sdk/android/TappxBanner;

    invoke-direct {v0, p1, p3}, Lcom/tappx/sdk/android/TappxBanner;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/tappx/sdk/android/MopubBannerAdapter;->a:Lcom/tappx/sdk/android/TappxBanner;

    new-instance p1, Lcom/tappx/sdk/android/MopubBannerAdapter$a;

    const/4 p3, 0x0

    invoke-direct {p1, p2, p3}, Lcom/tappx/sdk/android/MopubBannerAdapter$a;-><init>(Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;Lcom/tappx/sdk/android/MopubBannerAdapter$1;)V

    invoke-virtual {v0, p1}, Lcom/tappx/sdk/android/TappxBanner;->setListener(Lcom/tappx/sdk/android/TappxBannerListener;)V

    iget-object p1, p0, Lcom/tappx/sdk/android/MopubBannerAdapter;->a:Lcom/tappx/sdk/android/TappxBanner;

    invoke-virtual {p1, p4}, Lcom/tappx/sdk/android/TappxBanner;->setAdSize(Lcom/tappx/sdk/android/TappxBanner$AdSize;)V

    new-instance p1, Lcom/tappx/sdk/android/AdRequest;

    invoke-direct {p1}, Lcom/tappx/sdk/android/AdRequest;-><init>()V

    const-string p2, "mopub"

    invoke-virtual {p1, p2}, Lcom/tappx/sdk/android/AdRequest;->mediator(Ljava/lang/String;)Lcom/tappx/sdk/android/AdRequest;

    move-result-object p1

    iget-object p2, p0, Lcom/tappx/sdk/android/MopubBannerAdapter;->a:Lcom/tappx/sdk/android/TappxBanner;

    invoke-virtual {p2, p1}, Lcom/tappx/sdk/android/TappxBanner;->loadAd(Lcom/tappx/sdk/android/AdRequest;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Loading "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_66
    :goto_66
    const-string p1, "MoPub adapter: invalid app key as server parameter"

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p1, Lcom/mopub/mobileads/MoPubErrorCode;->ADAPTER_CONFIGURATION_ERROR:Lcom/mopub/mobileads/MoPubErrorCode;

    invoke-interface {p2, p1}, Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;->onBannerFailed(Lcom/mopub/mobileads/MoPubErrorCode;)V

    return-void
.end method

.method protected onInvalidate()V
    .registers 3

    iget-object v0, p0, Lcom/tappx/sdk/android/MopubBannerAdapter;->a:Lcom/tappx/sdk/android/TappxBanner;

    if-eqz v0, :cond_d

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tappx/sdk/android/TappxBanner;->setListener(Lcom/tappx/sdk/android/TappxBannerListener;)V

    iget-object v0, p0, Lcom/tappx/sdk/android/MopubBannerAdapter;->a:Lcom/tappx/sdk/android/TappxBanner;

    invoke-virtual {v0}, Lcom/tappx/sdk/android/TappxBanner;->destroy()V

    :cond_d
    return-void
.end method
