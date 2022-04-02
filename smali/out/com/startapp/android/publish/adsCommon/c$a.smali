.class Lcom/startapp/android/publish/adsCommon/c$a;
.super Landroid/webkit/WebViewClient;
.source "StartAppSDK"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/startapp/android/publish/adsCommon/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field protected a:Ljava/lang/String;

.field protected b:Ljava/lang/String;

.field protected c:Z

.field protected d:Z

.field protected e:J

.field protected f:Z

.field protected g:Ljava/lang/Boolean;

.field protected h:Ljava/lang/String;

.field protected i:Landroid/app/ProgressDialog;

.field protected j:Ljava/lang/Runnable;

.field protected k:Z

.field protected l:Z

.field private m:J

.field private n:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private o:J

.field private p:Ljava/util/Timer;


# direct methods
.method public constructor <init>(JJZLjava/lang/Boolean;Landroid/app/ProgressDialog;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)V
    .registers 14

    .line 451
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    const-string v0, ""

    .line 434
    iput-object v0, p0, Lcom/startapp/android/publish/adsCommon/c$a;->a:Ljava/lang/String;

    const/4 v0, 0x0

    .line 436
    iput-boolean v0, p0, Lcom/startapp/android/publish/adsCommon/c$a;->c:Z

    .line 437
    iput-boolean v0, p0, Lcom/startapp/android/publish/adsCommon/c$a;->d:Z

    const/4 v1, 0x1

    .line 440
    iput-boolean v1, p0, Lcom/startapp/android/publish/adsCommon/c$a;->f:Z

    const/4 v1, 0x0

    .line 441
    iput-object v1, p0, Lcom/startapp/android/publish/adsCommon/c$a;->g:Ljava/lang/Boolean;

    .line 445
    iput-boolean v0, p0, Lcom/startapp/android/publish/adsCommon/c$a;->k:Z

    .line 446
    iput-boolean v0, p0, Lcom/startapp/android/publish/adsCommon/c$a;->l:Z

    .line 447
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/startapp/android/publish/adsCommon/c$a;->n:Ljava/util/LinkedHashMap;

    .line 452
    iput-wide p1, p0, Lcom/startapp/android/publish/adsCommon/c$a;->e:J

    .line 453
    iput-wide p3, p0, Lcom/startapp/android/publish/adsCommon/c$a;->m:J

    .line 454
    iput-boolean p5, p0, Lcom/startapp/android/publish/adsCommon/c$a;->f:Z

    .line 455
    iput-object p6, p0, Lcom/startapp/android/publish/adsCommon/c$a;->g:Ljava/lang/Boolean;

    .line 456
    iput-object p7, p0, Lcom/startapp/android/publish/adsCommon/c$a;->i:Landroid/app/ProgressDialog;

    .line 457
    iput-object p8, p0, Lcom/startapp/android/publish/adsCommon/c$a;->a:Ljava/lang/String;

    .line 458
    iput-object p9, p0, Lcom/startapp/android/publish/adsCommon/c$a;->h:Ljava/lang/String;

    .line 459
    iput-object p10, p0, Lcom/startapp/android/publish/adsCommon/c$a;->b:Ljava/lang/String;

    .line 460
    iput-object p11, p0, Lcom/startapp/android/publish/adsCommon/c$a;->j:Ljava/lang/Runnable;

    return-void
.end method

.method private a(Landroid/content/Context;)V
    .registers 5

    .line 581
    new-instance v0, Lcom/startapp/android/publish/adsCommon/c$a$1;

    invoke-direct {v0, p0, p1}, Lcom/startapp/android/publish/adsCommon/c$a$1;-><init>(Lcom/startapp/android/publish/adsCommon/c$a;Landroid/content/Context;)V

    iget-wide v1, p0, Lcom/startapp/android/publish/adsCommon/c$a;->e:J

    invoke-static {v0, v1, v2}, Lcom/startapp/common/g;->a(Ljava/lang/Runnable;J)Ljava/util/concurrent/ScheduledFuture;

    return-void
.end method

.method static synthetic a(Lcom/startapp/android/publish/adsCommon/c$a;)V
    .registers 1

    .line 433
    invoke-direct {p0}, Lcom/startapp/android/publish/adsCommon/c$a;->b()V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .registers 7

    .line 661
    iget-object v0, p0, Lcom/startapp/android/publish/adsCommon/c$a;->n:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_25

    .line 662
    iget-object v0, p0, Lcom/startapp/android/publish/adsCommon/c$a;->n:Ljava/util/LinkedHashMap;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/startapp/android/publish/adsCommon/c$a;->o:J

    sub-long/2addr v1, v3

    long-to-float v1, v1

    const/high16 v2, 0x447a0000    # 1000.0f

    div-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_25
    return-void
