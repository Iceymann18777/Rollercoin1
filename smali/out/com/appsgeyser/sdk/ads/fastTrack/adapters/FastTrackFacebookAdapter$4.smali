.class Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackFacebookAdapter$4;
.super Ljava/lang/Object;
.source "FastTrackFacebookAdapter.java"

# interfaces
.implements Lcom/facebook/ads/InterstitialAdListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackFacebookAdapter;->loadFullscreen()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackFacebookAdapter;


# direct methods
.method constructor <init>(Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackFacebookAdapter;)V
    .registers 2

    .line 201
    iput-object p1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackFacebookAdapter$4;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackFacebookAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic lambda$onAdLoaded$1$FastTrackFacebookAdapter$4(Lcom/appsgeyser/sdk/ui/AppsgeyserProgressDialog;)V
    .registers 3

    .line 269
    :try_start_0
    invoke-virtual {p1}, Lcom/appsgeyser/sdk/ui/AppsgeyserProgressDialog;->dismiss()V
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_3} :catch_4

    goto :goto_b

    :catch_4
    const-string p1, "fastTrackTag"

    const-string v0, "progressDialog dismissal IAE"

    .line 271
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    :goto_b
    iget-object p1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackFacebookAdapter$4;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackFacebookAdapter;

    invoke-static {p1}, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackFacebookAdapter;->access$800(Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackFacebookAdapter;)Lcom/facebook/ads/InterstitialAd;

    move-result-object p1

    invoke-virtual {p1}, Lcom/facebook/ads/InterstitialAd;->show()Z

    return-void
.end method

.method public synthetic lambda$onError$0$FastTrackFacebookAdapter$4()V
    .registers 2

    .line 233
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackFacebookAdapter$4;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackFacebookAdapter;

    invoke-virtual {v0}, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackFacebookAdapter;->loadFullscreen()V

    return-void
.end method

