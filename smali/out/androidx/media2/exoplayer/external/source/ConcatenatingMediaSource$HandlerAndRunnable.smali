.class final Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$HandlerAndRunnable;
.super Ljava/lang/Object;
.source "ConcatenatingMediaSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "HandlerAndRunnable"
.end annotation


# instance fields
.field private final handler:Landroid/os/Handler;

.field private final runnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/os/Handler;Ljava/lang/Runnable;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "handler",
            "runnable"
        }
    .end annotation

    .line 1205
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1206
    iput-object p1, p0, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$HandlerAndRunnable;->handler:Landroid/os/Handler;

    .line 1207
    iput-object p2, p0, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$HandlerAndRunnable;->runnable:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public dispatch()V
    .registers 3

    .line 1211
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$HandlerAndRunnable;->handler:Landroid/os/Handler;

    iget-object v1, p0, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$HandlerAndRunnable;->runnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
