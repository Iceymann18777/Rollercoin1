.class Lcom/yandex/metrica/impl/ob/fs$b;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/metrica/impl/ob/fs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/yandex/metrica/impl/ob/fs;


# direct methods
.method private constructor <init>(Lcom/yandex/metrica/impl/ob/fs;Landroid/os/Looper;)V
    .registers 3

    .line 53
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/fs$b;->a:Lcom/yandex/metrica/impl/ob/fs;

    .line 54
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/yandex/metrica/impl/ob/fs;Landroid/os/Looper;B)V
    .registers 4

    .line 51
    invoke-direct {p0, p1, p2}, Lcom/yandex/metrica/impl/ob/fs$b;-><init>(Lcom/yandex/metrica/impl/ob/fs;Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/yandex/metrica/impl/ob/fu;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/yandex/metrica/impl/ob/fu<",
            "TT;>;)V"
        }
    .end annotation

    .line 72
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 73
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 74
    invoke-virtual {p0, v0}, Lcom/yandex/metrica/impl/ob/fs$b;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .registers 7

    .line 59
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/yandex/metrica/impl/ob/fu;

    .line 60
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/fu;->e()Lcom/yandex/metrica/impl/ob/fu$b;

    move-result-object v0

    const/4 v1, 0x0

    .line 62
    :try_start_9
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/fs$b;->a:Lcom/yandex/metrica/impl/ob/fs;

    invoke-static {v2}, Lcom/yandex/metrica/impl/ob/fs;->a(Lcom/yandex/metrica/impl/ob/fs;)Lcom/yandex/metrica/impl/ob/fq;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/yandex/metrica/impl/ob/fq;->a(Lcom/yandex/metrica/impl/ob/fu;)Lcom/yandex/metrica/impl/ob/ft;

    move-result-object v2

    .line 63
    invoke-virtual {p1, v2}, Lcom/yandex/metrica/impl/ob/fu;->b(Lcom/yandex/metrica/impl/ob/ft;)Ljava/lang/Object;

    move-result-object v2

    .line 64
    iget-object v3, p0, Lcom/yandex/metrica/impl/ob/fs$b;->a:Lcom/yandex/metrica/impl/ob/fs;

    invoke-static {v3}, Lcom/yandex/metrica/impl/ob/fs;->b(Lcom/yandex/metrica/impl/ob/fs;)Landroid/os/Handler;

    move-result-object v3

    new-instance v4, Lcom/yandex/metrica/impl/ob/fs$c;

    invoke-direct {v4, v0, v2, v1}, Lcom/yandex/metrica/impl/ob/fs$c;-><init>(Lcom/yandex/metrica/impl/ob/fu$b;Ljava/lang/Object;B)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_25
    .catch Lcom/yandex/metrica/impl/ob/fr; {:try_start_9 .. :try_end_25} :catch_26

    return-void

    :catch_26
    move-exception v0

    .line 66
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/fu;->f()Lcom/yandex/metrica/impl/ob/fu$a;

    move-result-object p1

    .line 67
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/fs$b;->a:Lcom/yandex/metrica/impl/ob/fs;

    invoke-static {v2}, Lcom/yandex/metrica/impl/ob/fs;->b(Lcom/yandex/metrica/impl/ob/fs;)Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/yandex/metrica/impl/ob/fs$a;

    invoke-direct {v3, p1, v0, v1}, Lcom/yandex/metrica/impl/ob/fs$a;-><init>(Lcom/yandex/metrica/impl/ob/fu$a;Lcom/yandex/metrica/impl/ob/fr;B)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
