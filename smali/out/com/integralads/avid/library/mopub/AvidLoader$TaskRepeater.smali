.class public Lcom/integralads/avid/library/mopub/AvidLoader$TaskRepeater;
.super Ljava/lang/Object;
.source "AvidLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/integralads/avid/library/mopub/AvidLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TaskRepeater"
.end annotation


# instance fields
.field private handler:Landroid/os/Handler;

.field final synthetic this$0:Lcom/integralads/avid/library/mopub/AvidLoader;


# direct methods
.method public constructor <init>(Lcom/integralads/avid/library/mopub/AvidLoader;)V
    .registers 2

    .line 124
    iput-object p1, p0, Lcom/integralads/avid/library/mopub/AvidLoader$TaskRepeater;->this$0:Lcom/integralads/avid/library/mopub/AvidLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 126
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/integralads/avid/library/mopub/AvidLoader$TaskRepeater;->handler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public cleanup()V
    .registers 3

    .line 133
    iget-object v0, p0, Lcom/integralads/avid/library/mopub/AvidLoader$TaskRepeater;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/integralads/avid/library/mopub/AvidLoader$TaskRepeater;->this$0:Lcom/integralads/avid/library/mopub/AvidLoader;

    invoke-static {v1}, Lcom/integralads/avid/library/mopub/AvidLoader;->access$100(Lcom/integralads/avid/library/mopub/AvidLoader;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public repeatLoading()V
    .registers 5

    .line 129
    iget-object v0, p0, Lcom/integralads/avid/library/mopub/AvidLoader$TaskRepeater;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/integralads/avid/library/mopub/AvidLoader$TaskRepeater;->this$0:Lcom/integralads/avid/library/mopub/AvidLoader;

    invoke-static {v1}, Lcom/integralads/avid/library/mopub/AvidLoader;->access$100(Lcom/integralads/avid/library/mopub/AvidLoader;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
