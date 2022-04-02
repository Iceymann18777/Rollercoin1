.class public abstract Lcom/yandex/metrica/impl/ob/fp;
.super Lcom/yandex/metrica/impl/ob/fu;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/yandex/metrica/impl/ob/fu<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "utf-8"

    aput-object v2, v0, v1

    const-string v1, "application/json; charset=%s"

    .line 33
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 39
    invoke-direct {p0, p1, p2}, Lcom/yandex/metrica/impl/ob/fu;-><init>(ILjava/lang/String;)V

    .line 40
    iput-object p3, p0, Lcom/yandex/metrica/impl/ob/fp;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected abstract b(Lcom/yandex/metrica/impl/ob/ft;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yandex/metrica/impl/ob/ft;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/yandex/metrica/impl/ob/fr;
        }
    .end annotation
.end method

.method public c()[B
    .registers 4

    const/4 v0, 0x0

    .line 50
    :try_start_1
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/fp;->a:Ljava/lang/String;

    if-nez v1, :cond_6

    return-object v0

    :cond_6
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/fp;->a:Ljava/lang/String;

    const-string v2, "utf-8"

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0
    :try_end_e
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_e} :catch_e

    :catch_e
    return-object v0
.end method
