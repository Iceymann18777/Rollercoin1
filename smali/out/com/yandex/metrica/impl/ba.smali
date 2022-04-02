.class public Lcom/yandex/metrica/impl/ba;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private A:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private B:Ljava/lang/String;

.field private C:Ljava/lang/String;

.field private D:Ljava/lang/String;

.field private E:Ljava/lang/String;

.field private F:Z

.field private G:Z

.field private H:Z

.field private I:Z

.field private J:Ljava/lang/String;

.field private K:Ljava/lang/String;

.field private L:Ljava/lang/String;

.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:I

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;

.field private o:Ljava/lang/String;

.field private p:Ljava/lang/String;

.field private q:I

.field private r:I

.field private s:I

.field private t:F

.field private u:Ljava/lang/String;

.field private v:Ljava/lang/String;

.field private w:Ljava/lang/String;

.field private x:Ljava/lang/String;

.field private y:Ljava/lang/String;

.field private z:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1190
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    .line 48
    iput-object v0, p0, Lcom/yandex/metrica/impl/ba;->a:Ljava/lang/String;

    .line 1194
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 49
    iput-object v0, p0, Lcom/yandex/metrica/impl/ba;->b:Ljava/lang/String;

    .line 50
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    iput-object v0, p0, Lcom/yandex/metrica/impl/ba;->c:Ljava/lang/String;

    .line 51
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    iput v0, p0, Lcom/yandex/metrica/impl/ba;->d:I

    const-string v0, "273"

    .line 52
    iput-object v0, p0, Lcom/yandex/metrica/impl/ba;->e:Ljava/lang/String;

    .line 53
    invoke-static {}, Lcom/yandex/metrica/impl/bc;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/metrica/impl/ba;->f:Ljava/lang/String;

    const-string v0, "7854"

    .line 54
    iput-object v0, p0, Lcom/yandex/metrica/impl/ba;->g:Ljava/lang/String;

    const-string v0, ""

    .line 55
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2c

    const-string v0, "public"

    goto :goto_2e

    :cond_2c
    const-string v0, "public_"

    :goto_2e
    iput-object v0, p0, Lcom/yandex/metrica/impl/ba;->h:Ljava/lang/String;

    const-string v0, "android"

    .line 58
    iput-object v0, p0, Lcom/yandex/metrica/impl/ba;->i:Ljava/lang/String;

    const-string v0, "2"

    .line 59
    iput-object v0, p0, Lcom/yandex/metrica/impl/ba;->j:Ljava/lang/String;

    .line 74
    sget-object v0, Lcom/yandex/metrica/a;->a:Lcom/yandex/metrica/a;

    invoke-virtual {v0}, Lcom/yandex/metrica/a;->name()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/metrica/impl/ba;->u:Ljava/lang/String;

    const-string v0, "0"

    .line 93
    iput-object v0, p0, Lcom/yandex/metrica/impl/ba;->E:Ljava/lang/String;

    return-void
.end method

.method private static a(Landroid/content/pm/ApplicationInfo;)Ljava/lang/String;
    .registers 1

    .line 603
    iget p0, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_9

    const-string p0, "1"

    return-object p0

    :cond_9
    const-string p0, "0"

    return-object p0
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 5662
    invoke-static {p0}, Lcom/yandex/metrica/impl/bi;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    return-object p0

    :cond_7
    return-object p1
.end method

.method private a(Lcom/yandex/metrica/impl/interact/DeviceInfo;)V
    .registers 5

    .line 500
    iget-object v0, p1, Lcom/yandex/metrica/impl/interact/DeviceInfo;->platformDeviceId:Ljava/lang/String;

    iput-object v0, p0, Lcom/yandex/metrica/impl/ba;->n:Ljava/lang/String;

    .line 501
    invoke-static {}, Lcom/yandex/metrica/impl/ob/g;->a()Lcom/yandex/metrica/impl/ob/g;

    move-result-object v0

    new-instance v1, Lcom/yandex/metrica/impl/ob/m;

    iget-object v2, p0, Lcom/yandex/metrica/impl/ba;->n:Ljava/lang/String;

    invoke-direct {v1, v2}, Lcom/yandex/metrica/impl/ob/m;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/g;->b(Lcom/yandex/metrica/impl/ob/i;)V

    .line 504
    iget v0, p1, Lcom/yandex/metrica/impl/interact/DeviceInfo;->screenDpi:I

    iput v0, p0, Lcom/yandex/metrica/impl/ba;->s:I

    .line 505
    iget v0, p1, Lcom/yandex/metrica/impl/interact/DeviceInfo;->scaleFactor:F

    iput v0, p0, Lcom/yandex/metrica/impl/ba;->t:F

    .line 507
    iget v0, p1, Lcom/yandex/metrica/impl/interact/DeviceInfo;->screenWidth:I

    .line 508
    iget v1, p1, Lcom/yandex/metrica/impl/interact/DeviceInfo;->screenHeight:I

    .line 509
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, p0, Lcom/yandex/metrica/impl/ba;->q:I

    .line 510
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/yandex/metrica/impl/ba;->r:I

    .line 513
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/interact/DeviceInfo;->getLocale()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/metrica/impl/ba;->v:Ljava/lang/String;

    .line 514
    iget-object p1, p1, Lcom/yandex/metrica/impl/interact/DeviceInfo;->deviceRootStatus:Ljava/lang/String;

    iput-object p1, p0, Lcom/yandex/metrica/impl/ba;->E:Ljava/lang/String;

    return-void
