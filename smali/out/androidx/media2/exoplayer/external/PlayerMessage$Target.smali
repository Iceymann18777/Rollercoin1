.class public interface abstract Landroidx/media2/exoplayer/external/PlayerMessage$Target;
.super Ljava/lang/Object;
.source "PlayerMessage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/exoplayer/external/PlayerMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Target"
.end annotation


# virtual methods
.method public abstract handleMessage(ILjava/lang/Object;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "messageType",
            "payload"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/ExoPlaybackException;
        }
    .end annotation
.end method
