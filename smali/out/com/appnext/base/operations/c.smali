.class public abstract Lcom/appnext/base/operations/c;
.super Lcom/appnext/base/operations/a;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/appnext/base/a/b/c;Landroid/os/Bundle;Ljava/lang/Object;)V
    .registers 4

    .line 13
    invoke-direct {p0, p1, p2, p3}, Lcom/appnext/base/operations/a;-><init>(Lcom/appnext/base/a/b/c;Landroid/os/Bundle;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final aC()V
    .registers 4

    const/4 v0, 0x0

    :try_start_1
    const-string v1, "isAidDisabled"

    .line 20
    sget-object v2, Lcom/appnext/base/b/d$a;->Boolean:Lcom/appnext/base/b/d$a;

    invoke-static {v1, v2}, Lcom/appnext/base/b/j;->a(Ljava/lang/String;Lcom/appnext/base/b/d$a;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_17

    .line 21
    instance-of v2, v1, Ljava/lang/Boolean;

    if-eqz v2, :cond_17

    .line 22
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 25
    :cond_17
    invoke-virtual {p0}, Lcom/appnext/base/operations/c;->aE()Z

    move-result v1

    if-eqz v1, :cond_24

    if-eqz v0, :cond_20

    goto :goto_24

    .line 30
    :cond_20
    invoke-virtual {p0}, Lcom/appnext/base/operations/c;->av()V

    return-void

    .line 26
    :cond_24
    :goto_24
    new-instance v0, Lcom/appnext/base/a;

    sget v1, Lcom/appnext/base/a$a;->NoPermission$1d8b5b4a:I

    invoke-direct {v0, v1}, Lcom/appnext/base/a;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/appnext/base/operations/c;->a(Lcom/appnext/base/a;)V
    :try_end_2e
    .catchall {:try_start_1 .. :try_end_2e} :catchall_2e

    :catchall_2e
    return-void
.end method

.method public final aD()V
    .registers 1

    return-void
.end method

.method protected aG()Lcom/appnext/base/b/d$a;
    .registers 2

    .line 42
    sget-object v0, Lcom/appnext/base/b/d$a;->String:Lcom/appnext/base/b/d$a;

    return-object v0
.end method
