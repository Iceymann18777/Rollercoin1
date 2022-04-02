.class final Lcom/appnext/core/k$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appnext/core/k;->a(Landroid/content/Context;Landroid/widget/ImageView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic hs:Landroid/widget/ImageView;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/widget/ImageView;)V
    .registers 3

    .line 13
    iput-object p1, p0, Lcom/appnext/core/k$1;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/appnext/core/k$1;->hs:Landroid/widget/ImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    :try_start_0
    const-string v0, "https://cdn.appnext.com/tools/sdk/adchoices/adchoices_big.png"

    .line 17
    invoke-static {v0}, Lcom/appnext/core/f;->Y(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 18
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, Lcom/appnext/core/k$1$1;

    invoke-direct {v2, p0, v0}, Lcom/appnext/core/k$1$1;-><init>(Lcom/appnext/core/k$1;Landroid/graphics/Bitmap;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_17
    .catchall {:try_start_0 .. :try_end_17} :catchall_18

    return-void

    .line 33
    :catchall_18
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/appnext/core/k$1$2;

    invoke-direct {v1, p0}, Lcom/appnext/core/k$1$2;-><init>(Lcom/appnext/core/k$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
