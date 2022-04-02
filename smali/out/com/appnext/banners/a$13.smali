.class final Lcom/appnext/banners/a$13;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appnext/banners/a;->createVideo(Landroid/view/ViewGroup;)V
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

    .line 636
    iput-object p1, p0, Lcom/appnext/banners/a$13;->cU:Lcom/appnext/banners/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCompletion(Landroid/media/MediaPlayer;)V
    .registers 3

    .line 639
    iget-object p1, p0, Lcom/appnext/banners/a$13;->cU:Lcom/appnext/banners/a;

    invoke-static {p1}, Lcom/appnext/banners/a;->access$1000(Lcom/appnext/banners/a;)Landroid/media/MediaPlayer;

    move-result-object p1

    if-eqz p1, :cond_5c

    iget-object p1, p0, Lcom/appnext/banners/a$13;->cU:Lcom/appnext/banners/a;

    invoke-static {p1}, Lcom/appnext/banners/a;->access$1000(Lcom/appnext/banners/a;)Landroid/media/MediaPlayer;

    move-result-object p1

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result p1

    if-eqz p1, :cond_5c

    iget-object p1, p0, Lcom/appnext/banners/a$13;->cU:Lcom/appnext/banners/a;

    invoke-static {p1}, Lcom/appnext/banners/a;->access$1000(Lcom/appnext/banners/a;)Landroid/media/MediaPlayer;

    move-result-object p1

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getDuration()I

    move-result p1

    if-eqz p1, :cond_5c

    iget-object p1, p0, Lcom/appnext/banners/a$13;->cU:Lcom/appnext/banners/a;

    invoke-static {p1}, Lcom/appnext/banners/a;->access$1300(Lcom/appnext/banners/a;)Z

    move-result p1

    if-eqz p1, :cond_29

    goto :goto_5c

    .line 641
    :cond_29
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "onCompletion. "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/appnext/banners/a$13;->cU:Lcom/appnext/banners/a;

    invoke-static {v0}, Lcom/appnext/banners/a;->access$1000(Lcom/appnext/banners/a;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/appnext/banners/a$13;->cU:Lcom/appnext/banners/a;

    invoke-static {v0}, Lcom/appnext/banners/a;->access$1000(Lcom/appnext/banners/a;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 642
    iget-object p1, p0, Lcom/appnext/banners/a$13;->cU:Lcom/appnext/banners/a;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/appnext/banners/a;->access$1302(Lcom/appnext/banners/a;Z)Z

    .line 643
    iget-object p1, p0, Lcom/appnext/banners/a$13;->cU:Lcom/appnext/banners/a;

    const-string v0, "video_ended"

    invoke-static {p1, v0}, Lcom/appnext/banners/a;->access$000(Lcom/appnext/banners/a;Ljava/lang/String;)V

    :cond_5c
    :goto_5c
    return-void
.end method
