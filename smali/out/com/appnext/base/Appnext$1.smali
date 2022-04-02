.class final Lcom/appnext/base/Appnext$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appnext/base/Appnext;->b(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic dr:Lcom/appnext/base/Appnext;


# direct methods
.method constructor <init>(Lcom/appnext/base/Appnext;)V
    .registers 2

    .line 65
    iput-object p1, p0, Lcom/appnext/base/Appnext$1;->dr:Lcom/appnext/base/Appnext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 15

    .line 70
    :try_start_0
    invoke-static {}, Lcom/appnext/base/b/e;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    .line 1110
    invoke-static {v0, v1}, Lcom/appnext/core/f;->b(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v0

    const-string v2, "aidForSend"

    .line 71
    sget-object v3, Lcom/appnext/base/b/d$a;->String:Lcom/appnext/base/b/d$a;

    invoke-static {v2, v0, v3}, Lcom/appnext/base/b/j;->a(Ljava/lang/String;Ljava/lang/String;Lcom/appnext/base/b/d$a;)V

    .line 72
    invoke-static {}, Lcom/appnext/base/b/i;->aR()Lcom/appnext/base/b/i;

    move-result-object v0

    iget-object v2, p0, Lcom/appnext/base/Appnext$1;->dr:Lcom/appnext/base/Appnext;

    invoke-static {v2}, Lcom/appnext/base/Appnext;->a(Lcom/appnext/base/Appnext;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/appnext/base/b/i;->init(Landroid/content/Context;)V

    .line 73
    iget-object v0, p0, Lcom/appnext/base/Appnext$1;->dr:Lcom/appnext/base/Appnext;

    invoke-static {v0}, Lcom/appnext/base/Appnext;->a(Lcom/appnext/base/Appnext;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/appnext/base/b/j;->i(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_39

    .line 74
    iget-object v0, p0, Lcom/appnext/base/Appnext$1;->dr:Lcom/appnext/base/Appnext;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/appnext/base/Appnext;->a(Lcom/appnext/base/Appnext;Z)Z

    .line 75
    invoke-static {}, Lcom/appnext/base/b/i;->aR()Lcom/appnext/base/b/i;

    move-result-object v0

    const-string v2, "lat"

    invoke-virtual {v0, v2, v1}, Lcom/appnext/base/b/i;->putBoolean(Ljava/lang/String;Z)V

    return-void

    .line 78
    :cond_39
    iget-object v0, p0, Lcom/appnext/base/Appnext$1;->dr:Lcom/appnext/base/Appnext;

    invoke-static {v0}, Lcom/appnext/base/Appnext;->a(Lcom/appnext/base/Appnext;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/appnext/base/b/e;->init(Landroid/content/Context;)V

    .line 79
    invoke-static {}, Lcom/appnext/base/b/i;->aR()Lcom/appnext/base/b/i;

    move-result-object v0

    iget-object v2, p0, Lcom/appnext/base/Appnext$1;->dr:Lcom/appnext/base/Appnext;

    invoke-static {v2}, Lcom/appnext/base/Appnext;->a(Lcom/appnext/base/Appnext;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/appnext/base/b/i;->init(Landroid/content/Context;)V

    .line 80
    iget-object v0, p0, Lcom/appnext/base/Appnext$1;->dr:Lcom/appnext/base/Appnext;

    invoke-static {v0}, Lcom/appnext/base/Appnext;->b(Lcom/appnext/base/Appnext;)V

    .line 83
    iget-object v0, p0, Lcom/appnext/base/Appnext$1;->dr:Lcom/appnext/base/Appnext;

    invoke-static {v0}, Lcom/appnext/base/Appnext;->a(Lcom/appnext/base/Appnext;)Landroid/content/Context;

    move-result-object v0
    :try_end_5a
    .catchall {:try_start_0 .. :try_end_5a} :catchall_a6

    .line 1232
    :try_start_5a
    invoke-static {}, Lcom/appnext/base/a/a;->X()Lcom/appnext/base/a/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/appnext/base/a/a;->ab()Lcom/appnext/base/a/c/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/appnext/base/a/c/c;->as()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_a6

    .line 1233
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_a6

    .line 1234
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "cdm"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 1236
    new-instance v2, Lcom/appnext/base/a/b/c;

    const-string v6, "on"

    const-string v7, "1"

    const-string v8, "hour"

    const-string v9, "1"

    const-string v10, "interval"

    const-string v11, "cdm"

    const/4 v13, 0x0

    move-object v5, v2

    invoke-direct/range {v5 .. v13}, Lcom/appnext/base/a/b/c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1237
    invoke-static {}, Lcom/appnext/base/a/a;->X()Lcom/appnext/base/a/a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/appnext/base/a/a;->ab()Lcom/appnext/base/a/c/c;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/appnext/base/a/c/c;->a(Lcom/appnext/base/a/b/c;)J

    .line 1238
    invoke-static {v0}, Lcom/appnext/base/services/b/a;->d(Landroid/content/Context;)Lcom/appnext/base/services/b/a;

    move-result-object v0

    invoke-virtual {v0, v2, v1}, Lcom/appnext/base/services/b/a;->a(Lcom/appnext/base/a/b/c;Z)V
    :try_end_a5
    .catchall {:try_start_5a .. :try_end_a5} :catchall_a6

    nop

    :catchall_a6
    :cond_a6
    return-void
.end method
