.class Landroidx/media2/widget/VideoView$4;
.super Ljava/lang/Object;
.source "VideoView.java"

# interfaces
.implements Landroidx/palette/graphics/Palette$PaletteAsyncListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/media2/widget/VideoView;->getAlbumArt(Landroidx/media2/common/MediaMetadata;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/media2/widget/VideoView;


# direct methods
.method constructor <init>(Landroidx/media2/widget/VideoView;)V
    .registers 2

    .line 646
    iput-object p1, p0, Landroidx/media2/widget/VideoView$4;->this$0:Landroidx/media2/widget/VideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGenerated(Landroidx/palette/graphics/Palette;)V
    .registers 3

    const/4 v0, 0x0

    .line 649
    invoke-virtual {p1, v0}, Landroidx/palette/graphics/Palette;->getDominantColor(I)I

    move-result p1

    .line 650
    iget-object v0, p0, Landroidx/media2/widget/VideoView$4;->this$0:Landroidx/media2/widget/VideoView;

    iget-object v0, v0, Landroidx/media2/widget/VideoView;->mMusicView:Landroidx/media2/widget/MusicView;

    invoke-virtual {v0, p1}, Landroidx/media2/widget/MusicView;->setBackgroundColor(I)V

    return-void
.end method
