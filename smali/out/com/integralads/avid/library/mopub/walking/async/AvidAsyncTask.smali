.class public abstract Lcom/integralads/avid/library/mopub/walking/async/AvidAsyncTask;
.super Landroid/os/AsyncTask;
.source "AvidAsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/integralads/avid/library/mopub/walking/async/AvidAsyncTask$StateProvider;,
        Lcom/integralads/avid/library/mopub/walking/async/AvidAsyncTask$AvidAsyncTaskListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Object;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private listener:Lcom/integralads/avid/library/mopub/walking/async/AvidAsyncTask$AvidAsyncTaskListener;

.field protected final stateProvider:Lcom/integralads/avid/library/mopub/walking/async/AvidAsyncTask$StateProvider;


# direct methods
.method public constructor <init>(Lcom/integralads/avid/library/mopub/walking/async/AvidAsyncTask$StateProvider;)V
    .registers 2

    .line 25
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/integralads/avid/library/mopub/walking/async/AvidAsyncTask;->stateProvider:Lcom/integralads/avid/library/mopub/walking/async/AvidAsyncTask$StateProvider;

    return-void
.end method


# virtual methods
.method public getListener()Lcom/integralads/avid/library/mopub/walking/async/AvidAsyncTask$AvidAsyncTaskListener;
    .registers 2

    .line 34
    iget-object v0, p0, Lcom/integralads/avid/library/mopub/walking/async/AvidAsyncTask;->listener:Lcom/integralads/avid/library/mopub/walking/async/AvidAsyncTask$AvidAsyncTaskListener;

    return-object v0
.end method

.method public getStateProvider()Lcom/integralads/avid/library/mopub/walking/async/AvidAsyncTask$StateProvider;
    .registers 2

    .line 38
    iget-object v0, p0, Lcom/integralads/avid/library/mopub/walking/async/AvidAsyncTask;->stateProvider:Lcom/integralads/avid/library/mopub/walking/async/AvidAsyncTask$StateProvider;

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    .line 11
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/integralads/avid/library/mopub/walking/async/AvidAsyncTask;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .registers 2

    .line 51
    iget-object p1, p0, Lcom/integralads/avid/library/mopub/walking/async/AvidAsyncTask;->listener:Lcom/integralads/avid/library/mopub/walking/async/AvidAsyncTask$AvidAsyncTaskListener;

    if-eqz p1, :cond_7

    .line 52
    invoke-interface {p1, p0}, Lcom/integralads/avid/library/mopub/walking/async/AvidAsyncTask$AvidAsyncTaskListener;->onTaskCompleted(Lcom/integralads/avid/library/mopub/walking/async/AvidAsyncTask;)V

    :cond_7
    return-void
.end method

.method public setListener(Lcom/integralads/avid/library/mopub/walking/async/AvidAsyncTask$AvidAsyncTaskListener;)V
    .registers 2

    .line 30
    iput-object p1, p0, Lcom/integralads/avid/library/mopub/walking/async/AvidAsyncTask;->listener:Lcom/integralads/avid/library/mopub/walking/async/AvidAsyncTask$AvidAsyncTaskListener;

    return-void
.end method

.method public start(Ljava/util/concurrent/ThreadPoolExecutor;)V
    .registers 5

    .line 42
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0xb

    if-le v0, v2, :cond_d

    new-array v0, v1, [Ljava/lang/Object;

    .line 43
    invoke-virtual {p0, p1, v0}, Lcom/integralads/avid/library/mopub/walking/async/AvidAsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_12

    :cond_d
    new-array p1, v1, [Ljava/lang/Object;

    .line 45
    invoke-virtual {p0, p1}, Lcom/integralads/avid/library/mopub/walking/async/AvidAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :goto_12
    return-void
.end method
