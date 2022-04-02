.class final Lcom/appnext/core/q$2$2$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/appnext/core/e$a;


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

    .line 158
    iput-object p1, p0, Lcom/appnext/core/q$2$2$2;->hS:Lcom/appnext/core/q$2$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final error(Ljava/lang/String;)V
    .registers 3

    .line 169
    iget-object v0, p0, Lcom/appnext/core/q$2$2$2;->hS:Lcom/appnext/core/q$2$2;

    iget-object v0, v0, Lcom/appnext/core/q$2$2;->hR:Lcom/appnext/core/q$2;

    iget-object v0, v0, Lcom/appnext/core/q$2;->hM:Lcom/appnext/core/q;

    invoke-static {v0}, Lcom/appnext/core/q;->b(Lcom/appnext/core/q;)Lcom/appnext/core/e$a;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/appnext/core/e$a;->error(Ljava/lang/String;)V

    .line 170
    iget-object v0, p0, Lcom/appnext/core/q$2$2$2;->hS:Lcom/appnext/core/q$2$2;

    iget-object v0, v0, Lcom/appnext/core/q$2$2;->hR:Lcom/appnext/core/q$2;

    iget-object v0, v0, Lcom/appnext/core/q$2;->hP:Lcom/appnext/core/e$a;

    if-eqz v0, :cond_1e

    .line 171
    iget-object v0, p0, Lcom/appnext/core/q$2$2$2;->hS:Lcom/appnext/core/q$2$2;

    iget-object v0, v0, Lcom/appnext/core/q$2$2;->hR:Lcom/appnext/core/q$2;

    iget-object v0, v0, Lcom/appnext/core/q$2;->hP:Lcom/appnext/core/e$a;

    invoke-interface {v0, p1}, Lcom/appnext/core/e$a;->error(Ljava/lang/String;)V

    :cond_1e
    return-void
.end method

.method public final onMarket(Ljava/lang/String;)V
    .registers 3

    .line 161
    iget-object v0, p0, Lcom/appnext/core/q$2$2$2;->hS:Lcom/appnext/core/q$2$2;

    iget-object v0, v0, Lcom/appnext/core/q$2$2;->hR:Lcom/appnext/core/q$2;

    iget-object v0, v0, Lcom/appnext/core/q$2;->hM:Lcom/appnext/core/q;

    invoke-static {v0}, Lcom/appnext/core/q;->b(Lcom/appnext/core/q;)Lcom/appnext/core/e$a;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/appnext/core/e$a;->onMarket(Ljava/lang/String;)V

    .line 162
    iget-object v0, p0, Lcom/appnext/core/q$2$2$2;->hS:Lcom/appnext/core/q$2$2;

    iget-object v0, v0, Lcom/appnext/core/q$2$2;->hR:Lcom/appnext/core/q$2;

    iget-object v0, v0, Lcom/appnext/core/q$2;->hP:Lcom/appnext/core/e$a;

    if-eqz v0, :cond_1e

    .line 163
    iget-object v0, p0, Lcom/appnext/core/q$2$2$2;->hS:Lcom/appnext/core/q$2$2;

    iget-object v0, v0, Lcom/appnext/core/q$2$2;->hR:Lcom/appnext/core/q$2;

    iget-object v0, v0, Lcom/appnext/core/q$2;->hP:Lcom/appnext/core/e$a;

    invoke-interface {v0, p1}, Lcom/appnext/core/e$a;->onMarket(Ljava/lang/String;)V

    :cond_1e
    return-void
.end method
