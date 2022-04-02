.class public Landroidx/media2/player/AudioFocusHandler;
.super Ljava/lang/Object;
.source "AudioFocusHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media2/player/AudioFocusHandler$AudioFocusHandlerImplBase;,
        Landroidx/media2/player/AudioFocusHandler$AudioFocusHandlerImpl;
    }
.end annotation


# instance fields
.field private final mImpl:Landroidx/media2/player/AudioFocusHandler$AudioFocusHandlerImpl;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroidx/media2/player/MediaPlayer;)V
    .registers 4

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    new-instance v0, Landroidx/media2/player/AudioFocusHandler$AudioFocusHandlerImplBase;

    invoke-direct {v0, p1, p2}, Landroidx/media2/player/AudioFocusHandler$AudioFocusHandlerImplBase;-><init>(Landroid/content/Context;Landroidx/media2/player/MediaPlayer;)V

    iput-object v0, p0, Landroidx/media2/player/AudioFocusHandler;->mImpl:Landroidx/media2/player/AudioFocusHandler$AudioFocusHandlerImpl;

    return-void
.end method


# virtual methods
.method public close()V
    .registers 2

    .line 97
    iget-object v0, p0, Landroidx/media2/player/AudioFocusHandler;->mImpl:Landroidx/media2/player/AudioFocusHandler$AudioFocusHandlerImpl;

    invoke-interface {v0}, Landroidx/media2/player/AudioFocusHandler$AudioFocusHandlerImpl;->close()V

    return-void
.end method

.method public onPause()V
    .registers 2

    .line 83
    iget-object v0, p0, Landroidx/media2/player/AudioFocusHandler;->mImpl:Landroidx/media2/player/AudioFocusHandler$AudioFocusHandlerImpl;

    invoke-interface {v0}, Landroidx/media2/player/AudioFocusHandler$AudioFocusHandlerImpl;->onPause()V

    return-void
.end method

.method public onPlay()Z
    .registers 2

    .line 76
    iget-object v0, p0, Landroidx/media2/player/AudioFocusHandler;->mImpl:Landroidx/media2/player/AudioFocusHandler$AudioFocusHandlerImpl;

    invoke-interface {v0}, Landroidx/media2/player/AudioFocusHandler$AudioFocusHandlerImpl;->onPlay()Z

    move-result v0

    return v0
.end method

.method public onReset()V
    .registers 2

    .line 90
    iget-object v0, p0, Landroidx/media2/player/AudioFocusHandler;->mImpl:Landroidx/media2/player/AudioFocusHandler$AudioFocusHandlerImpl;

    invoke-interface {v0}, Landroidx/media2/player/AudioFocusHandler$AudioFocusHandlerImpl;->onReset()V

    return-void
.end method
