.class public Lcom/yandex/metrica/impl/ob/fs;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/metrica/impl/ob/fs$a;,
        Lcom/yandex/metrica/impl/ob/fs$c;,
        Lcom/yandex/metrica/impl/ob/fs$b;
    }
.end annotation


# instance fields
.field private a:Lcom/yandex/metrica/impl/ob/fq;

.field private b:Landroid/os/HandlerThread;

.field private c:Lcom/yandex/metrica/impl/ob/fs$b;

.field private volatile d:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Lcom/yandex/metrica/impl/ob/fq;)V
    .registers 3

    const/4 v0, 0x0

    .line 16
    invoke-direct {p0, p1, v0}, Lcom/yandex/metrica/impl/ob/fs;-><init>(Lcom/yandex/metrica/impl/ob/fq;Landroid/os/Handler;)V

    return-void
.end method

.method public constructor <init>(Lcom/yandex/metrica/impl/ob/fq;Landroid/os/Handler;)V
    .registers 5

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/fs;->a:Lcom/yandex/metrica/impl/ob/fq;

    .line 21
    new-instance p1, Landroid/os/HandlerThread;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/yandex/metrica/impl/ob/fs;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/fs;->b:Landroid/os/HandlerThread;

    .line 22
    iput-object p2, p0, Lcom/yandex/metrica/impl/ob/fs;->d:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcom/yandex/metrica/impl/ob/fs;)Lcom/yandex/metrica/impl/ob/fq;
    .registers 1

    .line 8
    iget-object p0, p0, Lcom/yandex/metrica/impl/ob/fs;->a:Lcom/yandex/metrica/impl/ob/fq;

    return-object p0
.end method

.method private declared-synchronized a()V
    .registers 4

    monitor-enter p0

    .line 41
    :try_start_1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/fs;->b:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getState()Ljava/lang/Thread$State;

    move-result-object v0

    sget-object v1, Ljava/lang/Thread$State;->NEW:Ljava/lang/Thread$State;

    if-ne v0, v1, :cond_29

    .line 42
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/fs;->b:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 43
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/fs;->b:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    .line 44
    new-instance v1, Lcom/yandex/metrica/impl/ob/fs$b;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v0, v2}, Lcom/yandex/metrica/impl/ob/fs$b;-><init>(Lcom/yandex/metrica/impl/ob/fs;Landroid/os/Looper;B)V

    iput-object v1, p0, Lcom/yandex/metrica/impl/ob/fs;->c:Lcom/yandex/metrica/impl/ob/fs$b;

    .line 45
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/fs;->d:Landroid/os/Handler;

    if-nez v1, :cond_29

    .line 46
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/yandex/metrica/impl/ob/fs;->d:Landroid/os/Handler;
    :try_end_29
    .catchall {:try_start_1 .. :try_end_29} :catchall_2b

    .line 49
    :cond_29
    monitor-exit p0

    return-void

    :catchall_2b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic b(Lcom/yandex/metrica/impl/ob/fs;)Landroid/os/Handler;
    .registers 1

    .line 8
    iget-object p0, p0, Lcom/yandex/metrica/impl/ob/fs;->d:Landroid/os/Handler;

    return-object p0
.end method


# virtual methods
.method public a(Lcom/yandex/metrica/impl/ob/fu;Lcom/yandex/metrica/impl/ob/fu$b;Lcom/yandex/metrica/impl/ob/fu$a;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/yandex/metrica/impl/ob/fu<",
            "TT;>;",
            "Lcom/yandex/metrica/impl/ob/fu$b<",
            "TT;>;",
            "Lcom/yandex/metrica/impl/ob/fu$a;",
            ")V"
        }
    .end annotation

    .line 34
    invoke-direct {p0}, Lcom/yandex/metrica/impl/ob/fs;->a()V

    .line 35
    invoke-virtual {p1, p2}, Lcom/yandex/metrica/impl/ob/fu;->a(Lcom/yandex/metrica/impl/ob/fu$b;)V

    .line 36
    invoke-virtual {p1, p3}, Lcom/yandex/metrica/impl/ob/fu;->a(Lcom/yandex/metrica/impl/ob/fu$a;)V

    .line 37
    iget-object p2, p0, Lcom/yandex/metrica/impl/ob/fs;->c:Lcom/yandex/metrica/impl/ob/fs$b;

    invoke-virtual {p2, p1}, Lcom/yandex/metrica/impl/ob/fs$b;->a(Lcom/yandex/metrica/impl/ob/fu;)V

    return-void
.end method
