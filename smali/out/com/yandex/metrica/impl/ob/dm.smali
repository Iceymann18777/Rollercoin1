.class public Lcom/yandex/metrica/impl/ob/dm;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:I

.field private b:I

.field private c:Ljava/util/Random;

.field private d:I


# direct methods
.method public constructor <init>(I)V
    .registers 3

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x1f

    if-lez p1, :cond_c

    if-gt p1, v0, :cond_c

    .line 18
    iput p1, p0, Lcom/yandex/metrica/impl/ob/dm;->a:I

    goto :goto_e

    .line 20
    :cond_c
    iput v0, p0, Lcom/yandex/metrica/impl/ob/dm;->a:I

    .line 22
    :goto_e
    new-instance p1, Ljava/util/Random;

    invoke-direct {p1}, Ljava/util/Random;-><init>()V

    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/dm;->c:Ljava/util/Random;

    return-void
.end method


# virtual methods
.method public a()I
    .registers 3

    .line 26
    iget v0, p0, Lcom/yandex/metrica/impl/ob/dm;->b:I

    iget v1, p0, Lcom/yandex/metrica/impl/ob/dm;->a:I

    if-ge v0, v1, :cond_e

    const/4 v1, 0x1

    add-int/2addr v0, v1

    .line 27
    iput v0, p0, Lcom/yandex/metrica/impl/ob/dm;->b:I

    shl-int v0, v1, v0

    .line 28
    iput v0, p0, Lcom/yandex/metrica/impl/ob/dm;->d:I

    .line 30
    :cond_e
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/dm;->c:Ljava/util/Random;

    iget v1, p0, Lcom/yandex/metrica/impl/ob/dm;->d:I

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    return v0
.end method