.end method

.method private b(Lcom/yandex/metrica/impl/ob/cd;)V
    .registers 3

    const/4 v0, 0x0

    .line 474
    invoke-virtual {p1, v0}, Lcom/yandex/metrica/impl/ob/cd;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/yandex/metrica/impl/ba;->J:Ljava/lang/String;

    return-void
.end method

.method private declared-synchronized b(Lcom/yandex/metrica/impl/ob/t;Lcom/yandex/metrica/impl/ob/cd;)V
    .registers 6

    monitor-enter p0

    .line 13532
    :try_start_1
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ba;->c()Ljava/lang/String;

    move-result-object v0

    .line 13662
    invoke-static {v0}, Lcom/yandex/metrica/impl/bi;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_25

    .line 13534
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/t;->j()Lcom/yandex/metrica/CounterConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/metrica/CounterConfiguration;->h()Ljava/lang/String;

    move-result-object v0

    .line 14662
    invoke-static {v0}, Lcom/yandex/metrica/impl/bi;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_25

    .line 13536
    invoke-static {}, Lcom/yandex/metrica/impl/ob/ci;->a()Lcom/yandex/metrica/impl/ob/ci;

    move-result-object v0

    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/t;->m()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/ci;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 13540
    :cond_25
    invoke-static {}, Lcom/yandex/metrica/impl/ob/g;->a()Lcom/yandex/metrica/impl/ob/g;

    move-result-object v1

    new-instance v2, Lcom/yandex/metrica/impl/ob/n;

    invoke-direct {v2, v0}, Lcom/yandex/metrica/impl/ob/n;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/yandex/metrica/impl/ob/g;->b(Lcom/yandex/metrica/impl/ob/i;)V

    .line 13541
    invoke-virtual {p0, v0}, Lcom/yandex/metrica/impl/ba;->b(Ljava/lang/String;)V

    .line 15547
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/t;->j()Lcom/yandex/metrica/CounterConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/metrica/CounterConfiguration;->g()Ljava/lang/String;

    move-result-object v0

    .line 15662
    invoke-static {v0}, Lcom/yandex/metrica/impl/bi;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_52

    .line 15549
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ba;->b()Ljava/lang/String;

    move-result-object v0

    .line 16662
    invoke-static {v0}, Lcom/yandex/metrica/impl/bi;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_52

    const-string v0, ""

    .line 15551
    invoke-virtual {p2, v0}, Lcom/yandex/metrica/impl/ob/cd;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 15555
    :cond_52
    invoke-static {}, Lcom/yandex/metrica/impl/ob/g;->a()Lcom/yandex/metrica/impl/ob/g;

    move-result-object p2

    new-instance v1, Lcom/yandex/metrica/impl/ob/p;

    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/t;->l()Lcom/yandex/metrica/impl/ob/r;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/r;->b()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, v0, p1}, Lcom/yandex/metrica/impl/ob/p;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2, v1}, Lcom/yandex/metrica/impl/ob/g;->b(Lcom/yandex/metrica/impl/ob/i;)V

    .line 15556
    invoke-virtual {p0, v0}, Lcom/yandex/metrica/impl/ba;->a(Ljava/lang/String;)V
    :try_end_69
    .catchall {:try_start_1 .. :try_end_69} :catchall_6b

    .line 496
    monitor-exit p0

    return-void

    :catchall_6b
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private f(Lcom/yandex/metrica/impl/ob/t;)V
    .registers 5

    .line 639
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/t;->j()Lcom/yandex/metrica/CounterConfiguration;

    move-result-object v0

    .line 642
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/t;->l()Lcom/yandex/metrica/impl/ob/r;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/r;->d()Z

    move-result v1

    if-nez v1, :cond_18

    .line 643
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/t;->l()Lcom/yandex/metrica/impl/ob/r;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/r;->c()Z

    move-result v1

    if-eqz v1, :cond_4f

    .line 644
    :cond_18
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/t;->E()Lcom/yandex/metrica/impl/ob/cd;

    move-result-object p1

    .line 645
    invoke-virtual {v0}, Lcom/yandex/metrica/CounterConfiguration;->n()Ljava/util/List;

    move-result-object v0

    .line 646
    invoke-static {v0}, Lcom/yandex/metrica/impl/bk;->a(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_38

    .line 647
    iget-object v1, p0, Lcom/yandex/metrica/impl/ba;->A:Ljava/util/List;

    invoke-static {v1}, Lcom/yandex/metrica/impl/bk;->a(Ljava/util/Collection;)Z

    move-result v1

    if-nez v1, :cond_38

    const/4 v1, 0x0

    .line 648
    invoke-virtual {p1, v1}, Lcom/yandex/metrica/impl/ob/cd;->b(Ljava/util/List;)Lcom/yandex/metrica/impl/ob/cd;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yandex/metrica/impl/ob/cd;->h()V

    .line 649
    iput-object v1, p0, Lcom/yandex/metrica/impl/ba;->A:Ljava/util/List;

    .line 652
    :cond_38
    invoke-static {v0}, Lcom/yandex/metrica/impl/bk;->a(Ljava/util/Collection;)Z

    move-result v1

    if-nez v1, :cond_4f

    .line 653
    iget-object v1, p0, Lcom/yandex/metrica/impl/ba;->A:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/yandex/metrica/impl/bk;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4f

    .line 654
    iput-object v0, p0, Lcom/yandex/metrica/impl/ba;->A:Ljava/util/List;

    .line 655
    invoke-virtual {p1, v0}, Lcom/yandex/metrica/impl/ob/cd;->b(Ljava/util/List;)Lcom/yandex/metrica/impl/ob/cd;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/cd;->h()V

    :cond_4f
    return-void
.end method


# virtual methods
.method public A()Ljava/lang/String;
    .registers 3

    .line 298
    iget-object v0, p0, Lcom/yandex/metrica/impl/ba;->C:Ljava/lang/String;

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/yandex/metrica/impl/ba;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public B()Ljava/lang/String;
    .registers 3

    .line 302
    iget-object v0, p0, Lcom/yandex/metrica/impl/ba;->D:Ljava/lang/String;

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/yandex/metrica/impl/ba;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public C()Ljava/lang/String;
    .registers 3

    .line 310
    iget-object v0, p0, Lcom/yandex/metrica/impl/ba;->B:Ljava/lang/String;

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/yandex/metrica/impl/ba;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public D()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 314
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 316
    iget-object v1, p0, Lcom/yandex/metrica/impl/ba;->z:Ljava/util/List;

    invoke-static {v1}, Lcom/yandex/metrica/impl/bk;->a(Ljava/util/Collection;)Z

    move-result v1

    if-nez v1, :cond_12

    .line 317
    iget-object v1, p0, Lcom/yandex/metrica/impl/ba;->z:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 319
    :cond_12
    iget-object v1, p0, Lcom/yandex/metrica/impl/ba;->A:Ljava/util/List;

    invoke-static {v1}, Lcom/yandex/metrica/impl/bk;->a(Ljava/util/Collection;)Z

    move-result v1

    if-nez v1, :cond_1f

    .line 320
    iget-object v1, p0, Lcom/yandex/metrica/impl/ba;->A:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_1f
    const-string v1, "https://startup.mobile.yandex.net/"

    .line 322
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public E()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 328
    iget-object v0, p0, Lcom/yandex/metrica/impl/ba;->z:Ljava/util/List;

    return-object v0
.end method

.method public F()Ljava/lang/String;
    .registers 3

    .line 336
    iget-object v0, p0, Lcom/yandex/metrica/impl/ba;->E:Ljava/lang/String;

    const-string v1, "0"

    invoke-static {v0, v1}, Lcom/yandex/metrica/impl/ba;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public G()Ljava/lang/String;
    .registers 4

    .line 344
    iget-object v0, p0, Lcom/yandex/metrica/impl/ba;->u:Ljava/lang/String;

    sget-object v1, Lcom/yandex/metrica/a;->a:Lcom/yandex/metrica/a;

    invoke-virtual {v1}, Lcom/yandex/metrica/a;->name()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yandex/metrica/impl/ba;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public H()Z
    .registers 2

    .line 348
    iget-boolean v0, p0, Lcom/yandex/metrica/impl/ba;->F:Z

    return v0
.end method

.method public I()Z
    .registers 2

    .line 356
    iget-boolean v0, p0, Lcom/yandex/metrica/impl/ba;->G:Z

    return v0
.end method

.method public J()Z
    .registers 2

    .line 360
    iget-boolean v0, p0, Lcom/yandex/metrica/impl/ba;->H:Z

    return v0
.end method

.method public K()Z
    .registers 2

    .line 364
    iget-boolean v0, p0, Lcom/yandex/metrica/impl/ba;->I:Z

    return v0
.end method

.method public L()Ljava/lang/String;
    .registers 3

    .line 380
    iget-object v0, p0, Lcom/yandex/metrica/impl/ba;->K:Ljava/lang/String;

    const-string v1, "https://certificate.mobile.yandex.net/api/v1/pins"

    invoke-static {v0, v1}, Lcom/yandex/metrica/impl/ba;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized M()Z
    .registers 6

    monitor-enter p0

    const/4 v0, 0x3

    :try_start_2
    new-array v0, v0, [Ljava/lang/String;

    .line 392
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ba;->b()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ba;->c()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v0, v3

    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ba;->C()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v1

    invoke-static {v0}, Lcom/yandex/metrica/impl/bi;->a([Ljava/lang/String;)Z

    move-result v0
    :try_end_1d
    .catchall {:try_start_2 .. :try_end_1d} :catchall_22

    monitor-exit p0

    if-nez v0, :cond_21

    return v3

    :cond_21
    return v2

    :catchall_22
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public N()Ljava/lang/String;
    .registers 2

    .line 666
    iget-object v0, p0, Lcom/yandex/metrica/impl/ba;->L:Ljava/lang/String;

    return-object v0
.end method

.method public a()Ljava/lang/String;
    .registers 2

    .line 105
    iget-object v0, p0, Lcom/yandex/metrica/impl/ba;->o:Ljava/lang/String;

    return-object v0
.end method

.method public a(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    .line 3049
    sget-object v0, Lcom/yandex/metrica/impl/GoogleAdvertisingIdGetter$b;->a:Lcom/yandex/metrica/impl/GoogleAdvertisingIdGetter;

    .line 201
    invoke-virtual {v0, p1}, Lcom/yandex/metrica/impl/GoogleAdvertisingIdGetter;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    const-string v0, ""

    .line 202
    invoke-static {p1, v0}, Lcom/yandex/metrica/impl/ba;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method a(Landroid/content/Context;Lcom/yandex/metrica/CounterConfiguration;)Ljava/lang/String;
    .registers 3

    .line 483
    invoke-virtual {p2}, Lcom/yandex/metrica/CounterConfiguration;->e()Lcom/yandex/metrica/a;

    move-result-object p2

    if-nez p2, :cond_b

    .line 484
    invoke-virtual {p0, p1}, Lcom/yandex/metrica/impl/ba;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_b
    invoke-virtual {p2}, Lcom/yandex/metrica/a;->a()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public a(I)V
    .registers 2

    .line 226
    iput p1, p0, Lcom/yandex/metrica/impl/ba;->d:I

    return-void
.end method

.method public declared-synchronized a(Lcom/yandex/metrica/impl/bg$a;)V
    .registers 3

    monitor-enter p0

    .line 609
    :try_start_1
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/bg$a;->i()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yandex/metrica/impl/ba;->a(Ljava/lang/String;)V

    .line 610
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/bg$a;->h()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yandex/metrica/impl/ba;->b(Ljava/lang/String;)V

    .line 611
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/bg$a;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yandex/metrica/impl/ba;->o(Ljava/lang/String;)V

    .line 612
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/bg$a;->c()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yandex/metrica/impl/ba;->a(Ljava/util/List;)V

    .line 613
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/bg$a;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yandex/metrica/impl/ba;->n(Ljava/lang/String;)V

    .line 614
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/bg$a;->f()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yandex/metrica/impl/ba;->p(Ljava/lang/String;)V

    .line 615
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/bg$a;->g()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yandex/metrica/impl/ba;->r(Ljava/lang/String;)V

    .line 616
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/bg$a;->j()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yandex/metrica/impl/ba;->l(Ljava/lang/String;)V

    .line 617
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/bg$a;->a()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/yandex/metrica/impl/ba;->a(Z)V

    .line 618
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/bg$a;->b()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/yandex/metrica/impl/ba;->b(Z)V

    .line 619
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/bg$a;->p()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/yandex/metrica/impl/ba;->c(Z)V

    .line 620
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/bg$a;->q()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/yandex/metrica/impl/ba;->d(Z)V
    :try_end_55
    .catchall {:try_start_1 .. :try_end_55} :catchall_57

    .line 621
    monitor-exit p0

    return-void

    :catchall_57
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method a(Lcom/yandex/metrica/impl/ob/cd;)V
    .registers 3

    .line 13458
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/cd;->e()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/yandex/metrica/impl/ba;->a(Z)V

    .line 13462
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/cd;->i()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/yandex/metrica/impl/ba;->b(Z)V

    .line 13466
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/cd;->j()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/yandex/metrica/impl/ba;->c(Z)V

    .line 13470
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/cd;->k()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/yandex/metrica/impl/ba;->d(Z)V

    return-void
.end method

.method public a(Lcom/yandex/metrica/impl/ob/t;)V
    .registers 11

    .line 409
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/t;->m()Landroid/content/Context;

    move-result-object v0

    .line 410
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/t;->l()Lcom/yandex/metrica/impl/ob/r;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/r;->b()Ljava/lang/String;

    move-result-object v1

    .line 411
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/t;->j()Lcom/yandex/metrica/CounterConfiguration;

    move-result-object v2

    .line 412
    invoke-static {v0}, Lcom/yandex/metrica/impl/interact/DeviceInfo;->getInstance(Landroid/content/Context;)Lcom/yandex/metrica/impl/interact/DeviceInfo;

    move-result-object v3

    .line 414
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/t;->E()Lcom/yandex/metrica/impl/ob/cd;

    move-result-object v4

    .line 417
    invoke-static {v0, v2, v1}, Lcom/yandex/metrica/impl/bk;->a(Landroid/content/Context;Lcom/yandex/metrica/CounterConfiguration;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/yandex/metrica/impl/ba;->o:Ljava/lang/String;

    .line 419
    invoke-virtual {p0, v0, v2}, Lcom/yandex/metrica/impl/ba;->a(Landroid/content/Context;Lcom/yandex/metrica/CounterConfiguration;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/yandex/metrica/impl/ba;->u:Ljava/lang/String;

    .line 6045
    invoke-static {v0}, Lcom/yandex/metrica/impl/be;->a(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v5

    .line 6046
    invoke-static {v0, v5}, Lcom/yandex/metrica/impl/be;->a(Landroid/content/Context;Landroid/content/Intent;)Ljava/util/List;

    move-result-object v5

    .line 6049
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_48

    const/4 v6, 0x0

    .line 6050
    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    iget-object v5, v5, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 6051
    invoke-static {v5}, Lcom/yandex/metrica/impl/be;->a(Landroid/content/pm/PackageItemInfo;)I

    move-result v5

    .line 6052
    invoke-static {v5}, Lcom/yandex/metrica/impl/bb;->a(I)Lcom/yandex/metrica/impl/bb$a;

    move-result-object v5

    goto :goto_49

    :cond_48
    const/4 v5, 0x0

    :goto_49
    if-nez v5, :cond_62

    .line 6055
    sget-object v5, Lcom/yandex/metrica/impl/bb;->a:Lcom/yandex/metrica/impl/bb$a;

    .line 6056
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    const-string v7, "package"

    .line 6057
    invoke-virtual {v6, v7, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v7, "20799a27-fa80-4b36-b2db-0f8141f24180"

    .line 7022
    invoke-static {v0, v7}, Lcom/yandex/metrica/YandexMetrica;->getReporter(Landroid/content/Context;Ljava/lang/String;)Lcom/yandex/metrica/IReporter;

    move-result-object v7

    const-string v8, "invalid_sdk_version"

    .line 6059
    invoke-interface {v7, v8, v6}, Lcom/yandex/metrica/IReporter;->reportEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 6062
    :cond_62
    iget-object v5, v5, Lcom/yandex/metrica/impl/bb$a;->a:Ljava/lang/String;

    .line 420
    iput-object v5, p0, Lcom/yandex/metrica/impl/ba;->w:Ljava/lang/String;

    .line 422
    invoke-direct {p0, v3}, Lcom/yandex/metrica/impl/ba;->a(Lcom/yandex/metrica/impl/interact/DeviceInfo;)V

    .line 423
    invoke-virtual {p0, p1, v4}, Lcom/yandex/metrica/impl/ba;->a(Lcom/yandex/metrica/impl/ob/t;Lcom/yandex/metrica/impl/ob/cd;)V

    .line 424
    invoke-direct {p0, p1, v4}, Lcom/yandex/metrica/impl/ba;->b(Lcom/yandex/metrica/impl/ob/t;Lcom/yandex/metrica/impl/ob/cd;)V

    .line 426
    invoke-direct {p0, v4}, Lcom/yandex/metrica/impl/ba;->b(Lcom/yandex/metrica/impl/ob/cd;)V

    .line 7560
    invoke-virtual {v2}, Lcom/yandex/metrica/CounterConfiguration;->o()Ljava/lang/String;

    move-result-object v3

    .line 7662
    invoke-static {v3}, Lcom/yandex/metrica/impl/bi;->a(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8a

    .line 7562
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ba;->x()Ljava/lang/String;

    move-result-object v3

    .line 8662
    invoke-static {v3}, Lcom/yandex/metrica/impl/bi;->a(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8a

    .line 7564
    invoke-static {v0, v1}, Lcom/yandex/metrica/impl/bk;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 7568
    :cond_8a
    invoke-virtual {p0, v3}, Lcom/yandex/metrica/impl/ba;->k(Ljava/lang/String;)V

    .line 9572
    invoke-virtual {v2}, Lcom/yandex/metrica/CounterConfiguration;->p()Ljava/lang/String;

    move-result-object v2

    .line 9662
    invoke-static {v2}, Lcom/yandex/metrica/impl/bi;->a(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a9

    .line 9574
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ba;->z()Ljava/lang/String;

    move-result-object v2

    .line 10662
    invoke-static {v2}, Lcom/yandex/metrica/impl/bi;->a(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a9

    .line 11057
    invoke-static {v0, v1}, Lcom/yandex/metrica/impl/bk;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 9580
    :cond_a9
    invoke-virtual {p0, v2}, Lcom/yandex/metrica/impl/ba;->m(Ljava/lang/String;)V

    .line 11584
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/t;->m()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 11586
    :try_start_b4
    invoke-virtual {p0, p1}, Lcom/yandex/metrica/impl/ba;->d(Lcom/yandex/metrica/impl/ob/t;)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    invoke-static {v1}, Lcom/yandex/metrica/impl/ba;->a(Landroid/content/pm/ApplicationInfo;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/yandex/metrica/impl/ba;->L:Ljava/lang/String;
    :try_end_be
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_b4 .. :try_end_be} :catch_bf

    goto :goto_e1

    :catch_bf
    nop

    .line 11588
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/t;->l()Lcom/yandex/metrica/impl/ob/r;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/r;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_dd

    .line 11589
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/t;->m()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/yandex/metrica/impl/ba;->a(Landroid/content/pm/ApplicationInfo;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/metrica/impl/ba;->L:Ljava/lang/String;

    goto :goto_e1

    :cond_dd
    const-string v0, "0"

    .line 11591
    iput-object v0, p0, Lcom/yandex/metrica/impl/ba;->L:Ljava/lang/String;

    .line 433
    :goto_e1
    invoke-virtual {p0, p1}, Lcom/yandex/metrica/impl/ba;->e(Lcom/yandex/metrica/impl/ob/t;)V

    return-void
.end method

.method a(Lcom/yandex/metrica/impl/ob/t;Lcom/yandex/metrica/impl/ob/cd;)V
    .registers 5

    const-string v0, ""

    .line 12518
    invoke-virtual {p2, v0}, Lcom/yandex/metrica/impl/ob/cd;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/yandex/metrica/impl/ba;->C:Ljava/lang/String;

    .line 12519
    invoke-virtual {p2, v0}, Lcom/yandex/metrica/impl/ob/cd;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/yandex/metrica/impl/ba;->D:Ljava/lang/String;

    const-string v1, "https://startup.mobile.yandex.net/"

    .line 12521
    invoke-virtual {p2, v1}, Lcom/yandex/metrica/impl/ob/cd;->c(Ljava/lang/String;)Ljava/lang/String;

    .line 12522
    invoke-virtual {p2}, Lcom/yandex/metrica/impl/ob/cd;->a()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/yandex/metrica/impl/ba;->z:Ljava/util/List;

    .line 12523
    invoke-virtual {p2}, Lcom/yandex/metrica/impl/ob/cd;->b()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/yandex/metrica/impl/ba;->A:Ljava/util/List;

    .line 12524
    invoke-virtual {p2, v0}, Lcom/yandex/metrica/impl/ob/cd;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/metrica/impl/ba;->B:Ljava/lang/String;

    .line 12527
    invoke-direct {p0, p1}, Lcom/yandex/metrica/impl/ba;->f(Lcom/yandex/metrica/impl/ob/t;)V

    .line 439
    invoke-virtual {p0, p2}, Lcom/yandex/metrica/impl/ba;->a(Lcom/yandex/metrica/impl/ob/cd;)V

    return-void
.end method

.method public declared-synchronized a(Ljava/lang/String;)V
    .registers 3

    monitor-enter p0

    .line 1662
    :try_start_1
    invoke-static {p1}, Lcom/yandex/metrica/impl/bi;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 114
    iput-object p1, p0, Lcom/yandex/metrica/impl/ba;->k:Ljava/lang/String;
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    .line 116
    :cond_9
    monitor-exit p0

    return-void

    :catchall_b
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public a(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 286
    iput-object p1, p0, Lcom/yandex/metrica/impl/ba;->z:Ljava/util/List;

    return-void
.end method

.method public a(Z)V
    .registers 2

    .line 352
    iput-boolean p1, p0, Lcom/yandex/metrica/impl/ba;->F:Z

    return-void
.end method

.method public declared-synchronized a(J)Z
    .registers 9

    monitor-enter p0

    .line 396
    :try_start_1
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ba;->M()Z

    move-result v0
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_25

    const/4 v1, 0x0

    if-nez v0, :cond_a

    .line 397
    monitor-exit p0

    return v1

    .line 6029
    :cond_a
    :try_start_a
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4
    :try_end_11
    .catchall {:try_start_a .. :try_end_11} :catchall_25

    sub-long/2addr v2, p1

    const-wide/32 p1, 0x15180

    cmp-long v0, v2, p1

    if-gtz v0, :cond_23

    const-wide/16 p1, 0x0

    cmp-long v0, v2, p1

    if-gez v0, :cond_20

    goto :goto_23

    :cond_20
    const/4 p1, 0x1

    .line 405
    monitor-exit p0

    return p1

    .line 402
    :cond_23
    :goto_23
    monitor-exit p0

    return v1

    :catchall_25
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized b()Ljava/lang/String;
    .registers 3

    monitor-enter p0

    .line 109
    :try_start_1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ba;->k:Ljava/lang/String;

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/yandex/metrica/impl/ba;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    monitor-exit p0

    return-object v0

    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method b(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    .line 488
    invoke-static {p1}, Lcom/yandex/metrica/impl/interact/DeviceInfo;->getInstance(Landroid/content/Context;)Lcom/yandex/metrica/impl/interact/DeviceInfo;

    move-result-object p1

    iget-object p1, p1, Lcom/yandex/metrica/impl/interact/DeviceInfo;->deviceType:Ljava/lang/String;

    return-object p1
.end method

.method b(Lcom/yandex/metrica/impl/ob/t;)V
    .registers 3

    .line 450
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/t;->E()Lcom/yandex/metrica/impl/ob/cd;

    move-result-object v0

    .line 451
    invoke-direct {p0, p1, v0}, Lcom/yandex/metrica/impl/ba;->b(Lcom/yandex/metrica/impl/ob/t;Lcom/yandex/metrica/impl/ob/cd;)V

    .line 453
    invoke-virtual {p0, p1, v0}, Lcom/yandex/metrica/impl/ba;->a(Lcom/yandex/metrica/impl/ob/t;Lcom/yandex/metrica/impl/ob/cd;)V

    .line 454
    invoke-virtual {p0, p1}, Lcom/yandex/metrica/impl/ba;->e(Lcom/yandex/metrica/impl/ob/t;)V

    return-void
.end method

.method public declared-synchronized b(Ljava/lang/String;)V
    .registers 3

    monitor-enter p0

    .line 2662
    :try_start_1
    invoke-static {p1}, Lcom/yandex/metrica/impl/bi;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 120
    iput-object p1, p0, Lcom/yandex/metrica/impl/ba;->l:Ljava/lang/String;
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    .line 122
    :cond_9
    monitor-exit p0

    return-void

    :catchall_b
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public b(Z)V
    .registers 2

    .line 368
    iput-boolean p1, p0, Lcom/yandex/metrica/impl/ba;->G:Z

    return-void
.end method

.method public declared-synchronized c()Ljava/lang/String;
    .registers 3

    monitor-enter p0

    .line 125
    :try_start_1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ba;->l:Ljava/lang/String;

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/yandex/metrica/impl/ba;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    monitor-exit p0

    return-object v0

    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public c(Lcom/yandex/metrica/impl/ob/t;)V
    .registers 3

    .line 478
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/t;->m()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/yandex/metrica/impl/interact/DeviceInfo;->getInstance(Landroid/content/Context;)Lcom/yandex/metrica/impl/interact/DeviceInfo;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/yandex/metrica/impl/ba;->a(Lcom/yandex/metrica/impl/interact/DeviceInfo;)V

    .line 479
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/t;->E()Lcom/yandex/metrica/impl/ob/cd;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/yandex/metrica/impl/ba;->b(Lcom/yandex/metrica/impl/ob/cd;)V

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .registers 2

    .line 133
    iput-object p1, p0, Lcom/yandex/metrica/impl/ba;->p:Ljava/lang/String;

    return-void
.end method

.method public c(Z)V
    .registers 2

    .line 372
    iput-boolean p1, p0, Lcom/yandex/metrica/impl/ba;->H:Z

    return-void
.end method

.method d(Lcom/yandex/metrica/impl/ob/t;)Landroid/content/pm/ApplicationInfo;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 598
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/t;->m()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 599
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/t;->l()Lcom/yandex/metrica/impl/ob/r;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/r;->b()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    .line 598
    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    return-object p1
.end method

.method public d()Ljava/lang/String;
    .registers 3

    .line 129
    iget-object v0, p0, Lcom/yandex/metrica/impl/ba;->p:Ljava/lang/String;

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/yandex/metrica/impl/ba;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized d(Ljava/lang/String;)V
    .registers 2

    monitor-enter p0

    .line 137
    :try_start_1
    iput-object p1, p0, Lcom/yandex/metrica/impl/ba;->m:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 138
    monitor-exit p0

    return-void

    :catchall_5
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public d(Z)V
    .registers 2

    .line 376
    iput-boolean p1, p0, Lcom/yandex/metrica/impl/ba;->I:Z

    return-void
.end method

.method public declared-synchronized e()Ljava/lang/String;
    .registers 2

    monitor-enter p0

    .line 141
    :try_start_1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ba;->m:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized e(Lcom/yandex/metrica/impl/ob/t;)V
    .registers 4

    monitor-enter p0

    .line 624
    :try_start_1
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/t;->j()Lcom/yandex/metrica/CounterConfiguration;

    move-result-object v0

    .line 627
    invoke-virtual {v0}, Lcom/yandex/metrica/CounterConfiguration;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/yandex/metrica/impl/ba;->a(Ljava/lang/String;)V

    .line 629
    invoke-virtual {v0}, Lcom/yandex/metrica/CounterConfiguration;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/yandex/metrica/impl/ba;->d(Ljava/lang/String;)V

    .line 631
    invoke-virtual {v0}, Lcom/yandex/metrica/CounterConfiguration;->o()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/yandex/metrica/impl/ba;->k(Ljava/lang/String;)V

    .line 632
    invoke-virtual {v0}, Lcom/yandex/metrica/CounterConfiguration;->p()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/yandex/metrica/impl/ba;->m(Ljava/lang/String;)V

    .line 633
    invoke-virtual {v0}, Lcom/yandex/metrica/CounterConfiguration;->E()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yandex/metrica/impl/ba;->c(Ljava/lang/String;)V

    .line 635
    invoke-direct {p0, p1}, Lcom/yandex/metrica/impl/ba;->f(Lcom/yandex/metrica/impl/ob/t;)V
    :try_end_2b
    .catchall {:try_start_1 .. :try_end_2b} :catchall_2d

    .line 636
    monitor-exit p0

    return-void

    :catchall_2d
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public e(Ljava/lang/String;)V
    .registers 2

    .line 153
    iput-object p1, p0, Lcom/yandex/metrica/impl/ba;->e:Ljava/lang/String;

    return-void
.end method

.method public f()Ljava/lang/String;
    .registers 2

    .line 145
    iget-object v0, p0, Lcom/yandex/metrica/impl/ba;->j:Ljava/lang/String;

    return-object v0
.end method

.method public f(Ljava/lang/String;)V
    .registers 2

    .line 161
    iput-object p1, p0, Lcom/yandex/metrica/impl/ba;->w:Ljava/lang/String;

    return-void
.end method

.method public g()Ljava/lang/String;
    .registers 2

    .line 149
    iget-object v0, p0, Lcom/yandex/metrica/impl/ba;->f:Ljava/lang/String;

    return-object v0
.end method

.method public g(Ljava/lang/String;)V
    .registers 2

    .line 177
    iput-object p1, p0, Lcom/yandex/metrica/impl/ba;->g:Ljava/lang/String;

    return-void
.end method

.method public h()Ljava/lang/String;
    .registers 2

    .line 157
    iget-object v0, p0, Lcom/yandex/metrica/impl/ba;->e:Ljava/lang/String;

    return-object v0
.end method

.method public h(Ljava/lang/String;)V
    .registers 2

    .line 185
    iput-object p1, p0, Lcom/yandex/metrica/impl/ba;->h:Ljava/lang/String;

    return-void
.end method

.method public i()Ljava/lang/String;
    .registers 2

    .line 165
    iget-object v0, p0, Lcom/yandex/metrica/impl/ba;->w:Ljava/lang/String;

    return-object v0
.end method

.method public i(Ljava/lang/String;)V
    .registers 2

    .line 222
    iput-object p1, p0, Lcom/yandex/metrica/impl/ba;->c:Ljava/lang/String;

    return-void
.end method

.method public j()I
    .registers 3

    .line 169
    iget-object v0, p0, Lcom/yandex/metrica/impl/ba;->w:Ljava/lang/String;

    const/4 v1, 0x0

    .line 3047
    invoke-static {v0, v1}, Lcom/yandex/metrica/impl/utils/i;->a(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public j(Ljava/lang/String;)V
    .registers 2

    .line 250
    iput-object p1, p0, Lcom/yandex/metrica/impl/ba;->v:Ljava/lang/String;

    return-void
.end method

.method public k()Ljava/lang/String;
    .registers 2

    .line 173
    iget-object v0, p0, Lcom/yandex/metrica/impl/ba;->g:Ljava/lang/String;

    return-object v0
.end method

.method public k(Ljava/lang/String;)V
    .registers 3

    .line 3662
    invoke-static {p1}, Lcom/yandex/metrica/impl/bi;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 255
    iput-object p1, p0, Lcom/yandex/metrica/impl/ba;->x:Ljava/lang/String;

    :cond_8
    return-void
.end method

.method public l()Ljava/lang/String;
    .registers 2

    .line 181
    iget-object v0, p0, Lcom/yandex/metrica/impl/ba;->h:Ljava/lang/String;

    return-object v0
.end method

.method public l(Ljava/lang/String;)V
    .registers 2

    .line 264
    iput-object p1, p0, Lcom/yandex/metrica/impl/ba;->J:Ljava/lang/String;

    return-void
.end method

.method public m()Ljava/lang/String;
    .registers 2

    .line 193
    iget-object v0, p0, Lcom/yandex/metrica/impl/ba;->i:Ljava/lang/String;

    return-object v0
.end method

.method public m(Ljava/lang/String;)V
    .registers 3

    .line 4662
    invoke-static {p1}, Lcom/yandex/metrica/impl/bi;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 273
    iput-object p1, p0, Lcom/yandex/metrica/impl/ba;->y:Ljava/lang/String;

    :cond_8
    return-void
.end method

.method public n()Ljava/lang/String;
    .registers 3

    .line 197
    iget-object v0, p0, Lcom/yandex/metrica/impl/ba;->n:Ljava/lang/String;

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/yandex/metrica/impl/ba;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public n(Ljava/lang/String;)V
    .registers 2

    .line 290
    iput-object p1, p0, Lcom/yandex/metrica/impl/ba;->B:Ljava/lang/String;

    return-void
.end method

.method public o()Ljava/lang/String;
    .registers 3

    .line 206
    iget-object v0, p0, Lcom/yandex/metrica/impl/ba;->a:Ljava/lang/String;

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/yandex/metrica/impl/ba;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public o(Ljava/lang/String;)V
    .registers 2

    .line 294
    iput-object p1, p0, Lcom/yandex/metrica/impl/ba;->C:Ljava/lang/String;

    return-void
.end method

.method public p()Ljava/lang/String;
    .registers 3

    .line 210
    iget-object v0, p0, Lcom/yandex/metrica/impl/ba;->b:Ljava/lang/String;

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/yandex/metrica/impl/ba;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public p(Ljava/lang/String;)V
    .registers 2

    .line 306
    iput-object p1, p0, Lcom/yandex/metrica/impl/ba;->D:Ljava/lang/String;

    return-void
.end method

.method public q()Ljava/lang/String;
    .registers 3

    .line 214
    iget-object v0, p0, Lcom/yandex/metrica/impl/ba;->c:Ljava/lang/String;

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/yandex/metrica/impl/ba;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public q(Ljava/lang/String;)V
    .registers 2

    .line 332
    iput-object p1, p0, Lcom/yandex/metrica/impl/ba;->E:Ljava/lang/String;

    return-void
.end method

.method public r()I
    .registers 2

    .line 218
    iget v0, p0, Lcom/yandex/metrica/impl/ba;->d:I

    return v0
.end method

.method public r(Ljava/lang/String;)V
    .registers 2

    .line 384
    iput-object p1, p0, Lcom/yandex/metrica/impl/ba;->K:Ljava/lang/String;

    return-void
.end method

.method public s()I
    .registers 2

    .line 230
    iget v0, p0, Lcom/yandex/metrica/impl/ba;->q:I

    return v0
.end method

.method public s(Ljava/lang/String;)V
    .registers 2

    .line 670
    iput-object p1, p0, Lcom/yandex/metrica/impl/ba;->L:Ljava/lang/String;

    return-void
.end method

.method public t()I
    .registers 2

    .line 234
    iget v0, p0, Lcom/yandex/metrica/impl/ba;->r:I

    return v0
.end method

.method public u()I
    .registers 2

    .line 238
    iget v0, p0, Lcom/yandex/metrica/impl/ba;->s:I

    return v0
.end method

.method public v()F
    .registers 2

    .line 242
    iget v0, p0, Lcom/yandex/metrica/impl/ba;->t:F

    return v0
.end method

.method public w()Ljava/lang/String;
    .registers 3

    .line 246
    iget-object v0, p0, Lcom/yandex/metrica/impl/ba;->v:Ljava/lang/String;

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/yandex/metrica/impl/ba;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public x()Ljava/lang/String;
    .registers 3

    .line 260
    iget-object v0, p0, Lcom/yandex/metrica/impl/ba;->x:Ljava/lang/String;

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/yandex/metrica/impl/ba;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public y()Ljava/lang/String;
    .registers 3

    .line 268
    iget-object v0, p0, Lcom/yandex/metrica/impl/ba;->J:Ljava/lang/String;

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/yandex/metrica/impl/ba;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public z()Ljava/lang/String;
    .registers 3

    .line 278
    iget-object v0, p0, Lcom/yandex/metrica/impl/ba;->y:Ljava/lang/String;

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/yandex/metrica/impl/ba;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
