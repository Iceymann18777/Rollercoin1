.class public Lcom/appnext/base/operations/imp/scdle;
.super Lcom/appnext/base/operations/c;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/appnext/base/a/b/c;Landroid/os/Bundle;Ljava/lang/Object;)V
    .registers 4

    .line 17
    invoke-direct {p0, p1, p2, p3}, Lcom/appnext/base/operations/c;-><init>(Lcom/appnext/base/a/b/c;Landroid/os/Bundle;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected getData()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/appnext/base/a/b/b;",
            ">;"
        }
    .end annotation

    .line 28
    :try_start_0
    invoke-static {}, Lcom/appnext/base/a/a;->X()Lcom/appnext/base/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appnext/base/a/a;->ab()Lcom/appnext/base/a/c/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appnext/base/a/c/c;->as()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_52

    .line 30
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_12
    :goto_12
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_52

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/appnext/base/a/b/c;

    .line 31
    invoke-virtual {v1}, Lcom/appnext/base/a/b/c;->getKey()Ljava/lang/String;

    move-result-object v2

    .line 1022
    const-class v3, Lcom/appnext/base/operations/imp/scdle;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    .line 31
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_12

    invoke-virtual {v1}, Lcom/appnext/base/a/b/c;->ao()Ljava/lang/String;

    move-result-object v2

    const-string v3, "once"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 32
    invoke-static {}, Lcom/appnext/base/b/e;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/appnext/base/services/b/a;->d(Landroid/content/Context;)Lcom/appnext/base/services/b/a;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/appnext/base/services/b/a;->c(Lcom/appnext/base/a/b/c;)V

    .line 33
    invoke-static {}, Lcom/appnext/base/b/e;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/appnext/base/services/b/a;->d(Landroid/content/Context;)Lcom/appnext/base/services/b/a;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v1, v3}, Lcom/appnext/base/services/b/a;->a(Lcom/appnext/base/a/b/c;Z)V
    :try_end_51
    .catchall {:try_start_0 .. :try_end_51} :catchall_52

    goto :goto_12

    :catchall_52
    :cond_52
    const/4 v0, 0x0

    return-object v0
.end method

.method protected final getKey()Ljava/lang/String;
    .registers 2

    .line 22
    const-class v0, Lcom/appnext/base/operations/imp/scdle;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
