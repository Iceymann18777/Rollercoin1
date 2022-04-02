.class public Lcom/integralads/avid/library/mopub/AvidLoader$TaskExecutor;
.super Ljava/lang/Object;
.source "AvidLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/integralads/avid/library/mopub/AvidLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TaskExecutor"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/integralads/avid/library/mopub/AvidLoader;


# direct methods
.method public constructor <init>(Lcom/integralads/avid/library/mopub/AvidLoader;)V
    .registers 2

    .line 113
    iput-object p1, p0, Lcom/integralads/avid/library/mopub/AvidLoader$TaskExecutor;->this$0:Lcom/integralads/avid/library/mopub/AvidLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public executeTask(Lcom/integralads/avid/library/mopub/DownloadAvidTask;)V
    .registers 4

    .line 116
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const-string v0, "https://mobile-static.adsafeprotected.com/avid-v2.js"

    const/16 v1, 0xb

    if-lt p1, v1, :cond_18

    .line 117
    iget-object p1, p0, Lcom/integralads/avid/library/mopub/AvidLoader$TaskExecutor;->this$0:Lcom/integralads/avid/library/mopub/AvidLoader;

    invoke-static {p1}, Lcom/integralads/avid/library/mopub/AvidLoader;->access$000(Lcom/integralads/avid/library/mopub/AvidLoader;)Lcom/integralads/avid/library/mopub/DownloadAvidTask;

    move-result-object p1

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/integralads/avid/library/mopub/DownloadAvidTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_25

    .line 119
    :cond_18
    iget-object p1, p0, Lcom/integralads/avid/library/mopub/AvidLoader$TaskExecutor;->this$0:Lcom/integralads/avid/library/mopub/AvidLoader;

    invoke-static {p1}, Lcom/integralads/avid/library/mopub/AvidLoader;->access$000(Lcom/integralads/avid/library/mopub/AvidLoader;)Lcom/integralads/avid/library/mopub/DownloadAvidTask;

    move-result-object p1

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/integralads/avid/library/mopub/DownloadAvidTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :goto_25
    return-void
.end method
