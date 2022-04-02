.class Lcom/yandex/metrica/impl/ob/dp$a;
.super Lcom/yandex/metrica/impl/ob/dp$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/metrica/impl/ob/dp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/yandex/metrica/impl/ob/dp;


# direct methods
.method constructor <init>(Lcom/yandex/metrica/impl/ob/dp;Landroid/net/Uri;Ljava/net/Socket;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 171
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/dp$a;->a:Lcom/yandex/metrica/impl/ob/dp;

    .line 172
    invoke-direct {p0, p2, p3}, Lcom/yandex/metrica/impl/ob/dp$b;-><init>(Landroid/net/Uri;Ljava/net/Socket;)V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 4

    .line 177
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/dp$a;->b:Landroid/net/Uri;

    const-string v1, "t"

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 178
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/dp$a;->a:Lcom/yandex/metrica/impl/ob/dp;

    invoke-static {v1}, Lcom/yandex/metrica/impl/ob/dp;->c(Lcom/yandex/metrica/impl/ob/dp;)Lcom/yandex/metrica/impl/ob/ds;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/ds;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 179
    new-instance v0, Lcom/yandex/metrica/impl/ob/dp$a$1;

    invoke-direct {v0}, Lcom/yandex/metrica/impl/ob/dp$a$1;-><init>()V

    .line 186
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/dp$a;->c()[B

    move-result-object v1

    const-string v2, "HTTP/1.1 200 OK"

    .line 179
    invoke-virtual {p0, v2, v0, v1}, Lcom/yandex/metrica/impl/ob/dp$a;->a(Ljava/lang/String;Ljava/util/Map;[B)V

    return-void

    .line 188
    :cond_27
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/dp$a;->a:Lcom/yandex/metrica/impl/ob/dp;

    invoke-static {v0}, Lcom/yandex/metrica/impl/ob/dp;->b(Lcom/yandex/metrica/impl/ob/dp;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "20799a27-fa80-4b36-b2db-0f8141f24180"

    .line 1022
    invoke-static {v0, v1}, Lcom/yandex/metrica/YandexMetrica;->getReporter(Landroid/content/Context;Ljava/lang/String;)Lcom/yandex/metrica/IReporter;

    move-result-object v0

    const-string v1, "socket_request_with_wrong_token"

    .line 188
    invoke-interface {v0, v1}, Lcom/yandex/metrica/IReporter;->reportEvent(Ljava/lang/String;)V

    return-void
.end method

.method protected a(Ljava/lang/Throwable;)V
    .registers 4

    .line 199
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/dp$a;->a:Lcom/yandex/metrica/impl/ob/dp;

    invoke-static {v0}, Lcom/yandex/metrica/impl/ob/dp;->b(Lcom/yandex/metrica/impl/ob/dp;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "20799a27-fa80-4b36-b2db-0f8141f24180"

    .line 3022
    invoke-static {v0, v1}, Lcom/yandex/metrica/YandexMetrica;->getReporter(Landroid/content/Context;Ljava/lang/String;)Lcom/yandex/metrica/IReporter;

    move-result-object v0

    const-string v1, "socket_io_exception_during_sync"

    .line 199
    invoke-interface {v0, v1, p1}, Lcom/yandex/metrica/IReporter;->reportError(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method protected b()V
    .registers 4

    .line 194
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/dp$a;->a:Lcom/yandex/metrica/impl/ob/dp;

    invoke-static {v0}, Lcom/yandex/metrica/impl/ob/dp;->b(Lcom/yandex/metrica/impl/ob/dp;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "20799a27-fa80-4b36-b2db-0f8141f24180"

    .line 2022
    invoke-static {v0, v1}, Lcom/yandex/metrica/YandexMetrica;->getReporter(Landroid/content/Context;Ljava/lang/String;)Lcom/yandex/metrica/IReporter;

    move-result-object v0

    .line 194
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/dp$a;->c:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->getLocalPort()I

    move-result v1

    invoke-static {v1}, Lcom/yandex/metrica/impl/ob/dp;->b(I)Ljava/util/HashMap;

    move-result-object v1

    const-string v2, "socket_sync_succeed"

    invoke-interface {v0, v2, v1}, Lcom/yandex/metrica/IReporter;->reportEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method protected c()[B
    .registers 4

    const/4 v0, 0x0

    .line 206
    :try_start_1
    new-instance v1, Lcom/yandex/metrica/impl/utils/b;

    invoke-direct {v1}, Lcom/yandex/metrica/impl/utils/b;-><init>()V

    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/dp$a;->a:Lcom/yandex/metrica/impl/ob/dp;

    invoke-static {v2}, Lcom/yandex/metrica/impl/ob/dp;->d(Lcom/yandex/metrica/impl/ob/dp;)Lcom/yandex/metrica/impl/ob/dq;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yandex/metrica/impl/ob/dq;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/yandex/metrica/impl/utils/b;->a([B)[B

    move-result-object v1

    invoke-static {v1, v0}, Landroid/util/Base64;->encode([BI)[B

    move-result-object v0
    :try_end_1c
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1c} :catch_1d

    return-object v0

    :catch_1d
    new-array v0, v0, [B

    return-object v0
.end method
