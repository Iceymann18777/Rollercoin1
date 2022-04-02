.class public Lcom/appnext/base/services/b/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static volatile eM:Lcom/appnext/base/services/b/a;


# instance fields
.field private eN:Lcom/appnext/base/services/a/c;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    :try_start_3
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_11

    .line 22
    new-instance v0, Lcom/appnext/base/services/a/b;

    invoke-direct {v0, p1}, Lcom/appnext/base/services/a/b;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/appnext/base/services/b/a;->eN:Lcom/appnext/base/services/a/c;

    goto :goto_18

    .line 24
    :cond_11
    new-instance v0, Lcom/appnext/base/services/a/a;

    invoke-direct {v0, p1}, Lcom/appnext/base/services/a/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/appnext/base/services/b/a;->eN:Lcom/appnext/base/services/a/c;
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_18

    :catchall_18
    :goto_18
    return-void
.end method

.method public static d(Landroid/content/Context;)Lcom/appnext/base/services/b/a;
    .registers 3

    .line 32
    sget-object v0, Lcom/appnext/base/services/b/a;->eM:Lcom/appnext/base/services/b/a;

    if-nez v0, :cond_17

    .line 33
    const-class v0, Lcom/appnext/base/services/b/a;

    monitor-enter v0

    .line 34
    :try_start_7
    sget-object v1, Lcom/appnext/base/services/b/a;->eM:Lcom/appnext/base/services/b/a;

    if-nez v1, :cond_12

    .line 35
    new-instance v1, Lcom/appnext/base/services/b/a;

    invoke-direct {v1, p0}, Lcom/appnext/base/services/b/a;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/appnext/base/services/b/a;->eM:Lcom/appnext/base/services/b/a;

    .line 37
    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception p0

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw p0

    .line 39
    :cond_17
    :goto_17
    sget-object p0, Lcom/appnext/base/services/b/a;->eM:Lcom/appnext/base/services/b/a;

    return-object p0
.end method


# virtual methods
.method public final a(Lcom/appnext/base/a/b/c;Z)V
    .registers 5

    .line 43
    iget-object v0, p0, Lcom/appnext/base/services/b/a;->eN:Lcom/appnext/base/services/a/c;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lcom/appnext/base/services/a/c;->a(Lcom/appnext/base/a/b/c;ZLandroid/os/Bundle;)V

    return-void
.end method

.method public final c(Lcom/appnext/base/a/b/c;)V
    .registers 3

    .line 47
    iget-object v0, p0, Lcom/appnext/base/services/b/a;->eN:Lcom/appnext/base/services/a/c;

    invoke-virtual {v0, p1}, Lcom/appnext/base/services/a/c;->c(Lcom/appnext/base/a/b/c;)V

    return-void
.end method

.method public final h(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/appnext/base/a/b/c;",
            ">;)V"
        }
    .end annotation

    .line 51
    iget-object v0, p0, Lcom/appnext/base/services/b/a;->eN:Lcom/appnext/base/services/a/c;

    invoke-virtual {v0, p1}, Lcom/appnext/base/services/a/c;->h(Ljava/util/List;)V

    return-void
.end method
