.class final Lcom/appnext/core/q$2$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appnext/core/q$2$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic hS:Lcom/appnext/core/q$2$2;


# direct methods
.method constructor <init>(Lcom/appnext/core/q$2$2;)V
    .registers 2

    .line 115
    iput-object p1, p0, Lcom/appnext/core/q$2$2$1;->hS:Lcom/appnext/core/q$2$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 119
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "https://admin.appnext.com/AdminService.asmx/SetRL?guid="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/appnext/core/q$2$2$1;->hS:Lcom/appnext/core/q$2$2;

    iget-object v1, v1, Lcom/appnext/core/q$2$2;->hR:Lcom/appnext/core/q$2;

    iget-object v1, v1, Lcom/appnext/core/q$2;->hM:Lcom/appnext/core/q;

    invoke-static {v1}, Lcom/appnext/core/q;->d(Lcom/appnext/core/q;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "&bid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/appnext/core/q$2$2$1;->hS:Lcom/appnext/core/q$2$2;

    iget-object v1, v1, Lcom/appnext/core/q$2$2;->hR:Lcom/appnext/core/q$2;

    iget-object v1, v1, Lcom/appnext/core/q$2;->hM:Lcom/appnext/core/q;

    invoke-static {v1}, Lcom/appnext/core/q;->e(Lcom/appnext/core/q;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "&pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/appnext/core/q$2$2$1;->hS:Lcom/appnext/core/q$2$2;

    iget-object v1, v1, Lcom/appnext/core/q$2$2;->hR:Lcom/appnext/core/q$2;

    iget-object v1, v1, Lcom/appnext/core/q$2;->hQ:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/appnext/core/f;->a(Ljava/lang/String;Ljava/util/HashMap;)Ljava/lang/String;
    :try_end_3c
    .catchall {:try_start_0 .. :try_end_3c} :catchall_3c

    :catchall_3c
    return-void
.end method
