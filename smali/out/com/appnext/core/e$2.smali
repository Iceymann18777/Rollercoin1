.class final Lcom/appnext/core/e$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appnext/core/e;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic gB:Lcom/appnext/core/e;


# direct methods
.method constructor <init>(Lcom/appnext/core/e;)V
    .registers 2

    .line 168
    iput-object p1, p0, Lcom/appnext/core/e$2;->gB:Lcom/appnext/core/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 170
    iget-object v0, p0, Lcom/appnext/core/e$2;->gB:Lcom/appnext/core/e;

    invoke-static {v0}, Lcom/appnext/core/e;->f(Lcom/appnext/core/e;)Lcom/appnext/core/e$a;

    move-result-object v0

    if-eqz v0, :cond_2c

    iget-object v0, p0, Lcom/appnext/core/e$2;->gB:Lcom/appnext/core/e;

    invoke-static {v0}, Lcom/appnext/core/e;->g(Lcom/appnext/core/e;)Landroid/webkit/WebView;

    move-result-object v0

    if-eqz v0, :cond_2c

    .line 171
    iget-object v0, p0, Lcom/appnext/core/e$2;->gB:Lcom/appnext/core/e;

    invoke-static {v0}, Lcom/appnext/core/e;->f(Lcom/appnext/core/e;)Lcom/appnext/core/e$a;

    move-result-object v0

    iget-object v1, p0, Lcom/appnext/core/e$2;->gB:Lcom/appnext/core/e;

    invoke-static {v1}, Lcom/appnext/core/e;->g(Lcom/appnext/core/e;)Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/appnext/core/e$a;->error(Ljava/lang/String;)V

    .line 172
    iget-object v0, p0, Lcom/appnext/core/e$2;->gB:Lcom/appnext/core/e;

    invoke-static {v0}, Lcom/appnext/core/e;->g(Lcom/appnext/core/e;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->stopLoading()V

    .line 174
    :cond_2c
    iget-object v0, p0, Lcom/appnext/core/e$2;->gB:Lcom/appnext/core/e;

    invoke-static {v0}, Lcom/appnext/core/e;->b(Lcom/appnext/core/e;)V

    return-void
.end method
