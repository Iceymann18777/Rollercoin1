.class final Lcom/appnext/ads/fullscreen/d$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appnext/ads/fullscreen/d;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic aV:Lcom/appnext/ads/fullscreen/d;


# direct methods
.method constructor <init>(Lcom/appnext/ads/fullscreen/d;)V
    .registers 2

    .line 68
    iput-object p1, p0, Lcom/appnext/ads/fullscreen/d$1;->aV:Lcom/appnext/ads/fullscreen/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 2

    .line 71
    iget-object p1, p0, Lcom/appnext/ads/fullscreen/d$1;->aV:Lcom/appnext/ads/fullscreen/d;

    invoke-static {p1}, Lcom/appnext/ads/fullscreen/d;->a(Lcom/appnext/ads/fullscreen/d;)Lcom/appnext/ads/fullscreen/h;

    move-result-object p1

    invoke-interface {p1}, Lcom/appnext/ads/fullscreen/h;->privacyClicked()V

    return-void
.end method
