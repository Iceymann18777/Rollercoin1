.class final Lcom/appnext/ads/fullscreen/g$6$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appnext/ads/fullscreen/g$6;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic bE:Lcom/appnext/ads/fullscreen/g$6;


# direct methods
.method constructor <init>(Lcom/appnext/ads/fullscreen/g$6;)V
    .registers 2

    .line 131
    iput-object p1, p0, Lcom/appnext/ads/fullscreen/g$6$1;->bE:Lcom/appnext/ads/fullscreen/g$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/view/animation/Animation;)V
    .registers 3

    .line 139
    iget-object p1, p0, Lcom/appnext/ads/fullscreen/g$6$1;->bE:Lcom/appnext/ads/fullscreen/g$6;

    iget-object p1, p1, Lcom/appnext/ads/fullscreen/g$6;->bD:Lcom/appnext/ads/fullscreen/g;

    invoke-static {p1}, Lcom/appnext/ads/fullscreen/g;->d(Lcom/appnext/ads/fullscreen/g;)Landroid/widget/ImageView;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public final onAnimationRepeat(Landroid/view/animation/Animation;)V
    .registers 2

    return-void
.end method

.method public final onAnimationStart(Landroid/view/animation/Animation;)V
    .registers 3

    .line 134
    iget-object p1, p0, Lcom/appnext/ads/fullscreen/g$6$1;->bE:Lcom/appnext/ads/fullscreen/g$6;

    iget-object p1, p1, Lcom/appnext/ads/fullscreen/g$6;->bD:Lcom/appnext/ads/fullscreen/g;

    invoke-static {p1}, Lcom/appnext/ads/fullscreen/g;->c(Lcom/appnext/ads/fullscreen/g;)Landroid/widget/Button;

    move-result-object p1

    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
