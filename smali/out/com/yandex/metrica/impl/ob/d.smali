.class public abstract Lcom/yandex/metrica/impl/ob/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected volatile a:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 41
    iput v0, p0, Lcom/yandex/metrica/impl/ob/d;->a:I

    return-void
.end method

.method public static final a(Lcom/yandex/metrica/impl/ob/d;)[B
    .registers 4

    .line 99
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/d;->b()I

    move-result v0

    new-array v1, v0, [B

    const/4 v2, 0x0

    .line 1114
    :try_start_7
    invoke-static {v1, v2, v0}, Lcom/yandex/metrica/impl/ob/b;->a([BII)Lcom/yandex/metrica/impl/ob/b;

    move-result-object v0

    .line 1116
    invoke-virtual {p0, v0}, Lcom/yandex/metrica/impl/ob/d;->a(Lcom/yandex/metrica/impl/ob/b;)V

    .line 1117
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/b;->b()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_11} :catch_12

    return-object v1

    :catch_12
    move-exception p0

    .line 1119
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Serializing to a byte array threw an IOException (should never happen)."

    invoke-direct {v0, v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method


# virtual methods
.method public a()I
    .registers 2

    .line 51
    iget v0, p0, Lcom/yandex/metrica/impl/ob/d;->a:I

    if-gez v0, :cond_7

    .line 53
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/d;->b()I

    .line 55
    :cond_7
    iget v0, p0, Lcom/yandex/metrica/impl/ob/d;->a:I

    return v0
.end method

.method public a(Lcom/yandex/metrica/impl/ob/b;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method public b()I
    .registers 2

    .line 64
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/d;->c()I

    move-result v0

    .line 65
    iput v0, p0, Lcom/yandex/metrica/impl/ob/d;->a:I

    return v0
.end method

.method protected c()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 162
    invoke-static {p0}, Lcom/yandex/metrica/impl/ob/e;->a(Lcom/yandex/metrica/impl/ob/d;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
