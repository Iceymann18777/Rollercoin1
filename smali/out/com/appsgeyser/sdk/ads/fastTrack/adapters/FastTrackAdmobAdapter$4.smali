.class Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter$4;
.super Lcom/google/android/gms/ads/AdListener;
.source "FastTrackAdmobAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter;->loadFullscreen()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter;


# direct methods
.method constructor <init>(Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter;)V
    .registers 2

    .line 282
    iput-object p1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter$4;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter;

    invoke-direct {p0}, Lcom/google/android/gms/ads/AdListener;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic lambda$onAdFailedToLoad$0$FastTrackAdmobAdapter$4()V
    .registers 2

    .line 315
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter$4;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter;

    invoke-virtual {v0}, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter;->loadFullscreen()V

    return-void
.end method

.method public synthetic lambda$onAdLoaded$1$FastTrackAdmobAdapter$4(Lcom/appsgeyser/sdk/ui/AppsgeyserProgressDialog;)V
    .registers 3

    .line 353
    :try_start_0
    invoke-virtual {p1}, Lcom/appsgeyser/sdk/ui/AppsgeyserProgressDialog;->dismiss()V
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_3} :catch_4

    goto :goto_b

    :catch_4
    const-string p1, "fastTrackTag"

    const-string v0, "progressDialog dismissal IAE"

    .line 355
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    :goto_b
    iget-object p1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter$4;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter;

    invoke-static {p1}, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter;->access$800(Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter;)Lcom/google/android/gms/ads/InterstitialAd;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/ads/InterstitialAd;->show()V

    return-void
.end method

