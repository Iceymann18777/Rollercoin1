.class public Lcom/startapp/android/publish/cache/g;
.super Ljava/lang/Object;
.source "StartAppSDK"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startapp/android/publish/cache/g$b;,
        Lcom/startapp/android/publish/cache/g$a;
    }
.end annotation


# static fields
.field public static h:Z = false


# instance fields
.field protected a:Lcom/startapp/android/publish/adsCommon/g;

.field protected b:Ljava/util/concurrent/atomic/AtomicBoolean;

.field protected c:J

.field protected d:Lcom/startapp/android/publish/cache/f;

.field protected e:Lcom/startapp/android/publish/cache/b;

.field protected f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/startapp/android/publish/adsCommon/adListeners/AdEventListener;",
            "Ljava/util/List<",
            "Lcom/startapp/android/publish/adsCommon/StartAppAd;",
            ">;>;"
        }
    .end annotation
.end field

.field protected g:Lcom/startapp/android/publish/cache/g$b;

.field private final i:Lcom/startapp/android/publish/common/model/AdPreferences$Placement;

.field private j:Landroid/content/Context;

.field private k:Lcom/startapp/android/publish/adsCommon/a;

.field private l:Lcom/startapp/android/publish/common/model/AdPreferences;

.field private m:Ljava/lang/String;

.field private n:Z

.field private o:I

.field private p:Z


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/startapp/android/publish/common/model/AdPreferences$Placement;Lcom/startapp/android/publish/common/model/AdPreferences;)V
    .registers 7

    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 45
    iput-object v0, p0, Lcom/startapp/android/publish/cache/g;->a:Lcom/startapp/android/publish/adsCommon/g;

    .line 46
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lcom/startapp/android/publish/cache/g;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 48
    iput-object v0, p0, Lcom/startapp/android/publish/cache/g;->m:Ljava/lang/String;

    .line 49
    iput-boolean v2, p0, Lcom/startapp/android/publish/cache/g;->n:Z

    .line 51
    iput-object v0, p0, Lcom/startapp/android/publish/cache/g;->d:Lcom/startapp/android/publish/cache/f;

    .line 52
    iput-object v0, p0, Lcom/startapp/android/publish/cache/g;->e:Lcom/startapp/android/publish/cache/b;

    .line 54
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/startapp/android/publish/cache/g;->f:Ljava/util/Map;

    const/4 v0, 0x1

    .line 58
    iput-boolean v0, p0, Lcom/startapp/android/publish/cache/g;->p:Z

    .line 132
    iput-object p2, p0, Lcom/startapp/android/publish/cache/g;->i:Lcom/startapp/android/publish/common/model/AdPreferences$Placement;

    .line 133
    iput-object p3, p0, Lcom/startapp/android/publish/cache/g;->l:Lcom/startapp/android/publish/common/model/AdPreferences;

    .line 134
    invoke-direct {p0, p1}, Lcom/startapp/android/publish/cache/g;->a(Landroid/content/Context;)V

    .line 135
    invoke-direct {p0}, Lcom/startapp/android/publish/cache/g;->o()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/startapp/android/publish/common/model/AdPreferences$Placement;Lcom/startapp/android/publish/common/model/AdPreferences;Z)V
    .registers 5

    .line 139
    invoke-direct {p0, p1, p2, p3}, Lcom/startapp/android/publish/cache/g;-><init>(Landroid/content/Context;Lcom/startapp/android/publish/common/model/AdPreferences$Placement;Lcom/startapp/android/publish/common/model/AdPreferences;)V

    .line 140
    iput-boolean p4, p0, Lcom/startapp/android/publish/cache/g;->p:Z

    return-void
.end method

.method static synthetic a(Lcom/startapp/android/publish/cache/g;)Lcom/startapp/android/publish/common/model/AdPreferences$Placement;
    .registers 1

    .line 37
    iget-object p0, p0, Lcom/startapp/android/publish/cache/g;->i:Lcom/startapp/android/publish/common/model/AdPreferences$Placement;

    return-object p0
.end method