.end method

.method private b()V
    .registers 2

    .line 654
    iget-object v0, p0, Lcom/startapp/android/publish/adsCommon/c$a;->p:Ljava/util/Timer;

    if-eqz v0, :cond_a

    .line 655
    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    const/4 v0, 0x0

    .line 656
    iput-object v0, p0, Lcom/startapp/android/publish/adsCommon/c$a;->p:Ljava/util/Timer;

    :cond_a
    return-void
.end method

.method private b(Landroid/content/Context;)V
    .registers 6

    .line 621
    invoke-direct {p0}, Lcom/startapp/android/publish/adsCommon/c$a;->b()V

    .line 623
    :try_start_3
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/startapp/android/publish/adsCommon/c$a;->p:Ljava/util/Timer;

    .line 624
    new-instance v1, Lcom/startapp/android/publish/adsCommon/c$a$2;

    invoke-direct {v1, p0, p1}, Lcom/startapp/android/publish/adsCommon/c$a$2;-><init>(Lcom/startapp/android/publish/adsCommon/c$a;Landroid/content/Context;)V

    iget-wide v2, p0, Lcom/startapp/android/publish/adsCommon/c$a;->m:J

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_14} :catch_15

    goto :goto_21

    :catch_15
    move-exception p1

    const/4 v0, 0x0

    .line 648
    iput-object v0, p0, Lcom/startapp/android/publish/adsCommon/c$a;->p:Ljava/util/Timer;

    const/4 v0, 0x6

    const-string v1, "AdsCommonUtils"

    const-string v2, "startLoadedTimer"

    .line 649
    invoke-static {v1, v0, v2, p1}, Lcom/startapp/common/a/g;->a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Throwable;)V

    :goto_21
    return-void
.end method


