.class final Lcom/appnext/ads/interstitial/InterstitialActivity$8;
.super Landroid/webkit/WebChromeClient;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appnext/ads/interstitial/InterstitialActivity;->v()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic cf:Lcom/appnext/ads/interstitial/InterstitialActivity;


# direct methods
.method constructor <init>(Lcom/appnext/ads/interstitial/InterstitialActivity;)V
    .registers 2

    .line 269
    iput-object p1, p0, Lcom/appnext/ads/interstitial/InterstitialActivity$8;->cf:Lcom/appnext/ads/interstitial/InterstitialActivity;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public final onConsoleMessage(Landroid/webkit/ConsoleMessage;)Z
    .registers 4

    .line 272
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "console "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/webkit/ConsoleMessage;->message()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 273
    invoke-virtual {p1}, Landroid/webkit/ConsoleMessage;->message()Ljava/lang/String;

    move-result-object v0

    const-string v1, "pause"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4a

    invoke-virtual {p1}, Landroid/webkit/ConsoleMessage;->message()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TypeError"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3e

    .line 274
    invoke-virtual {p1}, Landroid/webkit/ConsoleMessage;->message()Ljava/lang/String;

    move-result-object v0

    const-string v1, "has no method"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3e

    invoke-virtual {p1}, Landroid/webkit/ConsoleMessage;->message()Ljava/lang/String;

    move-result-object p1

    const-string v0, "is not a function"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_4a

    .line 275
    :cond_3e
    iget-object p1, p0, Lcom/appnext/ads/interstitial/InterstitialActivity$8;->cf:Lcom/appnext/ads/interstitial/InterstitialActivity;

    const-string v0, "Internal error"

    invoke-virtual {p1, v0}, Lcom/appnext/ads/interstitial/InterstitialActivity;->onError(Ljava/lang/String;)V

    .line 276
    iget-object p1, p0, Lcom/appnext/ads/interstitial/InterstitialActivity$8;->cf:Lcom/appnext/ads/interstitial/InterstitialActivity;

    invoke-virtual {p1}, Lcom/appnext/ads/interstitial/InterstitialActivity;->finish()V

    :cond_4a
    const/4 p1, 0x1

    return p1
.end method
