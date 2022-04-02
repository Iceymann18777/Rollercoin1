.class public Lcom/yandex/metrica/impl/ob/ft;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:[B

.field public final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>([BLjava/util/Map;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/ft;->a:[B

    .line 21
    iput-object p2, p0, Lcom/yandex/metrica/impl/ob/ft;->b:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>([BLjava/util/Map;B)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;B)V"
        }
    .end annotation

    .line 28
    invoke-direct {p0, p1, p2}, Lcom/yandex/metrica/impl/ob/ft;-><init>([BLjava/util/Map;)V

    return-void
.end method
