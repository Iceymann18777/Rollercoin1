.class public final Lcom/startapp/common/a/b$b;
.super Ljava/lang/Object;
.source "StartAppSDK"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/startapp/common/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1c
    name = "b"
.end annotation


# instance fields
.field a:Z

.field private final b:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue<",
            "Landroid/os/IBinder;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .registers 3

    .line 194
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 195
    iput-boolean v0, p0, Lcom/startapp/common/a/b$b;->a:Z

    .line 196
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    iput-object v0, p0, Lcom/startapp/common/a/b$b;->b:Ljava/util/concurrent/LinkedBlockingQueue;

    return-void
.end method


# virtual methods
.method public a()Landroid/os/IBinder;
    .registers 2

    .line 209
    iget-boolean v0, p0, Lcom/startapp/common/a/b$b;->a:Z

    if-nez v0, :cond_10

    const/4 v0, 0x1

    .line 211
    iput-boolean v0, p0, Lcom/startapp/common/a/b$b;->a:Z

    .line 212
    iget-object v0, p0, Lcom/startapp/common/a/b$b;->b:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    return-object v0

    .line 210
    :cond_10
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 3

    .line 200
    :try_start_0
    iget-object p1, p0, Lcom/startapp/common/a/b$b;->b:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {p1, p2}, Ljava/util/concurrent/LinkedBlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_5} :catch_5

    :catch_5
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 2

    return-void
.end method
