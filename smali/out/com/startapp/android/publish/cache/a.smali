.class public Lcom/startapp/android/publish/cache/a;
.super Ljava/lang/Object;
.source "StartAppSDK"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startapp/android/publish/cache/a$a;
    }
.end annotation


# static fields
.field private static c:Lcom/startapp/android/publish/cache/a;


# instance fields
.field final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/startapp/android/publish/cache/c;",
            "Lcom/startapp/android/publish/cache/g;",
            ">;"
        }
    .end annotation
.end field

.field protected b:Z

.field private d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private e:Z

.field private f:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lcom/startapp/android/publish/cache/a$a;",
            ">;"
        }
    .end annotation
.end field

.field private g:Lcom/startapp/android/publish/cache/g$b;

.field private h:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 48
    new-instance v0, Lcom/startapp/android/publish/cache/a;

    invoke-direct {v0}, Lcom/startapp/android/publish/cache/a;-><init>()V

    sput-object v0, Lcom/startapp/android/publish/cache/a;->c:Lcom/startapp/android/publish/cache/a;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/startapp/android/publish/cache/a;->a:Ljava/util/Map;

    .line 59
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/startapp/android/publish/cache/a;->d:Ljava/util/Map;

    const/4 v0, 0x0

    .line 61
    iput-boolean v0, p0, Lcom/startapp/android/publish/cache/a;->b:Z

    .line 62
    iput-boolean v0, p0, Lcom/startapp/android/publish/cache/a;->e:Z

    .line 63
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/startapp/android/publish/cache/a;->f:Ljava/util/Queue;

    return-void
.end method

.method public static a()Lcom/startapp/android/publish/cache/a;
    .registers 1

    .line 84
    sget-object v0, Lcom/startapp/android/publish/cache/a;->c:Lcom/startapp/android/publish/cache/a;

    return-object v0
.end method

