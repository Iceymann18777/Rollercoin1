.class public final Lcom/tappx/a/o2;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static volatile c:Lcom/tappx/a/o2;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/tappx/a/m2;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/tappx/a/m2;

    invoke-direct {v0}, Lcom/tappx/a/m2;-><init>()V

    iput-object v0, p0, Lcom/tappx/a/o2;->b:Lcom/tappx/a/m2;

    .line 5
    iput-object p1, p0, Lcom/tappx/a/o2;->a:Landroid/content/Context;

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/tappx/a/o2;
    .registers 3

    .line 1
    sget-object v0, Lcom/tappx/a/o2;->c:Lcom/tappx/a/o2;

    if-nez v0, :cond_1f

    .line 3
    const-class v1, Lcom/tappx/a/o2;

    monitor-enter v1

    .line 4
    :try_start_7
    sget-object v0, Lcom/tappx/a/o2;->c:Lcom/tappx/a/o2;

    if-nez v0, :cond_1a

    .line 6
    new-instance v0, Lcom/tappx/a/o2;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/tappx/a/o2;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/tappx/a/o2;->c:Lcom/tappx/a/o2;

    .line 7
    sget-object p0, Lcom/tappx/a/o2;->c:Lcom/tappx/a/o2;

    monitor-exit v1

    return-object p0

    .line 9
    :cond_1a
    monitor-exit v1

    goto :goto_1f

    :catchall_1c
    move-exception p0

    monitor-exit v1
    :try_end_1e
    .catchall {:try_start_7 .. :try_end_1e} :catchall_1c

    throw p0

    :cond_1f
    :goto_1f
    return-object v0
.end method

.method private d()Lcom/tappx/a/c;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/tappx/a/o2;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/tappx/a/c;->a(Landroid/content/Context;)Lcom/tappx/a/c;

    move-result-object v0

    return-object v0
.end method

.method private e()Lcom/tappx/a/v;
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/tappx/a/o2;->d()Lcom/tappx/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tappx/a/c;->l()Lcom/tappx/a/v;

    move-result-object v0

    return-object v0
.end method

.method private f()Lcom/tappx/a/t;
    .registers 3

    .line 1
    new-instance v0, Lcom/tappx/a/t;

    invoke-direct {p0}, Lcom/tappx/a/o2;->d()Lcom/tappx/a/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tappx/a/c;->j()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/tappx/a/t;-><init>(Landroid/content/SharedPreferences;)V

    return-object v0
.end method

.method private g()Lcom/tappx/a/i2;
    .registers 3

    .line 1
    new-instance v0, Lcom/tappx/a/i2;

    invoke-direct {p0}, Lcom/tappx/a/o2;->e()Lcom/tappx/a/v;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/tappx/a/i2;-><init>(Lcom/tappx/a/v;)V

    return-object v0
.end method

.method private h()Lcom/tappx/a/q2;
    .registers 3

    .line 1
    new-instance v0, Lcom/tappx/a/q2;

    invoke-direct {p0}, Lcom/tappx/a/o2;->d()Lcom/tappx/a/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tappx/a/c;->j()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/tappx/a/q2;-><init>(Landroid/content/SharedPreferences;)V

    return-object v0
.end method


# virtual methods
.method public a()Lcom/tappx/sdk/android/TappxPrivacyManager;
    .registers 3

    .line 10
    new-instance v0, Lcom/tappx/a/r2;

    invoke-virtual {p0}, Lcom/tappx/a/o2;->c()Lcom/tappx/a/n2;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/tappx/a/r2;-><init>(Lcom/tappx/a/n2;)V

    return-object v0
.end method

.method b()Lcom/tappx/a/m2;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/tappx/a/o2;->b:Lcom/tappx/a/m2;

    return-object v0
.end method

.method public c()Lcom/tappx/a/n2;
    .registers 6

    .line 1
    new-instance v0, Lcom/tappx/a/n2;

    invoke-direct {p0}, Lcom/tappx/a/o2;->h()Lcom/tappx/a/q2;

    move-result-object v1

    new-instance v2, Lcom/tappx/a/k2;

    invoke-direct {p0}, Lcom/tappx/a/o2;->e()Lcom/tappx/a/v;

    move-result-object v3

    invoke-direct {p0}, Lcom/tappx/a/o2;->f()Lcom/tappx/a/t;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/tappx/a/k2;-><init>(Lcom/tappx/a/v;Lcom/tappx/a/t;)V

    invoke-virtual {p0}, Lcom/tappx/a/o2;->b()Lcom/tappx/a/m2;

    move-result-object v3

    invoke-direct {p0}, Lcom/tappx/a/o2;->g()Lcom/tappx/a/i2;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/tappx/a/n2;-><init>(Lcom/tappx/a/q2;Lcom/tappx/a/k2;Lcom/tappx/a/m2;Lcom/tappx/a/i2;)V

    return-object v0
.end method
