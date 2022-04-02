.class public final Lcom/appnext/core/q;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appnext/core/q$a;
    }
.end annotation


# static fields
.field private static final y:Ljava/lang/String; = "error_no_market"


# instance fields
.field private banner:Ljava/lang/String;

.field private click:Lcom/appnext/core/e;

.field private context:Landroid/content/Context;

.field private gj:Ljava/lang/String;

.field private guid:Ljava/lang/String;

.field private hH:Lcom/appnext/core/h;

.field private hI:Lcom/appnext/core/q$a;

.field private hJ:Lcom/appnext/core/e$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/appnext/core/q$a;)V
    .registers 4

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 19
    iput-object v0, p0, Lcom/appnext/core/q;->gj:Ljava/lang/String;

    .line 20
    iput-object v0, p0, Lcom/appnext/core/q;->guid:Ljava/lang/String;

    .line 21
    iput-object v0, p0, Lcom/appnext/core/q;->banner:Ljava/lang/String;

    .line 184
    new-instance v0, Lcom/appnext/core/q$3;

    invoke-direct {v0, p0}, Lcom/appnext/core/q$3;-><init>(Lcom/appnext/core/q;)V

    iput-object v0, p0, Lcom/appnext/core/q;->hJ:Lcom/appnext/core/e$a;

    .line 27
    iput-object p1, p0, Lcom/appnext/core/q;->context:Landroid/content/Context;

    .line 28
    invoke-static {p1}, Lcom/appnext/core/e;->k(Landroid/content/Context;)Lcom/appnext/core/e;

    move-result-object p1

    iput-object p1, p0, Lcom/appnext/core/q;->click:Lcom/appnext/core/e;

    .line 29
    iput-object p2, p0, Lcom/appnext/core/q;->hI:Lcom/appnext/core/q$a;

    return-void
.end method

.method static synthetic a(Lcom/appnext/core/q;)Lcom/appnext/core/e;
    .registers 1

    .line 14
    iget-object p0, p0, Lcom/appnext/core/q;->click:Lcom/appnext/core/e;

    return-object p0
.end method

.method static synthetic a(Lcom/appnext/core/q;Lcom/appnext/core/h;)Lcom/appnext/core/h;
    .registers 2

    .line 14
    iput-object p1, p0, Lcom/appnext/core/q;->hH:Lcom/appnext/core/h;

    return-object p1
.end method

