.class public Lcom/tappx/a/j1$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tappx/a/j1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# static fields
.field private static volatile b:Lcom/tappx/a/j1$a;


# instance fields
.field private final a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/tappx/a/j1$a;->a:Landroid/content/Context;

    return-void
.end method

.method public static final a(Landroid/content/Context;)Lcom/tappx/a/j1$a;
    .registers 3

    .line 1
    sget-object v0, Lcom/tappx/a/j1$a;->b:Lcom/tappx/a/j1$a;

    if-nez v0, :cond_1b

    .line 3
    const-class v0, Lcom/tappx/a/j1$a;

    monitor-enter v0

    .line 4
    :try_start_7
    sget-object v1, Lcom/tappx/a/j1$a;->b:Lcom/tappx/a/j1$a;

    if-nez v1, :cond_16

    .line 6
    new-instance v1, Lcom/tappx/a/j1$a;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/tappx/a/j1$a;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/tappx/a/j1$a;->b:Lcom/tappx/a/j1$a;

    .line 8
    :cond_16
    monitor-exit v0

    goto :goto_1b

    :catchall_18
    move-exception p0

    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_7 .. :try_end_1a} :catchall_18

    throw p0

    .line 10
    :cond_1b
    :goto_1b
    sget-object p0, Lcom/tappx/a/j1$a;->b:Lcom/tappx/a/j1$a;

    return-object p0
.end method


# virtual methods
.method public a()Lcom/tappx/a/j1;
    .registers 12

    .line 11
    iget-object v0, p0, Lcom/tappx/a/j1$a;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/tappx/a/o2;->a(Landroid/content/Context;)Lcom/tappx/a/o2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tappx/a/o2;->c()Lcom/tappx/a/n2;

    move-result-object v0

    .line 12
    invoke-virtual {v0}, Lcom/tappx/a/n2;->c()Lcom/tappx/a/s2;

    move-result-object v0

    .line 13
    invoke-virtual {v0}, Lcom/tappx/a/s2;->a()Ljava/lang/Boolean;

    move-result-object v1

    .line 14
    invoke-virtual {v0}, Lcom/tappx/a/s2;->c()Lcom/tappx/a/p2;

    move-result-object v2

    .line 16
    invoke-virtual {v0}, Lcom/tappx/a/s2;->b()J

    move-result-wide v3

    .line 17
    invoke-virtual {v2}, Lcom/tappx/a/p2;->a()Z

    move-result v5

    if-eqz v5, :cond_24

    const/4 v1, 0x0

    move-wide v9, v3

    const/4 v8, 0x0

    goto :goto_4b

    .line 19
    :cond_24
    invoke-virtual {v2}, Lcom/tappx/a/p2;->c()Z

    move-result v2

    if-eqz v2, :cond_2e

    const/4 v1, 0x1

    move-wide v9, v3

    const/4 v8, 0x1

    goto :goto_4b

    :cond_2e
    const-wide/16 v3, 0x0

    .line 23
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v2, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3c

    const/4 v1, -0x1

    move-wide v9, v3

    const/4 v8, -0x1

    goto :goto_4b

    .line 25
    :cond_3c
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v2, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_48

    const/4 v1, -0x2

    move-wide v9, v3

    const/4 v8, -0x2

    goto :goto_4b

    :cond_48
    const/4 v1, -0x3

    move-wide v9, v3

    const/4 v8, -0x3

    .line 31
    :goto_4b
    new-instance v1, Lcom/tappx/a/j1;

    invoke-virtual {v0}, Lcom/tappx/a/s2;->d()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0}, Lcom/tappx/a/s2;->e()Ljava/lang/String;

    move-result-object v7

    move-object v5, v1

    invoke-direct/range {v5 .. v10}, Lcom/tappx/a/j1;-><init>(Ljava/lang/String;Ljava/lang/String;IJ)V

    return-object v1
.end method
