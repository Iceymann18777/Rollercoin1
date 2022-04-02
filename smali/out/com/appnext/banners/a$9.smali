.class final Lcom/appnext/banners/a$9;
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

    .line 554
    iput-object p1, p0, Lcom/appnext/banners/a$9;->cU:Lcom/appnext/banners/a;

    iput-object p2, p0, Lcom/appnext/banners/a$9;->cY:Landroid/view/ViewGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 6

    .line 557
    iget-object p1, p0, Lcom/appnext/banners/a$9;->cU:Lcom/appnext/banners/a;

    invoke-static {p1}, Lcom/appnext/banners/a;->access$1100(Lcom/appnext/banners/a;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {p1, v0}, Lcom/appnext/banners/a;->access$1102(Lcom/appnext/banners/a;Z)Z

    .line 558
    iget-object p1, p0, Lcom/appnext/banners/a$9;->cU:Lcom/appnext/banners/a;

    invoke-static {p1}, Lcom/appnext/banners/a;->access$1000(Lcom/appnext/banners/a;)Landroid/media/MediaPlayer;

    move-result-object p1

    if-eqz p1, :cond_50

    .line 560
    :try_start_13
    iget-object p1, p0, Lcom/appnext/banners/a$9;->cU:Lcom/appnext/banners/a;

    invoke-static {p1}, Lcom/appnext/banners/a;->access$1000(Lcom/appnext/banners/a;)Landroid/media/MediaPlayer;

    move-result-object p1

    iget-object v0, p0, Lcom/appnext/banners/a$9;->cU:Lcom/appnext/banners/a;

    invoke-static {v0}, Lcom/appnext/banners/a;->access$1100(Lcom/appnext/banners/a;)Z

    move-result v0

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    if-eqz v0, :cond_26

    const/4 v0, 0x0

    goto :goto_28

    :cond_26
    const/high16 v0, 0x3f800000    # 1.0f

    :goto_28
    iget-object v3, p0, Lcom/appnext/banners/a$9;->cU:Lcom/appnext/banners/a;

    invoke-static {v3}, Lcom/appnext/banners/a;->access$1100(Lcom/appnext/banners/a;)Z

    move-result v3

    if-eqz v3, :cond_31

    goto :goto_33

    :cond_31
    const/high16 v1, 0x3f800000    # 1.0f

    :goto_33
    invoke-virtual {p1, v0, v1}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 561
    iget-object p1, p0, Lcom/appnext/banners/a$9;->cY:Landroid/view/ViewGroup;

    sget v0, Lcom/appnext/banners/R$id;->mute:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/appnext/banners/a$9;->cU:Lcom/appnext/banners/a;

    invoke-static {v0}, Lcom/appnext/banners/a;->access$1100(Lcom/appnext/banners/a;)Z

    move-result v0

    if-eqz v0, :cond_4b

    sget v0, Lcom/appnext/banners/R$drawable;->apnxt_banner_unmute:I

    goto :goto_4d

    :cond_4b
    sget v0, Lcom/appnext/banners/R$drawable;->apnxt_banner_mute:I

    :goto_4d
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V
    :try_end_50
    .catchall {:try_start_13 .. :try_end_50} :catchall_50

    :catchall_50
    :cond_50
    return-void
.end method
