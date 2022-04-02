.class public Lcom/startapp/android/publish/ads/a/c;
.super Lcom/startapp/android/publish/ads/a/b;
.source "StartAppSDK"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startapp/android/publish/ads/a/c$a;
    }
.end annotation


# instance fields
.field protected d:Landroid/webkit/WebView;

.field protected e:Lcom/b/a/a/a/b/b;

.field protected f:Landroid/widget/RelativeLayout;

.field protected g:Ljava/lang/Runnable;

.field protected h:Ljava/lang/Runnable;

.field private i:Ljava/lang/Long;

.field private j:Ljava/lang/Long;

.field private k:J

.field private l:J

.field private m:Lcom/startapp/android/publish/adsCommon/i;

.field private n:Z

.field private o:Z


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 38
    invoke-direct {p0}, Lcom/startapp/android/publish/ads/a/b;-><init>()V

    const-wide/16 v0, 0x0

    .line 45
    iput-wide v0, p0, Lcom/startapp/android/publish/ads/a/c;->k:J

    .line 46
    iput-wide v0, p0, Lcom/startapp/android/publish/ads/a/c;->l:J

    const/4 v0, 0x1

    .line 48
    iput-boolean v0, p0, Lcom/startapp/android/publish/ads/a/c;->n:Z

    const/4 v0, 0x0

    .line 49
    iput-boolean v0, p0, Lcom/startapp/android/publish/ads/a/c;->o:Z

    .line 51
    new-instance v0, Lcom/startapp/android/publish/ads/a/c$1;

    invoke-direct {v0, p0}, Lcom/startapp/android/publish/ads/a/c$1;-><init>(Lcom/startapp/android/publish/ads/a/c;)V

    iput-object v0, p0, Lcom/startapp/android/publish/ads/a/c;->g:Ljava/lang/Runnable;

    .line 59
    new-instance v0, Lcom/startapp/android/publish/ads/a/c$2;

    invoke-direct {v0, p0}, Lcom/startapp/android/publish/ads/a/c$2;-><init>(Lcom/startapp/android/publish/ads/a/c;)V

    iput-object v0, p0, Lcom/startapp/android/publish/ads/a/c;->h:Ljava/lang/Runnable;

    return-void
.end method

.method private G()Z
    .registers 2

    .line 195
    invoke-virtual {p0}, Lcom/startapp/android/publish/ads/a/c;->w()Lcom/startapp/android/publish/adsCommon/Ad;

    move-result-object v0

    instance-of v0, v0, Lcom/startapp/android/publish/ads/b/c;

    if-eqz v0, :cond_13

    .line 196
    invoke-virtual {p0}, Lcom/startapp/android/publish/ads/a/c;->w()Lcom/startapp/android/publish/adsCommon/Ad;

    move-result-object v0

    check-cast v0, Lcom/startapp/android/publish/ads/b/c;

    invoke-virtual {v0}, Lcom/startapp/android/publish/ads/b/c;->hasAdCacheTtlPassed()Z

    move-result v0

    return v0

    :cond_13
    const/4 v0, 0x0

    return v0
.end method

