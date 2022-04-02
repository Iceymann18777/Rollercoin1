.class final Lcom/yandex/metrica/impl/ob/eb$1;
.super Landroid/util/SparseArray;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/metrica/impl/ob/eb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/SparseArray<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 10

    .line 56
    invoke-direct {p0}, Landroid/util/SparseArray;-><init>()V

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 58
    invoke-virtual {p0, v0, v1}, Lcom/yandex/metrica/impl/ob/eb$1;->put(ILjava/lang/Object;)V

    const/4 v0, 0x7

    const-string v1, "1xRTT"

    .line 59
    invoke-virtual {p0, v0, v1}, Lcom/yandex/metrica/impl/ob/eb$1;->put(ILjava/lang/Object;)V

    const/4 v0, 0x4

    const-string v1, "CDMA"

    .line 60
    invoke-virtual {p0, v0, v1}, Lcom/yandex/metrica/impl/ob/eb$1;->put(ILjava/lang/Object;)V

    const/4 v0, 0x2

    const-string v1, "EDGE"

    .line 61
    invoke-virtual {p0, v0, v1}, Lcom/yandex/metrica/impl/ob/eb$1;->put(ILjava/lang/Object;)V

    const/16 v0, 0xe

    const-string v1, "eHRPD"

    .line 62
    invoke-virtual {p0, v0, v1}, Lcom/yandex/metrica/impl/ob/eb$1;->put(ILjava/lang/Object;)V

    const/4 v2, 0x5

    const-string v3, "EVDO rev.0"

    .line 63
    invoke-virtual {p0, v2, v3}, Lcom/yandex/metrica/impl/ob/eb$1;->put(ILjava/lang/Object;)V

    const/4 v2, 0x6

    const-string v3, "EVDO rev.A"

    .line 64
    invoke-virtual {p0, v2, v3}, Lcom/yandex/metrica/impl/ob/eb$1;->put(ILjava/lang/Object;)V

    const/16 v2, 0xc

    const-string v3, "EVDO rev.B"

    .line 65
    invoke-virtual {p0, v2, v3}, Lcom/yandex/metrica/impl/ob/eb$1;->put(ILjava/lang/Object;)V

    const/4 v4, 0x1

    const-string v5, "GPRS"

    .line 66
    invoke-virtual {p0, v4, v5}, Lcom/yandex/metrica/impl/ob/eb$1;->put(ILjava/lang/Object;)V

    const/16 v4, 0x8

    const-string v5, "HSDPA"

    .line 67
    invoke-virtual {p0, v4, v5}, Lcom/yandex/metrica/impl/ob/eb$1;->put(ILjava/lang/Object;)V

    const/16 v4, 0xa

    const-string v5, "HSPA"

    .line 68
    invoke-virtual {p0, v4, v5}, Lcom/yandex/metrica/impl/ob/eb$1;->put(ILjava/lang/Object;)V

    const/16 v4, 0xf

    const-string v5, "HSPA+"

    .line 69
    invoke-virtual {p0, v4, v5}, Lcom/yandex/metrica/impl/ob/eb$1;->put(ILjava/lang/Object;)V

    const/16 v6, 0x9

    const-string v7, "HSUPA"

    .line 70
    invoke-virtual {p0, v6, v7}, Lcom/yandex/metrica/impl/ob/eb$1;->put(ILjava/lang/Object;)V

    const/16 v6, 0xb

    const-string v7, "iDen"

    .line 71
    invoke-virtual {p0, v6, v7}, Lcom/yandex/metrica/impl/ob/eb$1;->put(ILjava/lang/Object;)V

    const/4 v7, 0x3

    const-string v8, "UMTS"

    .line 72
    invoke-virtual {p0, v7, v8}, Lcom/yandex/metrica/impl/ob/eb$1;->put(ILjava/lang/Object;)V

    .line 74
    invoke-virtual {p0, v2, v3}, Lcom/yandex/metrica/impl/ob/eb$1;->put(ILjava/lang/Object;)V

    .line 75
    invoke-static {v6}, Lcom/yandex/metrica/impl/bk;->a(I)Z

    move-result v2

    if-eqz v2, :cond_7f

    .line 76
    invoke-virtual {p0, v0, v1}, Lcom/yandex/metrica/impl/ob/eb$1;->put(ILjava/lang/Object;)V

    const/16 v0, 0xd

    const-string v1, "LTE"

    .line 77
    invoke-virtual {p0, v0, v1}, Lcom/yandex/metrica/impl/ob/eb$1;->put(ILjava/lang/Object;)V

    .line 78
    invoke-static {v0}, Lcom/yandex/metrica/impl/bk;->a(I)Z

    move-result v0

    if-eqz v0, :cond_7f

    .line 79
    invoke-virtual {p0, v4, v5}, Lcom/yandex/metrica/impl/ob/eb$1;->put(ILjava/lang/Object;)V

    :cond_7f
    return-void
.end method
