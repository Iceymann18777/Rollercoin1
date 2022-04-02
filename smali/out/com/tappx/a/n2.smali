.class public Lcom/tappx/a/n2;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tappx/a/n2$f;
    }
.end annotation


# static fields
.field private static final f:J


# instance fields
.field private final a:Lcom/tappx/a/q2;

.field private final b:Lcom/tappx/a/k2;

.field private final c:Lcom/tappx/a/m2;

.field private final d:Lcom/tappx/a/i2;

.field private e:Z


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 1
    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x16d

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v0

    sput-wide v0, Lcom/tappx/a/n2;->f:J

    return-void
.end method

.method constructor <init>(Lcom/tappx/a/q2;Lcom/tappx/a/k2;Lcom/tappx/a/m2;Lcom/tappx/a/i2;)V
    .registers 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/tappx/a/n2;->a:Lcom/tappx/a/q2;

    .line 3
    iput-object p2, p0, Lcom/tappx/a/n2;->b:Lcom/tappx/a/k2;

    .line 4
    iput-object p3, p0, Lcom/tappx/a/n2;->c:Lcom/tappx/a/m2;

    .line 5
    iput-object p4, p0, Lcom/tappx/a/n2;->d:Lcom/tappx/a/i2;

    return-void
.end method

.method static synthetic a(Lcom/tappx/a/n2;)Lcom/tappx/a/m2;
    .registers 1

    .line 2
    iget-object p0, p0, Lcom/tappx/a/n2;->c:Lcom/tappx/a/m2;

    return-object p0
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 20
    invoke-static {p1, p2, p3}, Lcom/tappx/a/l2;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p2

    .line 21
    instance-of p3, p1, Landroid/app/Activity;

    if-nez p3, :cond_d

    const/high16 p3, 0x10000000

    .line 22
    invoke-virtual {p2, p3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 25
    :cond_d
    :try_start_d
    invoke-virtual {p1, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_10} :catch_11

    goto :goto_2f

    .line 27
    :catch_11
    const-class p1, Lcom/tappx/sdk/android/PrivacyConsentActivity;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    .line 28
    const-class p2, Lcom/tappx/sdk/android/PrivacyConsentActivity;

    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p2

    const-string p3, "dfKcWOaG8KPoMfm5zts08Qlu05+R8BIzO3YcOMbimy7M7b66oYD1J20myZSpOoOWRYcUsjDmTjtwSPWh2TgTXA"

    .line 29
    invoke-static {p3}, Lcom/tappx/a/f;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p2, v0, p1

    invoke-static {p3, v0}, Lcom/tappx/a/j0;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_2f
    return-void
.end method

.method private a(Lcom/tappx/a/n2$f;)V
    .registers 4

    .line 30
    iget-object v0, p0, Lcom/tappx/a/n2;->b:Lcom/tappx/a/k2;

    new-instance v1, Lcom/tappx/a/n2$c;

    invoke-direct {v1, p0, p1}, Lcom/tappx/a/n2$c;-><init>(Lcom/tappx/a/n2;Lcom/tappx/a/n2$f;)V

    invoke-virtual {v0, v1}, Lcom/tappx/a/k2;->a(Lcom/tappx/a/k2$c;)V

    return-void
.end method

.method static synthetic a(Lcom/tappx/a/n2;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 3
    invoke-direct {p0, p1, p2, p3}, Lcom/tappx/a/n2;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/tappx/a/n2;Ljava/lang/ref/WeakReference;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/tappx/a/n2;->a(Ljava/lang/ref/WeakReference;)V

    return-void
.end method

.method private a(Lcom/tappx/a/p2;)V
    .registers 4

    .line 5
    iget-object v0, p0, Lcom/tappx/a/n2;->a:Lcom/tappx/a/q2;

    invoke-virtual {v0}, Lcom/tappx/a/q2;->g()Lcom/tappx/a/p2;

    move-result-object v0

    if-ne v0, p1, :cond_9

    return-void

    .line 7
    :cond_9
    iget-object v0, p0, Lcom/tappx/a/n2;->a:Lcom/tappx/a/q2;

    invoke-virtual {v0, p1}, Lcom/tappx/a/q2;->a(Lcom/tappx/a/p2;)V

    .line 8
    iget-object p1, p0, Lcom/tappx/a/n2;->a:Lcom/tappx/a/q2;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/tappx/a/q2;->c(Z)V

    .line 9
    iget-object p1, p0, Lcom/tappx/a/n2;->a:Lcom/tappx/a/q2;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/tappx/a/q2;->b(Z)V

    .line 10
    iget-object p1, p0, Lcom/tappx/a/n2;->a:Lcom/tappx/a/q2;

    invoke-direct {p0}, Lcom/tappx/a/n2;->l()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/tappx/a/q2;->a(J)V

    .line 11
    invoke-virtual {p0}, Lcom/tappx/a/n2;->a()V

    return-void
.end method

.method private a(Ljava/lang/ref/WeakReference;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;)V"
        }
    .end annotation

    .line 18
    iget-object v0, p0, Lcom/tappx/a/n2;->c:Lcom/tappx/a/m2;

    invoke-virtual {v0}, Lcom/tappx/a/m2;->b()V

    .line 19
    new-instance v0, Lcom/tappx/a/n2$b;

    invoke-direct {v0, p0, p1}, Lcom/tappx/a/n2$b;-><init>(Lcom/tappx/a/n2;Ljava/lang/ref/WeakReference;)V

    invoke-direct {p0, v0}, Lcom/tappx/a/n2;->c(Lcom/tappx/a/n2$f;)V

    return-void
.end method

.method static synthetic a(Lcom/tappx/a/n2;Z)Z
    .registers 2

    .line 4
    iput-boolean p1, p0, Lcom/tappx/a/n2;->e:Z

    return p1
.end method

.method static synthetic b(Lcom/tappx/a/n2;)Lcom/tappx/a/q2;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/tappx/a/n2;->a:Lcom/tappx/a/q2;

    return-object p0
.end method

.method private b(Lcom/tappx/a/n2$f;)V
    .registers 5

    .line 2
    iget-object v0, p0, Lcom/tappx/a/n2;->a:Lcom/tappx/a/q2;

    invoke-virtual {v0}, Lcom/tappx/a/q2;->g()Lcom/tappx/a/p2;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/tappx/a/n2;->a:Lcom/tappx/a/q2;

    invoke-virtual {v1}, Lcom/tappx/a/q2;->i()Ljava/lang/String;

    move-result-object v1

    .line 4
    sget-object v2, Lcom/tappx/a/p2;->e:Lcom/tappx/a/p2;

    if-eq v0, v2, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    if-eqz v0, :cond_19

    .line 6
    invoke-interface {p1}, Lcom/tappx/a/n2$f;->b()V

    goto :goto_23

    :cond_19
    if-nez v1, :cond_1f

    .line 8
    invoke-direct {p0, p1}, Lcom/tappx/a/n2;->a(Lcom/tappx/a/n2$f;)V

    goto :goto_23

    :cond_1f
    const/4 v0, 0x0

    .line 10
    invoke-interface {p1, v1, v0}, Lcom/tappx/a/n2$f;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_23
    return-void
.end method

.method private c(Lcom/tappx/a/n2$f;)V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/tappx/a/n2;->a:Lcom/tappx/a/q2;

    invoke-virtual {v0}, Lcom/tappx/a/q2;->m()Z

    move-result v0

    .line 2
    iget-object v1, p0, Lcom/tappx/a/n2;->a:Lcom/tappx/a/q2;

    invoke-virtual {v1}, Lcom/tappx/a/q2;->d()Ljava/lang/Boolean;

    move-result-object v1

    .line 3
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v2, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a

    if-nez v0, :cond_1a

    .line 4
    invoke-interface {p1}, Lcom/tappx/a/n2$f;->b()V

    return-void

    .line 7
    :cond_1a
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v2, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_28

    if-nez v0, :cond_28

    .line 8
    invoke-direct {p0, p1}, Lcom/tappx/a/n2;->b(Lcom/tappx/a/n2$f;)V

    return-void

    .line 11
    :cond_28
    invoke-direct {p0, p1}, Lcom/tappx/a/n2;->a(Lcom/tappx/a/n2$f;)V

    return-void
.end method

.method private k()V
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/tappx/a/n2;->a:Lcom/tappx/a/q2;

    invoke-virtual {v0}, Lcom/tappx/a/q2;->e()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gtz v4, :cond_d

    return-void

    .line 3
    :cond_d
    invoke-direct {p0}, Lcom/tappx/a/n2;->l()J

    move-result-wide v2

    sub-long/2addr v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    .line 4
    sget-wide v2, Lcom/tappx/a/n2;->f:J

    cmp-long v4, v0, v2

    if-lez v4, :cond_21

    .line 5
    iget-object v0, p0, Lcom/tappx/a/n2;->a:Lcom/tappx/a/q2;

    invoke-virtual {v0}, Lcom/tappx/a/q2;->b()V

    :cond_21
    return-void
.end method

.method private l()J
    .registers 5

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    return-wide v0
.end method


# virtual methods
.method public a()V
    .registers 6

    .line 50
    iget-boolean v0, p0, Lcom/tappx/a/n2;->e:Z

    if-eqz v0, :cond_5

    return-void

    .line 51
    :cond_5
    iget-object v0, p0, Lcom/tappx/a/n2;->a:Lcom/tappx/a/q2;

    invoke-virtual {v0}, Lcom/tappx/a/q2;->c()Z

    move-result v0

    if-nez v0, :cond_e

    return-void

    .line 52
    :cond_e
    iget-object v0, p0, Lcom/tappx/a/n2;->a:Lcom/tappx/a/q2;

    invoke-virtual {v0}, Lcom/tappx/a/q2;->g()Lcom/tappx/a/p2;

    move-result-object v0

    .line 53
    sget-object v1, Lcom/tappx/a/p2;->e:Lcom/tappx/a/p2;

    if-ne v0, v1, :cond_19

    return-void

    :cond_19
    const/4 v1, 0x1

    .line 54
    iput-boolean v1, p0, Lcom/tappx/a/n2;->e:Z

    .line 55
    iget-object v1, p0, Lcom/tappx/a/n2;->a:Lcom/tappx/a/q2;

    invoke-virtual {v1}, Lcom/tappx/a/q2;->e()J

    move-result-wide v1

    .line 56
    invoke-direct {p0}, Lcom/tappx/a/n2;->l()J

    move-result-wide v3

    sub-long/2addr v3, v1

    const-wide/16 v1, 0x0

    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    .line 57
    iget-object v3, p0, Lcom/tappx/a/n2;->d:Lcom/tappx/a/i2;

    new-instance v4, Lcom/tappx/a/n2$e;

    invoke-direct {v4, p0}, Lcom/tappx/a/n2$e;-><init>(Lcom/tappx/a/n2;)V

    invoke-virtual {v3, v0, v1, v2, v4}, Lcom/tappx/a/i2;->a(Lcom/tappx/a/p2;JLcom/tappx/a/i2$c;)V

    return-void
.end method

.method public a(Landroid/content/Context;)V
    .registers 5

    .line 31
    iget-object v0, p0, Lcom/tappx/a/n2;->a:Lcom/tappx/a/q2;

    invoke-virtual {v0}, Lcom/tappx/a/q2;->d()Ljava/lang/Boolean;

    move-result-object v0

    .line 32
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1, v0}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 33
    iget-object v2, p0, Lcom/tappx/a/n2;->a:Lcom/tappx/a/q2;

    invoke-virtual {v2}, Lcom/tappx/a/q2;->i()Ljava/lang/String;

    move-result-object v2

    if-eqz v1, :cond_1b

    if-eqz v2, :cond_1b

    const/4 v0, 0x0

    .line 35
    invoke-direct {p0, p1, v2, v0}, Lcom/tappx/a/n2;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2c

    .line 36
    :cond_1b
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1, v0}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    goto :goto_2c

    .line 39
    :cond_24
    new-instance v0, Lcom/tappx/a/n2$d;

    invoke-direct {v0, p0, p1, v2}, Lcom/tappx/a/n2$d;-><init>(Lcom/tappx/a/n2;Landroid/content/Context;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/tappx/a/n2;->a(Lcom/tappx/a/n2$f;)V

    :goto_2c
    return-void
.end method

.method public a(Landroid/content/Context;Ljava/lang/Runnable;)V
    .registers 5

    .line 14
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 15
    invoke-direct {p0}, Lcom/tappx/a/n2;->k()V

    .line 17
    iget-object p1, p0, Lcom/tappx/a/n2;->c:Lcom/tappx/a/m2;

    new-instance v1, Lcom/tappx/a/n2$a;

    invoke-direct {v1, p0, v0, p2}, Lcom/tappx/a/n2$a;-><init>(Lcom/tappx/a/n2;Ljava/lang/ref/WeakReference;Ljava/lang/Runnable;)V

    invoke-virtual {p1, v1}, Lcom/tappx/a/m2;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Ljava/lang/Runnable;)V
    .registers 3

    .line 13
    iget-object v0, p0, Lcom/tappx/a/n2;->c:Lcom/tappx/a/m2;

    invoke-virtual {v0, p1}, Lcom/tappx/a/m2;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 3

    .line 40
    iget-object v0, p0, Lcom/tappx/a/n2;->a:Lcom/tappx/a/q2;

    invoke-virtual {v0, p1}, Lcom/tappx/a/q2;->b(Ljava/lang/String;)V

    return-void