.method static synthetic a(Lcom/appnext/core/q;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 14
    iput-object p1, p0, Lcom/appnext/core/q;->gj:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic b(Lcom/appnext/core/q;)Lcom/appnext/core/e$a;
    .registers 1

    .line 14
    iget-object p0, p0, Lcom/appnext/core/q;->hJ:Lcom/appnext/core/e$a;

    return-object p0
.end method

.method static synthetic b(Lcom/appnext/core/q;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 14
    iput-object p1, p0, Lcom/appnext/core/q;->guid:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic c(Lcom/appnext/core/q;)Ljava/lang/String;
    .registers 1

    .line 14
    iget-object p0, p0, Lcom/appnext/core/q;->gj:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic c(Lcom/appnext/core/q;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 14
    iput-object p1, p0, Lcom/appnext/core/q;->banner:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic d(Lcom/appnext/core/q;)Ljava/lang/String;
    .registers 1

    .line 14
    iget-object p0, p0, Lcom/appnext/core/q;->guid:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic d(Lcom/appnext/core/q;Ljava/lang/String;)V
    .registers 4

    .line 3256
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3257
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const/high16 p1, 0x10000000

    .line 3258
    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3259
    iget-object p0, p0, Lcom/appnext/core/q;->context:Landroid/content/Context;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic e(Lcom/appnext/core/q;)Ljava/lang/String;
    .registers 1

    .line 14
    iget-object p0, p0, Lcom/appnext/core/q;->banner:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic f(Lcom/appnext/core/q;)Landroid/content/Context;
    .registers 1

    .line 14
    iget-object p0, p0, Lcom/appnext/core/q;->context:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic g(Lcom/appnext/core/q;)Lcom/appnext/core/q$a;
    .registers 1

    .line 14
    iget-object p0, p0, Lcom/appnext/core/q;->hI:Lcom/appnext/core/q$a;

    return-object p0
.end method

.method static synthetic h(Lcom/appnext/core/q;)Lcom/appnext/core/h;
    .registers 1

    .line 14
    iget-object p0, p0, Lcom/appnext/core/q;->hH:Lcom/appnext/core/h;

    return-object p0
.end method

.method private openLink(Ljava/lang/String;)V
    .registers 4

    .line 256
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 257
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const/high16 p1, 0x10000000

    .line 258
    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 259
    iget-object p1, p0, Lcom/appnext/core/q;->context:Landroid/content/Context;

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/appnext/core/AppnextAd;Ljava/lang/String;Lcom/appnext/core/e$a;)V
    .registers 5

    .line 50
    iget-object p2, p0, Lcom/appnext/core/q;->click:Lcom/appnext/core/e;

    if-nez p2, :cond_5

    return-void

    .line 2476
    :cond_5
    new-instance p3, Ljava/lang/Thread;

    new-instance v0, Lcom/appnext/core/e$6;

    invoke-direct {v0, p2, p1}, Lcom/appnext/core/e$6;-><init>(Lcom/appnext/core/e;Lcom/appnext/core/AppnextAd;)V

    invoke-direct {p3, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 2484
    invoke-virtual {p3}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public final a(Lcom/appnext/core/AppnextAd;Ljava/lang/String;Ljava/lang/String;Lcom/appnext/core/e$a;)V
    .registers 13

    .line 93
    new-instance v0, Ljava/lang/Thread;

    new-instance v7, Lcom/appnext/core/q$2;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p2

    move-object v4, p4

    move-object v5, p1

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/appnext/core/q$2;-><init>(Lcom/appnext/core/q;Ljava/lang/String;Lcom/appnext/core/e$a;Lcom/appnext/core/AppnextAd;Ljava/lang/String;)V

    invoke-direct {v0, v7}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 181
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public final b(Lcom/appnext/core/AppnextAd;Ljava/lang/String;Lcom/appnext/core/e$a;)V
    .registers 6

    .line 57
    iget-object v0, p0, Lcom/appnext/core/q;->click:Lcom/appnext/core/e;

    if-nez v0, :cond_5

    return-void

    .line 60
    :cond_5
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/appnext/core/q$1;

    invoke-direct {v1, p0, p2, p1, p3}, Lcom/appnext/core/q$1;-><init>(Lcom/appnext/core/q;Ljava/lang/String;Lcom/appnext/core/AppnextAd;Lcom/appnext/core/e$a;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 18

    move-object v0, p0

    .line 43
    iget-object v2, v0, Lcom/appnext/core/q;->click:Lcom/appnext/core/e;

    if-nez v2, :cond_6

    return-void

    .line 1488
    :cond_6
    new-instance v9, Ljava/lang/Thread;

    new-instance v10, Lcom/appnext/core/e$7;

    move-object v1, v10

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    invoke-direct/range {v1 .. v8}, Lcom/appnext/core/e$7;-><init>(Lcom/appnext/core/e;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v9, v10}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1503
    invoke-virtual {v9}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method protected final bo()Z
    .registers 5

    .line 274
    :try_start_0
    iget-object v0, p0, Lcom/appnext/core/q;->context:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_NETWORK_STATE"

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v0

    if-eqz v0, :cond_19

    const-string v0, "http://www.appnext.com/myid.html"

    const/4 v1, 0x0

    .line 275
    invoke-static {v0, v1}, Lcom/appnext/core/f;->a(Ljava/lang/String;Ljava/util/HashMap;)Ljava/lang/String;

    goto :goto_2f

    .line 277
    :cond_19
    iget-object v0, p0, Lcom/appnext/core/q;->context:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 278
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_31

    .line 279
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_31

    :goto_2f
    const/4 v0, 0x1

    return v0

    .line 280
    :cond_31
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0
    :try_end_37
    .catchall {:try_start_0 .. :try_end_37} :catchall_37

    :catchall_37
    const/4 v0, 0x0

    return v0
.end method

.method public final destroy()V
    .registers 4

    const/4 v0, 0x0

    .line 290
    :try_start_1
    iget-object v1, p0, Lcom/appnext/core/q;->hH:Lcom/appnext/core/h;

    if-eqz v1, :cond_c

    .line 291
    iget-object v1, p0, Lcom/appnext/core/q;->hH:Lcom/appnext/core/h;

    iget-object v2, p0, Lcom/appnext/core/q;->context:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/appnext/core/h;->a(Landroid/content/Context;)V

    .line 293
    :cond_c
    iput-object v0, p0, Lcom/appnext/core/q;->hH:Lcom/appnext/core/h;
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_f

    goto :goto_10

    :catchall_f
    nop

    .line 297
    :goto_10
    iput-object v0, p0, Lcom/appnext/core/q;->context:Landroid/content/Context;

    .line 298
    iget-object v1, p0, Lcom/appnext/core/q;->click:Lcom/appnext/core/e;

    if-eqz v1, :cond_18

    .line 299
    iput-object v0, p0, Lcom/appnext/core/q;->click:Lcom/appnext/core/e;

    :cond_18
    return-void
.end method

.method public final e(Lcom/appnext/core/AppnextAd;)V
    .registers 3

    .line 264
    :try_start_0
    iget-object v0, p0, Lcom/appnext/core/q;->click:Lcom/appnext/core/e;

    if-eqz v0, :cond_9

    .line 265
    iget-object v0, p0, Lcom/appnext/core/q;->click:Lcom/appnext/core/e;

    invoke-virtual {v0, p1}, Lcom/appnext/core/e;->e(Lcom/appnext/core/AppnextAd;)V
    :try_end_9
    .catchall {:try_start_0 .. :try_end_9} :catchall_9

    :catchall_9
    :cond_9
    return-void
.end method
