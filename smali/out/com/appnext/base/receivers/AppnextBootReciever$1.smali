.class final Lcom/appnext/base/receivers/AppnextBootReciever$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appnext/base/receivers/AppnextBootReciever;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic ez:Lcom/appnext/base/receivers/AppnextBootReciever;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/appnext/base/receivers/AppnextBootReciever;Landroid/content/Context;)V
    .registers 3

    .line 22
    iput-object p1, p0, Lcom/appnext/base/receivers/AppnextBootReciever$1;->ez:Lcom/appnext/base/receivers/AppnextBootReciever;

    iput-object p2, p0, Lcom/appnext/base/receivers/AppnextBootReciever$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 11

    .line 26
    :try_start_0
    const-class v0, Lcom/appnext/base/operations/imp/scdle;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v7

    .line 27
    new-instance v0, Lcom/appnext/base/a/b/c;

    const-string v2, "on"

    const-string v3, ""

    const-string v4, ""

    const-string v5, "1"

    const-string v6, "once"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v1, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v9}, Lcom/appnext/base/a/b/c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    invoke-static {}, Lcom/appnext/base/a/a;->X()Lcom/appnext/base/a/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/appnext/base/a/a;->ab()Lcom/appnext/base/a/c/c;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/appnext/base/a/c/c;->a(Lcom/appnext/base/a/b/c;)J

    .line 29
    iget-object v1, p0, Lcom/appnext/base/receivers/AppnextBootReciever$1;->val$context:Landroid/content/Context;

    invoke-static {v1}, Lcom/appnext/base/services/b/a;->d(Landroid/content/Context;)Lcom/appnext/base/services/b/a;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/appnext/base/services/b/a;->a(Lcom/appnext/base/a/b/c;Z)V
    :try_end_3f
    .catchall {:try_start_0 .. :try_end_3f} :catchall_3f

    :catchall_3f
    return-void
.end method
