.class public abstract Landroid/support/v4/media/session/MediaControllerCompat$Callback;
.super Ljava/lang/Object;
.source "MediaControllerCompat.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/session/MediaControllerCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Callback"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/media/session/MediaControllerCompat$Callback$MessageHandler;,
        Landroid/support/v4/media/session/MediaControllerCompat$Callback$StubCompat;,
        Landroid/support/v4/media/session/MediaControllerCompat$Callback$MediaControllerCallbackApi21;
    }
.end annotation


# instance fields
.field final mCallbackFwk:Landroid/media/session/MediaController$Callback;

.field mHandler:Landroid/support/v4/media/session/MediaControllerCompat$Callback$MessageHandler;

.field mIControllerCallback:Landroid/support/v4/media/session/IMediaControllerCallback;


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 721
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 722
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_11

    .line 723
    new-instance v0, Landroid/support/v4/media/session/MediaControllerCompat$Callback$MediaControllerCallbackApi21;

    invoke-direct {v0, p0}, Landroid/support/v4/media/session/MediaControllerCompat$Callback$MediaControllerCallbackApi21;-><init>(Landroid/support/v4/media/session/MediaControllerCompat$Callback;)V

    iput-object v0, p0, Landroid/support/v4/media/session/MediaControllerCompat$Callback;->mCallbackFwk:Landroid/media/session/MediaController$Callback;

    goto :goto_1b

    :cond_11
    const/4 v0, 0x0

    .line 725
    iput-object v0, p0, Landroid/support/v4/media/session/MediaControllerCompat$Callback;->mCallbackFwk:Landroid/media/session/MediaController$Callback;

    .line 726
    new-instance v0, Landroid/support/v4/media/session/MediaControllerCompat$Callback$StubCompat;

    invoke-direct {v0, p0}, Landroid/support/v4/media/session/MediaControllerCompat$Callback$StubCompat;-><init>(Landroid/support/v4/media/session/MediaControllerCompat$Callback;)V

    iput-object v0, p0, Landroid/support/v4/media/session/MediaControllerCompat$Callback;->mIControllerCallback:Landroid/support/v4/media/session/IMediaControllerCallback;

    :goto_1b
    return-void
.end method


# virtual methods
.method public binderDied()V
    .registers 3

    const/16 v0, 0x8

    const/4 v1, 0x0

    .line 852
    invoke-virtual {p0, v0, v1, v1}, Landroid/support/v4/media/session/MediaControllerCompat$Callback;->postToHandler(ILjava/lang/Object;Landroid/os/Bundle;)V

    return-void
.end method

.method public onAudioInfoChanged(Landroid/support/v4/media/session/MediaControllerCompat$PlaybackInfo;)V
    .registers 2

    return-void
.end method

.method public onCaptioningEnabledChanged(Z)V
    .registers 2

    return-void
.end method

.method public onExtrasChanged(Landroid/os/Bundle;)V
    .registers 2

    return-void
.end method

.method public onMetadataChanged(Landroid/support/v4/media/MediaMetadataCompat;)V
    .registers 2

    return-void
.end method

.method public onPlaybackStateChanged(Landroid/support/v4/media/session/PlaybackStateCompat;)V
    .registers 2

    return-void
.end method

.method public onQueueChanged(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/support/v4/media/session/MediaSessionCompat$QueueItem;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public onQueueTitleChanged(Ljava/lang/CharSequence;)V
    .registers 2

    return-void
.end method

.method public onRepeatModeChanged(I)V
    .registers 2

    return-void
.end method

.method public onSessionDestroyed()V
    .registers 1

    return-void
.end method

.method public onSessionEvent(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 3

    return-void
.end method

.method public onSessionReady()V
    .registers 1

    return-void
.end method

.method public onShuffleModeChanged(I)V
    .registers 2

    return-void
.end method

.method postToHandler(ILjava/lang/Object;Landroid/os/Bundle;)V
    .registers 5

    .line 872
    iget-object v0, p0, Landroid/support/v4/media/session/MediaControllerCompat$Callback;->mHandler:Landroid/support/v4/media/session/MediaControllerCompat$Callback$MessageHandler;

    if-eqz v0, :cond_e

    .line 873
    invoke-virtual {v0, p1, p2}, Landroid/support/v4/media/session/MediaControllerCompat$Callback$MessageHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 874
    invoke-virtual {p1, p3}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 875
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    :cond_e
    return-void
.end method
