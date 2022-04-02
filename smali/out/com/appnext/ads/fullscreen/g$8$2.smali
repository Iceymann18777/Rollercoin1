.class final Lcom/appnext/ads/fullscreen/g$8$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaPlayer$OnSeekCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appnext/ads/fullscreen/g$8;->onPrepared(Landroid/media/MediaPlayer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic bG:Lcom/appnext/ads/fullscreen/g$8;


# direct methods
.method constructor <init>(Lcom/appnext/ads/fullscreen/g$8;)V
    .registers 2

    .line 200
    iput-object p1, p0, Lcom/appnext/ads/fullscreen/g$8$2;->bG:Lcom/appnext/ads/fullscreen/g$8;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onSeekComplete(Landroid/media/MediaPlayer;)V
    .registers 2

    .line 203
    iget-object p1, p0, Lcom/appnext/ads/fullscreen/g$8$2;->bG:Lcom/appnext/ads/fullscreen/g$8;

    iget-object p1, p1, Lcom/appnext/ads/fullscreen/g$8;->bD:Lcom/appnext/ads/fullscreen/g;

    invoke-static {p1}, Lcom/appnext/ads/fullscreen/g;->i(Lcom/appnext/ads/fullscreen/g;)Landroid/media/MediaPlayer;

    move-result-object p1

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->start()V

    return-void
.end method
