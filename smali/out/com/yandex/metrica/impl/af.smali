.class public Lcom/yandex/metrica/impl/af;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/metrica/impl/ae;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/metrica/impl/af$a;
    }
.end annotation


# instance fields
.field private a:Ljava/util/concurrent/Executor;

.field private b:Lcom/yandex/metrica/impl/ae;


# direct methods
.method public constructor <init>(Lcom/yandex/metrica/impl/ae;)V
    .registers 3

    .line 44
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/yandex/metrica/impl/af;-><init>(Ljava/util/concurrent/Executor;Lcom/yandex/metrica/impl/ae;)V

    return-void
.end method

.method constructor <init>(Ljava/util/concurrent/Executor;Lcom/yandex/metrica/impl/ae;)V
    .registers 3

    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 142
    iput-object p1, p0, Lcom/yandex/metrica/impl/af;->a:Ljava/util/concurrent/Executor;

    .line 143
    iput-object p2, p0, Lcom/yandex/metrica/impl/af;->b:Lcom/yandex/metrica/impl/ae;

    return-void
.end method

.method static synthetic a(Lcom/yandex/metrica/impl/af;)Lcom/yandex/metrica/impl/ae;
    .registers 1

    .line 24
    iget-object p0, p0, Lcom/yandex/metrica/impl/af;->b:Lcom/yandex/metrica/impl/ae;

    return-object p0
.end method


# virtual methods
.method public a()V
    .registers 3

    .line 50
    iget-object v0, p0, Lcom/yandex/metrica/impl/af;->a:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/yandex/metrica/impl/af$1;

    invoke-direct {v1, p0}, Lcom/yandex/metrica/impl/af$1;-><init>(Lcom/yandex/metrica/impl/af;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(ILandroid/os/Bundle;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 132
    iget-object v0, p0, Lcom/yandex/metrica/impl/af;->a:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/yandex/metrica/impl/af$8;

    invoke-direct {v1, p0, p1, p2}, Lcom/yandex/metrica/impl/af$8;-><init>(Lcom/yandex/metrica/impl/af;ILandroid/os/Bundle;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(ILjava/lang/String;ILjava/lang/String;Landroid/os/Bundle;)V
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 122
    iget-object v0, p0, Lcom/yandex/metrica/impl/af;->a:Ljava/util/concurrent/Executor;

    new-instance v8, Lcom/yandex/metrica/impl/af$7;

    move-object v1, v8

    move-object v2, p0

    move v3, p1

    move-object v4, p2

    move v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v1 .. v7}, Lcom/yandex/metrica/impl/af$7;-><init>(Lcom/yandex/metrica/impl/af;ILjava/lang/String;ILjava/lang/String;Landroid/os/Bundle;)V

    invoke-interface {v0, v8}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Landroid/content/Intent;)V
    .registers 4

    .line 83
    iget-object v0, p0, Lcom/yandex/metrica/impl/af;->a:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/yandex/metrica/impl/af$4;

    invoke-direct {v1, p0, p1}, Lcom/yandex/metrica/impl/af$4;-><init>(Lcom/yandex/metrica/impl/af;Landroid/content/Intent;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Landroid/content/Intent;I)V
    .registers 5

    .line 61
    iget-object v0, p0, Lcom/yandex/metrica/impl/af;->a:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/yandex/metrica/impl/af$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/yandex/metrica/impl/af$2;-><init>(Lcom/yandex/metrica/impl/af;Landroid/content/Intent;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Landroid/content/Intent;II)V
    .registers 6

    .line 72
    iget-object v0, p0, Lcom/yandex/metrica/impl/af;->a:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/yandex/metrica/impl/af$3;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/yandex/metrica/impl/af$3;-><init>(Lcom/yandex/metrica/impl/af;Landroid/content/Intent;II)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public b()V
    .registers 2

    .line 116
    iget-object v0, p0, Lcom/yandex/metrica/impl/af;->b:Lcom/yandex/metrica/impl/ae;

    invoke-interface {v0}, Lcom/yandex/metrica/impl/ae;->b()V

    return-void
.end method

.method public b(Landroid/content/Intent;)V
    .registers 4

    .line 94
    iget-object v0, p0, Lcom/yandex/metrica/impl/af;->a:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/yandex/metrica/impl/af$5;

    invoke-direct {v1, p0, p1}, Lcom/yandex/metrica/impl/af$5;-><init>(Lcom/yandex/metrica/impl/af;Landroid/content/Intent;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public c(Landroid/content/Intent;)V
    .registers 4

    .line 105
    iget-object v0, p0, Lcom/yandex/metrica/impl/af;->a:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/yandex/metrica/impl/af$6;

    invoke-direct {v1, p0, p1}, Lcom/yandex/metrica/impl/af$6;-><init>(Lcom/yandex/metrica/impl/af;Landroid/content/Intent;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
