.class final Lcom/tappx/sdk/android/MopubInterstitialAdapter$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tappx/sdk/android/TappxInterstitialListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tappx/sdk/android/MopubInterstitialAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# instance fields
.field private final a:Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;


# direct methods
.method private constructor <init>(Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tappx/sdk/android/MopubInterstitialAdapter$a;->a:Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;

    return-void
.end method

.method synthetic constructor <init>(Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;Lcom/tappx/sdk/android/MopubInterstitialAdapter$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/tappx/sdk/android/MopubInterstitialAdapter$a;-><init>(Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;)V

    return-void
.end method


# virtual methods
.method public onInterstitialClicked(Lcom/tappx/sdk/android/TappxInterstitial;)V
    .registers 2

    iget-object p1, p0, Lcom/tappx/sdk/android/MopubInterstitialAdapter$a;->a:Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;

    invoke-interface {p1}, Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;->onInterstitialClicked()V

    return-void
.end method

.method public onInterstitialDismissed(Lcom/tappx/sdk/android/TappxInterstitial;)V
    .registers 2

    iget-object p1, p0, Lcom/tappx/sdk/android/MopubInterstitialAdapter$a;->a:Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;

    invoke-interface {p1}, Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;->onInterstitialDismissed()V

    return-void
.end method

.method public onInterstitialLoadFailed(Lcom/tappx/sdk/android/TappxInterstitial;Lcom/tappx/sdk/android/TappxAdError;)V
    .registers 4

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "MoPub adapter: Interstitial load failed "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Tappx"

    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/tappx/sdk/android/MopubInterstitialAdapter$a;->a:Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;

    invoke-static {p2}, Lcom/tappx/sdk/android/MopubInterstitialAdapter;->a(Lcom/tappx/sdk/android/TappxAdError;)Lcom/mopub/mobileads/MoPubErrorCode;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;->onInterstitialFailed(Lcom/mopub/mobileads/MoPubErrorCode;)V

    return-void
.end method

.method public onInterstitialLoaded(Lcom/tappx/sdk/android/TappxInterstitial;)V
    .registers 3

    const-string p1, "Tappx"

    const-string v0, "MoPub adapter: Interstitial loaded"

    invoke-static {p1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/tappx/sdk/android/MopubInterstitialAdapter$a;->a:Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;

    invoke-interface {p1}, Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;->onInterstitialLoaded()V

    return-void
.end method

.method public onInterstitialShown(Lcom/tappx/sdk/android/TappxInterstitial;)V
    .registers 2

    iget-object p1, p0, Lcom/tappx/sdk/android/MopubInterstitialAdapter$a;->a:Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;

    invoke-interface {p1}, Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;->onInterstitialShown()V

    return-void
.end method
