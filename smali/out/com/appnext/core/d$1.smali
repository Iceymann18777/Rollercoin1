.class final Lcom/appnext/core/d$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appnext/core/d;->a(Landroid/content/Context;Lcom/appnext/core/Ad;Ljava/lang/String;Lcom/appnext/core/d$a;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic fV:Lcom/appnext/core/Ad;

.field final synthetic fW:Lcom/appnext/core/d$a;

.field final synthetic fX:Z

.field final synthetic fY:Lcom/appnext/core/d;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$placementID:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/appnext/core/d;Lcom/appnext/core/Ad;Landroid/content/Context;Lcom/appnext/core/d$a;Ljava/lang/String;Z)V
    .registers 7

    .line 80
    iput-object p1, p0, Lcom/appnext/core/d$1;->fY:Lcom/appnext/core/d;

    iput-object p2, p0, Lcom/appnext/core/d$1;->fV:Lcom/appnext/core/Ad;

    iput-object p3, p0, Lcom/appnext/core/d$1;->val$context:Landroid/content/Context;

    iput-object p4, p0, Lcom/appnext/core/d$1;->fW:Lcom/appnext/core/d$a;

    iput-object p5, p0, Lcom/appnext/core/d$1;->val$placementID:Ljava/lang/String;

    iput-boolean p6, p0, Lcom/appnext/core/d$1;->fX:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 6

    .line 84
    :try_start_0
    iget-object v0, p0, Lcom/appnext/core/d$1;->fY:Lcom/appnext/core/d;

    iget-object v1, p0, Lcom/appnext/core/d$1;->fV:Lcom/appnext/core/Ad;

    invoke-virtual {v0, v1}, Lcom/appnext/core/d;->a(Lcom/appnext/core/Ad;)Z

    move-result v0

    if-nez v0, :cond_1e

    iget-object v0, p0, Lcom/appnext/core/d$1;->fY:Lcom/appnext/core/d;

    iget-object v1, p0, Lcom/appnext/core/d$1;->fV:Lcom/appnext/core/Ad;

    invoke-virtual {v0, v1}, Lcom/appnext/core/d;->h(Lcom/appnext/core/Ad;)Z

    move-result v0

    if-eqz v0, :cond_2f

    iget-object v0, p0, Lcom/appnext/core/d$1;->fY:Lcom/appnext/core/d;

    iget-object v1, p0, Lcom/appnext/core/d$1;->fV:Lcom/appnext/core/Ad;

    invoke-virtual {v0, v1}, Lcom/appnext/core/d;->i(Lcom/appnext/core/Ad;)Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 85
    :cond_1e
    iget-object v0, p0, Lcom/appnext/core/d$1;->fY:Lcom/appnext/core/d;

    iget-object v1, p0, Lcom/appnext/core/d$1;->val$context:Landroid/content/Context;

    iget-object v2, p0, Lcom/appnext/core/d$1;->fV:Lcom/appnext/core/Ad;

    iget-object v3, p0, Lcom/appnext/core/d$1;->fY:Lcom/appnext/core/d;

    iget-object v4, p0, Lcom/appnext/core/d$1;->fV:Lcom/appnext/core/Ad;

    invoke-virtual {v3, v4}, Lcom/appnext/core/d;->k(Lcom/appnext/core/Ad;)Lcom/appnext/core/a;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/appnext/core/d;->a(Landroid/content/Context;Lcom/appnext/core/Ad;Lcom/appnext/core/a;)V
    :try_end_2f
    .catchall {:try_start_0 .. :try_end_2f} :catchall_2f

    .line 88
    :catchall_2f
    :cond_2f
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/appnext/core/d$1$1;

    invoke-direct {v1, p0}, Lcom/appnext/core/d$1$1;-><init>(Lcom/appnext/core/d$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