.method private a(Ljava/lang/String;IZ)V
    .registers 18

    move-object v0, p0

    move/from16 v1, p2

    .line 329
    invoke-virtual {p0}, Lcom/startapp/android/publish/ads/a/c;->b()Landroid/app/Activity;

    move-result-object v2

    .line 331
    invoke-virtual {p0}, Lcom/startapp/android/publish/ads/a/c;->i()[Ljava/lang/String;

    move-result-object v3

    array-length v3, v3

    const/4 v4, 0x0

    if-ge v1, v3, :cond_16

    invoke-virtual {p0}, Lcom/startapp/android/publish/ads/a/c;->i()[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, v1

    goto :goto_17

    :cond_16
    move-object v3, v4

    .line 332
    :goto_17
    invoke-virtual {p0}, Lcom/startapp/android/publish/ads/a/c;->j()[Ljava/lang/String;

    move-result-object v5

    array-length v5, v5

    if-ge v1, v5, :cond_24

    invoke-virtual {p0}, Lcom/startapp/android/publish/ads/a/c;->j()[Ljava/lang/String;

    move-result-object v4

    aget-object v4, v4, v1

    .line 333
    :cond_24
    invoke-virtual {p0}, Lcom/startapp/android/publish/ads/a/c;->C()Lcom/startapp/android/publish/adsCommon/d/b;

    move-result-object v5

    .line 334
    invoke-static {}, Lcom/startapp/android/publish/adsCommon/b;->a()Lcom/startapp/android/publish/adsCommon/b;

    move-result-object v6

    invoke-virtual {v6}, Lcom/startapp/android/publish/adsCommon/b;->A()J

    move-result-wide v6

    .line 335
    invoke-static {}, Lcom/startapp/android/publish/adsCommon/b;->a()Lcom/startapp/android/publish/adsCommon/b;

    move-result-object v8

    invoke-virtual {v8}, Lcom/startapp/android/publish/adsCommon/b;->B()J

    move-result-wide v8

    .line 336
    invoke-virtual {p0, v1}, Lcom/startapp/android/publish/ads/a/c;->a(I)Z

    move-result v10

    .line 337
    invoke-virtual {p0, v1}, Lcom/startapp/android/publish/ads/a/c;->b(I)Ljava/lang/Boolean;

    move-result-object v11

    new-instance v13, Lcom/startapp/android/publish/ads/a/c$5;

    invoke-direct {v13, p0}, Lcom/startapp/android/publish/ads/a/c$5;-><init>(Lcom/startapp/android/publish/ads/a/c;)V

    move-object v1, v2

    move-object v2, p1

    move/from16 v12, p3

    .line 329
    invoke-static/range {v1 .. v13}, Lcom/startapp/android/publish/adsCommon/c;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/startapp/android/publish/adsCommon/d/b;JJZLjava/lang/Boolean;ZLjava/lang/Runnable;)V

    return-void
.end method

.method static synthetic a(Lcom/startapp/android/publish/ads/a/c;)Z
    .registers 1

    .line 38
    iget-boolean p0, p0, Lcom/startapp/android/publish/ads/a/c;->o:Z

    return p0
.end method

.method static synthetic a(Lcom/startapp/android/publish/ads/a/c;Z)Z
    .registers 2

    .line 38
    iput-boolean p1, p0, Lcom/startapp/android/publish/ads/a/c;->n:Z

    return p1
.end method

.method private b(Ljava/lang/String;IZ)V
    .registers 11

    .line 349
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.startapp.android.OnClickCallback"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 350
    invoke-virtual {p0}, Lcom/startapp/android/publish/ads/a/c;->b()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/startapp/common/b;->a(Landroid/content/Context;)Lcom/startapp/common/b;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/startapp/common/b;->a(Landroid/content/Intent;)Z

    .line 351
    invoke-virtual {p0}, Lcom/startapp/android/publish/ads/a/c;->b()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/startapp/android/publish/ads/a/c;->b:Lcom/startapp/android/publish/common/model/AdPreferences$Placement;

    invoke-static {v0, v1}, Lcom/startapp/android/publish/adsCommon/c;->a(Landroid/content/Context;Lcom/startapp/android/publish/common/model/AdPreferences$Placement;)Z

    move-result v0

    .line 352
    invoke-virtual {p0}, Lcom/startapp/android/publish/ads/a/c;->b()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/startapp/android/publish/ads/a/c;->i()[Ljava/lang/String;

    move-result-object v2

    array-length v2, v2

    if-ge p2, v2, :cond_32

    invoke-virtual {p0}, Lcom/startapp/android/publish/ads/a/c;->i()[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, p2

    goto :goto_33

    :cond_32
    const/4 v2, 0x0

    :goto_33
    move-object v3, v2

    invoke-virtual {p0}, Lcom/startapp/android/publish/ads/a/c;->C()Lcom/startapp/android/publish/adsCommon/d/b;

    move-result-object v4

    invoke-virtual {p0, p2}, Lcom/startapp/android/publish/ads/a/c;->a(I)Z

    move-result p2

    if-eqz p2, :cond_43

    if-nez v0, :cond_43

    const/4 p2, 0x1

    const/4 v5, 0x1

    goto :goto_45

    :cond_43
    const/4 p2, 0x0

    const/4 v5, 0x0

    :goto_45
    move-object v2, p1

    move v6, p3

    invoke-static/range {v1 .. v6}, Lcom/startapp/android/publish/adsCommon/c;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/startapp/android/publish/adsCommon/d/b;ZZ)V

    .line 354
    invoke-virtual {p0}, Lcom/startapp/android/publish/ads/a/c;->p()V

    return-void
.end method

.method static synthetic b(Lcom/startapp/android/publish/ads/a/c;)Z
    .registers 1

    .line 38
    iget-boolean p0, p0, Lcom/startapp/android/publish/ads/a/c;->n:Z

    return p0
.end method

.method private b(Lcom/startapp/android/publish/adsCommon/Ad;)Z
    .registers 4

    const-wide/16 v0, 0x8

    .line 277
    invoke-static {v0, v1}, Lcom/startapp/android/publish/adsCommon/Utils/i;->a(J)Z

    move-result v0

    if-eqz v0, :cond_e

    instance-of p1, p1, Lcom/startapp/android/publish/ads/splash/b;

    if-eqz p1, :cond_e

    const/4 p1, 0x1

    goto :goto_f

    :cond_e
    const/4 p1, 0x0

    :goto_f
    return p1
.end method


# virtual methods
.method protected A()V
    .registers 3

    .line 231
    invoke-static {}, Lcom/startapp/android/publish/common/metaData/MetaData;->getInstance()Lcom/startapp/android/publish/common/metaData/MetaData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/startapp/android/publish/common/metaData/MetaData;->isOmsdkEnabled()Z

    move-result v0

    if-eqz v0, :cond_42

    iget-object v0, p0, Lcom/startapp/android/publish/ads/a/c;->e:Lcom/b/a/a/a/b/b;

    if-nez v0, :cond_42

    .line 232
    iget-object v0, p0, Lcom/startapp/android/publish/ads/a/c;->d:Landroid/webkit/WebView;

    invoke-static {v0}, Lcom/startapp/android/publish/omsdk/a;->a(Landroid/webkit/WebView;)Lcom/b/a/a/a/b/b;

    move-result-object v0

    iput-object v0, p0, Lcom/startapp/android/publish/ads/a/c;->e:Lcom/b/a/a/a/b/b;

    if-eqz v0, :cond_42

    .line 233
    iget-object v0, p0, Lcom/startapp/android/publish/ads/a/c;->d:Landroid/webkit/WebView;

    if-eqz v0, :cond_42

    .line 234
    iget-object v0, p0, Lcom/startapp/android/publish/ads/a/c;->a:Lcom/startapp/android/publish/adsCommon/adinformation/b;

    if-eqz v0, :cond_2d

    .line 235
    iget-object v0, p0, Lcom/startapp/android/publish/ads/a/c;->a:Lcom/startapp/android/publish/adsCommon/adinformation/b;

    invoke-virtual {v0}, Lcom/startapp/android/publish/adsCommon/adinformation/b;->a()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2d

    .line 237
    iget-object v1, p0, Lcom/startapp/android/publish/ads/a/c;->e:Lcom/b/a/a/a/b/b;

    invoke-virtual {v1, v0}, Lcom/b/a/a/a/b/b;->b(Landroid/view/View;)V

    .line 241
    :cond_2d
    iget-object v0, p0, Lcom/startapp/android/publish/ads/a/c;->e:Lcom/b/a/a/a/b/b;

    iget-object v1, p0, Lcom/startapp/android/publish/ads/a/c;->d:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Lcom/b/a/a/a/b/b;->a(Landroid/view/View;)V

    .line 242
    iget-object v0, p0, Lcom/startapp/android/publish/ads/a/c;->e:Lcom/b/a/a/a/b/b;

    invoke-virtual {v0}, Lcom/b/a/a/a/b/b;->a()V

    .line 244
    iget-object v0, p0, Lcom/startapp/android/publish/ads/a/c;->e:Lcom/b/a/a/a/b/b;

    invoke-static {v0}, Lcom/b/a/a/a/b/a;->a(Lcom/b/a/a/a/b/b;)Lcom/b/a/a/a/b/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/a/a/b/a;->a()V

    :cond_42
    return-void
.end method

.method protected B()V
    .registers 4

    .line 319
    invoke-virtual {p0}, Lcom/startapp/android/publish/ads/a/c;->l()[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_23

    .line 320
    array-length v0, v0

    if-lez v0, :cond_23

    .line 321
    invoke-virtual {p0}, Lcom/startapp/android/publish/ads/a/c;->l()[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    if-eqz v0, :cond_23

    .line 322
    invoke-virtual {p0}, Lcom/startapp/android/publish/ads/a/c;->b()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/startapp/android/publish/ads/a/c;->l()[Ljava/lang/String;

    move-result-object v2

    aget-object v1, v2, v1

    invoke-virtual {p0}, Lcom/startapp/android/publish/ads/a/c;->C()Lcom/startapp/android/publish/adsCommon/d/b;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/startapp/android/publish/adsCommon/c;->b(Landroid/content/Context;Ljava/lang/String;Lcom/startapp/android/publish/adsCommon/d/b;)V

    :cond_23
    return-void
.end method

.method protected C()Lcom/startapp/android/publish/adsCommon/d/b;
    .registers 4

    .line 397
    new-instance v0, Lcom/startapp/android/publish/adsCommon/d/a;

    invoke-virtual {p0}, Lcom/startapp/android/publish/ads/a/c;->E()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/startapp/android/publish/ads/a/c;->n()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/startapp/android/publish/adsCommon/d/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method protected D()Lcom/startapp/android/publish/adsCommon/d/b;
    .registers 3

    .line 401
    new-instance v0, Lcom/startapp/android/publish/adsCommon/d/b;

    invoke-virtual {p0}, Lcom/startapp/android/publish/ads/a/c;->n()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/startapp/android/publish/adsCommon/d/b;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method protected E()Ljava/lang/String;
    .registers 5

    .line 405
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/startapp/android/publish/ads/a/c;->l:J

    .line 406
    iget-wide v2, p0, Lcom/startapp/android/publish/ads/a/c;->k:J

    sub-long/2addr v0, v2

    long-to-double v0, v0

    const-wide v2, 0x408f400000000000L    # 1000.0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v0, v2

    .line 407
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected F()J
    .registers 4

    .line 419
    invoke-virtual {p0}, Lcom/startapp/android/publish/ads/a/c;->o()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 420
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0}, Lcom/startapp/android/publish/ads/a/c;->o()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    return-wide v0

    .line 423
    :cond_15
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {}, Lcom/startapp/android/publish/common/metaData/MetaData;->getInstance()Lcom/startapp/android/publish/common/metaData/MetaData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/startapp/android/publish/common/metaData/MetaData;->getIABDisplayImpressionDelayInSeconds()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public a(Landroid/os/Bundle;)V
    .registers 6

    .line 68
    invoke-super {p0, p1}, Lcom/startapp/android/publish/ads/a/b;->a(Landroid/os/Bundle;)V

    const-string v0, "adCacheTtl"

    const-string v1, "lastLoadTime"

    if-nez p1, :cond_36

    .line 70
    invoke-virtual {p0}, Lcom/startapp/android/publish/ads/a/c;->a()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1f

    .line 71
    invoke-virtual {p0}, Lcom/startapp/android/publish/ads/a/c;->a()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    iput-object p1, p0, Lcom/startapp/android/publish/ads/a/c;->i:Ljava/lang/Long;

    .line 73
    :cond_1f
    invoke-virtual {p0}, Lcom/startapp/android/publish/ads/a/c;->a()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_61

    .line 74
    invoke-virtual {p0}, Lcom/startapp/android/publish/ads/a/c;->a()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    iput-object p1, p0, Lcom/startapp/android/publish/ads/a/c;->j:Ljava/lang/Long;

    goto :goto_61

    :cond_36
    const-string v2, "postrollHtml"

    .line 77
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_45

    .line 78
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/startapp/android/publish/ads/a/c;->a(Ljava/lang/String;)V

    .line 80
    :cond_45
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_53

    .line 81
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    iput-object v1, p0, Lcom/startapp/android/publish/ads/a/c;->i:Ljava/lang/Long;

    .line 83
    :cond_53
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_61

    .line 84
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    iput-object p1, p0, Lcom/startapp/android/publish/ads/a/c;->j:Ljava/lang/Long;

    :cond_61
    :goto_61
    return-void
.end method

.method public a(Landroid/webkit/WebView;)V
    .registers 3

    const/4 v0, 0x0

    .line 211
    iput-boolean v0, p0, Lcom/startapp/android/publish/ads/a/c;->n:Z

    .line 212
    new-instance v0, Lcom/startapp/android/publish/ads/a/c$4;

    invoke-direct {v0, p0}, Lcom/startapp/android/publish/ads/a/c$4;-><init>(Lcom/startapp/android/publish/ads/a/c;)V

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method protected varargs a(Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 4

    .line 250
    iget-object v0, p0, Lcom/startapp/android/publish/ads/a/c;->d:Landroid/webkit/WebView;

    invoke-static {v0, p1, p2}, Lcom/startapp/android/publish/adsCommon/Utils/i;->a(Landroid/webkit/WebView;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method protected a(Ljava/lang/String;Z)Z
    .registers 9

    .line 281
    iget-object v0, p0, Lcom/startapp/android/publish/ads/a/c;->m:Lcom/startapp/android/publish/adsCommon/i;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/startapp/android/publish/adsCommon/i;->a(Z)V

    .line 282
    invoke-virtual {p0}, Lcom/startapp/android/publish/ads/a/c;->w()Lcom/startapp/android/publish/adsCommon/Ad;

    move-result-object v0

    .line 283
    invoke-virtual {p0}, Lcom/startapp/android/publish/ads/a/c;->b()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/startapp/android/publish/ads/a/c;->b:Lcom/startapp/android/publish/common/model/AdPreferences$Placement;

    invoke-static {v2, v3}, Lcom/startapp/android/publish/adsCommon/c;->a(Landroid/content/Context;Lcom/startapp/android/publish/common/model/AdPreferences$Placement;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_23

    invoke-direct {p0, v0}, Lcom/startapp/android/publish/ads/a/c;->b(Lcom/startapp/android/publish/adsCommon/Ad;)Z

    move-result v0

    if-nez v0, :cond_23

    const/4 v0, 0x1

    goto :goto_24

    :cond_23
    const/4 v0, 0x0

    .line 284
    :goto_24
    invoke-virtual {p0, p1}, Lcom/startapp/android/publish/ads/a/c;->b(Ljava/lang/String;)Z

    move-result v2

    const/4 v4, 0x6

    if-eqz v2, :cond_51

    .line 287
    :try_start_2b
    invoke-static {p1}, Lcom/startapp/android/publish/adsCommon/c;->a(Ljava/lang/String;)I

    move-result v2

    .line 289
    invoke-virtual {p0}, Lcom/startapp/android/publish/ads/a/c;->d()[Z

    move-result-object v5

    aget-boolean v5, v5, v2

    if-eqz v5, :cond_42

    if-nez v0, :cond_42

    const-string v0, "forceExternal -interMode - smartredirect"

    .line 290
    invoke-static {v4, v0}, Lcom/startapp/common/a/g;->a(ILjava/lang/String;)V

    .line 291
    invoke-direct {p0, p1, v2, p2}, Lcom/startapp/android/publish/ads/a/c;->a(Ljava/lang/String;IZ)V

    goto :goto_6c

    :cond_42
    const-string v0, "forceExternal - interMode - redirect"

    .line 293
    invoke-static {v4, v0}, Lcom/startapp/common/a/g;->a(ILjava/lang/String;)V

    .line 294
    invoke-direct {p0, p1, v2, p2}, Lcom/startapp/android/publish/ads/a/c;->b(Ljava/lang/String;IZ)V
    :try_end_4a
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_4a} :catch_4b

    goto :goto_6c

    :catch_4b
    const-string p1, "Error while trying parsing index from url"

    .line 298
    invoke-static {v4, p1}, Lcom/startapp/common/a/g;->a(ILjava/lang/String;)V

    return v3

    .line 303
    :cond_51
    invoke-virtual {p0}, Lcom/startapp/android/publish/ads/a/c;->d()[Z

    move-result-object v2

    aget-boolean v2, v2, v3

    if-eqz v2, :cond_64

    if-nez v0, :cond_64

    const-string v0, "forceExternal - interMode - redirectr"

    .line 304
    invoke-static {v4, v0}, Lcom/startapp/common/a/g;->a(ILjava/lang/String;)V

    .line 305
    invoke-direct {p0, p1, v3, p2}, Lcom/startapp/android/publish/ads/a/c;->a(Ljava/lang/String;IZ)V

    goto :goto_6c

    :cond_64
    const-string v0, "forceExternal - interMode - smartredirect"

    .line 307
    invoke-static {v4, v0}, Lcom/startapp/common/a/g;->a(ILjava/lang/String;)V

    .line 308
    invoke-direct {p0, p1, v3, p2}, Lcom/startapp/android/publish/ads/a/c;->b(Ljava/lang/String;IZ)V

    :goto_6c
    return v1
.end method

.method public b(Landroid/os/Bundle;)V
    .registers 5

    .line 91
    invoke-super {p0, p1}, Lcom/startapp/android/publish/ads/a/b;->b(Landroid/os/Bundle;)V

    .line 92
    invoke-virtual {p0}, Lcom/startapp/android/publish/ads/a/c;->f()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 93
    invoke-virtual {p0}, Lcom/startapp/android/publish/ads/a/c;->f()Ljava/lang/String;

    move-result-object v0

    const-string v1, "postrollHtml"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    :cond_12
    iget-object v0, p0, Lcom/startapp/android/publish/ads/a/c;->i:Ljava/lang/Long;

    if-eqz v0, :cond_1f

    .line 96
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-string v2, "lastLoadTime"

    invoke-virtual {p1, v2, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 98
    :cond_1f
    iget-object v0, p0, Lcom/startapp/android/publish/ads/a/c;->j:Ljava/lang/Long;

    if-eqz v0, :cond_2c

    .line 99
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-string v2, "adCacheTtl"

    invoke-virtual {p1, v2, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    :cond_2c
    return-void
.end method

.method public b(Landroid/webkit/WebView;)V
    .registers 3

    if-eqz p1, :cond_6

    const/4 v0, 0x0

    .line 222
    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_6
    return-void
.end method

.method protected b(Ljava/lang/String;)Z
    .registers 3

    .line 315
    iget-boolean v0, p0, Lcom/startapp/android/publish/ads/a/c;->o:Z

    if-nez v0, :cond_e

    const-string v0, "index="

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_e

    const/4 p1, 0x1

    goto :goto_f

    :cond_e
    const/4 p1, 0x0

    :goto_f
    return p1
.end method

.method protected c(Landroid/webkit/WebView;)V
    .registers 2

    return-void
.end method

.method public p()V
    .registers 3

    .line 358
    invoke-super {p0}, Lcom/startapp/android/publish/ads/a/b;->p()V

    .line 359
    invoke-static {}, Lcom/startapp/android/publish/adsCommon/m;->a()Lcom/startapp/android/publish/adsCommon/m;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/startapp/android/publish/adsCommon/m;->a(Z)V

    .line 361
    iget-object v0, p0, Lcom/startapp/android/publish/ads/a/c;->m:Lcom/startapp/android/publish/adsCommon/i;

    if-eqz v0, :cond_12

    .line 362
    invoke-virtual {v0, v1}, Lcom/startapp/android/publish/adsCommon/i;->a(Z)V

    .line 365
    :cond_12
    invoke-virtual {p0}, Lcom/startapp/android/publish/ads/a/c;->b()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/startapp/android/publish/ads/a/c$6;

    invoke-direct {v1, p0}, Lcom/startapp/android/publish/ads/a/c$6;-><init>(Lcom/startapp/android/publish/ads/a/c;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public r()Z
    .registers 3

    .line 412
    invoke-virtual {p0}, Lcom/startapp/android/publish/ads/a/c;->B()V

    .line 413
    invoke-static {}, Lcom/startapp/android/publish/adsCommon/m;->a()Lcom/startapp/android/publish/adsCommon/m;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/startapp/android/publish/adsCommon/m;->a(Z)V

    .line 414
    iget-object v0, p0, Lcom/startapp/android/publish/ads/a/c;->m:Lcom/startapp/android/publish/adsCommon/i;

    invoke-virtual {v0, v1}, Lcom/startapp/android/publish/adsCommon/i;->a(Z)V

    return v1
.end method

.method public s()V
    .registers 3

    .line 378
    iget-object v0, p0, Lcom/startapp/android/publish/ads/a/c;->m:Lcom/startapp/android/publish/adsCommon/i;

    if-eqz v0, :cond_7

    .line 379
    invoke-virtual {v0}, Lcom/startapp/android/publish/adsCommon/i;->b()V

    .line 382
    :cond_7
    iget-object v0, p0, Lcom/startapp/android/publish/ads/a/c;->a:Lcom/startapp/android/publish/adsCommon/adinformation/b;

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/startapp/android/publish/ads/a/c;->a:Lcom/startapp/android/publish/adsCommon/adinformation/b;

    invoke-virtual {v0}, Lcom/startapp/android/publish/adsCommon/adinformation/b;->b()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 383
    iget-object v0, p0, Lcom/startapp/android/publish/ads/a/c;->a:Lcom/startapp/android/publish/adsCommon/adinformation/b;

    invoke-virtual {v0}, Lcom/startapp/android/publish/adsCommon/adinformation/b;->d()V

    .line 386
    :cond_18
    iget-object v0, p0, Lcom/startapp/android/publish/ads/a/c;->d:Landroid/webkit/WebView;

    if-eqz v0, :cond_1f

    .line 387
    invoke-static {v0}, Lcom/startapp/common/a/c;->b(Landroid/webkit/WebView;)V

    .line 391
    :cond_1f
    invoke-virtual {p0}, Lcom/startapp/android/publish/ads/a/c;->g()Ljava/lang/String;

    move-result-object v0

    const-string v1, "back"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 392
    invoke-virtual {p0}, Lcom/startapp/android/publish/ads/a/c;->p()V

    :cond_2e
    return-void
.end method

.method public u()V
    .registers 10

    const-string v0, "@jsTag@"

    .line 105
    invoke-direct {p0}, Lcom/startapp/android/publish/ads/a/c;->G()Z

    move-result v1

    if-eqz v1, :cond_15

    const/4 v0, 0x3

    const-string v1, "InterstitialMode"

    const-string v2, "Ad Cache TTL passed, finishing"

    .line 106
    invoke-static {v1, v0, v2}, Lcom/startapp/common/a/g;->a(Ljava/lang/String;ILjava/lang/String;)V

    .line 107
    invoke-virtual {p0}, Lcom/startapp/android/publish/ads/a/c;->p()V

    goto/16 :goto_126

    .line 109
    :cond_15
    invoke-static {}, Lcom/startapp/android/publish/adsCommon/m;->a()Lcom/startapp/android/publish/adsCommon/m;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/startapp/android/publish/adsCommon/m;->a(Z)V

    .line 112
    iget-object v1, p0, Lcom/startapp/android/publish/ads/a/c;->m:Lcom/startapp/android/publish/adsCommon/i;

    if-nez v1, :cond_39

    .line 113
    new-instance v1, Lcom/startapp/android/publish/adsCommon/i;

    invoke-virtual {p0}, Lcom/startapp/android/publish/ads/a/c;->b()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {p0}, Lcom/startapp/android/publish/ads/a/c;->h()[Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Lcom/startapp/android/publish/ads/a/c;->D()Lcom/startapp/android/publish/adsCommon/d/b;

    move-result-object v6

    invoke-virtual {p0}, Lcom/startapp/android/publish/ads/a/c;->F()J

    move-result-wide v7

    move-object v3, v1

    invoke-direct/range {v3 .. v8}, Lcom/startapp/android/publish/adsCommon/i;-><init>(Landroid/content/Context;[Ljava/lang/String;Lcom/startapp/android/publish/adsCommon/d/b;J)V

    iput-object v1, p0, Lcom/startapp/android/publish/ads/a/c;->m:Lcom/startapp/android/publish/adsCommon/i;

    .line 116
    :cond_39
    iget-object v1, p0, Lcom/startapp/android/publish/ads/a/c;->d:Landroid/webkit/WebView;

    if-nez v1, :cond_118

    .line 117
    new-instance v1, Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcom/startapp/android/publish/ads/a/c;->b()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/startapp/android/publish/ads/a/c;->f:Landroid/widget/RelativeLayout;

    const-string v3, "StartApp Ad"

    .line 118
    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 119
    iget-object v1, p0, Lcom/startapp/android/publish/ads/a/c;->f:Landroid/widget/RelativeLayout;

    const/high16 v3, 0x57f00000

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->setId(I)V

    .line 120
    invoke-virtual {p0}, Lcom/startapp/android/publish/ads/a/c;->b()Landroid/app/Activity;

    move-result-object v1

    iget-object v3, p0, Lcom/startapp/android/publish/ads/a/c;->f:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v3}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    .line 125
    :try_start_5d
    new-instance v1, Landroid/webkit/WebView;

    invoke-virtual {p0}, Lcom/startapp/android/publish/ads/a/c;->b()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/startapp/android/publish/ads/a/c;->d:Landroid/webkit/WebView;

    const/high16 v3, -0x1000000

    .line 126
    invoke-virtual {v1, v3}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    .line 127
    invoke-virtual {p0}, Lcom/startapp/android/publish/ads/a/c;->b()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    const v3, 0x1020002

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const v3, 0x777777

    invoke-virtual {v1, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 128
    iget-object v1, p0, Lcom/startapp/android/publish/ads/a/c;->d:Landroid/webkit/WebView;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/webkit/WebView;->setVerticalScrollBarEnabled(Z)V

    .line 129
    iget-object v1, p0, Lcom/startapp/android/publish/ads/a/c;->d:Landroid/webkit/WebView;

    invoke-virtual {v1, v3}, Landroid/webkit/WebView;->setHorizontalScrollBarEnabled(Z)V

    .line 130
    iget-object v1, p0, Lcom/startapp/android/publish/ads/a/c;->d:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 132
    iget-object v1, p0, Lcom/startapp/android/publish/ads/a/c;->d:Landroid/webkit/WebView;

    invoke-static {v1}, Lcom/startapp/common/a/c;->a(Landroid/webkit/WebView;)V

    .line 134
    iget-boolean v1, p0, Lcom/startapp/android/publish/ads/a/c;->c:Z

    if-eqz v1, :cond_ad

    .line 135
    iget-object v1, p0, Lcom/startapp/android/publish/ads/a/c;->d:Landroid/webkit/WebView;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/startapp/common/a/c;->a(Landroid/webkit/WebView;Landroid/graphics/Paint;)V

    .line 138
    :cond_ad
    iget-object v1, p0, Lcom/startapp/android/publish/ads/a/c;->d:Landroid/webkit/WebView;

    new-instance v2, Lcom/startapp/android/publish/ads/a/c$3;

    invoke-direct {v2, p0}, Lcom/startapp/android/publish/ads/a/c$3;-><init>(Lcom/startapp/android/publish/ads/a/c;)V

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 144
    iget-object v1, p0, Lcom/startapp/android/publish/ads/a/c;->d:Landroid/webkit/WebView;

    invoke-virtual {v1, v3}, Landroid/webkit/WebView;->setLongClickable(Z)V

    .line 146
    iget-object v1, p0, Lcom/startapp/android/publish/ads/a/c;->d:Landroid/webkit/WebView;

    invoke-virtual {p0}, Lcom/startapp/android/publish/ads/a/c;->y()Lcom/startapp/android/publish/html/JsInterface;

    move-result-object v2

    const-string v3, "startappwall"

    invoke-virtual {v1, v2, v3}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 148
    invoke-virtual {p0}, Lcom/startapp/android/publish/ads/a/c;->z()V

    .line 150
    iget-object v1, p0, Lcom/startapp/android/publish/ads/a/c;->d:Landroid/webkit/WebView;

    invoke-virtual {p0, v1}, Lcom/startapp/android/publish/ads/a/c;->a(Landroid/webkit/WebView;)V

    .line 152
    invoke-virtual {p0}, Lcom/startapp/android/publish/ads/a/c;->b()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/startapp/android/publish/ads/a/c;->d:Landroid/webkit/WebView;

    invoke-virtual {p0}, Lcom/startapp/android/publish/ads/a/c;->f()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/startapp/android/publish/adsCommon/Utils/i;->a(Landroid/content/Context;Landroid/webkit/WebView;Ljava/lang/String;)V

    const-string v1, "true"

    .line 154
    invoke-virtual {p0}, Lcom/startapp/android/publish/ads/a/c;->f()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0, v0}, Lcom/startapp/android/publish/adsCommon/Utils/i;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/startapp/android/publish/ads/a/c;->o:Z

    .line 156
    invoke-virtual {p0}, Lcom/startapp/android/publish/ads/a/c;->x()V

    .line 158
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 162
    iget-object v1, p0, Lcom/startapp/android/publish/ads/a/c;->f:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/startapp/android/publish/ads/a/c;->d:Landroid/webkit/WebView;

    invoke-virtual {v1, v2, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 164
    iget-object v0, p0, Lcom/startapp/android/publish/ads/a/c;->f:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v0}, Lcom/startapp/android/publish/ads/a/c;->a(Landroid/widget/RelativeLayout;)V
    :try_end_101
    .catch Ljava/lang/Exception; {:try_start_5d .. :try_end_101} :catch_102

    goto :goto_120

    :catch_102
    move-exception v0

    .line 167
    invoke-virtual {p0}, Lcom/startapp/android/publish/ads/a/c;->b()Landroid/app/Activity;

    move-result-object v1

    sget-object v2, Lcom/startapp/android/publish/adsCommon/f/d;->b:Lcom/startapp/android/publish/adsCommon/f/d;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v3, "InterstitialMode.onResume - WebView failed"

    const-string v4, ""

    invoke-static {v1, v2, v3, v0, v4}, Lcom/startapp/android/publish/adsCommon/f/f;->a(Landroid/content/Context;Lcom/startapp/android/publish/adsCommon/f/d;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    invoke-virtual {p0}, Lcom/startapp/android/publish/ads/a/c;->p()V

    goto :goto_120

    .line 171
    :cond_118
    invoke-static {v1}, Lcom/startapp/common/a/c;->c(Landroid/webkit/WebView;)V

    .line 172
    iget-object v0, p0, Lcom/startapp/android/publish/ads/a/c;->m:Lcom/startapp/android/publish/adsCommon/i;

    invoke-virtual {v0}, Lcom/startapp/android/publish/adsCommon/i;->a()V

    .line 174
    :goto_120
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/startapp/android/publish/ads/a/c;->k:J

    :goto_126
    return-void
.end method

.method public v()V
    .registers 4

    .line 180
    invoke-super {p0}, Lcom/startapp/android/publish/ads/a/b;->v()V

    .line 181
    iget-object v0, p0, Lcom/startapp/android/publish/ads/a/c;->e:Lcom/b/a/a/a/b/b;

    if-eqz v0, :cond_d

    .line 182
    invoke-virtual {v0}, Lcom/b/a/a/a/b/b;->b()V

    const/4 v0, 0x0

    .line 183
    iput-object v0, p0, Lcom/startapp/android/publish/ads/a/c;->e:Lcom/b/a/a/a/b/b;

    .line 186
    :cond_d
    iget-object v0, p0, Lcom/startapp/android/publish/ads/a/c;->d:Landroid/webkit/WebView;

    const-wide/16 v1, 0x3e8

    invoke-static {v0, v1, v2}, Lcom/startapp/android/publish/adsCommon/Utils/i;->a(Ljava/lang/Object;J)V

    return-void
.end method

.method protected x()V
    .registers 3

    .line 190
    iget-object v0, p0, Lcom/startapp/android/publish/ads/a/c;->d:Landroid/webkit/WebView;

    new-instance v1, Lcom/startapp/android/publish/ads/a/c$a;

    invoke-direct {v1, p0}, Lcom/startapp/android/publish/ads/a/c$a;-><init>(Lcom/startapp/android/publish/ads/a/c;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 191
    iget-object v0, p0, Lcom/startapp/android/publish/ads/a/c;->d:Landroid/webkit/WebView;

    new-instance v1, Landroid/webkit/WebChromeClient;

    invoke-direct {v1}, Landroid/webkit/WebChromeClient;-><init>()V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    return-void
.end method

.method protected y()Lcom/startapp/android/publish/html/JsInterface;
    .registers 9

    .line 202
    new-instance v7, Lcom/startapp/android/publish/html/JsInterface;

    invoke-virtual {p0}, Lcom/startapp/android/publish/ads/a/c;->b()Landroid/app/Activity;

    move-result-object v1

    iget-object v3, p0, Lcom/startapp/android/publish/ads/a/c;->g:Ljava/lang/Runnable;

    iget-object v4, p0, Lcom/startapp/android/publish/ads/a/c;->h:Ljava/lang/Runnable;

    invoke-virtual {p0}, Lcom/startapp/android/publish/ads/a/c;->C()Lcom/startapp/android/publish/adsCommon/d/b;

    move-result-object v5

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/startapp/android/publish/ads/a/c;->a(I)Z

    move-result v6

    move-object v0, v7

    move-object v2, v3

    invoke-direct/range {v0 .. v6}, Lcom/startapp/android/publish/html/JsInterface;-><init>(Landroid/content/Context;Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;Lcom/startapp/android/publish/adsCommon/d/b;Z)V

    return-object v7
.end method

.method protected z()V
    .registers 2

    .line 206
    iget-object v0, p0, Lcom/startapp/android/publish/ads/a/c;->m:Lcom/startapp/android/publish/adsCommon/i;

    invoke-virtual {v0}, Lcom/startapp/android/publish/adsCommon/i;->a()V

    return-void
.end method
