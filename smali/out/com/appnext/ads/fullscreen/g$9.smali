.class final Lcom/appnext/ads/fullscreen/g$9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


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

    .line 221
    iput-object p1, p0, Lcom/appnext/ads/fullscreen/g$9;->bD:Lcom/appnext/ads/fullscreen/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCompletion(Landroid/media/MediaPlayer;)V
    .registers 2

    .line 224
    iget-object p1, p0, Lcom/appnext/ads/fullscreen/g$9;->bD:Lcom/appnext/ads/fullscreen/g;

    invoke-static {p1}, Lcom/appnext/ads/fullscreen/g;->l(Lcom/appnext/ads/fullscreen/g;)V

    return-void
.end method
