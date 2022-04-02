.class final Lcom/appnext/ads/fullscreen/e$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appnext/ads/fullscreen/e;->a(Landroid/view/ViewGroup;Lcom/appnext/core/AppnextAd;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic aY:Lcom/appnext/core/AppnextAd;

.field final synthetic bg:Lcom/appnext/ads/fullscreen/e;

.field final synthetic bh:I


# direct methods
.method constructor <init>(Lcom/appnext/ads/fullscreen/e;Lcom/appnext/core/AppnextAd;I)V
    .registers 4

    .line 107
    iput-object p1, p0, Lcom/appnext/ads/fullscreen/e$2;->bg:Lcom/appnext/ads/fullscreen/e;

    iput-object p2, p0, Lcom/appnext/ads/fullscreen/e$2;->aY:Lcom/appnext/core/AppnextAd;

    iput p3, p0, Lcom/appnext/ads/fullscreen/e$2;->bh:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 3

    .line 110
    iget-object p1, p0, Lcom/appnext/ads/fullscreen/e$2;->bg:Lcom/appnext/ads/fullscreen/e;

    invoke-static {p1}, Lcom/appnext/ads/fullscreen/e;->a(Lcom/appnext/ads/fullscreen/e;)Lcom/appnext/ads/fullscreen/i;

    move-result-object p1

    iget-object v0, p0, Lcom/appnext/ads/fullscreen/e$2;->aY:Lcom/appnext/core/AppnextAd;

    invoke-interface {p1, v0}, Lcom/appnext/ads/fullscreen/i;->videoSelected(Lcom/appnext/core/AppnextAd;)V

    .line 111
    iget p1, p0, Lcom/appnext/ads/fullscreen/e$2;->bh:I

    if-nez p1, :cond_17

    .line 112
    iget-object p1, p0, Lcom/appnext/ads/fullscreen/e$2;->bg:Lcom/appnext/ads/fullscreen/e;

    const-string v0, "pre_roll_left_click"

    invoke-static {p1, v0}, Lcom/appnext/ads/fullscreen/e;->a(Lcom/appnext/ads/fullscreen/e;Ljava/lang/String;)V

    return-void

    :cond_17
    const/4 v0, 0x1

    if-ne p1, v0, :cond_21

    .line 114
    iget-object p1, p0, Lcom/appnext/ads/fullscreen/e$2;->bg:Lcom/appnext/ads/fullscreen/e;

    const-string v0, "pre_roll_right_click"

    invoke-static {p1, v0}, Lcom/appnext/ads/fullscreen/e;->a(Lcom/appnext/ads/fullscreen/e;Ljava/lang/String;)V

    :cond_21
    return-void
.end method
