.class final Lcom/appnext/banners/g$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appnext/banners/g;->pageFinished()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic di:Lcom/appnext/banners/g;


# direct methods
.method constructor <init>(Lcom/appnext/banners/g;)V
    .registers 2

    .line 352
    iput-object p1, p0, Lcom/appnext/banners/g$4;->di:Lcom/appnext/banners/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    .line 355
    iget-object v0, p0, Lcom/appnext/banners/g$4;->di:Lcom/appnext/banners/g;

    iget-object v1, v0, Lcom/appnext/banners/g;->context:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/appnext/core/f;->b(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/appnext/banners/g;->access$502(Lcom/appnext/banners/g;Ljava/lang/String;)Ljava/lang/String;

    .line 356
    iget-object v0, p0, Lcom/appnext/banners/g$4;->di:Lcom/appnext/banners/g;

    invoke-static {v0}, Lcom/appnext/banners/g;->access$000(Lcom/appnext/banners/g;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 357
    iget-object v0, p0, Lcom/appnext/banners/g$4;->di:Lcom/appnext/banners/g;

    invoke-static {v0}, Lcom/appnext/banners/g;->access$000(Lcom/appnext/banners/g;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/appnext/banners/g$4$1;

    invoke-direct {v1, p0}, Lcom/appnext/banners/g$4$1;-><init>(Lcom/appnext/banners/g$4;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
