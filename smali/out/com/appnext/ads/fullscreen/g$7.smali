.class final Lcom/appnext/ads/fullscreen/g$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appnext/ads/fullscreen/g;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
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

    .line 153
    iput-object p1, p0, Lcom/appnext/ads/fullscreen/g$7;->bD:Lcom/appnext/ads/fullscreen/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 6

    .line 156
    iget-object p1, p0, Lcom/appnext/ads/fullscreen/g$7;->bD:Lcom/appnext/ads/fullscreen/g;

    invoke-static {p1}, Lcom/appnext/ads/fullscreen/g;->e(Lcom/appnext/ads/fullscreen/g;)Landroid/widget/TextView;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 157
    iget-object p1, p0, Lcom/appnext/ads/fullscreen/g$7;->bD:Lcom/appnext/ads/fullscreen/g;

    invoke-static {p1}, Lcom/appnext/ads/fullscreen/g;->e(Lcom/appnext/ads/fullscreen/g;)Landroid/widget/TextView;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setAlpha(F)V

    .line 158
    iget-object p1, p0, Lcom/appnext/ads/fullscreen/g$7;->bD:Lcom/appnext/ads/fullscreen/g;

    invoke-static {p1}, Lcom/appnext/ads/fullscreen/g;->e(Lcom/appnext/ads/fullscreen/g;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 v0, 0x3e8

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 159
    iget-object p1, p0, Lcom/appnext/ads/fullscreen/g$7;->bD:Lcom/appnext/ads/fullscreen/g;

    invoke-static {p1}, Lcom/appnext/ads/fullscreen/g;->f(Lcom/appnext/ads/fullscreen/g;)Z

    move-result p1

    if-nez p1, :cond_3e

    .line 160
    iget-object p1, p0, Lcom/appnext/ads/fullscreen/g$7;->bD:Lcom/appnext/ads/fullscreen/g;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/appnext/ads/fullscreen/g;->a(Lcom/appnext/ads/fullscreen/g;Z)Z

    .line 161
    iget-object p1, p0, Lcom/appnext/ads/fullscreen/g$7;->bD:Lcom/appnext/ads/fullscreen/g;

    const-string v0, "roll_click_cta_more"

    invoke-static {p1, v0}, Lcom/appnext/ads/fullscreen/g;->a(Lcom/appnext/ads/fullscreen/g;Ljava/lang/String;)V

    .line 163
    :cond_3e
    iget-object p1, p0, Lcom/appnext/ads/fullscreen/g$7;->bD:Lcom/appnext/ads/fullscreen/g;

    invoke-static {p1}, Lcom/appnext/ads/fullscreen/g;->a(Lcom/appnext/ads/fullscreen/g;)Lcom/appnext/ads/fullscreen/j;

    move-result-object p1

    invoke-interface {p1}, Lcom/appnext/ads/fullscreen/j;->getCaptionTextTime()I

    move-result p1

    const/4 v0, -0x2

    if-ne p1, v0, :cond_5f

    .line 165
    iget-object p1, p0, Lcom/appnext/ads/fullscreen/g$7;->bD:Lcom/appnext/ads/fullscreen/g;

    invoke-static {p1}, Lcom/appnext/ads/fullscreen/g;->a(Lcom/appnext/ads/fullscreen/g;)Lcom/appnext/ads/fullscreen/j;

    move-result-object p1

    invoke-interface {p1}, Lcom/appnext/ads/fullscreen/j;->getConfigManager()Lcom/appnext/core/p;

    move-result-object p1

    const-string v0, "caption_text_time"

    invoke-virtual {p1, v0}, Lcom/appnext/core/p;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    :cond_5f
    if-lez p1, :cond_71

    .line 168
    iget-object v0, p0, Lcom/appnext/ads/fullscreen/g$7;->bD:Lcom/appnext/ads/fullscreen/g;

    invoke-static {v0}, Lcom/appnext/ads/fullscreen/g;->g(Lcom/appnext/ads/fullscreen/g;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/appnext/ads/fullscreen/g$7;->bD:Lcom/appnext/ads/fullscreen/g;

    iget-object v1, v1, Lcom/appnext/ads/fullscreen/g;->bC:Ljava/lang/Runnable;

    mul-int/lit16 p1, p1, 0x3e8

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_71
    return-void
.end method