.method private a(Lcom/startapp/android/publish/common/model/AdPreferences;)Lcom/startapp/android/publish/common/model/AdPreferences$Placement;
    .registers 5

    .line 577
    invoke-static {}, Lcom/startapp/android/publish/adsCommon/b;->a()Lcom/startapp/android/publish/adsCommon/b;

    move-result-object v0

    .line 578
    invoke-virtual {v0}, Lcom/startapp/android/publish/adsCommon/b;->c()I

    move-result v0

    .line 579
    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    const/16 v2, 0x64

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    if-lt v1, v0, :cond_1d

    const-string v0, "forceFullpage"

    .line 581
    invoke-static {p1, v0}, Lcom/startapp/android/publish/adsCommon/Utils/i;->a(Lcom/startapp/android/publish/common/model/AdPreferences;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_28

    :cond_1d
    const-string v0, "forceOverlay"

    .line 582
    invoke-static {p1, v0}, Lcom/startapp/android/publish/adsCommon/Utils/i;->a(Lcom/startapp/android/publish/common/model/AdPreferences;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_28

    .line 583
    sget-object p1, Lcom/startapp/android/publish/common/model/AdPreferences$Placement;->INAPP_FULL_SCREEN:Lcom/startapp/android/publish/common/model/AdPreferences$Placement;

    return-object p1

    .line 585
    :cond_28
    sget-object p1, Lcom/startapp/android/publish/common/model/AdPreferences$Placement;->INAPP_OVERLAY:Lcom/startapp/android/publish/common/model/AdPreferences$Placement;

    return-object p1
.end method

.method private a(Lcom/startapp/android/publish/adsCommon/StartAppAd$AdMode;Lcom/startapp/android/publish/common/model/AdPreferences;)V
    .registers 5

    .line 529
    sget-object v0, Lcom/startapp/android/publish/adsCommon/StartAppAd$AdMode;->REWARDED_VIDEO:Lcom/startapp/android/publish/adsCommon/StartAppAd$AdMode;

    invoke-virtual {p1, v0}, Lcom/startapp/android/publish/adsCommon/StartAppAd$AdMode;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "type"

    if-eqz v0, :cond_f

    .line 530
    sget-object v0, Lcom/startapp/android/publish/adsCommon/Ad$AdType;->REWARDED_VIDEO:Lcom/startapp/android/publish/adsCommon/Ad$AdType;

    invoke-static {p2, v1, v0}, Lcom/startapp/android/publish/adsCommon/c;->a(Lcom/startapp/android/publish/common/model/AdPreferences;Ljava/lang/String;Lcom/startapp/android/publish/adsCommon/Ad$AdType;)V

    .line 532
    :cond_f
    sget-object v0, Lcom/startapp/android/publish/adsCommon/StartAppAd$AdMode;->VIDEO:Lcom/startapp/android/publish/adsCommon/StartAppAd$AdMode;

    invoke-virtual {p1, v0}, Lcom/startapp/android/publish/adsCommon/StartAppAd$AdMode;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1c

    .line 533
    sget-object p1, Lcom/startapp/android/publish/adsCommon/Ad$AdType;->VIDEO:Lcom/startapp/android/publish/adsCommon/Ad$AdType;

    invoke-static {p2, v1, p1}, Lcom/startapp/android/publish/adsCommon/c;->a(Lcom/startapp/android/publish/common/model/AdPreferences;Ljava/lang/String;Lcom/startapp/android/publish/adsCommon/Ad$AdType;)V

    :cond_1c
    return-void
.end method

.method private a(Lcom/startapp/android/publish/cache/c;Lcom/startapp/android/publish/cache/g;Landroid/content/Context;)V
    .registers 14

    .line 499
    iget-object v0, p0, Lcom/startapp/android/publish/cache/a;->a:Ljava/util/Map;

    monitor-enter v0

    .line 500
    :try_start_3
    invoke-static {}, Lcom/startapp/android/publish/cache/d;->a()Lcom/startapp/android/publish/cache/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/startapp/android/publish/cache/d;->b()Lcom/startapp/android/publish/cache/ACMConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/startapp/android/publish/cache/ACMConfig;->getMaxCacheSize()I

    move-result v1

    if-eqz v1, :cond_56

    .line 501
    invoke-virtual {p0}, Lcom/startapp/android/publish/cache/a;->c()I

    move-result v2

    if-lt v2, v1, :cond_56

    const-wide v1, 0x7fffffffffffffffL

    const/4 v3, 0x0

    .line 504
    iget-object v4, p0, Lcom/startapp/android/publish/cache/a;->a:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_27
    :goto_27
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4f

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/startapp/android/publish/cache/c;

    .line 505
    iget-object v6, p0, Lcom/startapp/android/publish/cache/a;->a:Ljava/util/Map;

    invoke-interface {v6, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/startapp/android/publish/cache/g;

    .line 506
    invoke-virtual {v6}, Lcom/startapp/android/publish/cache/g;->c()Lcom/startapp/android/publish/common/model/AdPreferences$Placement;

    move-result-object v7

    invoke-virtual {p2}, Lcom/startapp/android/publish/cache/g;->c()Lcom/startapp/android/publish/common/model/AdPreferences$Placement;

    move-result-object v8

    if-ne v7, v8, :cond_27

    .line 507
    iget-wide v7, v6, Lcom/startapp/android/publish/cache/g;->c:J

    cmp-long v9, v7, v1

    if-gez v9, :cond_27

    .line 508
    iget-wide v1, v6, Lcom/startapp/android/publish/cache/g;->c:J

    move-object v3, v5

    goto :goto_27

    :cond_4f
    if-eqz v3, :cond_56

    .line 514
    iget-object v1, p0, Lcom/startapp/android/publish/cache/a;->a:Ljava/util/Map;

    invoke-interface {v1, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 518
    :cond_56
    iget-object v1, p0, Lcom/startapp/android/publish/cache/a;->a:Ljava/util/Map;

    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 520
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide p1

    const-wide/high16 v1, 0x4059000000000000L    # 100.0

    mul-double p1, p1, v1

    invoke-static {}, Lcom/startapp/android/publish/cache/d;->a()Lcom/startapp/android/publish/cache/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/startapp/android/publish/cache/d;->c()F

    move-result v1

    float-to-double v1, v1

    cmpg-double v3, p1, v1

    if-gez v3, :cond_86

    .line 521
    new-instance p1, Lcom/startapp/android/publish/adsCommon/f/e;

    sget-object p2, Lcom/startapp/android/publish/adsCommon/f/d;->d:Lcom/startapp/android/publish/adsCommon/f/d;

    const-string v1, "Cache Size"

    invoke-virtual {p0}, Lcom/startapp/android/publish/cache/a;->c()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p1, p2, v1, v2}, Lcom/startapp/android/publish/adsCommon/f/e;-><init>(Lcom/startapp/android/publish/adsCommon/f/d;Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, ""

    .line 522
    invoke-static {p3, p1, p2}, Lcom/startapp/android/publish/adsCommon/f/f;->a(Landroid/content/Context;Lcom/startapp/android/publish/adsCommon/f/e;Ljava/lang/String;)V

    .line 525
    :cond_86
    monitor-exit v0

    return-void

    :catchall_88
    move-exception p1

    monitor-exit v0
    :try_end_8a
    .catchall {:try_start_3 .. :try_end_8a} :catchall_88

    goto :goto_8c

    :goto_8b
    throw p1

    :goto_8c
    goto :goto_8b
.end method

.method private a(Z)V
    .registers 6

    .line 406
    iget-object v0, p0, Lcom/startapp/android/publish/cache/a;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_47

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/startapp/android/publish/cache/g;

    .line 408
    invoke-virtual {v1}, Lcom/startapp/android/publish/cache/g;->b()Lcom/startapp/android/publish/adsCommon/g;

    move-result-object v2

    if-eqz v2, :cond_40

    const-wide/16 v2, 0x2

    invoke-static {v2, v3}, Lcom/startapp/android/publish/adsCommon/Utils/i;->a(J)Z

    move-result v2

    if-eqz v2, :cond_40

    invoke-virtual {v1}, Lcom/startapp/android/publish/cache/g;->b()Lcom/startapp/android/publish/adsCommon/g;

    move-result-object v2

    instance-of v2, v2, Lcom/startapp/android/publish/ads/b/e;

    if-eqz v2, :cond_40

    if-nez p1, :cond_40

    .line 409
    invoke-static {}, Lcom/startapp/android/publish/cache/d;->a()Lcom/startapp/android/publish/cache/d;

    move-result-object v2

    invoke-virtual {v2}, Lcom/startapp/android/publish/cache/d;->b()Lcom/startapp/android/publish/cache/ACMConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/startapp/android/publish/cache/ACMConfig;->shouldReturnAdLoadInBg()Z

    move-result v2

    if-nez v2, :cond_43

    .line 410
    invoke-virtual {v1}, Lcom/startapp/android/publish/cache/g;->f()V

    goto :goto_43

    .line 413
    :cond_40
    invoke-virtual {v1}, Lcom/startapp/android/publish/cache/g;->f()V

    .line 415
    :cond_43
    :goto_43
    invoke-virtual {v1}, Lcom/startapp/android/publish/cache/g;->e()V

    goto :goto_a

    :cond_47
    return-void
.end method

.method static synthetic a(Lcom/startapp/android/publish/cache/a;Lcom/startapp/android/publish/common/model/AdPreferences$Placement;)Z
    .registers 2

    .line 44
    invoke-direct {p0, p1}, Lcom/startapp/android/publish/cache/a;->b(Lcom/startapp/android/publish/common/model/AdPreferences$Placement;)Z

    move-result p0

    return p0
.end method

.method private b(Lcom/startapp/android/publish/adsCommon/StartAppAd$AdMode;Lcom/startapp/android/publish/common/model/AdPreferences;)Lcom/startapp/android/publish/common/model/AdPreferences$Placement;
    .registers 9

    .line 539
    sget-object v0, Lcom/startapp/android/publish/cache/a$6;->b:[I

    invoke-virtual {p1}, Lcom/startapp/android/publish/adsCommon/StartAppAd$AdMode;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x0

    const-wide/16 v1, 0x40

    const-wide/16 v3, 0x80

    const/4 v5, 0x1

    packed-switch p1, :pswitch_data_76

    goto :goto_73

    .line 549
    :pswitch_12
    invoke-static {v3, v4}, Lcom/startapp/android/publish/adsCommon/Utils/i;->a(J)Z

    move-result p1

    if-nez p1, :cond_1e

    invoke-static {v1, v2}, Lcom/startapp/android/publish/adsCommon/Utils/i;->a(J)Z

    move-result p1

    if-eqz p1, :cond_1f

    :cond_1e
    const/4 v0, 0x1

    :cond_1f
    const-wide/16 v1, 0x4

    .line 550
    invoke-static {v1, v2}, Lcom/startapp/android/publish/adsCommon/Utils/i;->a(J)Z

    move-result p1

    const-wide/16 v1, 0x2

    .line 551
    invoke-static {v1, v2}, Lcom/startapp/android/publish/adsCommon/Utils/i;->a(J)Z

    move-result v1

    if-eqz p1, :cond_4e

    if-eqz v1, :cond_4e

    if-eqz v0, :cond_4e

    .line 554
    invoke-static {}, Lcom/startapp/android/publish/adsCommon/b;->a()Lcom/startapp/android/publish/adsCommon/b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/startapp/android/publish/adsCommon/b;->b()I

    move-result p1

    .line 555
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    if-ge v0, p1, :cond_4b

    .line 558
    invoke-direct {p0, p2}, Lcom/startapp/android/publish/cache/a;->a(Lcom/startapp/android/publish/common/model/AdPreferences;)Lcom/startapp/android/publish/common/model/AdPreferences$Placement;

    move-result-object p1

    return-object p1

    .line 560
    :cond_4b
    sget-object p1, Lcom/startapp/android/publish/common/model/AdPreferences$Placement;->INAPP_FULL_SCREEN:Lcom/startapp/android/publish/common/model/AdPreferences$Placement;

    return-object p1

    :cond_4e
    if-nez p1, :cond_58

    if-eqz v1, :cond_53

    goto :goto_58

    :cond_53
    if-eqz v0, :cond_73

    .line 568
    sget-object p1, Lcom/startapp/android/publish/common/model/AdPreferences$Placement;->INAPP_OFFER_WALL:Lcom/startapp/android/publish/common/model/AdPreferences$Placement;

    return-object p1

    .line 565
    :cond_58
    :goto_58
    sget-object p1, Lcom/startapp/android/publish/common/model/AdPreferences$Placement;->INAPP_OVERLAY:Lcom/startapp/android/publish/common/model/AdPreferences$Placement;

    return-object p1

    .line 547
    :pswitch_5b
    sget-object p1, Lcom/startapp/android/publish/common/model/AdPreferences$Placement;->INAPP_OVERLAY:Lcom/startapp/android/publish/common/model/AdPreferences$Placement;

    return-object p1

    .line 541
    :pswitch_5e
    invoke-static {v3, v4}, Lcom/startapp/android/publish/adsCommon/Utils/i;->a(J)Z

    move-result p1

    if-nez p1, :cond_6a

    invoke-static {v1, v2}, Lcom/startapp/android/publish/adsCommon/Utils/i;->a(J)Z

    move-result p1

    if-eqz p1, :cond_6b

    :cond_6a
    const/4 v0, 0x1

    :cond_6b
    if-ne v0, v5, :cond_70

    sget-object p1, Lcom/startapp/android/publish/common/model/AdPreferences$Placement;->INAPP_OFFER_WALL:Lcom/startapp/android/publish/common/model/AdPreferences$Placement;

    goto :goto_72

    :cond_70
    sget-object p1, Lcom/startapp/android/publish/common/model/AdPreferences$Placement;->INAPP_FULL_SCREEN:Lcom/startapp/android/publish/common/model/AdPreferences$Placement;

    :goto_72
    return-object p1

    .line 572
    :cond_73
    :goto_73
    sget-object p1, Lcom/startapp/android/publish/common/model/AdPreferences$Placement;->INAPP_FULL_SCREEN:Lcom/startapp/android/publish/common/model/AdPreferences$Placement;

    return-object p1

    :pswitch_data_76
    .packed-switch 0x1
        :pswitch_5e
        :pswitch_5b
        :pswitch_5b
        :pswitch_5b
        :pswitch_5b
        :pswitch_12
    .end packed-switch
.end method

.method private b(Lcom/startapp/android/publish/common/model/AdPreferences$Placement;)Z
    .registers 5

    .line 590
    sget-object v0, Lcom/startapp/android/publish/cache/a$6;->a:[I

    invoke-virtual {p1}, Lcom/startapp/android/publish/common/model/AdPreferences$Placement;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p1, v1, :cond_26

    const/4 v2, 0x2

    if-eq p1, v2, :cond_10

    return v1

    .line 592
    :cond_10
    invoke-static {}, Lcom/startapp/android/publish/adsCommon/m;->a()Lcom/startapp/android/publish/adsCommon/m;

    move-result-object p1

    invoke-virtual {p1}, Lcom/startapp/android/publish/adsCommon/m;->h()Z

    move-result p1

    if-eqz p1, :cond_25

    .line 593
    invoke-static {}, Lcom/startapp/android/publish/adsCommon/b;->a()Lcom/startapp/android/publish/adsCommon/b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/startapp/android/publish/adsCommon/b;->y()Z

    move-result p1

    if-nez p1, :cond_25

    const/4 v0, 0x1

    :cond_25
    return v0

    .line 595
    :cond_26
    invoke-static {}, Lcom/startapp/android/publish/adsCommon/m;->a()Lcom/startapp/android/publish/adsCommon/m;

    move-result-object p1

    invoke-virtual {p1}, Lcom/startapp/android/publish/adsCommon/m;->k()Z

    move-result p1

    if-eqz p1, :cond_3b

    .line 596
    invoke-static {}, Lcom/startapp/android/publish/adsCommon/b;->a()Lcom/startapp/android/publish/adsCommon/b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/startapp/android/publish/adsCommon/b;->z()Z

    move-result p1

    if-nez p1, :cond_3b

    const/4 v0, 0x1

    :cond_3b
    return v0
.end method

.method private e(Landroid/content/Context;)V
    .registers 5

    const-string v0, "AdCacheManager"

    const/4 v1, 0x3

    const-string v2, "Saving to disk: eneter save to disk "

    .line 364
    invoke-static {v0, v1, v2}, Lcom/startapp/common/a/g;->a(Ljava/lang/String;ILjava/lang/String;)V

    .line 365
    invoke-direct {p0}, Lcom/startapp/android/publish/cache/a;->e()Z

    move-result v2

    if-eqz v2, :cond_1d

    const-string v2, "Saving to disk: cache to disk is enebaled "

    .line 366
    invoke-static {v0, v1, v2}, Lcom/startapp/common/a/g;->a(Ljava/lang/String;ILjava/lang/String;)V

    .line 367
    sget-object v0, Lcom/startapp/common/g$a;->a:Lcom/startapp/common/g$a;

    new-instance v1, Lcom/startapp/android/publish/cache/a$4;

    invoke-direct {v1, p0, p1}, Lcom/startapp/android/publish/cache/a$4;-><init>(Lcom/startapp/android/publish/cache/a;Landroid/content/Context;)V

    invoke-static {v0, v1}, Lcom/startapp/common/g;->a(Lcom/startapp/common/g$a;Ljava/lang/Runnable;)V

    :cond_1d
    return-void
.end method

.method private e()Z
    .registers 2

    .line 341
    iget-boolean v0, p0, Lcom/startapp/android/publish/cache/a;->b:Z

    if-nez v0, :cond_14

    invoke-static {}, Lcom/startapp/android/publish/cache/d;->a()Lcom/startapp/android/publish/cache/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/startapp/android/publish/cache/d;->b()Lcom/startapp/android/publish/cache/ACMConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/startapp/android/publish/cache/ACMConfig;->isLocalCache()Z

    move-result v0

    if-eqz v0, :cond_14

    const/4 v0, 0x1

    goto :goto_15

    :cond_14
    const/4 v0, 0x0

    :goto_15
    return v0
.end method

.method private f()Lcom/startapp/android/publish/cache/g$b;
    .registers 2

    .line 603
    iget-object v0, p0, Lcom/startapp/android/publish/cache/a;->g:Lcom/startapp/android/publish/cache/g$b;

    if-nez v0, :cond_b

    .line 604
    new-instance v0, Lcom/startapp/android/publish/cache/a$5;

    invoke-direct {v0, p0}, Lcom/startapp/android/publish/cache/a$5;-><init>(Lcom/startapp/android/publish/cache/a;)V

    iput-object v0, p0, Lcom/startapp/android/publish/cache/a;->g:Lcom/startapp/android/publish/cache/g$b;

    .line 624
    :cond_b
    iget-object v0, p0, Lcom/startapp/android/publish/cache/a;->g:Lcom/startapp/android/publish/cache/g$b;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/startapp/android/publish/cache/c;)Lcom/startapp/android/publish/adsCommon/g;
    .registers 7

    const/4 v0, 0x0

    const/4 v1, 0x3

    const-string v2, "AdCacheManager"

    if-nez p1, :cond_c

    const-string p1, "Cache key is null"

    .line 263
    invoke-static {v2, v1, p1}, Lcom/startapp/common/a/g;->a(Ljava/lang/String;ILjava/lang/String;)V

    return-object v0

    .line 266
    :cond_c
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Retrieving ad with "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v1, v3}, Lcom/startapp/common/a/g;->a(Ljava/lang/String;ILjava/lang/String;)V

    .line 267
    iget-object v1, p0, Lcom/startapp/android/publish/cache/a;->a:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/startapp/android/publish/cache/g;

    if-eqz p1, :cond_2f

    .line 269
    invoke-virtual {p1}, Lcom/startapp/android/publish/cache/g;->i()Lcom/startapp/android/publish/adsCommon/g;

    move-result-object p1

    return-object p1

    :cond_2f
    return-object v0
.end method

.method public a(Landroid/content/Context;Lcom/startapp/android/publish/adsCommon/StartAppAd;Lcom/startapp/android/publish/adsCommon/StartAppAd$AdMode;Lcom/startapp/android/publish/common/model/AdPreferences;Lcom/startapp/android/publish/adsCommon/adListeners/AdEventListener;)Lcom/startapp/android/publish/cache/c;
    .registers 14

    if-nez p4, :cond_7

    .line 107
    new-instance p4, Lcom/startapp/android/publish/common/model/AdPreferences;

    invoke-direct {p4}, Lcom/startapp/android/publish/common/model/AdPreferences;-><init>()V

    :cond_7
    move-object v4, p4

    .line 109
    invoke-direct {p0, p3, v4}, Lcom/startapp/android/publish/cache/a;->b(Lcom/startapp/android/publish/adsCommon/StartAppAd$AdMode;Lcom/startapp/android/publish/common/model/AdPreferences;)Lcom/startapp/android/publish/common/model/AdPreferences$Placement;

    move-result-object v3

    .line 110
    invoke-direct {p0, p3, v4}, Lcom/startapp/android/publish/cache/a;->a(Lcom/startapp/android/publish/adsCommon/StartAppAd$AdMode;Lcom/startapp/android/publish/common/model/AdPreferences;)V

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p5

    .line 111
    invoke-virtual/range {v0 .. v7}, Lcom/startapp/android/publish/cache/a;->a(Landroid/content/Context;Lcom/startapp/android/publish/adsCommon/StartAppAd;Lcom/startapp/android/publish/common/model/AdPreferences$Placement;Lcom/startapp/android/publish/common/model/AdPreferences;Lcom/startapp/android/publish/adsCommon/adListeners/AdEventListener;ZI)Lcom/startapp/android/publish/cache/c;

    move-result-object p1

    return-object p1
.end method

.method public a(Landroid/content/Context;Lcom/startapp/android/publish/adsCommon/StartAppAd;Lcom/startapp/android/publish/common/model/AdPreferences$Placement;Lcom/startapp/android/publish/common/model/AdPreferences;Lcom/startapp/android/publish/adsCommon/adListeners/AdEventListener;)Lcom/startapp/android/publish/cache/c;
    .registers 14

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 420
    invoke-virtual/range {v0 .. v7}, Lcom/startapp/android/publish/cache/a;->a(Landroid/content/Context;Lcom/startapp/android/publish/adsCommon/StartAppAd;Lcom/startapp/android/publish/common/model/AdPreferences$Placement;Lcom/startapp/android/publish/common/model/AdPreferences;Lcom/startapp/android/publish/adsCommon/adListeners/AdEventListener;ZI)Lcom/startapp/android/publish/cache/c;

    move-result-object p1

    return-object p1
.end method

.method protected a(Landroid/content/Context;Lcom/startapp/android/publish/adsCommon/StartAppAd;Lcom/startapp/android/publish/common/model/AdPreferences$Placement;Lcom/startapp/android/publish/common/model/AdPreferences;Lcom/startapp/android/publish/adsCommon/adListeners/AdEventListener;ZI)Lcom/startapp/android/publish/cache/c;
    .registers 14

    .line 425
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/startapp/android/publish/cache/a;->h:Landroid/content/Context;

    if-nez p4, :cond_d

    .line 429
    new-instance p4, Lcom/startapp/android/publish/common/model/AdPreferences;

    invoke-direct {p4}, Lcom/startapp/android/publish/common/model/AdPreferences;-><init>()V

    :cond_d
    move-object v4, p4

    .line 431
    new-instance p4, Lcom/startapp/android/publish/cache/c;

    invoke-direct {p4, p3, v4}, Lcom/startapp/android/publish/cache/c;-><init>(Lcom/startapp/android/publish/common/model/AdPreferences$Placement;Lcom/startapp/android/publish/common/model/AdPreferences;)V

    .line 433
    iget-boolean v0, p0, Lcom/startapp/android/publish/cache/a;->e:Z

    if-eqz v0, :cond_40

    if-nez p6, :cond_40

    const-string p1, "AdCacheManager"

    const/4 p6, 0x4

    .line 434
    new-instance p7, Ljava/lang/StringBuilder;

    invoke-direct {p7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Adding to pending queue: "

    invoke-virtual {p7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p7, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p7

    invoke-static {p1, p6, p7}, Lcom/startapp/common/a/g;->a(Ljava/lang/String;ILjava/lang/String;)V

    .line 435
    iget-object p1, p0, Lcom/startapp/android/publish/cache/a;->f:Ljava/util/Queue;

    new-instance p6, Lcom/startapp/android/publish/cache/a$a;

    move-object v0, p6

    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/startapp/android/publish/cache/a$a;-><init>(Lcom/startapp/android/publish/cache/a;Lcom/startapp/android/publish/adsCommon/StartAppAd;Lcom/startapp/android/publish/common/model/AdPreferences$Placement;Lcom/startapp/android/publish/common/model/AdPreferences;Lcom/startapp/android/publish/adsCommon/adListeners/AdEventListener;)V

    invoke-interface {p1, p6}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    return-object p4

    .line 440
    :cond_40
    new-instance v0, Lcom/startapp/android/publish/common/model/AdPreferences;

    invoke-direct {v0, v4}, Lcom/startapp/android/publish/common/model/AdPreferences;-><init>(Lcom/startapp/android/publish/common/model/AdPreferences;)V

    .line 441
    iget-object v1, p0, Lcom/startapp/android/publish/cache/a;->a:Ljava/util/Map;

    monitor-enter v1

    .line 442
    :try_start_48
    iget-object v2, p0, Lcom/startapp/android/publish/cache/a;->a:Ljava/util/Map;

    invoke-interface {v2, p4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/startapp/android/publish/cache/g;

    const/4 v3, 0x3

    if-nez v2, :cond_a2

    const-string v2, "AdCacheManager"

    .line 444
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CachedAd for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " not found. Adding new CachedAd with "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/startapp/common/a/g;->a(Ljava/lang/String;ILjava/lang/String;)V

    .line 446
    sget-object v2, Lcom/startapp/android/publish/cache/a$6;->a:[I

    invoke-virtual {p3}, Lcom/startapp/android/publish/common/model/AdPreferences$Placement;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const/4 v3, 0x1

    if-eq v2, v3, :cond_82

    .line 451
    new-instance v2, Lcom/startapp/android/publish/cache/g;

    invoke-direct {v2, p1, p3, v0}, Lcom/startapp/android/publish/cache/g;-><init>(Landroid/content/Context;Lcom/startapp/android/publish/common/model/AdPreferences$Placement;Lcom/startapp/android/publish/common/model/AdPreferences;)V

    goto :goto_88

    .line 448
    :cond_82
    new-instance v2, Lcom/startapp/android/publish/cache/g;

    const/4 v4, 0x0

    invoke-direct {v2, p1, p3, v0, v4}, Lcom/startapp/android/publish/cache/g;-><init>(Landroid/content/Context;Lcom/startapp/android/publish/common/model/AdPreferences$Placement;Lcom/startapp/android/publish/common/model/AdPreferences;Z)V

    .line 455
    :goto_88
    invoke-direct {p0}, Lcom/startapp/android/publish/cache/a;->f()Lcom/startapp/android/publish/cache/g$b;

    move-result-object p3

    invoke-virtual {v2, p3}, Lcom/startapp/android/publish/cache/g;->a(Lcom/startapp/android/publish/cache/g$b;)V

    if-eqz p6, :cond_9e

    .line 457
    invoke-virtual {p0, p4}, Lcom/startapp/android/publish/cache/a;->c(Lcom/startapp/android/publish/cache/c;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v2, p3}, Lcom/startapp/android/publish/cache/g;->a(Ljava/lang/String;)V

    .line 458
    invoke-virtual {v2, v3}, Lcom/startapp/android/publish/cache/g;->a(Z)V

    .line 459
    invoke-virtual {v2, p7}, Lcom/startapp/android/publish/cache/g;->a(I)V

    .line 461
    :cond_9e
    invoke-direct {p0, p4, v2, p1}, Lcom/startapp/android/publish/cache/a;->a(Lcom/startapp/android/publish/cache/c;Lcom/startapp/android/publish/cache/g;Landroid/content/Context;)V

    goto :goto_c0

    :cond_a2
    const-string p1, "AdCacheManager"

    .line 464
    new-instance p6, Ljava/lang/StringBuilder;

    invoke-direct {p6}, Ljava/lang/StringBuilder;-><init>()V

    const-string p7, "CachedAd for "

    invoke-virtual {p6, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, " already exists."

    invoke-virtual {p6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, v3, p3}, Lcom/startapp/common/a/g;->a(Ljava/lang/String;ILjava/lang/String;)V

    .line 465
    invoke-virtual {v2, v0}, Lcom/startapp/android/publish/cache/g;->a(Lcom/startapp/android/publish/common/model/AdPreferences;)V

    .line 467
    :goto_c0
    monitor-exit v1
    :try_end_c1
    .catchall {:try_start_48 .. :try_end_c1} :catchall_c5

    .line 469
    invoke-virtual {v2, p2, p5}, Lcom/startapp/android/publish/cache/g;->a(Lcom/startapp/android/publish/adsCommon/StartAppAd;Lcom/startapp/android/publish/adsCommon/adListeners/AdEventListener;)V

    return-object p4

    :catchall_c5
    move-exception p1

    .line 467
    :try_start_c6
    monitor-exit v1
    :try_end_c7
    .catchall {:try_start_c6 .. :try_end_c7} :catchall_c5

    throw p1
.end method

.method public a(Landroid/content/Context;Lcom/startapp/android/publish/adsCommon/StartAppAd;Lcom/startapp/android/publish/common/model/AdPreferences;Lcom/startapp/android/publish/adsCommon/adListeners/AdEventListener;)Lcom/startapp/android/publish/cache/c;
    .registers 14

    .line 88
    sget-object v0, Lcom/startapp/android/publish/common/model/AdPreferences$Placement;->INAPP_SPLASH:Lcom/startapp/android/publish/common/model/AdPreferences$Placement;

    invoke-direct {p0, v0}, Lcom/startapp/android/publish/cache/a;->b(Lcom/startapp/android/publish/common/model/AdPreferences$Placement;)Z

    move-result v0

    if-eqz v0, :cond_1c

    const/4 v0, 0x3

    const-string v1, "AdCacheManager"

    const-string v2, "Loading splash"

    .line 89
    invoke-static {v1, v0, v2}, Lcom/startapp/common/a/g;->a(Ljava/lang/String;ILjava/lang/String;)V

    .line 90
    sget-object v6, Lcom/startapp/android/publish/common/model/AdPreferences$Placement;->INAPP_SPLASH:Lcom/startapp/android/publish/common/model/AdPreferences$Placement;

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v7, p3

    move-object v8, p4

    invoke-virtual/range {v3 .. v8}, Lcom/startapp/android/publish/cache/a;->a(Landroid/content/Context;Lcom/startapp/android/publish/adsCommon/StartAppAd;Lcom/startapp/android/publish/common/model/AdPreferences$Placement;Lcom/startapp/android/publish/common/model/AdPreferences;Lcom/startapp/android/publish/adsCommon/adListeners/AdEventListener;)Lcom/startapp/android/publish/cache/c;

    move-result-object p1

    return-object p1

    :cond_1c
    const/4 p1, 0x0

    return-object p1
.end method

.method public a(Landroid/content/Context;Lcom/startapp/android/publish/common/model/AdPreferences;)Lcom/startapp/android/publish/cache/c;
    .registers 12

    .line 97
    sget-object v0, Lcom/startapp/android/publish/common/model/AdPreferences$Placement;->INAPP_RETURN:Lcom/startapp/android/publish/common/model/AdPreferences$Placement;

    invoke-direct {p0, v0}, Lcom/startapp/android/publish/cache/a;->b(Lcom/startapp/android/publish/common/model/AdPreferences$Placement;)Z

    move-result v0

    if-eqz v0, :cond_1c

    const/4 v0, 0x3

    const-string v1, "AdCacheManager"

    const-string v2, "Loading return ad"

    .line 98
    invoke-static {v1, v0, v2}, Lcom/startapp/common/a/g;->a(Ljava/lang/String;ILjava/lang/String;)V

    const/4 v5, 0x0

    .line 99
    sget-object v6, Lcom/startapp/android/publish/common/model/AdPreferences$Placement;->INAPP_RETURN:Lcom/startapp/android/publish/common/model/AdPreferences$Placement;

    const/4 v8, 0x0

    move-object v3, p0

    move-object v4, p1

    move-object v7, p2

    invoke-virtual/range {v3 .. v8}, Lcom/startapp/android/publish/cache/a;->a(Landroid/content/Context;Lcom/startapp/android/publish/adsCommon/StartAppAd;Lcom/startapp/android/publish/common/model/AdPreferences$Placement;Lcom/startapp/android/publish/common/model/AdPreferences;Lcom/startapp/android/publish/adsCommon/adListeners/AdEventListener;)Lcom/startapp/android/publish/cache/c;

    move-result-object p1

    return-object p1

    :cond_1c
    const/4 p1, 0x0

    return-object p1
.end method

.method public a(Lcom/startapp/android/publish/adsCommon/StartAppAd$AdMode;)Ljava/lang/String;
    .registers 4

    if-eqz p1, :cond_18

    .line 629
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "autoLoadNotShownAdPrefix"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/startapp/android/publish/adsCommon/StartAppAd$AdMode;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_18
    const/4 p1, 0x0

    return-object p1
.end method

.method public a(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 315
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    .line 316
    invoke-virtual {p0, p1, v0}, Lcom/startapp/android/publish/cache/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 321
    iget-object v0, p0, Lcom/startapp/android/publish/cache/a;->d:Ljava/util/Map;

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p2
.end method

.method protected a(Ljava/util/Set;)Ljava/util/Set;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/startapp/android/publish/adsCommon/StartAppAd$AdMode;",
            ">;)",
            "Ljava/util/Set<",
            "Lcom/startapp/android/publish/adsCommon/StartAppAd$AdMode;",
            ">;"
        }
    .end annotation

    .line 232
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 233
    :cond_4
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4f

    .line 234
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/startapp/android/publish/adsCommon/StartAppAd$AdMode;

    .line 235
    iget-object v2, p0, Lcom/startapp/android/publish/cache/a;->h:Landroid/content/Context;

    invoke-virtual {p0, v1}, Lcom/startapp/android/publish/cache/a;->a(Lcom/startapp/android/publish/adsCommon/StartAppAd$AdMode;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v2, v3, v5}, Lcom/startapp/android/publish/adsCommon/k;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v2

    .line 236
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {}, Lcom/startapp/android/publish/common/metaData/MetaData;->getInstance()Lcom/startapp/android/publish/common/metaData/MetaData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/startapp/android/publish/common/metaData/MetaData;->getStopAutoLoadPreCacheAmount()I

    move-result v3

    if-lt v2, v3, :cond_2e

    const/4 v4, 0x1

    :cond_2e
    if-eqz v4, :cond_4

    const/4 v2, 0x3

    .line 238
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "preCacheAds.remove "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/startapp/android/publish/adsCommon/StartAppAd$AdMode;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "preCache"

    invoke-static {v3, v2, v1}, Lcom/startapp/common/a/g;->a(Ljava/lang/String;ILjava/lang/String;)V

    .line 239
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_4

    :cond_4f
    const-wide/16 v0, 0x80

    .line 243
    invoke-static {v0, v1}, Lcom/startapp/android/publish/adsCommon/Utils/i;->a(J)Z

    move-result v0

    if-nez v0, :cond_64

    const-wide/16 v0, 0x40

    invoke-static {v0, v1}, Lcom/startapp/android/publish/adsCommon/Utils/i;->a(J)Z

    move-result v0

    if-nez v0, :cond_64

    .line 244
    sget-object v0, Lcom/startapp/android/publish/adsCommon/StartAppAd$AdMode;->OFFERWALL:Lcom/startapp/android/publish/adsCommon/StartAppAd$AdMode;

    invoke-interface {p1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :cond_64
    const-wide/16 v0, 0x2

    .line 246
    invoke-static {v0, v1}, Lcom/startapp/android/publish/adsCommon/Utils/i;->a(J)Z

    move-result v0

    const-wide/16 v1, 0x4

    if-nez v0, :cond_79

    invoke-static {v1, v2}, Lcom/startapp/android/publish/adsCommon/Utils/i;->a(J)Z

    move-result v0

    if-nez v0, :cond_79

    .line 247
    sget-object v0, Lcom/startapp/android/publish/adsCommon/StartAppAd$AdMode;->FULLPAGE:Lcom/startapp/android/publish/adsCommon/StartAppAd$AdMode;

    invoke-interface {p1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 249
    :cond_79
    invoke-static {v1, v2}, Lcom/startapp/android/publish/adsCommon/Utils/i;->a(J)Z

    move-result v0

    if-nez v0, :cond_89

    .line 250
    sget-object v0, Lcom/startapp/android/publish/adsCommon/StartAppAd$AdMode;->REWARDED_VIDEO:Lcom/startapp/android/publish/adsCommon/StartAppAd$AdMode;

    invoke-interface {p1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 251
    sget-object v0, Lcom/startapp/android/publish/adsCommon/StartAppAd$AdMode;->VIDEO:Lcom/startapp/android/publish/adsCommon/StartAppAd$AdMode;

    invoke-interface {p1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :cond_89
    return-object p1
.end method

.method public a(Landroid/content/Context;)V
    .registers 3

    .line 120
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/startapp/android/publish/cache/a;->h:Landroid/content/Context;

    .line 121
    invoke-direct {p0}, Lcom/startapp/android/publish/cache/a;->e()Z

    move-result v0

    if-eqz v0, :cond_17

    const/4 v0, 0x1

    .line 122
    iput-boolean v0, p0, Lcom/startapp/android/publish/cache/a;->e:Z

    .line 123
    new-instance v0, Lcom/startapp/android/publish/cache/a$1;

    invoke-direct {v0, p0, p1}, Lcom/startapp/android/publish/cache/a$1;-><init>(Lcom/startapp/android/publish/cache/a;Landroid/content/Context;)V

    invoke-static {p1, v0}, Lcom/startapp/android/publish/cache/i;->a(Landroid/content/Context;Lcom/startapp/android/publish/cache/i$c;)V

    :cond_17
    return-void
.end method

.method public a(Landroid/content/Context;Z)V
    .registers 3

    .line 157
    invoke-direct {p0, p1}, Lcom/startapp/android/publish/cache/a;->e(Landroid/content/Context;)V

    .line 158
    invoke-direct {p0, p2}, Lcom/startapp/android/publish/cache/a;->a(Z)V

    return-void
.end method

.method public a(Lcom/startapp/android/publish/common/model/AdPreferences$Placement;)V
    .registers 5

    .line 474
    iget-object v0, p0, Lcom/startapp/android/publish/cache/a;->a:Ljava/util/Map;

    monitor-enter v0

    .line 475
    :try_start_3
    iget-object v1, p0, Lcom/startapp/android/publish/cache/a;->a:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 476
    :cond_d
    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_29

    .line 477
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 478
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/startapp/android/publish/cache/c;

    invoke-virtual {v2}, Lcom/startapp/android/publish/cache/c;->a()Lcom/startapp/android/publish/common/model/AdPreferences$Placement;

    move-result-object v2

    if-ne v2, p1, :cond_d

    .line 479
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_d

    .line 482
    :cond_29
    monitor-exit v0

    return-void

    :catchall_2b
    move-exception p1

    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_3 .. :try_end_2d} :catchall_2b

    goto :goto_2f

    :goto_2e
    throw p1

    :goto_2f
    goto :goto_2e
.end method

.method public b(Lcom/startapp/android/publish/cache/c;)Lcom/startapp/android/publish/adsCommon/g;
    .registers 4

    const/4 v0, 0x0

    if-eqz p1, :cond_c

    .line 285
    iget-object v1, p0, Lcom/startapp/android/publish/cache/a;->a:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/startapp/android/publish/cache/g;

    goto :goto_d

    :cond_c
    move-object p1, v0

    :goto_d
    if-eqz p1, :cond_14

    .line 288
    invoke-virtual {p1}, Lcom/startapp/android/publish/cache/g;->b()Lcom/startapp/android/publish/adsCommon/g;

    move-result-object p1

    return-object p1

    :cond_14
    return-object v0
.end method

.method public b(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 326
    iget-object v0, p0, Lcom/startapp/android/publish/cache/a;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public b()V
    .registers 4

    .line 147
    iget-boolean v0, p0, Lcom/startapp/android/publish/cache/a;->e:Z

    if-nez v0, :cond_26

    .line 148
    iget-object v0, p0, Lcom/startapp/android/publish/cache/a;->a:Ljava/util/Map;

    monitor-enter v0

    .line 149
    :try_start_7
    iget-object v1, p0, Lcom/startapp/android/publish/cache/a;->a:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_21

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/startapp/android/publish/cache/g;

    .line 150
    invoke-virtual {v2}, Lcom/startapp/android/publish/cache/g;->d()V

    goto :goto_11

    .line 152
    :cond_21
    monitor-exit v0

    goto :goto_26

    :catchall_23
    move-exception v1

    monitor-exit v0
    :try_end_25
    .catchall {:try_start_7 .. :try_end_25} :catchall_23

    throw v1

    :cond_26
    :goto_26
    return-void
.end method

.method public b(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x1

    .line 163
    iput-boolean v0, p0, Lcom/startapp/android/publish/cache/a;->b:Z

    .line 164
    new-instance v0, Lcom/startapp/android/publish/cache/a$2;

    invoke-direct {v0, p0}, Lcom/startapp/android/publish/cache/a$2;-><init>(Lcom/startapp/android/publish/cache/a;)V

    invoke-static {p1, v0}, Lcom/startapp/android/publish/cache/i;->a(Landroid/content/Context;Lcom/startapp/android/publish/cache/i$e;)V

    return-void
.end method

.method public c()I
    .registers 2

    .line 258
    iget-object v0, p0, Lcom/startapp/android/publish/cache/a;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method protected c(Lcom/startapp/android/publish/cache/c;)Ljava/lang/String;
    .registers 4

    .line 402
    invoke-virtual {p1}, Lcom/startapp/android/publish/cache/c;->hashCode()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0x2d

    const/16 v1, 0x5f

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public c(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 336
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cache size: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/startapp/android/publish/cache/a;->d:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " - removing "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AdCacheManager"

    const/4 v2, 0x3

    invoke-static {v1, v2, v0}, Lcom/startapp/common/a/g;->a(Ljava/lang/String;ILjava/lang/String;)V

    .line 337
    iget-object v0, p0, Lcom/startapp/android/publish/cache/a;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public c(Landroid/content/Context;)V
    .registers 4

    .line 179
    new-instance v0, Lcom/startapp/android/publish/cache/a$3;

    invoke-direct {v0, p0, p1}, Lcom/startapp/android/publish/cache/a$3;-><init>(Lcom/startapp/android/publish/cache/a;Landroid/content/Context;)V

    .line 221
    invoke-static {}, Lcom/startapp/android/publish/common/metaData/MetaData;->getLock()Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 222
    :try_start_a
    invoke-static {}, Lcom/startapp/android/publish/common/metaData/MetaData;->getInstance()Lcom/startapp/android/publish/common/metaData/MetaData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/startapp/android/publish/common/metaData/MetaData;->isReady()Z

    move-result v1

    if-eqz v1, :cond_18

    .line 223
    invoke-interface {v0}, Lcom/startapp/android/publish/common/metaData/d;->a()V

    goto :goto_1f

    .line 225
    :cond_18
    invoke-static {}, Lcom/startapp/android/publish/common/metaData/MetaData;->getInstance()Lcom/startapp/android/publish/common/metaData/MetaData;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/startapp/android/publish/common/metaData/MetaData;->addMetaDataListener(Lcom/startapp/android/publish/common/metaData/d;)V

    .line 227
    :goto_1f
    monitor-exit p1

    return-void

    :catchall_21
    move-exception v0

    monitor-exit p1
    :try_end_23
    .catchall {:try_start_a .. :try_end_23} :catchall_21

    throw v0
.end method

.method public declared-synchronized d()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/startapp/android/publish/cache/g;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 311
    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/startapp/android/publish/cache/a;->a:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_e

    monitor-exit p0

    return-object v0

    :catchall_e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected d(Landroid/content/Context;)V
    .registers 13

    const/4 v0, 0x0

    .line 347
    iput-boolean v0, p0, Lcom/startapp/android/publish/cache/a;->e:Z

    .line 348
    iget-object v0, p0, Lcom/startapp/android/publish/cache/a;->f:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 349
    :cond_9
    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_44

    .line 350
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/startapp/android/publish/cache/a$a;

    .line 351
    iget-object v2, v1, Lcom/startapp/android/publish/cache/a$a;->b:Lcom/startapp/android/publish/common/model/AdPreferences$Placement;

    invoke-direct {p0, v2}, Lcom/startapp/android/publish/cache/a;->b(Lcom/startapp/android/publish/common/model/AdPreferences$Placement;)Z

    move-result v2

    if-eqz v2, :cond_9

    const/4 v2, 0x4

    .line 352
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Loading pending request for: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/startapp/android/publish/cache/a$a;->b:Lcom/startapp/android/publish/common/model/AdPreferences$Placement;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "AdCacheManager"

    invoke-static {v4, v2, v3}, Lcom/startapp/common/a/g;->a(Ljava/lang/String;ILjava/lang/String;)V

    .line 353
    iget-object v7, v1, Lcom/startapp/android/publish/cache/a$a;->a:Lcom/startapp/android/publish/adsCommon/StartAppAd;

    iget-object v8, v1, Lcom/startapp/android/publish/cache/a$a;->b:Lcom/startapp/android/publish/common/model/AdPreferences$Placement;

    iget-object v9, v1, Lcom/startapp/android/publish/cache/a$a;->c:Lcom/startapp/android/publish/common/model/AdPreferences;

    iget-object v10, v1, Lcom/startapp/android/publish/cache/a$a;->d:Lcom/startapp/android/publish/adsCommon/adListeners/AdEventListener;

    move-object v5, p0

    move-object v6, p1

    invoke-virtual/range {v5 .. v10}, Lcom/startapp/android/publish/cache/a;->a(Landroid/content/Context;Lcom/startapp/android/publish/adsCommon/StartAppAd;Lcom/startapp/android/publish/common/model/AdPreferences$Placement;Lcom/startapp/android/publish/common/model/AdPreferences;Lcom/startapp/android/publish/adsCommon/adListeners/AdEventListener;)Lcom/startapp/android/publish/cache/c;

    goto :goto_9

    .line 356
    :cond_44
    iget-object p1, p0, Lcom/startapp/android/publish/cache/a;->f:Ljava/util/Queue;

    invoke-interface {p1}, Ljava/util/Queue;->clear()V

    return-void
.end method
