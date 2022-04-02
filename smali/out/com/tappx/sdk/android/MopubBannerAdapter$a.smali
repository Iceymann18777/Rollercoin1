.class final Lcom/tappx/sdk/android/MopubBannerAdapter$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tappx/sdk/android/TappxBannerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tappx/sdk/android/MopubBannerAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# instance fields
.field private final a:Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;


# direct methods
.method private constructor <init>(Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tappx/sdk/android/MopubBannerAdapter$a;->a:Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;

    return-void
.end method

.method synthetic constructor <init>(Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;Lcom/tappx/sdk/android/MopubBannerAdapter$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/tappx/sdk/android/MopubBannerAdapter$a;-><init>(Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;)V

    return-void
.end method


# virtual methods
.method public onBannerClicked(Lcom/tappx/sdk/android/TappxBanner;)V
    .registers 2

    iget-object p1, p0, Lcom/tappx/sdk/android/MopubBannerAdapter$a;->a:Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;

    invoke-interface {p1}, Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;->onBannerClicked()V

    return-void
.end method

.method public onBannerCollapsed(Lcom/tappx/sdk/android/TappxBanner;)V
    .registers 2

    iget-object p1, p0, Lcom/tappx/sdk/android/MopubBannerAdapter$a;->a:Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;

    invoke-interface {p1}, Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;->onBannerCollapsed()V

    return-void
.end method

.method public onBannerExpanded(Lcom/tappx/sdk/android/TappxBanner;)V
    .registers 2

    iget-object p1, p0, Lcom/tappx/sdk/android/MopubBannerAdapter$a;->a:Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;

    invoke-interface {p1}, Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;->onBannerExpanded()V

    return-void
.end method

.method public onBannerLoadFailed(Lcom/tappx/sdk/android/TappxBanner;Lcom/tappx/sdk/android/TappxAdError;)V
    .registers 4

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "MoPub adapter: Banner load failed "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Tappx"

    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/tappx/sdk/android/MopubBannerAdapter$a;->a:Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;

    invoke-static {p2}, Lcom/tappx/sdk/android/MopubBannerAdapter;->a(Lcom/tappx/sdk/android/TappxAdError;)Lcom/mopub/mobileads/MoPubErrorCode;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;->onBannerFailed(Lcom/mopub/mobileads/MoPubErrorCode;)V

    return-void
.end method

.method public onBannerLoaded(Lcom/tappx/sdk/android/TappxBanner;)V
    .registers 4

    const-string v0, "Tappx"

    const-string v1, "MoPub adapter: Banner loaded"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/tappx/sdk/android/MopubBannerAdapter$a;->a:Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;

    invoke-interface {v0, p1}, Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;->onBannerLoaded(Landroid/view/View;)V

    return-void
.end method
