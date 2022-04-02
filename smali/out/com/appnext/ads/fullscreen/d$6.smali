.class final Lcom/appnext/ads/fullscreen/d$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appnext/ads/fullscreen/d;->a(Landroid/widget/RelativeLayout;Lcom/appnext/core/AppnextAd;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic aV:Lcom/appnext/ads/fullscreen/d;

.field final synthetic aY:Lcom/appnext/core/AppnextAd;

.field final synthetic bb:Z


# direct methods
.method constructor <init>(Lcom/appnext/ads/fullscreen/d;Lcom/appnext/core/AppnextAd;Z)V
    .registers 4

    .line 177
    iput-object p1, p0, Lcom/appnext/ads/fullscreen/d$6;->aV:Lcom/appnext/ads/fullscreen/d;

    iput-object p2, p0, Lcom/appnext/ads/fullscreen/d$6;->aY:Lcom/appnext/core/AppnextAd;

    iput-boolean p3, p0, Lcom/appnext/ads/fullscreen/d$6;->bb:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 4

    .line 180
    new-instance p1, Lcom/appnext/ads/fullscreen/FullscreenAd;

    iget-object v0, p0, Lcom/appnext/ads/fullscreen/d$6;->aY:Lcom/appnext/core/AppnextAd;

    invoke-direct {p1, v0}, Lcom/appnext/ads/fullscreen/FullscreenAd;-><init>(Lcom/appnext/core/AppnextAd;)V

    .line 182
    iget-boolean v0, p0, Lcom/appnext/ads/fullscreen/d$6;->bb:Z

    if-eqz v0, :cond_13

    .line 183
    iget-object v0, p0, Lcom/appnext/ads/fullscreen/d$6;->aV:Lcom/appnext/ads/fullscreen/d;

    const-string v1, "post_roll_click_main"

    invoke-static {v0, v1}, Lcom/appnext/ads/fullscreen/d;->a(Lcom/appnext/ads/fullscreen/d;Ljava/lang/String;)V

    goto :goto_4b

    .line 185
    :cond_13
    iget-object v0, p0, Lcom/appnext/ads/fullscreen/d$6;->aV:Lcom/appnext/ads/fullscreen/d;

    const-string v1, "post_roll_click_suggested"

    invoke-static {v0, v1}, Lcom/appnext/ads/fullscreen/d;->a(Lcom/appnext/ads/fullscreen/d;Ljava/lang/String;)V

    .line 186
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/appnext/ads/fullscreen/FullscreenAd;->getAppURL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "&tem_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/appnext/ads/fullscreen/d$6;->aV:Lcom/appnext/ads/fullscreen/d;

    invoke-static {v1}, Lcom/appnext/ads/fullscreen/d;->a(Lcom/appnext/ads/fullscreen/d;)Lcom/appnext/ads/fullscreen/h;

    move-result-object v1

    invoke-interface {v1}, Lcom/appnext/ads/fullscreen/h;->isRewarded()Z

    move-result v1

    if-eqz v1, :cond_3a

    const-string v1, "8"

    goto :goto_3c

    :cond_3a
    const-string v1, "7"

    :goto_3c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "05"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/appnext/ads/fullscreen/FullscreenAd;->setAppURL(Ljava/lang/String;)V

    .line 189
    :goto_4b
    iget-object v0, p0, Lcom/appnext/ads/fullscreen/d$6;->aV:Lcom/appnext/ads/fullscreen/d;

    invoke-static {v0}, Lcom/appnext/ads/fullscreen/d;->a(Lcom/appnext/ads/fullscreen/d;)Lcom/appnext/ads/fullscreen/h;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/appnext/ads/fullscreen/h;->installClicked(Lcom/appnext/core/AppnextAd;)V

    .line 190
    iget-object p1, p0, Lcom/appnext/ads/fullscreen/d$6;->aV:Lcom/appnext/ads/fullscreen/d;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/appnext/ads/fullscreen/d;->a(Lcom/appnext/ads/fullscreen/d;Z)Z

    return-void
.end method
