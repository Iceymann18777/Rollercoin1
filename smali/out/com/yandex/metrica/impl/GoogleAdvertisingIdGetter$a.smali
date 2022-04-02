.class Lcom/yandex/metrica/impl/GoogleAdvertisingIdGetter$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/metrica/impl/GoogleAdvertisingIdGetter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field private a:Z

.field private final b:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Landroid/os/IBinder;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 274
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 275
    iput-boolean v0, p0, Lcom/yandex/metrica/impl/GoogleAdvertisingIdGetter$a;->a:Z

    .line 276
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/yandex/metrica/impl/GoogleAdvertisingIdGetter$a;->b:Ljava/util/concurrent/BlockingQueue;

    return-void
.end method

.method synthetic constructor <init>(B)V
    .registers 2

    .line 274
    invoke-direct {p0}, Lcom/yandex/metrica/impl/GoogleAdvertisingIdGetter$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Landroid/os/IBinder;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 290
    iget-boolean v0, p0, Lcom/yandex/metrica/impl/GoogleAdvertisingIdGetter$a;->a:Z

    if-nez v0, :cond_10

    const/4 v0, 0x1

    .line 293
    iput-boolean v0, p0, Lcom/yandex/metrica/impl/GoogleAdvertisingIdGetter$a;->a:Z

    .line 294
    iget-object v0, p0, Lcom/yandex/metrica/impl/GoogleAdvertisingIdGetter$a;->b:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    return-object v0

    .line 291
    :cond_10
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 3

    .line 281
    :try_start_0
    iget-object p1, p0, Lcom/yandex/metrica/impl/GoogleAdvertisingIdGetter$a;->b:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {p1, p2}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_5} :catch_5

    :catch_5
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 2

    return-void
.end method
