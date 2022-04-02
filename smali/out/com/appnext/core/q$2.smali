.class final Lcom/appnext/core/q$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appnext/core/q;->a(Lcom/appnext/core/AppnextAd;Ljava/lang/String;Ljava/lang/String;Lcom/appnext/core/e$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic aY:Lcom/appnext/core/AppnextAd;

.field final synthetic hM:Lcom/appnext/core/q;

.field final synthetic hO:Ljava/lang/String;

.field final synthetic hP:Lcom/appnext/core/e$a;

.field final synthetic hQ:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/appnext/core/q;Ljava/lang/String;Lcom/appnext/core/e$a;Lcom/appnext/core/AppnextAd;Ljava/lang/String;)V
    .registers 6

    .line 93
    iput-object p1, p0, Lcom/appnext/core/q$2;->hM:Lcom/appnext/core/q;

    iput-object p2, p0, Lcom/appnext/core/q$2;->hO:Ljava/lang/String;

    iput-object p3, p0, Lcom/appnext/core/q$2;->hP:Lcom/appnext/core/e$a;

    iput-object p4, p0, Lcom/appnext/core/q$2;->aY:Lcom/appnext/core/AppnextAd;

    iput-object p5, p0, Lcom/appnext/core/q$2;->hQ:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 96
    iget-object v0, p0, Lcom/appnext/core/q$2;->hM:Lcom/appnext/core/q;

    invoke-virtual {v0}, Lcom/appnext/core/q;->bo()Z

    move-result v0

    if-nez v0, :cond_1a

    .line 97
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/appnext/core/q$2$1;

    invoke-direct {v1, p0}, Lcom/appnext/core/q$2$1;-><init>(Lcom/appnext/core/q$2;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 108
    :cond_1a
    iget-object v0, p0, Lcom/appnext/core/q$2;->aY:Lcom/appnext/core/AppnextAd;

    if-nez v0, :cond_1f

    return-void

    .line 111
    :cond_1f
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/appnext/core/q$2$2;

    invoke-direct {v1, p0}, Lcom/appnext/core/q$2$2;-><init>(Lcom/appnext/core/q$2;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