.end method

.method public a(Z)V
    .registers 3

    .line 12
    iget-object v0, p0, Lcom/tappx/a/n2;->a:Lcom/tappx/a/q2;

    invoke-virtual {v0, p1}, Lcom/tappx/a/q2;->a(Z)V

    return-void
.end method

.method public a(ZILjava/lang/String;)V
    .registers 5

    .line 41
    iget-object v0, p0, Lcom/tappx/a/n2;->a:Lcom/tappx/a/q2;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/tappx/a/q2;->a(Ljava/lang/Boolean;)V

    if-eqz p3, :cond_10

    .line 43
    iget-object p1, p0, Lcom/tappx/a/n2;->a:Lcom/tappx/a/q2;

    invoke-virtual {p1, p3}, Lcom/tappx/a/q2;->a(Ljava/lang/String;)V

    .line 46
    :cond_10
    iget-object p1, p0, Lcom/tappx/a/n2;->a:Lcom/tappx/a/q2;

    invoke-virtual {p1}, Lcom/tappx/a/q2;->j()I

    move-result p1

    if-eq p1, p2, :cond_20

    .line 48
    iget-object p1, p0, Lcom/tappx/a/n2;->a:Lcom/tappx/a/q2;

    invoke-virtual {p1, p2}, Lcom/tappx/a/q2;->a(I)V

    .line 49
    invoke-virtual {p0}, Lcom/tappx/a/n2;->d()V

    :cond_20
    return-void
