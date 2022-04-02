.class final Lcom/appnext/banners/a$17;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appnext/banners/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic cU:Lcom/appnext/banners/a;


# direct methods
.method constructor <init>(Lcom/appnext/banners/a;)V
    .registers 2

    .line 715
    iput-object p1, p0, Lcom/appnext/banners/a$17;->cU:Lcom/appnext/banners/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    .line 719
    :try_start_0
    iget-object v0, p0, Lcom/appnext/banners/a$17;->cU:Lcom/appnext/banners/a;

    invoke-static {v0}, Lcom/appnext/banners/a;->access$1700(Lcom/appnext/banners/a;)V

    .line 720
    iget-object v0, p0, Lcom/appnext/banners/a$17;->cU:Lcom/appnext/banners/a;

    iget-object v1, p0, Lcom/appnext/banners/a$17;->cU:Lcom/appnext/banners/a;

    invoke-static {v1}, Lcom/appnext/banners/a;->access$1000(Lcom/appnext/banners/a;)Landroid/media/MediaPlayer;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v1

    invoke-static {v0, v1}, Lcom/appnext/banners/a;->access$1202(Lcom/appnext/banners/a;I)I

    .line 721
    iget-object v0, p0, Lcom/appnext/banners/a$17;->cU:Lcom/appnext/banners/a;

    invoke-static {v0}, Lcom/appnext/banners/a;->access$1000(Lcom/appnext/banners/a;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    iget-object v1, p0, Lcom/appnext/banners/a$17;->cU:Lcom/appnext/banners/a;

    invoke-static {v1}, Lcom/appnext/banners/a;->access$1000(Lcom/appnext/banners/a;)Landroid/media/MediaPlayer;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v1

    if-ge v0, v1, :cond_43

    iget-object v0, p0, Lcom/appnext/banners/a$17;->cU:Lcom/appnext/banners/a;

    invoke-static {v0}, Lcom/appnext/banners/a;->access$1300(Lcom/appnext/banners/a;)Z

    move-result v0

    if-nez v0, :cond_43

    .line 722
    iget-object v0, p0, Lcom/appnext/banners/a$17;->cU:Lcom/appnext/banners/a;

    invoke-static {v0}, Lcom/appnext/banners/a;->access$1600(Lcom/appnext/banners/a;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/appnext/banners/a$17;->cU:Lcom/appnext/banners/a;

    invoke-static {v1}, Lcom/appnext/banners/a;->access$1500(Lcom/appnext/banners/a;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x14a

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_43
    .catchall {:try_start_0 .. :try_end_43} :catchall_43

    :catchall_43
    :cond_43
    return-void
.end method
