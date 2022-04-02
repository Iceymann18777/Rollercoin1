.class public Lcom/tappx/sdk/android/MopubInterstitialAdapter;
.super Lcom/mopub/mobileads/CustomEventInterstitial;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tappx/sdk/android/MopubInterstitialAdapter$a;
    }
.end annotation


# instance fields
.field private a:Lcom/tappx/sdk/android/TappxInterstitial;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/mopub/mobileads/CustomEventInterstitial;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/tappx/sdk/android/TappxAdError;)Lcom/mopub/mobileads/MoPubErrorCode;
    .registers 1

    invoke-static {p0}, Lcom/tappx/sdk/android/MopubInterstitialAdapter;->b(Lcom/tappx/sdk/android/TappxAdError;)Lcom/mopub/mobileads/MoPubErrorCode;

    move-result-object p0

    return-object p0
.end method

.method private static b(Lcom/tappx/sdk/android/TappxAdError;)Lcom/mopub/mobileads/MoPubErrorCode;
    .registers 2

    sget-object v0, Lcom/tappx/sdk/android/MopubInterstitialAdapter$1;->a:[I

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
.method protected loadInterstitial(Landroid/content/Context;Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;Ljava/util/Map;Ljava/util/Map;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;",
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

    instance-of p4, p1, Landroid/app/Activity;

    const-string v0, "Tappx"

    if-eqz p3, :cond_5a

    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_15

    goto :goto_5a

    :cond_15
    if-nez p4, :cond_1d

    sget-object p1, Lcom/mopub/mobileads/MoPubErrorCode;->NO_FILL:Lcom/mopub/mobileads/MoPubErrorCode;

    invoke-interface {p2, p1}, Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;->onInterstitialFailed(Lcom/mopub/mobileads/MoPubErrorCode;)V

    return-void

    :cond_1d
    new-instance p4, Lcom/tappx/sdk/android/TappxInterstitial;

    invoke-direct {p4, p1, p3}, Lcom/tappx/sdk/android/TappxInterstitial;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object p4, p0, Lcom/tappx/sdk/android/MopubInterstitialAdapter;->a:Lcom/tappx/sdk/android/TappxInterstitial;

    new-instance p1, Lcom/tappx/sdk/android/MopubInterstitialAdapter$a;

    const/4 p3, 0x0

    invoke-direct {p1, p2, p3}, Lcom/tappx/sdk/android/MopubInterstitialAdapter$a;-><init>(Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;Lcom/tappx/sdk/android/MopubInterstitialAdapter$1;)V

    invoke-virtual {p4, p1}, Lcom/tappx/sdk/android/TappxInterstitial;->setListener(Lcom/tappx/sdk/android/TappxInterstitialListener;)V

    new-instance p1, Lcom/tappx/sdk/android/AdRequest;

    invoke-direct {p1}, Lcom/tappx/sdk/android/AdRequest;-><init>()V

    const-string p2, "mopub"

    invoke-virtual {p1, p2}, Lcom/tappx/sdk/android/AdRequest;->mediator(Ljava/lang/String;)Lcom/tappx/sdk/android/AdRequest;

    move-result-object p1

    iget-object p2, p0, Lcom/tappx/sdk/android/MopubInterstitialAdapter;->a:Lcom/tappx/sdk/android/TappxInterstitial;

    invoke-virtual {p2, p1}, Lcom/tappx/sdk/android/TappxInterstitial;->loadAd(Lcom/tappx/sdk/android/AdRequest;)V

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

    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_5a
    :goto_5a
    const-string p1, "MoPub adapter: invalid app key as server parameter"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p1, Lcom/mopub/mobileads/MoPubErrorCode;->ADAPTER_CONFIGURATION_ERROR:Lcom/mopub/mobileads/MoPubErrorCode;

    invoke-interface {p2, p1}, Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;->onInterstitialFailed(Lcom/mopub/mobileads/MoPubErrorCode;)V

    return-void
.end method

.method protected onInvalidate()V
    .registers 3

    iget-object v0, p0, Lcom/tappx/sdk/android/MopubInterstitialAdapter;->a:Lcom/tappx/sdk/android/TappxInterstitial;

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Lcom/tappx/sdk/android/TappxInterstitial;->destroy()V

    iget-object v0, p0, Lcom/tappx/sdk/android/MopubInterstitialAdapter;->a:Lcom/tappx/sdk/android/TappxInterstitial;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tappx/sdk/android/TappxInterstitial;->setListener(Lcom/tappx/sdk/android/TappxInterstitialListener;)V

    iput-object v1, p0, Lcom/tappx/sdk/android/MopubInterstitialAdapter;->a:Lcom/tappx/sdk/android/TappxInterstitial;

    :cond_f
    return-void
.end method

.method protected showInterstitial()V
    .registers 2

    iget-object v0, p0, Lcom/tappx/sdk/android/MopubInterstitialAdapter;->a:Lcom/tappx/sdk/android/TappxInterstitial;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/tappx/sdk/android/TappxInterstitial;->show()V

    :cond_7
    return-void
.end method
