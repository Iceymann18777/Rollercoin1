.class final Landroidx/media2/exoplayer/external/video/VideoFrameReleaseTimeHelper$DefaultDisplayListener;
.super Ljava/lang/Object;
.source "VideoFrameReleaseTimeHelper.java"

# interfaces
.implements Landroid/hardware/display/DisplayManager$DisplayListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/exoplayer/external/video/VideoFrameReleaseTimeHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DefaultDisplayListener"
.end annotation


# instance fields
.field private final displayManager:Landroid/hardware/display/DisplayManager;

.field final synthetic this$0:Landroidx/media2/exoplayer/external/video/VideoFrameReleaseTimeHelper;


# direct methods
.method public constructor <init>(Landroidx/media2/exoplayer/external/video/VideoFrameReleaseTimeHelper;Landroid/hardware/display/DisplayManager;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0
        }
        names = {
            "this$0",
            "displayManager"
        }
    .end annotation

    .line 240
    iput-object p1, p0, Landroidx/media2/exoplayer/external/video/VideoFrameReleaseTimeHelper$DefaultDisplayListener;->this$0:Landroidx/media2/exoplayer/external/video/VideoFrameReleaseTimeHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 241
    iput-object p2, p0, Landroidx/media2/exoplayer/external/video/VideoFrameReleaseTimeHelper$DefaultDisplayListener;->displayManager:Landroid/hardware/display/DisplayManager;

    return-void
.end method


# virtual methods
.method public onDisplayAdded(I)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "displayId"
        }
    .end annotation

    return-void
.end method

.method public onDisplayChanged(I)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "displayId"
        }
    .end annotation

    if-nez p1, :cond_7

    .line 265
    iget-object p1, p0, Landroidx/media2/exoplayer/external/video/VideoFrameReleaseTimeHelper$DefaultDisplayListener;->this$0:Landroidx/media2/exoplayer/external/video/VideoFrameReleaseTimeHelper;

    invoke-static {p1}, Landroidx/media2/exoplayer/external/video/VideoFrameReleaseTimeHelper;->access$000(Landroidx/media2/exoplayer/external/video/VideoFrameReleaseTimeHelper;)V

    :cond_7
    return-void
.end method

.method public onDisplayRemoved(I)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "displayId"
        }
    .end annotation

    return-void
.end method

.method public register()V
    .registers 3

    .line 245
    iget-object v0, p0, Landroidx/media2/exoplayer/external/video/VideoFrameReleaseTimeHelper$DefaultDisplayListener;->displayManager:Landroid/hardware/display/DisplayManager;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    return-void
.end method

.method public unregister()V
    .registers 2

    .line 249
    iget-object v0, p0, Landroidx/media2/exoplayer/external/video/VideoFrameReleaseTimeHelper$DefaultDisplayListener;->displayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0, p0}, Landroid/hardware/display/DisplayManager;->unregisterDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;)V

    return-void
.end method