# virtual methods
.method protected a()Lorg/json/JSONArray;
    .registers 7

    .line 667
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 668
    iget-object v1, p0, Lcom/startapp/android/publish/adsCommon/c$a;->n:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_58

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 669
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 671
    :try_start_20
    invoke-direct {p0, v2}, Lcom/startapp/android/publish/adsCommon/c$a;->a(Ljava/lang/String;)V

    const-string v4, "time"

    .line 672
    iget-object v5, p0, Lcom/startapp/android/publish/adsCommon/c$a;->n:Ljava/util/LinkedHashMap;

    invoke-virtual {v5, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Float;

    invoke-virtual {v5}, Ljava/lang/Float;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "url"

    .line 673
    invoke-virtual {v3, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_39
    .catch Lorg/json/JSONException; {:try_start_20 .. :try_end_39} :catch_3d

    .line 678
    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_f

    :catch_3d
    const/4 v3, 0x6

    .line 675
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "error puting url into json ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/startapp/common/a/g;->a(ILjava/lang/String;)V

    goto :goto_f

    :cond_58
    return-object v0
.end method

.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .registers 5

    .line 548
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MyWebViewClientSmartRedirect::onPageFinished - ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v1, v0}, Lcom/startapp/common/a/g;->a(ILjava/lang/String;)V

    .line 549
    iget-boolean v0, p0, Lcom/startapp/android/publish/adsCommon/c$a;->c:Z

    if-nez v0, :cond_4f

    iget-boolean v0, p0, Lcom/startapp/android/publish/adsCommon/c$a;->k:Z

    if-nez v0, :cond_4f

    iget-object v0, p0, Lcom/startapp/android/publish/adsCommon/c$a;->a:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4f

    if-eqz p2, :cond_4f

    .line 550
    invoke-static {p2}, Lcom/startapp/android/publish/adsCommon/c;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4f

    const-string v0, "http://"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_42

    const-string v0, "https://"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4f

    :cond_42
    const/4 v0, 0x1

    .line 553
    iput-boolean v0, p0, Lcom/startapp/android/publish/adsCommon/c$a;->l:Z

    .line 555
    :try_start_45
    invoke-direct {p0, p2}, Lcom/startapp/android/publish/adsCommon/c$a;->a(Ljava/lang/String;)V
    :try_end_48
    .catch Ljava/lang/Exception; {:try_start_45 .. :try_end_48} :catch_48

    .line 557
    :catch_48
    invoke-virtual {p1}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/startapp/android/publish/adsCommon/c$a;->b(Landroid/content/Context;)V

    .line 561
    :cond_4f
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .registers 6

    .line 465
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MyWebViewClientSmartRedirect::onPageStarted - ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v1, v0}, Lcom/startapp/common/a/g;->a(ILjava/lang/String;)V

    .line 466
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 469
    iget-boolean p3, p0, Lcom/startapp/android/publish/adsCommon/c$a;->d:Z

    if-nez p3, :cond_3c

    .line 470
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/startapp/android/publish/adsCommon/c$a;->o:J

    .line 471
    iget-object p3, p0, Lcom/startapp/android/publish/adsCommon/c$a;->n:Ljava/util/LinkedHashMap;

    const/high16 v0, -0x40800000    # -1.0f

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {p3, p2, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 473
    invoke-virtual {p1}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/startapp/android/publish/adsCommon/c$a;->a(Landroid/content/Context;)V

    const/4 p1, 0x1

    .line 474
    iput-boolean p1, p0, Lcom/startapp/android/publish/adsCommon/c$a;->d:Z

    :cond_3c
    const/4 p1, 0x0

    .line 477
    iput-boolean p1, p0, Lcom/startapp/android/publish/adsCommon/c$a;->l:Z

    .line 478
    invoke-direct {p0}, Lcom/startapp/android/publish/adsCommon/c$a;->b()V

    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .registers 9

    .line 566
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MyWebViewClientSmartRedirect::onReceivedError - ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "], ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v1, v0}, Lcom/startapp/common/a/g;->a(ILjava/lang/String;)V

    .line 568
    invoke-direct {p0}, Lcom/startapp/android/publish/adsCommon/c$a;->b()V

    if-eqz p4, :cond_42

    .line 570
    invoke-static {p4}, Lcom/startapp/android/publish/adsCommon/c;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_42

    invoke-static {p4}, Lcom/startapp/android/publish/adsCommon/c;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_42

    .line 571
    invoke-virtual {p1}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/startapp/android/publish/adsCommon/f/d;->a:Lcom/startapp/android/publish/adsCommon/f/d;

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/startapp/android/publish/adsCommon/c$a;->b:Ljava/lang/String;

    invoke-static {v0, v1, v2, p4, v3}, Lcom/startapp/android/publish/adsCommon/f/f;->a(Landroid/content/Context;Lcom/startapp/android/publish/adsCommon/f/d;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 573
    :cond_42
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .registers 11

    .line 483
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MyWebViewClientSmartRedirect::shouldOverrideUrlLoading - ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v1, v0}, Lcom/startapp/common/a/g;->a(ILjava/lang/String;)V

    const/4 v0, 0x1

    .line 488
    :try_start_1b
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 489
    iget-wide v3, p0, Lcom/startapp/android/publish/adsCommon/c$a;->o:J

    sub-long v3, v1, v3

    long-to-float v3, v3

    const/high16 v4, 0x447a0000    # 1000.0f

    div-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    .line 490
    iput-wide v1, p0, Lcom/startapp/android/publish/adsCommon/c$a;->o:J

    .line 491
    iget-object v1, p0, Lcom/startapp/android/publish/adsCommon/c$a;->n:Ljava/util/LinkedHashMap;

    iget-object v2, p0, Lcom/startapp/android/publish/adsCommon/c$a;->a:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 494
    iget-object v1, p0, Lcom/startapp/android/publish/adsCommon/c$a;->n:Ljava/util/LinkedHashMap;

    const/high16 v2, -0x40800000    # -1.0f

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v1, p2, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 496
    iput-object p2, p0, Lcom/startapp/android/publish/adsCommon/c$a;->a:Ljava/lang/String;

    .line 497
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 499
    invoke-static {v1}, Lcom/startapp/android/publish/adsCommon/c;->b(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_53

    invoke-static {v1}, Lcom/startapp/android/publish/adsCommon/c;->c(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_53

    return v3

    .line 504
    :cond_53
    iget-boolean v2, p0, Lcom/startapp/android/publish/adsCommon/c$a;->k:Z

    if-nez v2, :cond_13c

    .line 505
    iput-boolean v0, p0, Lcom/startapp/android/publish/adsCommon/c$a;->c:Z

    .line 506
    invoke-virtual {p1}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/startapp/android/publish/adsCommon/c;->a(Landroid/content/Context;)V

    .line 507
    invoke-direct {p0}, Lcom/startapp/android/publish/adsCommon/c$a;->b()V

    .line 512
    invoke-virtual {p1}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v1}, Lcom/startapp/android/publish/adsCommon/c;->c(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_71

    invoke-virtual {p1}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object p2

    :cond_71
    invoke-static {v2, p2}, Lcom/startapp/android/publish/adsCommon/c;->c(Landroid/content/Context;Ljava/lang/String;)V

    .line 514
    iget-object p2, p0, Lcom/startapp/android/publish/adsCommon/c$a;->h:Ljava/lang/String;

    if-eqz p2, :cond_c0

    iget-object p2, p0, Lcom/startapp/android/publish/adsCommon/c$a;->h:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_c0

    iget-object p2, p0, Lcom/startapp/android/publish/adsCommon/c$a;->a:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p2

    iget-object v1, p0, Lcom/startapp/android/publish/adsCommon/c$a;->h:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_c0

    .line 515
    invoke-virtual {p1}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object p1

    sget-object p2, Lcom/startapp/android/publish/adsCommon/f/d;->e:Lcom/startapp/android/publish/adsCommon/f/d;

    const-string v1, "Wrong package name reached"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/startapp/android/publish/adsCommon/c$a;->h:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " Link: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/startapp/android/publish/adsCommon/c$a;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/startapp/android/publish/adsCommon/c$a;->b:Ljava/lang/String;

    invoke-static {p1, p2, v1, v2, v3}, Lcom/startapp/android/publish/adsCommon/f/f;->a(Landroid/content/Context;Lcom/startapp/android/publish/adsCommon/f/d;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_133

    .line 517
    :cond_c0
    invoke-static {}, Lcom/startapp/android/publish/common/metaData/MetaData;->getInstance()Lcom/startapp/android/publish/common/metaData/MetaData;

    move-result-object p2

    invoke-virtual {p2}, Lcom/startapp/android/publish/common/metaData/MetaData;->getAnalyticsConfig()Lcom/startapp/android/publish/adsCommon/f/a;

    move-result-object p2

    invoke-virtual {p2}, Lcom/startapp/android/publish/adsCommon/f/a;->g()Z

    move-result p2
    :try_end_cc
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_cc} :catch_13c

    const-string v1, "firstSucceededSmartRedirect"

    if-eqz p2, :cond_e4

    .line 518
    :try_start_d0
    invoke-virtual {p1}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {p2, v1, v2}, Lcom/startapp/android/publish/adsCommon/k;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_e4

    const/4 p2, 0x1

    goto :goto_e5

    :cond_e4
    const/4 p2, 0x0

    .line 521
    :goto_e5
    iget-object v2, p0, Lcom/startapp/android/publish/adsCommon/c$a;->g:Ljava/lang/Boolean;

    if-nez v2, :cond_f6

    .line 522
    invoke-static {}, Lcom/startapp/android/publish/common/metaData/MetaData;->getInstance()Lcom/startapp/android/publish/common/metaData/MetaData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/startapp/android/publish/common/metaData/MetaData;->getAnalyticsConfig()Lcom/startapp/android/publish/adsCommon/f/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/startapp/android/publish/adsCommon/f/a;->f()F

    move-result v2

    goto :goto_102

    .line 524
    :cond_f6
    iget-object v2, p0, Lcom/startapp/android/publish/adsCommon/c$a;->g:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_101

    const/high16 v2, 0x42c80000    # 100.0f

    goto :goto_102

    :cond_101
    const/4 v2, 0x0

    :goto_102
    if-nez p2, :cond_111

    .line 527
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v4

    const-wide/high16 v6, 0x4059000000000000L    # 100.0

    mul-double v4, v4, v6

    float-to-double v6, v2

    cmpg-double p2, v4, v6

    if-gez p2, :cond_133

    .line 528
    :cond_111
    new-instance p2, Lcom/startapp/android/publish/adsCommon/f/e;

    sget-object v2, Lcom/startapp/android/publish/adsCommon/f/d;->i:Lcom/startapp/android/publish/adsCommon/f/d;

    invoke-direct {p2, v2}, Lcom/startapp/android/publish/adsCommon/f/e;-><init>(Lcom/startapp/android/publish/adsCommon/f/d;)V

    .line 529
    invoke-virtual {p0}, Lcom/startapp/android/publish/adsCommon/c$a;->a()Lorg/json/JSONArray;

    move-result-object v2

    invoke-virtual {p2, v2}, Lcom/startapp/android/publish/adsCommon/f/e;->a(Lorg/json/JSONArray;)V

    .line 530
    invoke-virtual {p1}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v4, p0, Lcom/startapp/android/publish/adsCommon/c$a;->b:Ljava/lang/String;

    invoke-static {v2, p2, v4}, Lcom/startapp/android/publish/adsCommon/f/f;->a(Landroid/content/Context;Lcom/startapp/android/publish/adsCommon/f/e;Ljava/lang/String;)V

    .line 531
    invoke-virtual {p1}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-static {p1, v1, p2}, Lcom/startapp/android/publish/adsCommon/k;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 535
    :cond_133
    :goto_133
    iget-object p1, p0, Lcom/startapp/android/publish/adsCommon/c$a;->j:Ljava/lang/Runnable;

    if-eqz p1, :cond_13c

    .line 536
    iget-object p1, p0, Lcom/startapp/android/publish/adsCommon/c$a;->j:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V
    :try_end_13c
    .catch Ljava/lang/Exception; {:try_start_d0 .. :try_end_13c} :catch_13c

    :catch_13c
    :cond_13c
    return v0
.end method