.method private a(Landroid/content/Context;)V
    .registers 3

    .line 144
    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_14

    .line 145
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/startapp/android/publish/cache/g;->j:Landroid/content/Context;

    .line 146
    new-instance v0, Lcom/startapp/android/publish/adsCommon/a;

    check-cast p1, Landroid/app/Activity;

    invoke-direct {v0, p1}, Lcom/startapp/android/publish/adsCommon/a;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/startapp/android/publish/cache/g;->k:Lcom/startapp/android/publish/adsCommon/a;

    goto :goto_19

    .line 148
    :cond_14
    iput-object p1, p0, Lcom/startapp/android/publish/cache/g;->j:Landroid/content/Context;

    const/4 p1, 0x0

    .line 149
    iput-object p1, p0, Lcom/startapp/android/publish/cache/g;->k:Lcom/startapp/android/publish/adsCommon/a;

    :goto_19
    return-void
.end method

.method private a(Lcom/startapp/android/publish/adsCommon/StartAppAd;Lcom/startapp/android/publish/adsCommon/adListeners/AdEventListener;Z)V
    .registers 9

    .line 210
    iget-object v0, p0, Lcom/startapp/android/publish/cache/g;->f:Ljava/util/Map;

    monitor-enter v0

    .line 211
    :try_start_3
    invoke-virtual {p0}, Lcom/startapp/android/publish/cache/g;->g()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_16

    invoke-direct {p0}, Lcom/startapp/android/publish/cache/g;->u()Z

    move-result v1

    if-nez v1, :cond_16

    if-eqz p3, :cond_14

    goto :goto_16

    :cond_14
    const/4 p3, 0x0

    goto :goto_17

    :cond_16
    :goto_16
    const/4 p3, 0x1

    :goto_17
    const/4 v1, 0x3

    if-eqz p3, :cond_65

    if-eqz p1, :cond_35

    if-eqz p2, :cond_35

    .line 215
    iget-object p3, p0, Lcom/startapp/android/publish/cache/g;->f:Ljava/util/Map;

    invoke-interface {p3, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/List;

    if-nez p3, :cond_32

    .line 217
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    .line 218
    iget-object v4, p0, Lcom/startapp/android/publish/cache/g;->f:Ljava/util/Map;

    invoke-interface {v4, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    :cond_32
    invoke-interface {p3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 224
    :cond_35
    iget-object p1, p0, Lcom/startapp/android/publish/cache/g;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result p1

    if-eqz p1, :cond_4b

    .line 225
    iget-object p1, p0, Lcom/startapp/android/publish/cache/g;->d:Lcom/startapp/android/publish/cache/f;

    invoke-virtual {p1}, Lcom/startapp/android/publish/cache/f;->g()V

    .line 226
    iget-object p1, p0, Lcom/startapp/android/publish/cache/g;->e:Lcom/startapp/android/publish/cache/b;

    invoke-virtual {p1}, Lcom/startapp/android/publish/cache/b;->g()V

    .line 227
    invoke-direct {p0}, Lcom/startapp/android/publish/cache/g;->p()V

    goto :goto_89

    :cond_4b
    const-string p1, "CachedAd"

    .line 229
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p3, p0, Lcom/startapp/android/publish/cache/g;->i:Lcom/startapp/android/publish/common/model/AdPreferences$Placement;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, " ad is currently loading"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, v1, p2}, Lcom/startapp/common/a/g;->a(Ljava/lang/String;ILjava/lang/String;)V

    .line 230
    monitor-exit v0

    return-void

    :cond_65
    const-string p3, "CachedAd"

    .line 233
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/startapp/android/publish/cache/g;->i:Lcom/startapp/android/publish/common/model/AdPreferences$Placement;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " ad already loaded"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p3, v1, v2}, Lcom/startapp/common/a/g;->a(Ljava/lang/String;ILjava/lang/String;)V

    if-eqz p1, :cond_89

    if-eqz p2, :cond_89

    .line 235
    new-instance p3, Lcom/startapp/android/publish/adsCommon/adListeners/b;

    invoke-direct {p3, p2}, Lcom/startapp/android/publish/adsCommon/adListeners/b;-><init>(Lcom/startapp/android/publish/adsCommon/adListeners/AdEventListener;)V

    invoke-virtual {p3, p1}, Lcom/startapp/android/publish/adsCommon/adListeners/b;->onReceiveAd(Lcom/startapp/android/publish/adsCommon/Ad;)V

    .line 238
    :cond_89
    :goto_89
    monitor-exit v0

    return-void

    :catchall_8b
    move-exception p1

    monitor-exit v0
    :try_end_8d
    .catchall {:try_start_3 .. :try_end_8d} :catchall_8b

    throw p1
.end method

.method private o()V
    .registers 2

    .line 154
    new-instance v0, Lcom/startapp/android/publish/cache/f;

    invoke-direct {v0, p0}, Lcom/startapp/android/publish/cache/f;-><init>(Lcom/startapp/android/publish/cache/g;)V

    iput-object v0, p0, Lcom/startapp/android/publish/cache/g;->d:Lcom/startapp/android/publish/cache/f;

    .line 155
    new-instance v0, Lcom/startapp/android/publish/cache/b;

    invoke-direct {v0, p0}, Lcom/startapp/android/publish/cache/b;-><init>(Lcom/startapp/android/publish/cache/g;)V

    iput-object v0, p0, Lcom/startapp/android/publish/cache/g;->e:Lcom/startapp/android/publish/cache/b;

    return-void
.end method

.method private p()V
    .registers 3

    .line 350
    iget-object v0, p0, Lcom/startapp/android/publish/cache/g;->a:Lcom/startapp/android/publish/adsCommon/g;

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    .line 351
    invoke-interface {v0, v1}, Lcom/startapp/android/publish/adsCommon/g;->setVideoCancelCallBack(Z)V

    .line 353
    :cond_8
    invoke-direct {p0}, Lcom/startapp/android/publish/cache/g;->q()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 354
    invoke-virtual {p0, v1}, Lcom/startapp/android/publish/cache/g;->a(Z)V

    .line 355
    invoke-direct {p0}, Lcom/startapp/android/publish/cache/g;->r()V

    goto :goto_18

    .line 357
    :cond_15
    invoke-virtual {p0}, Lcom/startapp/android/publish/cache/g;->n()V

    :goto_18
    return-void
.end method

.method private q()Z
    .registers 2

    .line 362
    iget-boolean v0, p0, Lcom/startapp/android/publish/cache/g;->n:Z

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/startapp/android/publish/cache/g;->m:Ljava/lang/String;

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method private r()V
    .registers 5

    .line 366
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Loading "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/startapp/android/publish/cache/g;->i:Lcom/startapp/android/publish/common/model/AdPreferences$Placement;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " from disk "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "file name: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/startapp/android/publish/cache/g;->m:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CachedAd"

    const/4 v2, 0x4

    invoke-static {v1, v2, v0}, Lcom/startapp/common/a/g;->a(Ljava/lang/String;ILjava/lang/String;)V

    .line 370
    new-instance v0, Lcom/startapp/android/publish/cache/g$a;

    invoke-direct {v0, p0}, Lcom/startapp/android/publish/cache/g$a;-><init>(Lcom/startapp/android/publish/cache/g;)V

    .line 371
    new-instance v1, Lcom/startapp/android/publish/cache/g$1;

    invoke-direct {v1, p0, v0}, Lcom/startapp/android/publish/cache/g$1;-><init>(Lcom/startapp/android/publish/cache/g;Lcom/startapp/android/publish/cache/g$a;)V

    .line 387
    iget-object v0, p0, Lcom/startapp/android/publish/cache/g;->j:Landroid/content/Context;

    iget-object v2, p0, Lcom/startapp/android/publish/cache/g;->m:Ljava/lang/String;

    new-instance v3, Lcom/startapp/android/publish/cache/g$2;

    invoke-direct {v3, p0}, Lcom/startapp/android/publish/cache/g$2;-><init>(Lcom/startapp/android/publish/cache/g;)V

    invoke-static {v0, v2, v3, v1}, Lcom/startapp/android/publish/cache/i;->a(Landroid/content/Context;Ljava/lang/String;Lcom/startapp/android/publish/cache/i$a;Lcom/startapp/android/publish/adsCommon/adListeners/AdEventListener;)V

    return-void
.end method

.method private s()Z
    .registers 3

    .line 417
    iget v0, p0, Lcom/startapp/android/publish/cache/g;->o:I

    invoke-static {}, Lcom/startapp/android/publish/common/metaData/MetaData;->getInstance()Lcom/startapp/android/publish/common/metaData/MetaData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/startapp/android/publish/common/metaData/MetaData;->getStopAutoLoadAmount()I

    move-result v1

    if-ge v0, v1, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method private t()V
    .registers 2

    .line 421
    iget v0, p0, Lcom/startapp/android/publish/cache/g;->o:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/startapp/android/publish/cache/g;->o:I

    return-void
.end method

.method private u()Z
    .registers 2

    .line 451
    iget-object v0, p0, Lcom/startapp/android/publish/cache/g;->a:Lcom/startapp/android/publish/adsCommon/g;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return v0

    .line 452
    :cond_6
    invoke-interface {v0}, Lcom/startapp/android/publish/adsCommon/g;->hasAdCacheTtlPassed()Z

    move-result v0

    return v0
.end method

.method private v()Lcom/startapp/android/publish/adsCommon/g;
    .registers 6

    .line 458
    invoke-static {}, Lcom/startapp/android/publish/adsCommon/b;->a()Lcom/startapp/android/publish/adsCommon/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/startapp/android/publish/adsCommon/b;->d()I

    move-result v0

    .line 459
    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    const/16 v2, 0x64

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    const/4 v2, 0x1

    if-ge v1, v0, :cond_18

    const/4 v0, 0x1

    goto :goto_19

    :cond_18
    const/4 v0, 0x0

    .line 461
    :goto_19
    iget-object v1, p0, Lcom/startapp/android/publish/cache/g;->l:Lcom/startapp/android/publish/common/model/AdPreferences;

    const-string v3, "forceOfferWall3D"

    invoke-static {v1, v3}, Lcom/startapp/android/publish/adsCommon/Utils/i;->a(Lcom/startapp/android/publish/common/model/AdPreferences;Ljava/lang/String;)Z

    move-result v1

    .line 462
    iget-object v3, p0, Lcom/startapp/android/publish/cache/g;->l:Lcom/startapp/android/publish/common/model/AdPreferences;

    const-string v4, "forceOfferWall2D"

    invoke-static {v3, v4}, Lcom/startapp/android/publish/adsCommon/Utils/i;->a(Lcom/startapp/android/publish/common/model/AdPreferences;Ljava/lang/String;)Z

    move-result v3

    xor-int/2addr v2, v3

    const-wide/16 v3, 0x40

    .line 463
    invoke-static {v3, v4}, Lcom/startapp/android/publish/adsCommon/Utils/i;->a(J)Z

    move-result v3

    .line 466
    invoke-direct {p0}, Lcom/startapp/android/publish/cache/g;->w()Z

    move-result v4

    if-nez v4, :cond_47

    if-eqz v3, :cond_3f

    if-nez v0, :cond_3c

    if-eqz v1, :cond_3f

    :cond_3c
    if-eqz v2, :cond_3f

    goto :goto_47

    .line 469
    :cond_3f
    new-instance v0, Lcom/startapp/android/publish/ads/c/a/b;

    iget-object v1, p0, Lcom/startapp/android/publish/cache/g;->j:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/startapp/android/publish/ads/c/a/b;-><init>(Landroid/content/Context;)V

    goto :goto_4e

    .line 467
    :cond_47
    :goto_47
    new-instance v0, Lcom/startapp/android/publish/ads/c/b/b;

    iget-object v1, p0, Lcom/startapp/android/publish/cache/g;->j:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/startapp/android/publish/ads/c/b/b;-><init>(Landroid/content/Context;)V

    :goto_4e
    return-object v0
.end method

.method private w()Z
    .registers 3

    const-wide/16 v0, 0x40

    .line 475
    invoke-static {v0, v1}, Lcom/startapp/android/publish/adsCommon/Utils/i;->a(J)Z

    move-result v0

    if-eqz v0, :cond_12

    const-wide/16 v0, 0x80

    invoke-static {v0, v1}, Lcom/startapp/android/publish/adsCommon/Utils/i;->a(J)Z

    move-result v0

    if-nez v0, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    return v0
.end method


# virtual methods
.method public a()Lcom/startapp/android/publish/common/model/AdPreferences;
    .registers 2

    .line 159
    iget-object v0, p0, Lcom/startapp/android/publish/cache/g;->l:Lcom/startapp/android/publish/common/model/AdPreferences;

    return-object v0
.end method

.method public a(I)V
    .registers 2

    .line 429
    iput p1, p0, Lcom/startapp/android/publish/cache/g;->o:I

    return-void
.end method

.method public a(Lcom/startapp/android/publish/adsCommon/StartAppAd;Lcom/startapp/android/publish/adsCommon/adListeners/AdEventListener;)V
    .registers 4

    const/4 v0, 0x0

    .line 191
    invoke-direct {p0, p1, p2, v0}, Lcom/startapp/android/publish/cache/g;->a(Lcom/startapp/android/publish/adsCommon/StartAppAd;Lcom/startapp/android/publish/adsCommon/adListeners/AdEventListener;Z)V

    return-void
.end method

.method public a(Lcom/startapp/android/publish/cache/g$b;)V
    .registers 2

    .line 399
    iput-object p1, p0, Lcom/startapp/android/publish/cache/g;->g:Lcom/startapp/android/publish/cache/g$b;

    return-void
.end method

.method protected a(Lcom/startapp/android/publish/common/model/AdPreferences;)V
    .registers 2

    .line 163
    iput-object p1, p0, Lcom/startapp/android/publish/cache/g;->l:Lcom/startapp/android/publish/common/model/AdPreferences;

    return-void
.end method

.method protected a(Ljava/lang/String;)V
    .registers 2

    .line 174
    iput-object p1, p0, Lcom/startapp/android/publish/cache/g;->m:Ljava/lang/String;

    return-void
.end method

.method protected a(Z)V
    .registers 2

    .line 182
    iput-boolean p1, p0, Lcom/startapp/android/publish/cache/g;->n:Z

    return-void
.end method

.method public b()Lcom/startapp/android/publish/adsCommon/g;
    .registers 2

    .line 166
    iget-object v0, p0, Lcom/startapp/android/publish/cache/g;->a:Lcom/startapp/android/publish/adsCommon/g;

    return-object v0
.end method

.method protected b(Z)V
    .registers 3

    const/4 v0, 0x0

    .line 200
    invoke-direct {p0, v0, v0, p1}, Lcom/startapp/android/publish/cache/g;->a(Lcom/startapp/android/publish/adsCommon/StartAppAd;Lcom/startapp/android/publish/adsCommon/adListeners/AdEventListener;Z)V

    return-void
.end method

.method protected c()Lcom/startapp/android/publish/common/model/AdPreferences$Placement;
    .registers 2

    .line 170
    iget-object v0, p0, Lcom/startapp/android/publish/cache/g;->i:Lcom/startapp/android/publish/common/model/AdPreferences$Placement;

    return-object v0
.end method

.method protected d()V
    .registers 4

    .line 245
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalidating: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/startapp/android/publish/cache/g;->i:Lcom/startapp/android/publish/common/model/AdPreferences$Placement;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CachedAd"

    const/4 v2, 0x4

    invoke-static {v1, v2, v0}, Lcom/startapp/common/a/g;->a(Ljava/lang/String;ILjava/lang/String;)V

    .line 246
    invoke-virtual {p0}, Lcom/startapp/android/publish/cache/g;->g()Z

    move-result v0

    if-eqz v0, :cond_4b

    .line 247
    iget-object v0, p0, Lcom/startapp/android/publish/cache/g;->j:Landroid/content/Context;

    iget-object v2, p0, Lcom/startapp/android/publish/cache/g;->a:Lcom/startapp/android/publish/adsCommon/g;

    check-cast v2, Lcom/startapp/android/publish/adsCommon/Ad;

    invoke-static {v0, v2}, Lcom/startapp/android/publish/adsCommon/b/c;->a(Landroid/content/Context;Lcom/startapp/android/publish/adsCommon/Ad;)Z

    move-result v0

    if-nez v0, :cond_40

    invoke-direct {p0}, Lcom/startapp/android/publish/cache/g;->u()Z

    move-result v0

    if-eqz v0, :cond_32

    goto :goto_40

    .line 250
    :cond_32
    iget-object v0, p0, Lcom/startapp/android/publish/cache/g;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_58

    .line 251
    iget-object v0, p0, Lcom/startapp/android/publish/cache/g;->d:Lcom/startapp/android/publish/cache/f;

    invoke-virtual {v0}, Lcom/startapp/android/publish/cache/f;->f()V

    goto :goto_58

    :cond_40
    :goto_40
    const/4 v0, 0x3

    const-string v2, "App present or cache TTL passed, reloading"

    .line 248
    invoke-static {v1, v0, v2}, Lcom/startapp/common/a/g;->a(Ljava/lang/String;ILjava/lang/String;)V

    const/4 v0, 0x1

    .line 249
    invoke-virtual {p0, v0}, Lcom/startapp/android/publish/cache/g;->b(Z)V

    goto :goto_58

    .line 253
    :cond_4b
    iget-object v0, p0, Lcom/startapp/android/publish/cache/g;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_58

    .line 254
    iget-object v0, p0, Lcom/startapp/android/publish/cache/g;->e:Lcom/startapp/android/publish/cache/b;

    invoke-virtual {v0}, Lcom/startapp/android/publish/cache/b;->f()V

    :cond_58
    :goto_58
    return-void
.end method

.method protected e()V
    .registers 2

    .line 259
    iget-object v0, p0, Lcom/startapp/android/publish/cache/g;->e:Lcom/startapp/android/publish/cache/b;

    invoke-virtual {v0}, Lcom/startapp/android/publish/cache/b;->h()V

    return-void
.end method

.method protected f()V
    .registers 2

    .line 263
    iget-object v0, p0, Lcom/startapp/android/publish/cache/g;->d:Lcom/startapp/android/publish/cache/f;

    invoke-virtual {v0}, Lcom/startapp/android/publish/cache/f;->h()V

    return-void
.end method

.method public g()Z
    .registers 2

    .line 267
    iget-object v0, p0, Lcom/startapp/android/publish/cache/g;->a:Lcom/startapp/android/publish/adsCommon/g;

    if-eqz v0, :cond_c

    invoke-interface {v0}, Lcom/startapp/android/publish/adsCommon/g;->isReady()Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public h()Z
    .registers 2

    .line 271
    iget-boolean v0, p0, Lcom/startapp/android/publish/cache/g;->p:Z

    return v0
.end method

.method public i()Lcom/startapp/android/publish/adsCommon/g;
    .registers 5

    .line 276
    invoke-virtual {p0}, Lcom/startapp/android/publish/cache/g;->g()Z

    move-result v0

    if-eqz v0, :cond_4c

    .line 277
    iget-object v0, p0, Lcom/startapp/android/publish/cache/g;->a:Lcom/startapp/android/publish/adsCommon/g;

    .line 278
    invoke-virtual {p0}, Lcom/startapp/android/publish/cache/g;->m()V

    .line 280
    sget-object v1, Lcom/startapp/android/publish/adsCommon/AdsConstants;->OVERRIDE_NETWORK:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_37

    invoke-virtual {p0}, Lcom/startapp/android/publish/cache/g;->h()Z

    move-result v1

    if-eqz v1, :cond_37

    const/4 v1, 0x3

    .line 281
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Ad shown, reloading "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/startapp/android/publish/cache/g;->i:Lcom/startapp/android/publish/common/model/AdPreferences$Placement;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "CachedAd"

    invoke-static {v3, v1, v2}, Lcom/startapp/common/a/g;->a(Ljava/lang/String;ILjava/lang/String;)V

    const/4 v1, 0x1

    .line 283
    invoke-virtual {p0, v1}, Lcom/startapp/android/publish/cache/g;->b(Z)V

    goto :goto_4d

    .line 284
    :cond_37
    invoke-virtual {p0}, Lcom/startapp/android/publish/cache/g;->h()Z

    move-result v1

    if-nez v1, :cond_4d

    .line 286
    iget-object v1, p0, Lcom/startapp/android/publish/cache/g;->g:Lcom/startapp/android/publish/cache/g$b;

    if-eqz v1, :cond_44

    .line 287
    invoke-interface {v1, p0}, Lcom/startapp/android/publish/cache/g$b;->a(Lcom/startapp/android/publish/cache/g;)V

    .line 290
    :cond_44
    iget-object v1, p0, Lcom/startapp/android/publish/cache/g;->d:Lcom/startapp/android/publish/cache/f;

    if-eqz v1, :cond_4d

    .line 291
    invoke-virtual {v1}, Lcom/startapp/android/publish/cache/f;->a()V

    goto :goto_4d

    :cond_4c
    const/4 v0, 0x0

    :cond_4d
    :goto_4d
    return-object v0
.end method

.method public j()Lcom/startapp/android/publish/adsCommon/g;
    .registers 5

    .line 302
    iget-object v0, p0, Lcom/startapp/android/publish/cache/g;->j:Landroid/content/Context;

    iget-object v1, p0, Lcom/startapp/android/publish/cache/g;->l:Lcom/startapp/android/publish/common/model/AdPreferences;

    invoke-static {v0, v1}, Lcom/startapp/android/publish/adsCommon/Utils/i;->a(Landroid/content/Context;Lcom/startapp/android/publish/common/model/AdPreferences;)V

    .line 303
    sget-object v0, Lcom/startapp/android/publish/cache/g$3;->a:[I

    iget-object v1, p0, Lcom/startapp/android/publish/cache/g;->i:Lcom/startapp/android/publish/common/model/AdPreferences$Placement;

    invoke-virtual {v1}, Lcom/startapp/android/publish/common/model/AdPreferences$Placement;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x4

    if-eq v0, v1, :cond_55

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3d

    const/4 v1, 0x3

    if-eq v0, v1, :cond_38

    if-eq v0, v2, :cond_30

    const/4 v1, 0x5

    if-eq v0, v1, :cond_28

    .line 331
    new-instance v0, Lcom/startapp/android/publish/ads/b/d;

    iget-object v1, p0, Lcom/startapp/android/publish/cache/g;->j:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/startapp/android/publish/ads/b/d;-><init>(Landroid/content/Context;)V

    goto :goto_5c

    .line 327
    :cond_28
    new-instance v0, Lcom/startapp/android/publish/ads/splash/b;

    iget-object v1, p0, Lcom/startapp/android/publish/cache/g;->j:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/startapp/android/publish/ads/splash/b;-><init>(Landroid/content/Context;)V

    goto :goto_5c

    .line 323
    :cond_30
    new-instance v0, Lcom/startapp/android/publish/ads/b/e;

    iget-object v1, p0, Lcom/startapp/android/publish/cache/g;->j:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/startapp/android/publish/ads/b/e;-><init>(Landroid/content/Context;)V

    goto :goto_5c

    .line 319
    :cond_38
    invoke-direct {p0}, Lcom/startapp/android/publish/cache/g;->v()Lcom/startapp/android/publish/adsCommon/g;

    move-result-object v0

    goto :goto_5c

    :cond_3d
    const-wide/16 v0, 0x4

    .line 310
    invoke-static {v0, v1}, Lcom/startapp/android/publish/adsCommon/Utils/i;->a(J)Z

    move-result v0

    if-eqz v0, :cond_4d

    .line 311
    new-instance v0, Lcom/startapp/android/publish/ads/video/e;

    iget-object v1, p0, Lcom/startapp/android/publish/cache/g;->j:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/startapp/android/publish/ads/video/e;-><init>(Landroid/content/Context;)V

    goto :goto_5c

    .line 314
    :cond_4d
    new-instance v0, Lcom/startapp/android/publish/ads/b/d;

    iget-object v1, p0, Lcom/startapp/android/publish/cache/g;->j:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/startapp/android/publish/ads/b/d;-><init>(Landroid/content/Context;)V

    goto :goto_5c

    .line 306
    :cond_55
    new-instance v0, Lcom/startapp/android/publish/ads/b/d;

    iget-object v1, p0, Lcom/startapp/android/publish/cache/g;->j:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/startapp/android/publish/ads/b/d;-><init>(Landroid/content/Context;)V

    .line 335
    :goto_5c
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ad Type: ["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "CachedAd"

    invoke-static {v3, v2, v1}, Lcom/startapp/common/a/g;->a(Ljava/lang/String;ILjava/lang/String;)V

    return-object v0
.end method

.method public k()Z
    .registers 2

    .line 403
    invoke-direct {p0}, Lcom/startapp/android/publish/cache/g;->s()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    .line 404
    invoke-virtual {p0, v0}, Lcom/startapp/android/publish/cache/g;->b(Z)V

    .line 405
    invoke-direct {p0}, Lcom/startapp/android/publish/cache/g;->t()V

    return v0

    .line 409
    :cond_e
    iget-object v0, p0, Lcom/startapp/android/publish/cache/g;->g:Lcom/startapp/android/publish/cache/g$b;

    if-eqz v0, :cond_15

    .line 410
    invoke-interface {v0, p0}, Lcom/startapp/android/publish/cache/g$b;->a(Lcom/startapp/android/publish/cache/g;)V

    :cond_15
    const/4 v0, 0x0

    return v0
.end method

.method public l()I
    .registers 2

    .line 425
    iget v0, p0, Lcom/startapp/android/publish/cache/g;->o:I

    return v0
.end method

.method protected m()V
    .registers 2

    const/4 v0, 0x0

    .line 433
    iput v0, p0, Lcom/startapp/android/publish/cache/g;->o:I

    return-void
.end method

.method protected n()V
    .registers 4

    .line 437
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Loading "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/startapp/android/publish/cache/g;->i:Lcom/startapp/android/publish/common/model/AdPreferences$Placement;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " from server"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CachedAd"

    const/4 v2, 0x4

    invoke-static {v1, v2, v0}, Lcom/startapp/common/a/g;->a(Ljava/lang/String;ILjava/lang/String;)V

    .line 438
    invoke-virtual {p0}, Lcom/startapp/android/publish/cache/g;->j()Lcom/startapp/android/publish/adsCommon/g;

    move-result-object v0

    iput-object v0, p0, Lcom/startapp/android/publish/cache/g;->a:Lcom/startapp/android/publish/adsCommon/g;

    .line 439
    iget-object v1, p0, Lcom/startapp/android/publish/cache/g;->k:Lcom/startapp/android/publish/adsCommon/a;

    invoke-interface {v0, v1}, Lcom/startapp/android/publish/adsCommon/g;->setActivityExtra(Lcom/startapp/android/publish/adsCommon/a;)V

    .line 440
    iget-object v0, p0, Lcom/startapp/android/publish/cache/g;->a:Lcom/startapp/android/publish/adsCommon/g;

    iget-object v1, p0, Lcom/startapp/android/publish/cache/g;->l:Lcom/startapp/android/publish/common/model/AdPreferences;

    new-instance v2, Lcom/startapp/android/publish/cache/g$a;

    invoke-direct {v2, p0}, Lcom/startapp/android/publish/cache/g$a;-><init>(Lcom/startapp/android/publish/cache/g;)V

    invoke-interface {v0, v1, v2}, Lcom/startapp/android/publish/adsCommon/g;->load(Lcom/startapp/android/publish/common/model/AdPreferences;Lcom/startapp/android/publish/adsCommon/adListeners/AdEventListener;)Z

    .line 442
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/startapp/android/publish/cache/g;->c:J

    return-void
.end method
