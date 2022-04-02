.class final Lcom/appnext/banners/a$10;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

.field final synthetic cY:Landroid/view/ViewGroup;


# direct methods
.method constructor <init>(Lcom/appnext/banners/a;Landroid/view/ViewGroup;)V
    .registers 3

    .line 574
    iput-object p1, p0, Lcom/appnext/banners/a$10;->cU:Lcom/appnext/banners/a;

    iput-object p2, p0, Lcom/appnext/banners/a$10;->cY:Landroid/view/ViewGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 3

    .line 578
    iget-object p1, p0, Lcom/appnext/banners/a$10;->cU:Lcom/appnext/banners/a;

    invoke-virtual {p1}, Lcom/appnext/banners/a;->isClickEnabled()Z

    move-result p1

    if-eqz p1, :cond_22

    iget-object p1, p0, Lcom/appnext/banners/a$10;->cU:Lcom/appnext/banners/a;

    invoke-static {p1}, Lcom/appnext/banners/a;->access$1000(Lcom/appnext/banners/a;)Landroid/media/MediaPlayer;

    move-result-object p1

    if-eqz p1, :cond_22

    iget-object p1, p0, Lcom/appnext/banners/a$10;->cU:Lcom/appnext/banners/a;

    invoke-static {p1}, Lcom/appnext/banners/a;->access$1000(Lcom/appnext/banners/a;)Landroid/media/MediaPlayer;

    move-result-object p1

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result p1

    if-eqz p1, :cond_22

    .line 579
    iget-object p1, p0, Lcom/appnext/banners/a$10;->cU:Lcom/appnext/banners/a;

    invoke-virtual {p1}, Lcom/appnext/banners/a;->click()V

    return-void

    .line 581
    :cond_22
    iget-object p1, p0, Lcom/appnext/banners/a$10;->cY:Landroid/view/ViewGroup;

    sget v0, Lcom/appnext/banners/R$id;->play:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    sget v0, Lcom/appnext/banners/R$drawable;->apnxt_banner_pause:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 582
    iget-object p1, p0, Lcom/appnext/banners/a$10;->cY:Landroid/view/ViewGroup;

    sget v0, Lcom/appnext/banners/R$id;->play:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 583
    iget-object p1, p0, Lcom/appnext/banners/a$10;->cU:Lcom/appnext/banners/a;

    invoke-virtual {p1}, Lcom/appnext/banners/a;->pause()V

    return-void
.end method