.method public onAdClicked()V
    .registers 3

    .line 365
    invoke-super {p0}, Lcom/google/android/gms/ads/AdListener;->onAdClicked()V

    const-string v0, "fastTrackTag"

    const-string v1, "admob fs onAdClicked"

    .line 366
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onAdClosed()V
    .registers 3

    .line 285
    invoke-super {p0}, Lcom/google/android/gms/ads/AdListener;->onAdClosed()V

    .line 286
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter$4;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter;

    iget-object v0, v0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter;->progressDialog:Lcom/appsgeyser/sdk/ui/AppsgeyserProgressDialog;

    const-string v1, "fastTrackTag"

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter$4;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter;

    iget-object v0, v0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter;->progressDialog:Lcom/appsgeyser/sdk/ui/AppsgeyserProgressDialog;

    invoke-virtual {v0}, Lcom/appsgeyser/sdk/ui/AppsgeyserProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 288
    :try_start_15
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter$4;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter;

    iget-object v0, v0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter;->progressDialog:Lcom/appsgeyser/sdk/ui/AppsgeyserProgressDialog;

    invoke-virtual {v0}, Lcom/appsgeyser/sdk/ui/AppsgeyserProgressDialog;->dismiss()V
    :try_end_1c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_15 .. :try_end_1c} :catch_1d

    goto :goto_22

    :catch_1d
    const-string v0, "progressDialog dismissal IAE"

    .line 290
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    :cond_22
    :goto_22
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter$4;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter;

    invoke-virtual {v0}, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter;->loadFullscreen()V

    .line 294
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter$4;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter;

    iget-object v0, v0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter;->fullscreenListener:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackBaseAdapter$FullscreenListener;

    if-eqz v0, :cond_34

    .line 295
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter$4;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter;

    iget-object v0, v0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter;->fullscreenListener:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackBaseAdapter$FullscreenListener;

    invoke-interface {v0}, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackBaseAdapter$FullscreenListener;->onClose()V

    :cond_34
    const-string v0, "admob fs onAdClosed"

    .line 297
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onAdFailedToLoad(I)V
    .registers 7

    .line 302
    invoke-super {p0, p1}, Lcom/google/android/gms/ads/AdListener;->onAdFailedToLoad(I)V

    const/4 v0, 0x1

    const-string v1, "fs id: "

    const-string v2, "details"

    const/4 v3, 0x3

    if-ne p1, v3, :cond_39

    .line 304
    iget-object v3, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter$4;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter;

    iget-object v3, v3, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter;->interstitialDetails:Ljava/util/HashMap;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter$4;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter;

    invoke-static {v1}, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter;->access$600(Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 305
    invoke-static {}, Lcom/appsgeyser/sdk/server/StatController;->getInstance()Lcom/appsgeyser/sdk/server/StatController;

    move-result-object v1

    iget-object v2, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter$4;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter;

    iget-object v2, v2, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter;->interstitialDetails:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter$4;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter;

    iget-object v3, v3, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter;->context:Landroid/content/Context;

    const-string v4, "ft_interstitial_sdk_nofill"

    .line 306
    invoke-virtual {v1, v4, v2, v3, v0}, Lcom/appsgeyser/sdk/server/StatController;->sendRequestAsyncByKey(Ljava/lang/String;Ljava/util/HashMap;Landroid/content/Context;Z)V

    goto :goto_6e

    .line 309
    :cond_39
    iget-object v3, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter$4;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter;

    iget-object v3, v3, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter;->interstitialDetails:Ljava/util/HashMap;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter$4;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter;

    invoke-static {v1}, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter;->access$600(Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "; error_desc: error code "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 311
    invoke-static {}, Lcom/appsgeyser/sdk/server/StatController;->getInstance()Lcom/appsgeyser/sdk/server/StatController;

    move-result-object v1

    iget-object v2, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter$4;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter;

    iget-object v2, v2, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter;->interstitialDetails:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter$4;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter;

    iget-object v3, v3, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter;->context:Landroid/content/Context;

    const-string v4, "ft_interstitial_sdk_error"

    .line 312
    invoke-virtual {v1, v4, v2, v3, v0}, Lcom/appsgeyser/sdk/server/StatController;->sendRequestAsyncByKey(Ljava/lang/String;Ljava/util/HashMap;Landroid/content/Context;Z)V

    .line 315
    :goto_6e
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter$4;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter;

    iget-object v0, v0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/-$$Lambda$FastTrackAdmobAdapter$4$MY9YAVyRLPPgAnXHfX_2m4b0A34;

    invoke-direct {v1, p0}, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/-$$Lambda$FastTrackAdmobAdapter$4$MY9YAVyRLPPgAnXHfX_2m4b0A34;-><init>(Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter$4;)V

    const-wide/16 v2, 0x7530

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 316
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "admob fs onAdFailedToLoad "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "fastTrackTag"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onAdImpression()V
    .registers 3

    .line 371
    invoke-super {p0}, Lcom/google/android/gms/ads/AdListener;->onAdImpression()V

    const-string v0, "fastTrackTag"

    const-string v1, "admob fs onAdImpression"

    .line 372
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onAdLeftApplication()V
    .registers 6

    .line 321
    invoke-super {p0}, Lcom/google/android/gms/ads/AdListener;->onAdLeftApplication()V

    .line 322
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter$4;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter;

    iget-object v0, v0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter;->interstitialDetails:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fs id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter$4;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter;

    invoke-static {v2}, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter;->access$600(Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "details"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 323
    invoke-static {}, Lcom/appsgeyser/sdk/server/StatController;->getInstance()Lcom/appsgeyser/sdk/server/StatController;

    move-result-object v0

    iget-object v1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter$4;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter;

    iget-object v1, v1, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter;->interstitialDetails:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter$4;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter;

    iget-object v2, v2, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter;->context:Landroid/content/Context;

    const-string v3, "ft_interstitial_sdk_click"

    const/4 v4, 0x1

    .line 324
    invoke-virtual {v0, v3, v1, v2, v4}, Lcom/appsgeyser/sdk/server/StatController;->sendRequestAsyncByKey(Ljava/lang/String;Ljava/util/HashMap;Landroid/content/Context;Z)V

    const-string v0, "fastTrackTag"

    const-string v1, "admob fs onAdLeftApplication"

    .line 326
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onAdLoaded()V
    .registers 7

    .line 344
    invoke-super {p0}, Lcom/google/android/gms/ads/AdListener;->onAdLoaded()V

    .line 345
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter$4;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter;

    iget-boolean v0, v0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter;->pendingFullscreenRequest:Z

    const-string v1, "fastTrackTag"

    if-eqz v0, :cond_3d

    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter$4;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter;

    iget-boolean v0, v0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter;->isInForeground:Z

    if-eqz v0, :cond_3d

    .line 346
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter$4;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter;

    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter;->pendingFullscreenRequest:Z

    const-string v0, "admob fullscreen loaded, pending request processing"

    .line 347
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter$4;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter;

    iget-object v0, v0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter;->handler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter$4;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter;

    invoke-static {v2}, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter;->access$700(Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 349
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter$4;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter;

    iget-object v0, v0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter;->progressDialog:Lcom/appsgeyser/sdk/ui/AppsgeyserProgressDialog;

    .line 350
    invoke-virtual {v0}, Lcom/appsgeyser/sdk/ui/AppsgeyserProgressDialog;->show()V

    .line 351
    iget-object v2, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter$4;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter;

    iget-object v2, v2, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter;->handler:Landroid/os/Handler;

    new-instance v3, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/-$$Lambda$FastTrackAdmobAdapter$4$K5usT4cXKnldYfvhC3P0ShisnFU;

    invoke-direct {v3, p0, v0}, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/-$$Lambda$FastTrackAdmobAdapter$4$K5usT4cXKnldYfvhC3P0ShisnFU;-><init>(Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter$4;Lcom/appsgeyser/sdk/ui/AppsgeyserProgressDialog;)V

    const-wide/16 v4, 0x7d0

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_3d
    const-string v0, "admob fs onAdLoaded"

    .line 360
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onAdOpened()V
    .registers 6

    .line 331
    invoke-super {p0}, Lcom/google/android/gms/ads/AdListener;->onAdOpened()V

    .line 332
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter$4;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter;

    iget-object v0, v0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter;->interstitialDetails:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fs id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter$4;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter;

    invoke-static {v2}, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter;->access$600(Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "details"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 333
    invoke-static {}, Lcom/appsgeyser/sdk/server/StatController;->getInstance()Lcom/appsgeyser/sdk/server/StatController;

    move-result-object v0

    iget-object v1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter$4;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter;

    iget-object v1, v1, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter;->interstitialDetails:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter$4;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter;

    iget-object v2, v2, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter;->context:Landroid/content/Context;

    const-string v3, "ft_interstitial_sdk_impression"

    const/4 v4, 0x1

    .line 334
    invoke-virtual {v0, v3, v1, v2, v4}, Lcom/appsgeyser/sdk/server/StatController;->sendRequestAsyncByKey(Ljava/lang/String;Ljava/util/HashMap;Landroid/content/Context;Z)V

    .line 336
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter$4;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter;

    iget-object v0, v0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter;->fullscreenListener:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackBaseAdapter$FullscreenListener;

    if-eqz v0, :cond_42

    .line 337
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter$4;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter;

    iget-object v0, v0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter;->fullscreenListener:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackBaseAdapter$FullscreenListener;

    invoke-interface {v0}, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackBaseAdapter$FullscreenListener;->onShow()V

    :cond_42
    const-string v0, "fastTrackTag"

    const-string v1, "admob fs onAdOpened"

    .line 339
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
