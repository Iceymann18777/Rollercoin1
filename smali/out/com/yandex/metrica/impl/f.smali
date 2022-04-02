.class public Lcom/yandex/metrica/impl/f;
.super Lcom/yandex/metrica/impl/ai;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/metrica/impl/f$a;
    }
.end annotation


# instance fields
.field private final a:Lcom/yandex/metrica/impl/ob/bz;


# direct methods
.method public constructor <init>(Lcom/yandex/metrica/impl/ob/bz;)V
    .registers 2

    .line 25
    invoke-direct {p0}, Lcom/yandex/metrica/impl/ai;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/yandex/metrica/impl/f;->a:Lcom/yandex/metrica/impl/ob/bz;

    return-void
.end method

.method static synthetic a(Lcom/yandex/metrica/impl/f;)Lcom/yandex/metrica/impl/ob/bz;
    .registers 1

    .line 21
    iget-object p0, p0, Lcom/yandex/metrica/impl/f;->a:Lcom/yandex/metrica/impl/ob/bz;

    return-object p0
.end method


# virtual methods
.method protected a(Lcom/yandex/metrica/impl/ob/dg;)I
    .registers 4

    .line 40
    iget-object p1, p0, Lcom/yandex/metrica/impl/f;->a:Lcom/yandex/metrica/impl/ob/bz;

    const-wide/16 v0, -0x1

    invoke-virtual {p1, v0, v1}, Lcom/yandex/metrica/impl/ob/bz;->c(J)J

    move-result-wide v0

    long-to-int p1, v0

    return p1
.end method

.method a()Landroid/util/SparseArray;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Lcom/yandex/metrica/impl/ai$a;",
            ">;"
        }
    .end annotation

    .line 31
    new-instance v0, Lcom/yandex/metrica/impl/f$1;

    invoke-direct {v0, p0}, Lcom/yandex/metrica/impl/f$1;-><init>(Lcom/yandex/metrica/impl/f;)V

    return-object v0
.end method

.method protected a(Lcom/yandex/metrica/impl/ob/dg;I)V
    .registers 6

    .line 45
    iget-object v0, p0, Lcom/yandex/metrica/impl/f;->a:Lcom/yandex/metrica/impl/ob/bz;

    int-to-long v1, p2

    invoke-virtual {v0, v1, v2}, Lcom/yandex/metrica/impl/ob/bz;->f(J)Lcom/yandex/metrica/impl/ob/bz;

    .line 46
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/dg;->c()Lcom/yandex/metrica/impl/ob/dg;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/dg;->k()V

    return-void
.end method
