.class Lcom/startapp/android/publish/ads/a/d$a;
.super Lcom/startapp/android/publish/adsCommon/g/a/e;
.source "StartAppSDK"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/startapp/android/publish/ads/a/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/startapp/android/publish/ads/a/d;


# direct methods
.method public constructor <init>(Lcom/startapp/android/publish/ads/a/d;Lcom/startapp/android/publish/adsCommon/g/a/b;)V
    .registers 3

    .line 270
    iput-object p1, p0, Lcom/startapp/android/publish/ads/a/d$a;->a:Lcom/startapp/android/publish/ads/a/d;

    .line 271
    invoke-direct {p0, p2}, Lcom/startapp/android/publish/adsCommon/g/a/e;-><init>(Lcom/startapp/android/publish/adsCommon/g/a/b;)V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .registers 4

    .line 276
    invoke-super {p0, p1, p2}, Lcom/startapp/android/publish/adsCommon/g/a/e;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 277
    iget-object p2, p0, Lcom/startapp/android/publish/ads/a/d$a;->a:Lcom/startapp/android/publish/ads/a/d;

    invoke-static {p2}, Lcom/startapp/android/publish/ads/a/d;->b(Lcom/startapp/android/publish/ads/a/d;)Lcom/startapp/android/publish/adsCommon/g/a/d;

    move-result-object p2

    sget-object v0, Lcom/startapp/android/publish/adsCommon/g/a/d;->a:Lcom/startapp/android/publish/adsCommon/g/a/d;

    if-ne p2, v0, :cond_94

    const-string p2, "interstitial"

    .line 279
    invoke-static {p2, p1}, Lcom/startapp/android/publish/adsCommon/g/a/c;->a(Ljava/lang/String;Landroid/webkit/WebView;)V

    .line 280
    iget-object p2, p0, Lcom/startapp/android/publish/ads/a/d$a;->a:Lcom/startapp/android/publish/ads/a/d;

    invoke-virtual {p2}, Lcom/startapp/android/publish/ads/a/d;->b()Landroid/app/Activity;

    move-result-object p2

    iget-object v0, p0, Lcom/startapp/android/publish/ads/a/d$a;->a:Lcom/startapp/android/publish/ads/a/d;

    invoke-static {v0}, Lcom/startapp/android/publish/ads/a/d;->g(Lcom/startapp/android/publish/ads/a/d;)Lcom/startapp/android/publish/adsCommon/g/b/b;

    move-result-object v0

    invoke-static {p2, p1, v0}, Lcom/startapp/android/publish/adsCommon/g/b/a;->a(Landroid/content/Context;Landroid/webkit/WebView;Lcom/startapp/android/publish/adsCommon/g/b/b;)V

    .line 282
    iget-object p2, p0, Lcom/startapp/android/publish/ads/a/d$a;->a:Lcom/startapp/android/publish/ads/a/d;

    invoke-static {p2}, Lcom/startapp/android/publish/ads/a/d;->i(Lcom/startapp/android/publish/ads/a/d;)V

    .line 283
    iget-object p2, p0, Lcom/startapp/android/publish/ads/a/d$a;->a:Lcom/startapp/android/publish/ads/a/d;

    invoke-static {p2}, Lcom/startapp/android/publish/ads/a/d;->j(Lcom/startapp/android/publish/ads/a/d;)V

    .line 286
    iget-object p2, p0, Lcom/startapp/android/publish/ads/a/d$a;->a:Lcom/startapp/android/publish/ads/a/d;

    sget-object v0, Lcom/startapp/android/publish/adsCommon/g/a/d;->b:Lcom/startapp/android/publish/adsCommon/g/a/d;

    invoke-static {p2, v0}, Lcom/startapp/android/publish/ads/a/d;->a(Lcom/startapp/android/publish/ads/a/d;Lcom/startapp/android/publish/adsCommon/g/a/d;)Lcom/startapp/android/publish/adsCommon/g/a/d;

    .line 287
    iget-object p2, p0, Lcom/startapp/android/publish/ads/a/d$a;->a:Lcom/startapp/android/publish/ads/a/d;

    invoke-static {p2}, Lcom/startapp/android/publish/ads/a/d;->b(Lcom/startapp/android/publish/ads/a/d;)Lcom/startapp/android/publish/adsCommon/g/a/d;

    move-result-object p2

    invoke-static {p2, p1}, Lcom/startapp/android/publish/adsCommon/g/a/c;->a(Lcom/startapp/android/publish/adsCommon/g/a/d;Landroid/webkit/WebView;)V

    .line 288
    invoke-static {p1}, Lcom/startapp/android/publish/adsCommon/g/a/c;->a(Landroid/webkit/WebView;)V

    .line 290
    iget-object p2, p0, Lcom/startapp/android/publish/ads/a/d$a;->a:Lcom/startapp/android/publish/ads/a/d;

    invoke-static {p2}, Lcom/startapp/android/publish/ads/a/d;->h(Lcom/startapp/android/publish/ads/a/d;)Z

    move-result p2

    if-eqz p2, :cond_4f

    .line 291
    iget-object p2, p0, Lcom/startapp/android/publish/ads/a/d$a;->a:Lcom/startapp/android/publish/ads/a/d;

    invoke-static {p2}, Lcom/startapp/android/publish/ads/a/d;->a(Lcom/startapp/android/publish/ads/a/d;)Lcom/startapp/android/publish/ads/a/d$b;

    move-result-object p2

    invoke-virtual {p2}, Lcom/startapp/android/publish/ads/a/d$b;->fireViewableChangeEvent()V

    .line 293
    :cond_4f
    invoke-static {}, Lcom/startapp/android/publish/common/metaData/MetaData;->getInstance()Lcom/startapp/android/publish/common/metaData/MetaData;

    move-result-object p2

    invoke-virtual {p2}, Lcom/startapp/android/publish/common/metaData/MetaData;->isOmsdkEnabled()Z

    move-result p2

    if-eqz p2, :cond_94

    .line 295
    iget-object p2, p0, Lcom/startapp/android/publish/ads/a/d$a;->a:Lcom/startapp/android/publish/ads/a/d;

    const/4 v0, 0x0

    iput-object v0, p2, Lcom/startapp/android/publish/ads/a/d;->e:Lcom/b/a/a/a/b/b;

    .line 297
    iget-object p2, p0, Lcom/startapp/android/publish/ads/a/d$a;->a:Lcom/startapp/android/publish/ads/a/d;

    iget-object p2, p2, Lcom/startapp/android/publish/ads/a/d;->e:Lcom/b/a/a/a/b/b;

    if-eqz p2, :cond_94

    .line 298
    iget-object p2, p0, Lcom/startapp/android/publish/ads/a/d$a;->a:Lcom/startapp/android/publish/ads/a/d;

    iget-object p2, p2, Lcom/startapp/android/publish/ads/a/d;->a:Lcom/startapp/android/publish/adsCommon/adinformation/b;

    if-eqz p2, :cond_7b

    .line 299
    iget-object p2, p0, Lcom/startapp/android/publish/ads/a/d$a;->a:Lcom/startapp/android/publish/ads/a/d;

    iget-object p2, p2, Lcom/startapp/android/publish/ads/a/d;->a:Lcom/startapp/android/publish/adsCommon/adinformation/b;

    invoke-virtual {p2}, Lcom/startapp/android/publish/adsCommon/adinformation/b;->a()Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_7b

    .line 301
    iget-object v0, p0, Lcom/startapp/android/publish/ads/a/d$a;->a:Lcom/startapp/android/publish/ads/a/d;

    iget-object v0, v0, Lcom/startapp/android/publish/ads/a/d;->e:Lcom/b/a/a/a/b/b;

    invoke-virtual {v0, p2}, Lcom/b/a/a/a/b/b;->b(Landroid/view/View;)V

    .line 305
    :cond_7b
    iget-object p2, p0, Lcom/startapp/android/publish/ads/a/d$a;->a:Lcom/startapp/android/publish/ads/a/d;

    iget-object p2, p2, Lcom/startapp/android/publish/ads/a/d;->e:Lcom/b/a/a/a/b/b;

    invoke-virtual {p2, p1}, Lcom/b/a/a/a/b/b;->a(Landroid/view/View;)V

    .line 306
    iget-object p1, p0, Lcom/startapp/android/publish/ads/a/d$a;->a:Lcom/startapp/android/publish/ads/a/d;

    iget-object p1, p1, Lcom/startapp/android/publish/ads/a/d;->e:Lcom/b/a/a/a/b/b;

    invoke-virtual {p1}, Lcom/b/a/a/a/b/b;->a()V

    .line 308
    iget-object p1, p0, Lcom/startapp/android/publish/ads/a/d$a;->a:Lcom/startapp/android/publish/ads/a/d;

    iget-object p1, p1, Lcom/startapp/android/publish/ads/a/d;->e:Lcom/b/a/a/a/b/b;

    invoke-static {p1}, Lcom/b/a/a/a/b/a;->a(Lcom/b/a/a/a/b/b;)Lcom/b/a/a/a/b/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/b/a/a/a/b/a;->a()V

    :cond_94
    return-void
.end method