.method public onAdClicked(Lcom/facebook/ads/Ad;)V
    .registers 6

    .line 240
    iget-object p1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackFacebookAdapter$4;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackFacebookAdapter;

    iget-object p1, p1, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackFacebookAdapter;->interstitialDetails:Ljava/util/HashMap;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "fs id: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackFacebookAdapter$4;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackFacebookAdapter;

    invoke-static {v1}, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackFacebookAdapter;->access$600(Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackFacebookAdapter;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "details"

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 241
    invoke-static {}, Lcom/appsgeyser/sdk/server/StatController;->getInstance()Lcom/appsgeyser/sdk/server/StatController;

    move-result-object p1

    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackFacebookAdapter$4;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackFacebookAdapter;

    iget-object v0, v0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackFacebookAdapter;->interstitialDetails:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackFacebookAdapter$4;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackFacebookAdapter;

    iget-object v1, v1, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackFacebookAdapter;->context:Landroid/content/Context;

    const-string v2, "ft_interstitial_sdk_click"

    const/4 v3, 0x1

    .line 242
    invoke-virtual {p1, v2, v0, v1, v3}, Lcom/appsgeyser/sdk/server/StatController;->sendRequestAsyncByKey(Ljava/lang/String;Ljava/util/HashMap;Landroid/content/Context;Z)V

    const-string p1, "fastTrackTag"

    const-string v0, "facebook fs onAdClicked"

    .line 244
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onAdLoaded(Lcom/facebook/ads/Ad;)V
    .registers 7

    .line 261
    iget-object p1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackFacebookAdapter$4;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackFacebookAdapter;

    iget-boolean p1, p1, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackFacebookAdapter;->pendingFullscreenRequest:Z

    const-string v0, "fastTrackTag"

    if-eqz p1, :cond_3a

    iget-object p1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackFacebookAdapter$4;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackFacebookAdapter;

    iget-boolean p1, p1, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackFacebookAdapter;->isInForeground:Z

    if-eqz p1, :cond_3a

    .line 262
    iget-object p1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackFacebookAdapter$4;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackFacebookAdapter;

    const/4 v1, 0x0

    iput-boolean v1, p1, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackFacebookAdapter;->pendingFullscreenRequest:Z

    const-string p1, "facebook fullscreen loaded, pending request processing"

    .line 263
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    iget-object p1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackFacebookAdapter$4;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackFacebookAdapter;

    iget-object p1, p1, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackFacebookAdapter;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackFacebookAdapter$4;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackFacebookAdapter;

    invoke-static {v1}, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackFacebookAdapter;->access$700(Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackFacebookAdapter;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 265
    iget-object p1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackFacebookAdapter$4;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackFacebookAdapter;

    iget-object p1, p1, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackFacebookAdapter;->progressDialog:Lcom/appsgeyser/sdk/ui/AppsgeyserProgressDialog;

    .line 266
    invoke-virtual {p1}, Lcom/appsgeyser/sdk/ui/AppsgeyserProgressDialog;->show()V

    .line 267
    iget-object v1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackFacebookAdapter$4;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackFacebookAdapter;

    iget-object v1, v1, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackFacebookAdapter;->handler:Landroid/os/Handler;

    new-instance v2, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/-$$Lambda$FastTrackFacebookAdapter$4$cmEc8TiwsrVIn1xdybciAvwDJbY;

    invoke-direct {v2, p0, p1}, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/-$$Lambda$FastTrackFacebookAdapter$4$cmEc8TiwsrVIn1xdybciAvwDJbY;-><init>(Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackFacebookAdapter$4;Lcom/appsgeyser/sdk/ui/AppsgeyserProgressDialog;)V

    const-wide/16 v3, 0x7d0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_3a
    const-string p1, "facebook fs onAdLoaded"

    .line 276
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onError(Lcom/facebook/ads/Ad;Lcom/facebook/ads/AdError;)V
    .registers 8

    .line 220
    invoke-virtual {p2}, Lcom/facebook/ads/AdError;->getErrorCode()I

    move-result p1

    const/4 v0, 0x1

    const-string v1, " "

    const-string v2, "fs id: "

    const-string v3, "details"

    const/16 v4, 0x3e9

    if-ne p1, v4, :cond_3d

    .line 221
    iget-object p1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackFacebookAdapter$4;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackFacebookAdapter;

    iget-object p1, p1, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackFacebookAdapter;->interstitialDetails:Ljava/util/HashMap;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackFacebookAdapter$4;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackFacebookAdapter;

    invoke-static {v2}, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackFacebookAdapter;->access$600(Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackFacebookAdapter;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    invoke-static {}, Lcom/appsgeyser/sdk/server/StatController;->getInstance()Lcom/appsgeyser/sdk/server/StatController;

    move-result-object p1

    iget-object v2, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackFacebookAdapter$4;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackFacebookAdapter;

    iget-object v2, v2, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackFacebookAdapter;->interstitialDetails:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackFacebookAdapter$4;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackFacebookAdapter;

    iget-object v3, v3, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackFacebookAdapter;->context:Landroid/content/Context;

    const-string v4, "ft_interstitial_sdk_nofill"

    .line 223
    invoke-virtual {p1, v4, v2, v3, v0}, Lcom/appsgeyser/sdk/server/StatController;->sendRequestAsyncByKey(Ljava/lang/String;Ljava/util/HashMap;Landroid/content/Context;Z)V

    goto :goto_80

    .line 226
    :cond_3d
    iget-object p1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackFacebookAdapter$4;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackFacebookAdapter;

    iget-object p1, p1, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackFacebookAdapter;->interstitialDetails:Ljava/util/HashMap;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackFacebookAdapter$4;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackFacebookAdapter;

    invoke-static {v2}, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackFacebookAdapter;->access$600(Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackFacebookAdapter;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "; error_desc: error code "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 227
    invoke-virtual {p2}, Lcom/facebook/ads/AdError;->getErrorCode()I

    move-result v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 228
    invoke-virtual {p2}, Lcom/facebook/ads/AdError;->getErrorMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 226
    invoke-virtual {p1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    invoke-static {}, Lcom/appsgeyser/sdk/server/StatController;->getInstance()Lcom/appsgeyser/sdk/server/StatController;

    move-result-object p1

    iget-object v2, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackFacebookAdapter$4;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackFacebookAdapter;

    iget-object v2, v2, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackFacebookAdapter;->interstitialDetails:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackFacebookAdapter$4;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackFacebookAdapter;

    iget-object v3, v3, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackFacebookAdapter;->context:Landroid/content/Context;

    const-string v4, "ft_interstitial_sdk_error"

    .line 230
    invoke-virtual {p1, v4, v2, v3, v0}, Lcom/appsgeyser/sdk/server/StatController;->sendRequestAsyncByKey(Ljava/lang/String;Ljava/util/HashMap;Landroid/content/Context;Z)V

    .line 233
    :goto_80
    iget-object p1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackFacebookAdapter$4;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackFacebookAdapter;

    iget-object p1, p1, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackFacebookAdapter;->handler:Landroid/os/Handler;

    new-instance v0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/-$$Lambda$FastTrackFacebookAdapter$4$dEdfEXDfGmc8OxBXGKvuHUZqTgk;

    invoke-direct {v0, p0}, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/-$$Lambda$FastTrackFacebookAdapter$4$dEdfEXDfGmc8OxBXGKvuHUZqTgk;-><init>(Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackFacebookAdapter$4;)V

    const-wide/16 v2, 0x7530

    invoke-virtual {p1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 234
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "facebook fs onError "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 235
    invoke-virtual {p2}, Lcom/facebook/ads/AdError;->getErrorCode()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/facebook/ads/AdError;->getErrorMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "fastTrackTag"

    .line 234
    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onInterstitialDismissed(Lcom/facebook/ads/Ad;)V
    .registers 3

    .line 204
    iget-object p1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackFacebookAdapter$4;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackFacebookAdapter;

    iget-object p1, p1, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackFacebookAdapter;->progressDialog:Lcom/appsgeyser/sdk/ui/AppsgeyserProgressDialog;

    const-string v0, "fastTrackTag"

    if-eqz p1, :cond_1f

    iget-object p1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackFacebookAdapter$4;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackFacebookAdapter;

    iget-object p1, p1, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackFacebookAdapter;->progressDialog:Lcom/appsgeyser/sdk/ui/AppsgeyserProgressDialog;

    invoke-virtual {p1}, Lcom/appsgeyser/sdk/ui/AppsgeyserProgressDialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_1f

    .line 206
    :try_start_12
    iget-object p1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackFacebookAdapter$4;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackFacebookAdapter;

    iget-object p1, p1, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackFacebookAdapter;->progressDialog:Lcom/appsgeyser/sdk/ui/AppsgeyserProgressDialog;

    invoke-virtual {p1}, Lcom/appsgeyser/sdk/ui/AppsgeyserProgressDialog;->dismiss()V
    :try_end_19
    .catch Ljava/lang/IllegalArgumentException; {:try_start_12 .. :try_end_19} :catch_1a

    goto :goto_1f

    :catch_1a
    const-string p1, "progressDialog dismissal IAE"

    .line 208
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    :cond_1f
    :goto_1f
    iget-object p1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackFacebookAdapter$4;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackFacebookAdapter;

    invoke-virtual {p1}, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackFacebookAdapter;->loadFullscreen()V

    .line 212
    iget-object p1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackFacebookAdapter$4;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackFacebookAdapter;

    iget-object p1, p1, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackFacebookAdapter;->fullscreenListener:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackBaseAdapter$FullscreenListener;

    if-eqz p1, :cond_31

    .line 213
    iget-object p1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackFacebookAdapter$4;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackFacebookAdapter;

    iget-object p1, p1, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackFacebookAdapter;->fullscreenListener:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackBaseAdapter$FullscreenListener;

    invoke-interface {p1}, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackBaseAdapter$FullscreenListener;->onClose()V

    :cond_31
    const-string p1, "facebook fs onInterstitialDismissed"

    .line 215
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onInterstitialDisplayed(Lcom/facebook/ads/Ad;)V
    .registers 6

    .line 249
    iget-object p1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackFacebookAdapter$4;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackFacebookAdapter;

    iget-object p1, p1, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackFacebookAdapter;->interstitialDetails:Ljava/util/HashMap;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "fs id: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackFacebookAdapter$4;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackFacebookAdapter;

    invoke-static {v1}, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackFacebookAdapter;->access$600(Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackFacebookAdapter;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "details"

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 250
    invoke-static {}, Lcom/appsgeyser/sdk/server/StatController;->getInstance()Lcom/appsgeyser/sdk/server/StatController;

    move-result-object p1

    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackFacebookAdapter$4;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackFacebookAdapter;

    iget-object v0, v0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackFacebookAdapter;->interstitialDetails:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackFacebookAdapter$4;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackFacebookAdapter;

    iget-object v1, v1, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackFacebookAdapter;->context:Landroid/content/Context;

    const-string v2, "ft_interstitial_sdk_impression"

    const/4 v3, 0x1

    .line 251
    invoke-virtual {p1, v2, v0, v1, v3}, Lcom/appsgeyser/sdk/server/StatController;->sendRequestAsyncByKey(Ljava/lang/String;Ljava/util/HashMap;Landroid/content/Context;Z)V

    .line 253
    iget-object p1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackFacebookAdapter$4;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackFacebookAdapter;

    iget-object p1, p1, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackFacebookAdapter;->fullscreenListener:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackBaseAdapter$FullscreenListener;

    if-eqz p1, :cond_3f

    .line 254
    iget-object p1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackFacebookAdapter$4;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackFacebookAdapter;

    iget-object p1, p1, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackFacebookAdapter;->fullscreenListener:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackBaseAdapter$FullscreenListener;

    invoke-interface {p1}, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackBaseAdapter$FullscreenListener;->onShow()V

    :cond_3f
    const-string p1, "fastTrackTag"

    const-string v0, "facebook fs onAdOpened"

    .line 256
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onLoggingImpression(Lcom/facebook/ads/Ad;)V
    .registers 3

    const-string p1, "fastTrackTag"

    const-string v0, "facebook fs onLoggingImpression"

    .line 281
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