.end method

.method public b()Ljava/lang/String;
    .registers 4

    .line 12
    iget-object v0, p0, Lcom/tappx/a/n2;->a:Lcom/tappx/a/q2;

    invoke-virtual {v0}, Lcom/tappx/a/q2;->h()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_10

    .line 13
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x5

    if-le v1, v2, :cond_10

    return-object v0

    :cond_10
    const/4 v0, 0x0

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .registers 3

    .line 11
    iget-object v0, p0, Lcom/tappx/a/n2;->a:Lcom/tappx/a/q2;

    invoke-virtual {v0, p1}, Lcom/tappx/a/q2;->c(Ljava/lang/String;)V

    return-void
.end method

.method public c()Lcom/tappx/a/s2;
    .registers 9

    .line 12
    iget-object v0, p0, Lcom/tappx/a/n2;->a:Lcom/tappx/a/q2;

    invoke-virtual {v0}, Lcom/tappx/a/q2;->d()Ljava/lang/Boolean;

    move-result-object v2

    .line 13
    iget-object v0, p0, Lcom/tappx/a/n2;->a:Lcom/tappx/a/q2;

    invoke-virtual {v0}, Lcom/tappx/a/q2;->g()Lcom/tappx/a/p2;

    move-result-object v3

    .line 14
    iget-object v0, p0, Lcom/tappx/a/n2;->a:Lcom/tappx/a/q2;

    invoke-virtual {v0}, Lcom/tappx/a/q2;->f()Ljava/lang/String;

    move-result-object v4

    .line 15
    iget-object v0, p0, Lcom/tappx/a/n2;->a:Lcom/tappx/a/q2;

    invoke-virtual {v0}, Lcom/tappx/a/q2;->k()Ljava/lang/String;

    move-result-object v5

    .line 16
    iget-object v0, p0, Lcom/tappx/a/n2;->a:Lcom/tappx/a/q2;

    invoke-virtual {v0}, Lcom/tappx/a/q2;->e()J

    move-result-wide v6

    .line 17
    new-instance v0, Lcom/tappx/a/s2;

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/tappx/a/s2;-><init>(Ljava/lang/Boolean;Lcom/tappx/a/p2;Ljava/lang/String;Ljava/lang/String;J)V

    return-object v0
