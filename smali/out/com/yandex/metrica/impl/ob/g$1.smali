.class Lcom/yandex/metrica/impl/ob/g$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yandex/metrica/impl/ob/g;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yandex/metrica/impl/ob/g;


# direct methods
.method constructor <init>(Lcom/yandex/metrica/impl/ob/g;)V
    .registers 2

    .line 87
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/g$1;->a:Lcom/yandex/metrica/impl/ob/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 89
    :goto_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/g$1;->a:Lcom/yandex/metrica/impl/ob/g;

    invoke-static {v0}, Lcom/yandex/metrica/impl/ob/g;->a(Lcom/yandex/metrica/impl/ob/g;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 91
    :try_start_8
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/g$1;->a:Lcom/yandex/metrica/impl/ob/g;

    invoke-static {v0}, Lcom/yandex/metrica/impl/ob/g;->b(Lcom/yandex/metrica/impl/ob/g;)Ljava/util/concurrent/BlockingQueue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yandex/metrica/impl/ob/g$a;

    .line 92
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/g$a;->a()V
    :try_end_17
    .catch Ljava/lang/InterruptedException; {:try_start_8 .. :try_end_17} :catch_18

    goto :goto_0

    :catch_18
    nop

    goto :goto_0

    :cond_1a
    return-void
.end method
