.class Lcom/yandex/metrica/impl/ob/dp$3;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/metrica/impl/ob/dp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yandex/metrica/impl/ob/dp;


# direct methods
.method constructor <init>(Lcom/yandex/metrica/impl/ob/dp;Landroid/os/Looper;)V
    .registers 3

    .line 147
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/dp$3;->a:Lcom/yandex/metrica/impl/ob/dp;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 3

    .line 151
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 152
    iget p1, p1, Landroid/os/Message;->what:I

    const/16 v0, 0x64

    if-eq p1, v0, :cond_a

    goto :goto_30

    .line 155
    :cond_a
    iget-object p1, p0, Lcom/yandex/metrica/impl/ob/dp$3;->a:Lcom/yandex/metrica/impl/ob/dp;

    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/dp;->e()V

    .line 157
    :try_start_f
    iget-object p1, p0, Lcom/yandex/metrica/impl/ob/dp$3;->a:Lcom/yandex/metrica/impl/ob/dp;

    invoke-static {p1}, Lcom/yandex/metrica/impl/ob/dp;->b(Lcom/yandex/metrica/impl/ob/dp;)Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/dp$3;->a:Lcom/yandex/metrica/impl/ob/dp;

    invoke-static {v0}, Lcom/yandex/metrica/impl/ob/dp;->a(Lcom/yandex/metrica/impl/ob/dp;)Landroid/content/ServiceConnection;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_1e} :catch_1f

    return-void

    .line 160
    :catch_1f
    iget-object p1, p0, Lcom/yandex/metrica/impl/ob/dp$3;->a:Lcom/yandex/metrica/impl/ob/dp;

    invoke-static {p1}, Lcom/yandex/metrica/impl/ob/dp;->b(Lcom/yandex/metrica/impl/ob/dp;)Landroid/content/Context;

    move-result-object p1

    const-string v0, "20799a27-fa80-4b36-b2db-0f8141f24180"

    .line 1022
    invoke-static {p1, v0}, Lcom/yandex/metrica/YandexMetrica;->getReporter(Landroid/content/Context;Ljava/lang/String;)Lcom/yandex/metrica/IReporter;

    move-result-object p1

    const-string v0, "socket_unbind_has_thrown_exception"

    .line 160
    invoke-interface {p1, v0}, Lcom/yandex/metrica/IReporter;->reportEvent(Ljava/lang/String;)V

    :goto_30
    return-void
.end method