.end method

.method public d()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/tappx/a/n2;->a:Lcom/tappx/a/q2;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/tappx/a/q2;->c(Z)V

    return-void
.end method

.method public e()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/tappx/a/n2;->a:Lcom/tappx/a/q2;

    invoke-virtual {v0}, Lcom/tappx/a/q2;->l()Z

    move-result v0

    return v0
.end method

.method public f()V
    .registers 2

    .line 1
    sget-object v0, Lcom/tappx/a/p2;->d:Lcom/tappx/a/p2;

    invoke-direct {p0, v0}, Lcom/tappx/a/n2;->a(Lcom/tappx/a/p2;)V

    return-void
.end method

.method public g()V
    .registers 2

    .line 1
    sget-object v0, Lcom/tappx/a/p2;->c:Lcom/tappx/a/p2;

    invoke-direct {p0, v0}, Lcom/tappx/a/n2;->a(Lcom/tappx/a/p2;)V

    return-void
.end method

.method public h()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/tappx/a/n2;->a:Lcom/tappx/a/q2;

    invoke-virtual {v0}, Lcom/tappx/a/q2;->a()V

    .line 2
    sget-object v0, Lcom/tappx/a/p2;->b:Lcom/tappx/a/p2;

    invoke-direct {p0, v0}, Lcom/tappx/a/n2;->a(Lcom/tappx/a/p2;)V

    return-void
.end method

.method public i()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/tappx/a/n2;->a:Lcom/tappx/a/q2;

    invoke-virtual {v0}, Lcom/tappx/a/q2;->a()V

    .line 2
    sget-object v0, Lcom/tappx/a/p2;->a:Lcom/tappx/a/p2;

    invoke-direct {p0, v0}, Lcom/tappx/a/n2;->a(Lcom/tappx/a/p2;)V

    return-void
.end method

.method public j()Z
    .registers 3

    .line 1
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v1, p0, Lcom/tappx/a/n2;->a:Lcom/tappx/a/q2;

    invoke-virtual {v1}, Lcom/tappx/a/q2;->d()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    const/4 v0, 0x0

    return v0

    .line 5
    :cond_10
    iget-object v0, p0, Lcom/tappx/a/n2;->a:Lcom/tappx/a/q2;

    invoke-virtual {v0}, Lcom/tappx/a/q2;->g()Lcom/tappx/a/p2;

    move-result-object v0

    .line 6
    invoke-virtual {v0}, Lcom/tappx/a/p2;->b()Z

    move-result v0

    return v0
.end method
