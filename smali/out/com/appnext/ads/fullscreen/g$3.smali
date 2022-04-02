.class final Lcom/appnext/ads/fullscreen/g$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appnext/ads/fullscreen/g;->s()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic bD:Lcom/appnext/ads/fullscreen/g;


# direct methods
.method constructor <init>(Lcom/appnext/ads/fullscreen/g;)V
    .registers 2

    .line 407
    iput-object p1, p0, Lcom/appnext/ads/fullscreen/g$3;->bD:Lcom/appnext/ads/fullscreen/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/view/animation/Animation;)V
    .registers 3

    .line 415
    iget-object p1, p0, Lcom/appnext/ads/fullscreen/g$3;->bD:Lcom/appnext/ads/fullscreen/g;

    invoke-static {p1}, Lcom/appnext/ads/fullscreen/g;->j(Lcom/appnext/ads/fullscreen/g;)Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/ImageView;->getVisibility()I

    move-result p1

    const/16 v0, 0x8

    if-eq p1, v0, :cond_1d

    .line 416
    iget-object p1, p0, Lcom/appnext/ads/fullscreen/g$3;->bD:Lcom/appnext/ads/fullscreen/g;

    invoke-static {p1}, Lcom/appnext/ads/fullscreen/g;->j(Lcom/appnext/ads/fullscreen/g;)Landroid/widget/ImageView;

    move-result-object p1

    iget-object v0, p0, Lcom/appnext/ads/fullscreen/g$3;->bD:Lcom/appnext/ads/fullscreen/g;

    invoke-static {v0}, Lcom/appnext/ads/fullscreen/g;->k(Lcom/appnext/ads/fullscreen/g;)Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_1d
    return-void
.end method

.method public final onAnimationRepeat(Landroid/view/animation/Animation;)V
    .registers 2

    return-void
.end method

.method public final onAnimationStart(Landroid/view/animation/Animation;)V
    .registers 2

    return-void
.end method
